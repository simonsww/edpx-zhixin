/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file build-utpl.js ~ 2014-05-22 17:20
 * @author kekee000 (kekee000@gmail.com)
 * @description
 * 编译utpl模板
 */

var fs = require('fs');
var utpl = require('./utpl');

/**
 * 获取comment中配置的注释
 * 形如: /*utpl:innerFn:false,xxx=xxx*\/
 * @param {string} code utpl模板
 * @return {Object} 配置项目
 */
function getCommentConfig(code) {
    var re = /\/\*utpl:(.*?)\*\//m;
    var match = null;
    if(match = re.exec(code)) {
        var conf = {};
        match[1].replace(/\b(\w+)\s*=\s*([^,\b]+)/g, function(full, k, v) {
            conf[k.trim()] = v.trim();
        });
        return conf;
    }
    return false;
}


/**
 * 编译utpl模板
 * 
 * @param {string} filePath 模板路径
 * @param {string} compiledName 编译后函数名
 * @param {Object} options 编译参数
 * @return {string} 编译后函数字符串
 */
function compileUtpl(filePath, compiledName, options) {
    options = options || {};
    var code = fs.readFileSync(filePath, 'utf8');

    var conf = getCommentConfig(code);

    if('false' === conf.innerFn) {
        options.innerFn = false;
    }

    var stripped = String(code).replace(/\/\*[\s\S]*?\*\//g, '');

    if('false' !== conf.strip) {
        stripped = stripped.replace(/<!--(?:[\s\S]*?)-->/g, '').replace(/\s+/g, ' ');
    }

    try {
        var fn = utpl.template(stripped, null, options).source.toString();
        fn = fn.replace(/^function[^(]*\(/, function() {
            return 'function '+ compiledName + '(';
        });
        return fn;
    }
    catch (ex) {
        edp.log.fatal(
            '\n    >> Compile utpl failed\n    >> file: %s\n    >> msg: %s\n    >> detail: %s',
            filePath,
            ex.message,
            ex
        );
        process.exit(1);
    }
}

/**
 * 根据文件名获得函数名字
 * 
 * @param {string} fileName 文件名
 * @return {string} 函数名
 */
function getFnName(fileName) {
    var fnName = fileName.replace(/\\/g, '/');

    if(fnName.indexOf('/') !== -1) {
        fnName = fnName.slice(fnName.lastIndexOf('/') + 1);
    }

    fnName = fnName.replace(/\.utpl$/, '')
        .replace(/[^a-zA-Z0-9-]/g, '')
        .replace(/-\w/g, function(full) {
            return full[1].toUpperCase();
        });
    fnName = fnName + 'Render';
    return fnName;
}

exports.getFnName = getFnName;

exports.compile = compileUtpl;