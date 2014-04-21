/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file indexer.js ~ 2014-04-18 18:04
 * @author sekiyika (px.pengxing@gmail.com)
 * @description
 *  1. 索引query到模板
 *  2. 根据query获取模板
 */


var glob = require('glob');
var edp = require('edp-core');
var Deferred = edp.Deferred;
var path = require('path');
var util = require('./util');

/**
 * 索引对象
 * @type {Object}
 */
var indexes = {};

/**
 * 根据config文件索引模板
 * 
 */
function index(root) {
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
}

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

    var dirname = path.dirname(file);
    var names = dirname.split(path.sep);
    var name = names[names.length - 1];

    if(config.config && config.config.querys && config.config.querys.length > 0) {
        keys = config.config.querys;
    } else {
        // 如果没有，这个key是模板的名字
        keys = [name];
    }

    // TODO (by pengxing) 支持不同的query配置不同的data.json文件
    data.name = name;
    data.tpl = path.dirname(file) + path.sep + 'page.tpl';
    data.data = path.dirname(file) + path.sep + 'data.json';
    if(config.side === 'LEFT' || config.side === 'RIGHT') {
        data.side = config.side.toUpperCase();
    } else {
        data.side = util.leftOrRight(name);
    }

    var row;
    var isUpdate = false;
    keys.forEach(function(query) {
        var row = indexes[query];
        if(!row) {
            row = [];
        }

        for(var i = 0, l = row.length; i < l; i++) {
            if(row[i].name === name) {
                row[i] = data;
                isUpdate = true;
                break;
            }
        }

        // 如果不是更新，则把data push到数组最后面
        if(!isUpdate) {
            row.push(data);
        }

        indexes[query] = row;
    });
}

/**
 * 获取召回的数据
 *
 * @param {string} query 当前的搜索query
 * @return {Array|undefined}
 */
function getResult(query) {
    return indexes[query];
}

function getRenderConf(query) {

    var items = indexes[query];
    if(items.length === 0) {
        return;
    }

    var result = {
        base: [],
        left: {},
        right: {}
    };

    result.base.push(
        path.resolve( __dirname, '../env/' + 'c_base.tpl')
    );
    result.base.push(
        path.resolve( __dirname, '../env/' + 'c_right_base.tpl')
    );

    items.forEach(function(item) {
        result[item.side.toLowerCase()][item.name] = {
            'tpl': item.tpl,
            'data': item.data
        };
    });

    return result;
}


module.exports = {
    index: index,
    updateIndex: updateIndex,
    getResult: getResult,
    getRenderConf: getRenderConf
};
