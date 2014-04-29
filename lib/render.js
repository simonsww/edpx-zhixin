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
 * @param {Object} php 指定php可运行脚本的位置
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
exports.render = function(php, config) {
    php = php ? php : 'php';

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

        edp.log.info(tpl + ': ' + left[tpl]['tpl'] + ' ' + left[tpl]['data']);
    }
    var right = config.right;
    for(var tpl in right) {
        var dir = tplDir + sep + tpl;
        wrench.mkdirSyncRecursive(dir, 0777);
        util.copyFile(right[tpl]['tpl'], dir + sep + 'page.tpl');
        util.copyFile(right[tpl]['data'], dir + sep + 'data.json');

        edp.log.info(tpl + ': ' + right[tpl]['tpl'] + ' ' + right[tpl]['data']);
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


    var file = util.getSDKHome() + path.sep + 'data.json';
    fs.writeFileSync(file, JSON.stringify(config));

    /*
    // 将整个JSON串传给render.php去处理
    var cmd = php + ' ' + scriptFile + ' \'' + file + '\'';
    // 下面这种传参的方式在windows下会造成php解析json出错
    // var cmd = 'php ' + scriptFile + ' \'' + encodeURIComponent(JSON.stringify(config)) + '\'';
    var output = shelljs.exec(cmd, {
        silent: true
    });

    if(output.code === 0) {
        def.resolve(output);
    } else {
        def.reject(output);
    }
    return def;
    */


    var promise = exec(php, [ scriptFile ]);
    promise.done(function(data) {
        def.resolve(data);
    }).fail(function() {
        def.reject();
    });

    return def;
};

function exec(handler, args) {
    var def = new Deferred();

    var time = new Date();
    args = args || {};

    var child = require('child_process').spawn(
        handler,
        args,
        {}
    );

    var bodyBuffer = [];

    child.stderr
        .on( 'data', function () {
            edp.log.info(handler + ' error data [' + [].slice.call(arguments) + ']');
            def.reject();
        });

    child.stdout
        .on( 'data', function( buf ) {
            return bodyBuffer.push(buf);
        }
    );
    child.on('close', function(code) {
        if(code !== 0) {
            bodyBuffer = [ '渲染出错' ];
        }
        
        def.resolve(
            {
                code: code,
                output: bodyBuffer.join('')
            }
        );
    });

    return def;
}
