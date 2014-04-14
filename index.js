/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file index.js ~ 2014-03-21 11:36
 * @author sekiyika (px.pengxing@gmail.com)
 * @description
 * 
 */

/**
 * 
 */
exports.start = function(conf) {
    var sdk = require('./lib/sdk');
    sdk.start(conf);
};

//exports.start();
