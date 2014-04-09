/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file config.js ~ 2014-03-21 11:59
 * @author sekiyika (px.pengxing@gmail.com)
 * @description
 *  配置文件，包括edp-webserver的配置
 */

var proxyLinks = require('./proxyLinks');
var Render = require('./render');
/**
 * edp webserver的配置文件
 */
exports.edpWSConfig = {
    documentRoot: process.cwd(),
    port: '8848',

    getLocations: function() {
        return [
            {
                location: /^\/$/,
                handler: [
                    function(context) {
                        var req = context.request;
                        req.headers.Host = 'www.baidu.com'
                    },
                    proxy('www.baidu.com', 80)
                ]
            },
            {
                location: /^\/s\?.*/,
                handler: [
                    function(context) {
                        var req = context.request;
                        req.headers.Host = 'www.baidu.com';
                    },
                    proxy('www.baidu.com', 80),
                    function(context) {
                        var response = context.response;

                        context.stop();
                        var zlib = require('zlib');

                        // 当前都是gzip，所以目前只考虑gzip的格式
                        zlib.gunzip(context.content, function(err, buffer) {
                            if(!err) {
                                var content = buffer.toString();

                                var requestHeaders = context.request.headers;
                                var proxyedUrl = ['http://',requestHeaders.host,'/proxy_url'].join('');
                                content = proxyLinks.proxyLinks(content, proxyedUrl);

                                context.stop();
                                // TODO (by who) 在这里进行渲染，拿到渲染后的结果
                                var promise = Render.render(context);
                                promise.done(function(output) {
                                    output = output.output;

                                    content = output;

                                    // TODO (by who) 在这里进行拼装，将模板和渲染的数据进行拼装

                                    zlib.gzip(content, function(err, content) {
                                        context.content = content;
                                        context.start();
                                    });
                                });
                                promise.fail(function(output) {
                                    output = '<pre>' + output.output + '</pre>';
                                    content = output;

                                    zlib.gzip(content, function(err, content) {
                                        context.content = content;
                                        context.status = 500;
                                        context.start();
                                    });
                                });
                            } else { 
                                // 发生服务器错误
                                context.status = 500;
                                // 这一步发生错误，也得到最后啊
                                context.start();
                            }

                        });

                    }
                ]
            },
            {
                location: /^\/proxy_url.*/,
                handler: [function(context) {
                    var query = context.request.query;
                    if(query.url) {
                        
                        var urlLib = require('url');
                        var url = urlLib.parse(query.url);
                        // 重写request的url
                        context.request.url = url.path;
                        context.request.headers.host = url.hostname;
                        //增加referer，以通过百度对图片的验证
                        context.request.headers.referer = 'http://www.baidu.com';
                        // 代理一下
                        (proxy(url.hostname, url.port ? url.port : 80))(context);
                    }
                }]
            },
            {
                location: /^.*$/,
                handler: [
                    function(context) {
                        var req = context.request;
                        req.headers.Host = 'www.baidu.com'
                    },
                    proxy('www.baidu.com', 80)
                ]
            }
        ];
    },

    injectResource: function ( res ) { 
        for ( var key in res ) { 
            global[ key ] = res[ key ];
        }   
    }


};

