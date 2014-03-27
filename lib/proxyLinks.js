/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file proxy-links.js
 * @author daihuiming (moonreplace@gmail.com)
 * @description
 *  Replace all internal links which located the current page with the proxy url
 */

var async = require('async');

/**
 * @enum, links type we used in page, include: style href, a href, background url
 **/

var linksType = {
    "href": /<[^>]*href=(['"])([^"']+)\1[^>]*>/img,
    "src": /<[^>]*src=(['"])([^"']+)\1[^>]*>/img,
    "url": /<url>/i //todo, background replated content
};


var defaultHost = 'http://www.baidu.com';

/**
 * replace href content
 * @internal
 * @param {string} content, the content we want replace
 * @param {string} proxyUrl, the proxy url
 * @param {RegExp} linkType, link type的正则表达式 
 * @param {string} originalUrl
 * @return {string} 替换后的内容
 **/
var replaceLinkContent = function (content, proxyUrl, linkType, originalHost) {
    content = content.replace(linkType, function(match, boundary, url) {
        var originUrl = url;
        if (url[0] === '/') {
            url = originalHost + url;
        }
        return  match.replace(originUrl, [proxyUrl, url].join(''));
    });

    return content;
};

/**
 * @name proxyLinks
 * @param {string} content, the content we want replace
 * @param {string} proxyUrl, the proxy url which we used
 * @param {string} param, the param name which contain the real link
 * @param {string} originalUrl, 如果是绝对路径，则依据当前的host
 * @return {string}
 **/
exports.proxyLinks = function (content, proxyUrl, param, originalHost) {
    param = param ? param : 'url';
    originalHost = originalHost ? originalHost : defaultHost;
    proxyUrl = [proxyUrl, '?', param, '='].join(''); //todo parse the url whether contains '?'
   
    //用来插入所有的要执行的函数
    /*var executedArr = [];

    for(var key in linksType) {
        executedArr.push(function (content, callback) {
            content = replaceLinkContent(content, proxyUrl, linksType[key], originalHost);
            callback(null, content);
        });
    }

    //插入一个空的第一次执行的函数
    executedArr.unshift(function (callback) {
        callback(null, content); 
    });

    var updatedContent;
    
    async.waterfall(executedArr, function (error, contents) {
        updatedContent = contents[contents.length -1]; 
    });*/

    updatedContent = content;

    for(var key in linksType) {
        updatedContent = replaceLinkContent(updatedContent, proxyUrl, linksType[key], originalHost);
    } 
    
    return updatedContent;
};

