/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file render.js ~ 2014-03-21 11:56
 * @author sekiyika (px.pengxing@gmail.com)
 * @description
 *  调用env中渲染模板的php文件，并返回渲染结果
 */

var Deferred = require('./Deferred');
var shelljs = require('shelljs');
var path = require('path');

var scriptFile = process.cwd() + path.sep + 'env' + path.sep + 'render.php';

/**
 * @param {Object} config
 * config的格式如下：
 * {
 *     'left': {
 *         'ecl_ec_weigou_b': {
 *             'tpl': '/home/sekiyika/ecom/ecl_ec_weigou/page.tpl',
 *             'data': '/home/sekiyika/ecom/ecl_ec_weigou/data.json'
 *         }
 *     },
 *     'right': {
 *         // 同上
 *     }
 * }
 */
exports.render = function(config) {

    // TODO by pengxing

    var def = new Deferred();

    var output = shelljs.exec('php ' + scriptFile, {
        silent: true
    });

    if(output.code === 0) {
        def.resolve(output);
    } else {
        def.reject(output);
    }


    return def;
};
