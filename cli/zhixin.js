/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file bcs.js ~ 2014-03-21 11:40
 * @author sekiyika (px.pengxing@gmail.com)
 * @description
 * 
 */

/**
 * 命令行配置项
 *
 * @inner
 * @type {Object}
 */
var cli = {};

/**
 * @const
 * @type {Array.<string>}
 */
cli.options = ['port', 'config'];

/**
 * @const
 * @type {string}
 */
cli.description = '';


/**
 * 模块命令行运行入口
 * 
 * @param {Array} args 命令运行参数
 * @param {Object} opts 命令运行选项
 */
cli.main = function ( args, opts ) {
    require( '../index' ).start( args, opts );
};

/**
 * 命令行配置项
 *
 * @type {Object}
 */
exports.cli = cli;


