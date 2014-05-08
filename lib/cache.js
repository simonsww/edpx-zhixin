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
 * 如果发现缓存的情况下{platform:{queryWord:Object}}，用缓存，否则用代理
 * @name proxyContent
 * @param {Http.Context} context, 当前的http请求的上下文
 * @param {Object} gConf, 当前的配置参数主要是代理的hostname及port
 **/
exports.proxyContent = function (context, gConf) {
    
    var query = getSearch(context.request);
    //我们用platform及queryWord做为缓存对象的key 
    // if (cachedContent[query.platform]
    //    && cachedContent[query.platform][query.queryWord]) {
    if(false) {
        var originalUrl = context.request.url;
        var start = Date.now();
        //用缓存的对象来更改当前的context
        updateContent(cachedContent[query.platform][query.queryWord], context);
        edp.log.info('CACHED PROXY' + "%s to %s - - %s ms", originalUrl, context.request.url, Date.now() - start);
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

    if (!cachedContent[query.platform]) {
        cachedContent[query.platform] = {};
    }

    if (!cachedContent[query.platform][query.queryWord]) {
        cachedContent[query.platform][query.queryWord] = {};
        updateContent(context, cachedContent[query.platform][query.queryWord]);
    }
     
};
