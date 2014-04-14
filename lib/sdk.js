/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file sdk.js ~ 2014-03-21 11:49
 * @author sekiyika (px.pengxing@gmail.com)
 * @description
 *  获取配置文件，并且启动edp-webserver的入口文件
 */

//var config = require('./config');

exports.start = function(conf) {
    
    var path = require('path');
    var ws = require('edp-webserver');
    var proxyLinks = require('./proxyLinks');
    var Render = require('./render');
    var util = require('./util');

    try {
        var gConfModule = require(util.getAbsPath(conf.config));
        var gConf = gConfModule.getConfig();
    }
    catch (ex) {
        console.log('>> Not found `edpx-zhixin-config.js` config file.');
        process.exit(1);
    }

    var edpWSConfig = {
        documentRoot: conf.root,
        port: conf.port,

        getLocations: function() {
            return [
                {
                    location: /^\/$/,
                    handler: [
                        function(context) {
                            var req = context.request;
                            req.headers.Host = gConf.proxy.hostname;
                        },
                        proxy(gConf.proxy.hostname, gConf.proxy.port)
                    ]
                },
                {
                    location: /^\/s\?.*/,
                    handler: [
                        function(context) {
                            var req = context.request;
                            req.headers.Host = gConf.proxy.hostname;
                        },
                        proxy(gConf.proxy.hostname, gConf.proxy.port),
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
                                    //
                                    //
                                    // 这里是构造的数据
                                    var promise = Render.render({
                                        'base': {
                                            'tpl': '/Users/sekiyika/temp/c_base.tpl'
                                        },
                                        'left': {
                                            'ecl_ec_weigou_b': {
                                                'tpl': '/Users/sekiyika/Documents/repos/edpx-zhixin/env/template/view/pc/zh-CN/page/ecom/ecl_ec_weigou_b/page.tpl',
                                                'data': '/Users/sekiyika/Documents/repos/edpx-zhixin/env/data.json'
                                            }
                                        }
                                    });
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
                            context.request.headers.referer = 'http://' + gConf.proxy.hostname;
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
                            req.headers.Host = gConf.proxy.hostname
                        },
                        proxy(gConf.proxy.hostname, gConf.proxy.port)
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

    ws.start(edpWSConfig);
};
