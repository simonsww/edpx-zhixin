/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file util.js ~ 2014-03-24 16:47
 * @author sekiyika (px.pengxing@gmail.com)
 * @description
 *  工具包
 */


var fs = require('fs');
var path = require('path');
var wiseWordDecoder = require('./wise-word-decoder');

/**
 * 获取项目根目录，根据edp-zhixin-config.js文件
 * @return {string|undefined}
 */
exports.getRootDirectory = function() {
    // 有`.edpproj`文件夹的就是项目根目录
    //
    // 出于这个问题，项目根目录找的是最近的那个目录，而包的根目录找的是最远的那个
    //
    //
    // 这里全部使用edp.path，防止require('path')和edp.path路径的不一致，
    // 主要是由于edp.path做了一次normalize
    var projectRoot = exports.resolve(cwd || process.cwd());
    var systemRoot = exports.resolve('/');
    while (projectRoot !== systemRoot) {
        // 如果是项目根就直接返回，不用再找了
        if (fs.existsSync(exports.join(projectRoot, '.edpproj'))) {
            return projectRoot;
        }

        // 包根目录记录后不直接返回，还要继教往上找
        if (fs.existsSync(exports.join(projectRoot, 'edp-zhixin-config.js'))) {
            return projectRoot;
        }

        projectRoot = exports.resolve(projectRoot, '..');
    }

    return;
};

/**
 * 获取sdk的工作路径
 */
exports.getSDKHome = function() {
    var dir = process.env[
        require( 'os' ).platform() === 'win32' 
        ? 'APPDATA'
        : 'HOME'
    ] + path.sep + '.edpx-zhixin';

    // 如果这个目录不存在，则创建这个目录
    if(!fs.existsSync(dir)) {
        fs.mkdirSync(dir);
    }

    return dir;
};

/**
 * 拷贝文件
 * @param {string} source 源文件路径
 * @param {string} dest 目标文件路径
 */
exports.copyFile = function(source, dest) {
    var content = fs.readFileSync(source);
    fs.writeFileSync(dest, content);
};

/**
 * 得到绝对路径
 * 
 * @param  {string} argsPath 路径
 * @param  {string} relaPath 依照路径（绝对的路径）
 * @return {string}          绝对路径
 */
exports.getAbsPath = function (argsPath, relaPath) {

    if (fs.existsSync(argsPath) && /^(\/\\)/.test(argsPath)) {
        return argsPath;
    }
    else {
        var absPath = path.resolve(relaPath ? relaPath : process.cwd(), argsPath);
        return fs.existsSync(absPath) ? absPath : null;
    }
};

/**
 * 删除文件夹
 * 
 * @param  {string} dirPath 文件夹绝对路径
 */
exports.rmdir = function (dirPath) {
    var files = [];
    var me = this;
    if(fs.existsSync(dirPath)) {
        files = fs.readdirSync(dirPath);
        files.forEach(function (file, index){
            var curPath = path.resolve(dirPath, file);
            if(fs.statSync(curPath).isDirectory()) { // recurse
                me.rmdir(curPath);
            } 
            else { // delete file
                fs.unlinkSync(curPath);
            }
        });
        fs.rmdirSync(dirPath);
    }
};

/**
 * 找文件
 * 
 * @param  {string} somePath 文件的依照文件夹
 * @param  {string} filename 要查找的文件名
 * @return {string}          返回文件的所在真实目录
 */
exports.findFile = function (somePath, filename) {
    var pathArr = this.getAbsPath(somePath).split(path.sep);
    while (pathArr.length > 0) {
        var tmpPath = path.resolve(pathArr.join(path.sep), filename);
        if (fs.existsSync(tmpPath)) {
            return pathArr.join(path.sep);
        }
        else {
            pathArr.pop();
        }
    } 
    return null;
};

/**
 * 根据模版名判断模板在左还是右
 */
exports.leftOrRight = function(name) {
    return (name.indexOf('ecr') === 0 ? 'RIGHT' : 'LEFT');
};

/**
 * 合并对象
 *
 * @param  {Object} target 源对象
 * @return {Object}        目标对象
 */
exports.extend = function(target) {
    
    for ( var i = 1; i < arguments.length; i++ ) {
        
        var obj = arguments[i];
        if (obj == null) {
            break;
        }
        for (var key in obj) {
            if (obj.hasOwnProperty(key)) {
                target[key] = obj[key];
            }
        }
    }
    return target;
};

/**
 * 是否wise平台
 * 
 * @param {string|Array} platform 平台参数
 * @return {boolean} 是否
 */
exports.isWisePlatform = function(platform) {
    var plat = {
        iphone: true,
        utouch: true,
        big: true,
        middle: true,
        wml: true
    };

    if(typeof platform === 'string') {
        return !!plat[platform];
    }
    //数组里全部为wise平台才通过
    else if(platform instanceof Array) {
        var flag = true; 
        platform.forEach(function(item) {
            if(!plat[item]) {
                flag = false;
            }
        });
        return flag;
    }
    
    return false;
};

/**
 * 解码wise的word字符串
 * 
 * @param {string} word 参数字符串
 * @param {int} ix ix参数
 * @return {string} 解码后字符串
 */
exports.decodeWiseWord = function(word, ix) {

    //非url编码直接返回
    if(!word.match(/%[0-9ABCDEFG]{2}/i)) {
        return word;
    }

    var ret = false;

    //尝试wise解码
    if('' != ix) {
        var ret = wiseWordDecoder(word, ix);
    }

    if(ret === false) {
        //尝试自动解码
        try {
            ret = decodeURIComponent(word);
        } catch (ex){
            ret = word;
        }
    }

    return ret;
}