/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file Indexer.js ~ 2014-04-18 18:04
 * @author sekiyika (px.pengxing@gmail.com)
 * @description
 *  1. 索引query到模板
 *  2. 根据query获取模板
 */


var glob = require('glob');
var edp = require('edp-core');
var Deferred = edp.Deferred;
var path = require('path');

/**
 * 索引对象
 * @type {Object}
 */
var indexes = {};

/**
 * 根据config文件索引模板
 * 
 */
exports.index = function(root) {
    var def = new Deferred();

    root = root || process.cwd();

    // 查找config.js文件
    // TODO (by pengxing) 这个config.conf文件名需要改掉
    glob(
        '**/config.conf',
        {
            cwd: root
        },
        function(er, files) {
            if(er) {
                def.reject(er);
            }

            files.forEach(function(file) {
                updateIndex(path.resolve(root, file));
            });

            def.resolve();
        }
    );


    return def;
};

/**
 * 更新索引
 */
function updateIndex(file) {
    var config;
    try {
        config = require(file);
    } catch(e) {
        edp.log.warn(e);
        return;
    }

    var data = {};
    var keys;

    if(config.config && config.config.querys && config.config.querys.length > 0) {
        keys = config.config.querys;
    } else {
        // TODO (by pengxing) 如果没有，这个key是模板的名字
        keys = [];
    }

    // TODO (by pengxing) 支持不同的query配置不同的data.json文件
    data.tpl = path.dirname(file) + path.sep + 'page.tpl';
    data.data = path.dirname(file) + path.sep + 'data.json';

    keys.forEach(function(query) {
        indexes[query] = data;
    });
}



