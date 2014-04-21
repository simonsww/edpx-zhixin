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

var shelljs = require('shelljs');
var path = require('path');
var fs = require('fs');
var wrench = require('wrench');
var edp = require('edp-core');
var Deferred = edp.Deferred;

var util = require('./util');

var scriptFile = path.normalize(__dirname + path.sep + '..' + path.sep + 'env' + path.sep + 'render.php');

/**
 * @param {Object} config
 * config的格式如下：
 * {
 *     'base': {
 *          'tpl': ['/home/sekiyika/ecom/c_base.tpl']
 *     },
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
 *
 * @return {Object}
 * 返回的数据格式如下：
 * {
 *     'left': {
 *         'ecl_ec_weigou_b': '<...>'
 *     },
 *     'right': {
 *         'ecr_ec_weigou': '<...>'
 *     }
 * }
 */
exports.render = function(config) {
    var def = new Deferred();
    if(!config) {
        def.resolve('');
        return def;
    }

    var sep = path.sep;

    // 在工作目录下创建view-ui指定的template目录
    var sdkHome = util.getSDKHome();


    // 创建工作目录
    var tplDir = [sdkHome, 'template', 'view', 'pc', 'zh-CN', 'page', 'ecom'].join(sep);
    wrench.mkdirSyncRecursive(tplDir, 0777);

    // 拷贝这些文件到sdk的工作路径下
    var left = config.left;
    for(var tpl in left) {
        var dir = tplDir + sep + tpl;
        wrench.mkdirSyncRecursive(dir, 0777);
        util.copyFile(left[tpl]['tpl'], dir + sep + 'page.tpl');
        util.copyFile(left[tpl]['data'], dir + sep + 'data.json');
    }
    var right = config.right;
    for(var tpl in right) {
        var dir = tplDir + sep + tpl;
        wrench.mkdirSyncRecursive(dir, 0777);
        util.copyFile(right[tpl]['tpl'], dir + sep + 'page.tpl');
        util.copyFile(right[tpl]['data'], dir + sep + 'data.json');
    }

    // 拷贝base到工作目录下
    if(config.base.tpl && config.base.tpl.forEach) {
        var filename;
        config.base.tpl.forEach(function(tpl) {
            filename = path.basename(tpl);
            util.copyFile(tpl, tplDir + sep + filename);
        });
    }

    delete config['base'];
    config.templatePath = sdkHome;


    // 将整个JSON串传给render.php去处理
    var cmd = 'php ' + scriptFile + ' \'' + encodeURIComponent(JSON.stringify(config)) + '\'';
    var output = shelljs.exec(cmd, {
        silent: true
    });

    if(output.code === 0) {
        def.resolve(output);
    } else {
        def.reject(output);
    }


    return def;
};
