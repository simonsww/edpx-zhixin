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
    var pathArr = this.getAbsPath(somePath).split('/');
    while (pathArr.length > 0) {
        var tmpPath = path.resolve(pathArr.join('/'), filename);
        if (fs.existsSync(tmpPath)) {
            return pathArr.join('/');
        }
        else {
            pathArr.pop();
        }
    } 
    return null;
}

