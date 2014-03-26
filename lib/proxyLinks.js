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


/**
 * @enum, links type we used in page, include: style href, a href, background url
 **/

var linksType = {
    "href": /<[^>]*href=(['"])([^"']+)\1[^>]*>/img,
    "src": /<src>/i, //todo, script tag
    "url": /<url>/i //todo, background replated content
};


var defaultUrl = 'http://www.baidu.com';

/**
 * replace href content
 * @internal
 * @param {string} content, the content we want replace
 * @param {string} proxyurl, the proxy url
 * @param {RegExp} regexp
 **/
var replaceLinkContent = function (content, proxyUrl) {
    content = content.replace(linksType.href, function(match, boundary, url) {
        var originUrl = url;

        if (url[0] === '/') {
            url = defaultUrl + url;
        }
        
        return  match.replace(originUrl, [proxyUrl, url].join(''));
    });

    return content;
};

/**
 * @name proxyLinks
 * @param {string} content, the content we want replace
 * @param {string} proxyUrl, the proxy url which we used
 * @param {string=} param, the param name which contain the real link
 * @return {string}
 **/
exports.proxyLinks = function (content, proxyUrl, param) {
    param = param ? param : 'url';
    proxyUrl = [proxyUrl, '?', param, '='].join(''); //todo parse the url whether contains '?'
    content = replaceLinkContent(content, proxyUrl); 
    return content;
};

