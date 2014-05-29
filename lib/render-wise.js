/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file render-wise.js ~ 2014-05-25 20:42
 * @author mengke01 (kekee000@gmail.com)
 * @description
 *  调用env中渲染模板的php文件，并返回渲染结果
 */

var path = require('path');
var fs = require('fs');
var wrench = require('wrench');
var edp = require('edp-core');
var Deferred = edp.Deferred;

var util = require('./util');

var scriptFile = path.normalize(__dirname + path.sep + '..' + path.sep + 'env' + path.sep + 'render-wise.php');

/**
 * 缓存的配置信息
 * 
 * @namespace
 */
var cacheConfig = {};

/**
 * wise会对tpl预处理，将platform替换掉，这里进行同样的处理
 * 
 * @param {string} tplContent 模板内容
 * @param {string} platform 平台
 * @return {string} 处理后内容
 */
function rewriteTplContent(tplContent, platform) {
    var content = String(tplContent)
        .replace(
            /\{%extends\s+"([^`]+)`\$pageData\.tpl`\.(?:`\$pageData\.tplType`|tpl)"%\}/, 
            function($0, $1) {
                return '{%extends "' + $1 + platform + '.tpl"%}';
            }
        );
    return content;
}


/**
 * @param {Object} php 指定php可运行脚本的位置
 * @param {Object} config
 * config的格式如下：
 * {
 *     'base': {
 *          'tpl': ['/home/sekiyika/searchaladdin/aladdin/base/iphone.tpl']
 *     },
 *     'wise': {
 *         'zx_medical': {
 *             'tpl': '/home/sekiyika/searchaladdin/zx_medical/iphone.tpl',
 *             'data': '/home/sekiyika/searchaladdin/zx_medical/data.json',
 *             'data-iphone': '/home/sekiyika/searchaladdin/zx_medical/data-iphone.json'
 *         }
 *     }
 * }
 *
 * @return {Object}
 * 返回的数据格式如下：
 * {
 *     'wise': {
 *         'zx_medical': '<...>'
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

    // 创建工作目录，因为渲染引擎的原因，这里和wise线上默认的目录不同
    var tplDir = [sdkHome, 'template', 'view', 'wise', 'zh-CN', 'page', 'ecom'].join(sep);

    if(!fs.existsSync(tplDir)) {
        wrench.mkdirSyncRecursive(tplDir, 0777);
    }


    // 拷贝base到工作目录下
    var baseTplDir = config.base.tplDir;
    if(baseTplDir && cacheConfig.baseTplDir !== baseTplDir && fs.existsSync(baseTplDir)) {

        wrench.copyDirSyncRecursive(baseTplDir, tplDir, {
            forceDelete: true
        });

        cacheConfig.baseTplDir = baseTplDir;
    }

    delete config.base;
    config.templatePath = sdkHome;


    // 拷贝这些文件到sdk的工作路径下
    var wise = config.wise;
    for(var tpl in wise) {
        var dir = tplDir + sep + tpl;
        if(!fs.existsSync(dir)) {
            wrench.mkdirSyncRecursive(dir, 0777);
        }
        
        var platform = wise[tpl].platform;

        var content = fs.readFileSync(wise[tpl]['tpl']);
        content = rewriteTplContent(content, platform);
        fs.writeFileSync(dir + sep  +'page.tpl', content);
        
        var data_platform = wise[tpl]['data-' + platform];
        if( data_platform && fs.existsSync(data_platform)) {
            util.copyFile(data_platform, dir + sep + 'data.json');
            delete wise[tpl]['data-' + platform];
        }
        else {
            util.copyFile(wise[tpl]['data'], dir + sep + 'data.json');
        }

        wise[tpl].data = dir + sep + 'data.json';

        edp.log.info(edp.chalk.yellow('Render') + ' ' + tpl + ': ' + wise[tpl]['tpl'] + ' ' + wise[tpl]['data']);
    }

    var file = util.getSDKHome() + path.sep + 'data-wise.json';
    fs.writeFileSync(file, JSON.stringify(config));

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
