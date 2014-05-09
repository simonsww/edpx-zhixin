/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file cache.js
 * @author daihuiming (daihuiming@baidu.com)
 * @description
 *  在edp-webserver中用proxy代理一次需要差不多接近一秒钟，故需要缓存一下
 *  并且在生存期内不做任何改变
 **/


var indexer = require('./indexer');
var edp = require('edp-core');

var cachedContent = {};
var CACHEDTIME = 5 * 60 * 1000; //默认cache, 5分钟 
var needUpdatedProp = ['header', 'content', 'status']; //并不完全缓存整个context, 下面是需要缓存的属性

/**
 * 用于替换目标对象中的字段
 * @internal
 * @param {Object} source, 源对象 
 * @param {Object} target, 目标对象
 **/
function updateContent(source, target) {
    needUpdatedProp.forEach(function (prop) {
        target[prop] = source[prop];
    });
};

/**
 * 用于得到search参数
 * @internal
 * @param {Http.Request} request, 当前的http请求
 * @return {queryWord, platform}
 **/

function getSearch(request) {
    var query = request.query;
    return {
        queryWord: query.wd,
        platform: query.dsp || 'pc'
    }  
}; 


/**
 * 用于得到所有的cookie
 * @internal
 * @param {Http.Request} request 当前的http请求
 * @returns {Object}
 */

function parseCookies(request) {
    var list = {};
    var cookies = request.headers.cookie;

    cookies && cookies.split(";").forEach(function (cookie) {
        var parts = cookie.split("=");
        list[parts.shift().trim()] = unescape(parts[0]);
    });
    return list;
};


/**
 * 用来创建一个命名空间
 * @internal
 * @param {string} nameSpace 用.分开的namespace
 * @param {Objecti?} base 起始的命名空间
 * @returns {Object}
 */
function createNameSpace(nameSpace, base) {
    base = base || global;
    var names = nameSpace.split(".");

    names.forEach(function (name) {
        if (!base[name]) {
            base[name] = {};
        }
        
        base = base[name];
    }); 

    return base;
};
/**
 * 用来判定本对象是否为空
 * @internal
 * @param {Object} obj 要检测的对象
 * @returns {bool}
 */
function isEmptyObject(obj) {
    return !Object.keys(obj).length;
};

/**
 * 如果发现缓存的情况下{platform:{queryWord:Object}}，用缓存，否则用代理
 * @name proxyContent
 * @param {Http.Context} context, 当前的http请求的上下文
 * @param {Object} gConf, 当前的配置参数主要是代理的hostname及port
 **/
exports.proxyContent = function (context, gConf) {
    
    var query = getSearch(context.request);
    var cookies = parseCookies(context.request);
    //我们用platform及queryWord做为缓存对象的key 
    if (cachedContent[query.platform]
        && cachedContent[query.platform][query.queryWord]
        && cachedContent[query.platform][query.queryWord][cookies.BAIDUID]
        && !isEmptyObject(cachedContent[query.platform][query.queryWord][cookies.BAIDUID])) {
        var originalUrl = context.request.url;
        var start = Date.now();
        //用缓存的对象来更改当前的context
        updateContent(cachedContent[query.platform][query.queryWord][cookies.BAIDUID], context);
        edp.log.info(edp.chalk.yellow('CACHED PROXY') + "%s to %s - - %s ms", edp.chalk.green(originalUrl), edp.chalk.green(context.request.url), Date.now() - start);
    } else {
        //用给定的参数来代理当前的request
        proxy(gConf.proxy.hostname, gConf.proxy.port)(context);
    }
};

/**
 * 缓存当前的内容
 * @name updateCachedContent
 * @param {Http.Context} context, 当前的http请求的上下文
 **/

exports.updateCachedContent = function (context) {
    var query = getSearch(context.request);
    var cookies = parseCookies(context.request);

    var needUpdatedContent = createNameSpace([query.platform, query.queryWord, cookies.BAIDUID].join("."), cachedContent);

    if (isEmptyObject(needUpdatedContent)) {
        needUpdatedContent.expire = (function (platform, queryWord, baiduId) {
            return setTimeout(function () {
                cachedContent[platform][queryWord][baiduId] = {};
                edp.log.info("CACHED PROXY CONTENT IS EXPIRED: " + "platform: %s, queryWord:  %s, baiduId: %s", platform, queryWord, baiduId);
            }, CACHEDTIME);
        })(query.platform, query.queryWord, cookies.BAIDUID);
        updateContent(context, needUpdatedContent);
    }
};
