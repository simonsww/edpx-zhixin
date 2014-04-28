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


var root;

exports.getRoot = function() {
    return root;
};

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
            );
    }
    catch (ex) {
        console.log('>> Not found config file `edpx-zhixin-config.js`.');
        process.exit(1);
    }

    root = path.normalize(''
        + util.findFile(conf.config, 'edpx-zhixin-config.js') 
        + path.sep
        + gConf.server.documentRoot
    ) || process.cwd();


    gConf.proxy.hostname = gConf.proxy.hostname ? gConf.proxy.hostname : 'www.baidu.com';
    gConf.proxy.port = gConf.proxy.port? gConf.proxy.port : 80;

    // 建立query到数据的索引
    indexer.index(root)
        .done(function() {
            // watch配置文件的改动
            var watch = require('./watch');
            watch.watchConfig(root);
            // 根据indexer建立的索引来watch文件
            // watch.watchRelatedFiles();

            // 启动webserver
            require('./server').start(root, gConf);
        })
        .fail(function(er) {
            edp.log.fatal(er);
        });
};
