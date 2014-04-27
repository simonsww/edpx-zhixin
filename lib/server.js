/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file server.js ~ 2014-04-26 14:35
 * @author sekiyika (px.pengxing@gmail.com)
 * @description
 *  启动webserver
 */


var ws = require('edp-webserver');
var urlLib = require('url');
var path2RegExp = require('path-to-regexp');

var proxyLinks = require('./proxyLinks');
var Render = require('./render');
var util = require('./util');
var AssembleTemplate = require('./AssembleTemplate'); 
var indexer = require('./indexer');


/**
 * 判断请求是否需要代理，如果需要代理，返回代理的文件内容
 * @param {http.ClientRequest} request
 */
function shouldProxy(request) {
    var referer = request.headers.referer;

    var tpls;

    if(referer) {
        var refs = urlLib.parse(referer, true);
        var query = refs.query.wd;
        var platform = refs.query.dsp || 'pc';

        var renderConf = indexer.getRenderConf(query, platform);
        tpls = util.extend({}, renderConf.left, renderConf.right);

    } else {
        // 如果没有referer，则运行所有的规则
        tpls = indexer.name2ConfMap;
    }

    var url = request.pathname;

    var config;
    var as;
    var item;
    var location;
    var i;
    for(var name in tpls) {
        config = indexer.name2ConfMap[name];

        as = config.ajaxs;
        if(as && as.length > 0) {
            for(i = 0, l = as.length; i < l; i++) {
                item = as[i];
                location = item.url;

                if ( 
                    ( location instanceof RegExp && location.test( url ) )
                        || ( typeof location == 'string'
                            && path2RegExp( location, null, { sensitive: true } ).exec( url )
                           )
                       || ( typeof location == 'function' && location( request ) )
                   ) {
                       request._proxy_handler = item.handler;
                       // 匹配成功
                       return true;
                   }
            }
        }
    }

}

/**
 * 处理proxy的返回
 * @param {Object} context
 */
function handleProxy(context) {
    var request = context.request;

    var handler = request._proxy_handler;
    if(typeof handler === 'string') {
        context.content = handler;
    } else if(typeof handler === 'function') {
        context.content = handler();
    }
}

/**
 * 渲染
 * @param {Object} context
 * @param {string} root
 * @param {Object} gConf
 */
function render(context, root, gConf) {
    var time= new Date();
    context.stop();

    var queryObj = context.request.query;

    // 在这里进行渲染，拿到渲染后的结果
    var promise = Render.render(
        gConf.php ? gConf.php : 'php',
        indexer.getRenderConf(queryObj.wd, queryObj.dsp)
    );
    promise.done(function(output) {
        var data;
        if(!output) {
            data = {};
        } else {
            
            // 防止有notice和warming导致json串不能解析
            output = output.output.replace(/[^{}]*(.*)[^{}]*/g, 
                function () {
                    return arguments[1];
                }
            );
            data = JSON.parse(output);
        }

        context._renderResult = data;
        console.log('Render:' + (new Date - time));

        context.start();
    });
    promise.fail(function(output) {
        context._renderResult = '<pre>' + output.output + '</pre>';
        context.start();
    });

}


exports.start = function(root, gConf) {

    /**
     * edp webserver的配置文件
     * 
     * @type {Object}
     */
    var edpWSConfig = {
        
        /**
         * 配置ws的documentRoot
         */
        documentRoot: root,
        port: gConf.server.port,
        overrideProxyRequestHeader: function(headers) {
            headers.Host = gConf.proxy.hostname;
        },

        getLocations: function() {
            return [
                {
                    location: function(request) {
                        return shouldProxy(request);
                    },
                    handler: function(context) {
                        handleProxy(context);
                    }
                },
                {
                    location: /^\/$/,
                    handler: proxy(gConf.proxy.hostname, gConf.proxy.port)
                },
                {
                    location: /^\/s\?.*/,
                    handler: [
                        function(context) {
                            var count = 0;
                            var start = context.start;
                            var stop = context.stop;
                            context.start = function() {
                                count--;
                                if(count == 0) {
                                    context.start = start;
                                    context.stop = stop;
                                    start();
                                }
                            };
                            context.stop = function() {
                                count++;
                                stop();
                            };

                            // proxy将代理返回的内容存放在context.content中
                            proxy(gConf.proxy.hostname, gConf.proxy.port)(context);

                            // 渲染
                            render(context, root, gConf);
                        },
                        function(context) {

                            // 这里进行解码操作，删除header中的content-encoding
                            delete context.header['content-encoding'];

                            if(typeof context._renderResult === 'string') {
                                context.content = context._renderResult;
                                context.status = 500;
                                return;
                            }

                            context.stop();
                            var zlib = require('zlib');

                            // 当前都是gzip，所以目前只考虑gzip的格式
                            zlib.gunzip(context.content, function(err, buffer) {
                                if(!err) {
                                    var content = buffer.toString();

                                    var queryObj = context.request.query;

                                    // 通过webserver来代理这些静态文件
                                    // var requestHeaders = context.request.headers;
                                    // var proxyedUrl = ['http://',requestHeaders.host,'/proxy_url'].join('');
                                    // content = proxyLinks.proxyLinks(content, proxyedUrl);
                                    content = AssembleTemplate.disassemble(queryObj.dsp, content);

                                    // 在这里进行拼装，将模板和渲染的数据进行拼装
                                    content = AssembleTemplate.assmeble(content, context._renderResult);

                                    context.content = content;
                                    context.start();
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
                    handler: [
                        function(context) {
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
                        }
                    ]
                },
                {
                    location: /^.*$/,
                    handler: proxy(gConf.proxy.hostname, gConf.proxy.port)
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
