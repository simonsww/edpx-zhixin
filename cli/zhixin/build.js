/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file /cli/zhixin/build.js ~ 2014-04-22 10:20
 * @author Johnson (zoumiaojiang@gmail.com)
 * @description edp zhixin build 模块
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
 * 命令行参数配置信息
 * @const
 * @type {Array.<string>}
 */
cli.options = [];


/**
 * 命令行的描述信息
 * @const
 * @type {string}
 */
cli.description = 'build卡片项目，编译生成预览所能用的page.tpl - 开发模式';


/**
 * 命令行的使用方法
 * @const
 * @type {string}
 */
cli.usage = 'edp zhixin build [tpl_project_name]';


/**
 * 模块命令行运行入口
 * 
 * @param {Array} args 命令运行参数
 * @param {Object} opts 命令运行选项
 */
cli.main = function (args, opts) {
    require('../../lib/build').start(args, { r: false, info: 'build' });
};

/**
 * 命令行配置项
 *
 * @type {Object}
 */
exports.cli = cli;