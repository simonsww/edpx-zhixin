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

var config = require('./config');

exports.start = function() {
    var ws = require('edp-webserver');
    ws.start(config['edpWSConfig']);
};
