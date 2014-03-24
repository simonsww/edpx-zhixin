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
                        req.headers.Host = 'www.baidu.com'
                    },
                    proxy('www.baidu.com', 80),
                    function(context) {
                        var response = context.response;
                        // TODO (by pengxing) 处理gzip的情况

                    }
                ]
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

