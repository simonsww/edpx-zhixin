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


exports.start = function(conf) {
    
    var path = require('path');
    var ws = require('edp-webserver');
    var proxyLinks = require('./proxyLinks');
    var Render = require('./render');
    var util = require('./util');
    var AssembleTemplate = require('./AssembleTemplate'); 
    var indexer = require('./indexer');


    try {

        /**
         * 得到edpx-zhixin-config.js模块
         * 
         * @type {Module}
         */
        var gConf = require(
                path.resolve(
                    util.findFile(conf.config, 'edpx-zhixin-config.js'), 
                    './edpx-zhixin-config'
                )
            ).zhixinConfig;
    }
    catch (ex) {
        console.log('>> Not found config file `edpx-zhixin-config.js`.');
        process.exit(1);
    }

    var root = path.normalize(''
        + util.findFile(conf.config, 'edpx-zhixin-config.js') 
        + path.sep
        + gConf.server.documentRoot
    ) || process.cwd();

    /*
    var root = util.getAbsPath(
        gConf.server.documentRoot, 
        util.findFile(conf.config, 'edpx-zhixin-config.js')
    ) || process.cwd();
    */

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

                            // 这里进行解码操作，删除header中的content-encoding
                            delete context.header['content-encoding'];

                            // 当前都是gzip，所以目前只考虑gzip的格式
                            zlib.gunzip(context.content, function(err, buffer) {
                                if(!err) {
                                    var content = buffer.toString();

                                    var requestHeaders = context.request.headers;
                                    var proxyedUrl = ['http://',requestHeaders.host,'/proxy_url'].join('');

                                    content = proxyLinks.proxyLinks(content, proxyedUrl);
                                    content = AssembleTemplate.disassemble(content);
                                    context.stop();

                                    // 在这里进行渲染，拿到渲染后的结果
                                    var queryObj = context.request.query;


                                    var promise = Render.render(indexer.getRenderConf(queryObj.wd));
                                    promise.done(function(output) {
                                        var data;
                                        if(!output) {
                                            data = {};
                                        } else {
                                            output = output.output;
                                            data = JSON.parse(output);
                                        }

                                        // 在这里进行拼装，将模板和渲染的数据进行拼装
                                        content = AssembleTemplate.assmeble(content, data);

                                        context.content = content;
                                        context.start();
                                    });
                                    promise.fail(function(output) {
                                        output = '<pre>' + output.output + '</pre>';

                                        context.content = output;
                                        context.status = 500;
                                        context.start();
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


    // 建立query到数据的索引
    indexer.index(root)
        .done(function() {
            ws.start(edpWSConfig);
        })
        .fail(function(er) {
            edp.log.fatal(er);
        });
};
