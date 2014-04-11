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
