/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file /lib/localConf.js ~ 2014-04-14 17:11
 * @author Johnson (zoumiaojiang@gmail.com)
 * @description
 *  本地各卡片配置的模块
 */

var fs = require('fs');
var path = require('path');

var confs = [];

/**
 * 读取项目中的本地config
 * 
 * @param  {string} root 根目录path
 */
var readConf = function (root) {

    fs.readdirSync(root).forEach(function (item) {
        item = path.resolve(root, item);
        if (fs.statSync(item).isFile() 
            // && path.extname(item).toLowerCase() === '.conf'
            && path.basename(item).toLowerCase() === 'config.conf'
        ) {
            var module = require(item);
            if (module['config']) {
                confs.push(module);
            }
        }
        else if (fs.statSync(item).isDirectory()) {
            readConf(item);
        }
    });
};

/**
 * 得到render所需要的参数格式
 * 
 * @param  {string} root 根目录path
 * @param  {string}  wd 关键词
 * @return {Object}         render需要的参数对象
 */
exports.getRenderConf = function (root, wd) {

    var conf = {};

    confs = [];
    readConf(root);

    confs.forEach(function (item) {
        obj = item.config;
        obj.querys = obj.querys || [obj.tpl];
        obj.querys.forEach(function (query) {
            if (query === wd) {
                conf['base'] = {
                    'tpl': path.resolve(
                        __dirname, 
                        '../env/' + (obj.side === 'left' ? 'c_base.tpl' : 'c_right_base.tpl')
                    )
                };

                conf[obj.side] = {};
                conf[obj.side][obj.tpl] = {
                    'tpl': path.resolve(root, './page/' + obj.tpl + '/page.tpl'),
                    'data': path.resolve(root, './page/' +  obj.tpl + '/data.json')
                };
            }
        });
    });

    return conf;
};
