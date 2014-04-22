/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file /cli/zhixin/release.js ~ 2014-04-22 19:20
 * @author Johnson (zoumiaojiang@gmail.com)
 * @description edp zhixin release 模块
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
cli.description = 'release卡片项目，编译生成预览所能用的page.tpl - 发布模式';


/**
 * 命令行的使用方法
 * @const
 * @type {string}
 */
cli.usage = 'edp zhixin release [tpl_project_name]';


/**
 * 模块命令行运行入口
 * 
 * @param {Array} args 命令运行参数
 * @param {Object} opts 命令运行选项
 */
cli.main = function (args, opts) {
    require('../../lib/build').start(args, { r: true , info: 'release'});
};

/**
 * 命令行配置项
 *
 * @type {Object}
 */
exports.cli = cli;