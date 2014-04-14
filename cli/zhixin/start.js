/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file /cli/zhixin/start.js ~ 2014-04-10 01:20
 * @author Johnson (zoumiaojiang@gmail.com)
 * @description edp zhixin start 模块
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
cli.options = ['port', 'config', 'root'];


/**
 * 命令行的描述信息
 * @const
 * @type {string}
 */
cli.description = '启动server，初始化开发环境';


/**
 * 命令行的使用方法
 * @const
 * @type {string}
 */
cli.usage = 'edp zhixin start [--port|-p] [--config|-c] [--root|-r]';


/**
 * 模块命令行运行入口
 * 
 * @param {Array} args 命令运行参数
 * @param {Object} opts 命令运行选项
 */
cli.main = function (args, opts) {

    var conf = {
        root: opts.root || process.cwd(),
        config: opts.config || './edpx-zhixin-config.js',
        port: opts.port || 8848
    };
    
    require('../../index').start(conf);
};

/**
 * 命令行配置项
 *
 * @type {Object}
 */
exports.cli = cli;