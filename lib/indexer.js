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
 * 真实使用的索引
 * @type {Object}
 */
var _indexes = {};

/**
 * 模板名和require之后的数据的map
 * @type {Object}
 */
var name2ConfMap = {};

/**
 * 根据config文件索引模板
 * @param {string} root documentRoot
 */
function index(root) {
    var def = new Deferred();

    indexes = {};

    root = root || process.cwd();


    var excludeFilter = /.*node_modules.*/;

    // 查找config.js文件
    glob(
        '**/config.js',
        {
            cwd: root
        },
        function(er, files) {
            if(er) {
                def.reject(er);
            }

            // 稍微过滤一下
            var configs = files;
            files = [];
            configs.forEach(function(file) {
                if(!excludeFilter.test(file)) {
                    files.push(file);
                }
            });

            files.forEach(function(file) {
                updateIndex(path.resolve(root, file));
            });

            // 索引创建完毕
            _indexes = indexes;

            def.resolve();
        }
    );

    return def;
}

/**
 * 更新索引
 * 目前只处理了新增和修改，没有处理删除的情况，删除通过全量的方式来重建
 * @param {string} file 配置文件的地址
 */
function updateIndex(file) {
    var config;

    try {
        delete require.cache[file];
        config = require(file);
        config = config.config;
    } catch(e) {
        edp.log.warn('[' + file + ']' + ' ' + e);
        return;
    }

    if(!config) {
        return;
    }

    var data = {};
    var keys;

    var dirname = path.dirname(file);
    var names = dirname.split(path.sep);
    var name = names[names.length - 1];

    var platform = config.platform;
    if(!platform) {
        platform = 'pc';
    } else if(platform instanceof Array) {
        platform.forEach(function(p) {
            indexes[p] = indexes[p] || {};
        });
    } else if(typeof platform === 'string') {
        indexes[platform] = indexes[platform] || {};
    }


    // 设置fullpath
    config.fullpath = dirname;

    // 建立模板名到config的索引
    name2ConfMap[name] = config;

    if(config && config.querys && config.querys.length > 0) {
        keys = config.querys;
    } else {
        // 如果没有，这个key是模板的名字
        keys = [name];
    }

    data.name = name;

    var isWisePlatform = util.isWisePlatform(platform);
    if(!isWisePlatform) {
        data.tpl = dirname + path.sep + 'page.tpl';
        // data.data = dirname + path.sep + 'data.json';
        if(config.side && (config.side.toUpperCase() === 'LEFT' || config.side.toUpperCase() === 'RIGHT')) {
            data.side = config.side.toUpperCase();
        } else {
            data.side = util.leftOrRight(name);
        }
    }

    function add2Index(platform) {
        var row;
        var isUpdate;
        var tplConf;
        keys.forEach(function(query) {
            isUpdate = false;

            tplConf = util.extend({}, data);
            if(typeof query === 'object') {
                // 如果是配置了不同的data.json
                tplConf.data = dirname + path.sep + query.data;
                query = query.query;
            } else if(util.isWisePlatform(platform)) {
                tplConf.platform = platform;
                //wise相关的tpl需要分别设置
                tplConf['tpl'] = dirname + path.sep + platform + '.tpl';
                //默认取data.json，如果有专门的设置，则用专门的
                tplConf['data-' + platform] = dirname + path.sep + 'data-' + platform + '.json';
                tplConf['data'] = dirname + path.sep + 'data.json';
            } else {
                tplConf.data = dirname + path.sep + 'data.json';
            }

            row = indexes[platform][query];
            if(!row) {
                row = [];
            }

            for(var i = 0, l = row.length; i < l; i++) {
                if(row[i].name === name) {
                    row[i] = tplConf;
                    isUpdate = true;
                    break;
                }
            }

            // 如果不是更新，则把data push到数组最后面
            if(!isUpdate) {
                row.push(tplConf);
            }

            indexes[platform][query] = row;
        });
    }


    if(platform instanceof Array) {
        platform.forEach(function(p) {
            add2Index(p);
        });
    } else if(typeof platform === 'string') {
        add2Index(platform);
    }


}

/**
 * 获取召回的数据
 *
 * @param {string} query 当前的搜索query
 * @param {string} platform 当前平台
 * @return {Array|undefined}
 */
function getResult(query, platform) {
    platform = platform || 'pc';
    if(_indexes[platform]) {
        return _indexes[platform][query];
    }
    
}

/**
 * 根据query得出结果
 */
function getRenderConf(query, platform, gConf) {
    var result = {
        base: {
            tpl: []
        },
        left: {},
        right: {}
    };

    platform = platform || 'pc';
    if(!indexes[platform]) {
        return result;
    }

    var items = indexes[platform][query];
    if(!items || items.length === 0) {
        return result;
    }

    platform = platform || 'pc';
    if(!_indexes[platform]) {
        return result;
    }

    var items = _indexes[platform][query];
    if(!items || items.length === 0) {
        return result;
    }

    if(util.isWisePlatform(platform)) {
        if(gConf.base) {
            var absBase = util.getAbsPath(gConf.base);

            if(!absBase) {
                absBase = path.resolve( __dirname, '../env/' + gConf.base);
            }

            result.base.tplDir = absBase;
        }

        result.wise = {};
        items.forEach(function(item) {
            result.wise[item.name] = item;
        });

    } else {

        if(gConf.base) {
            // By @zoumiaojiang 添加自定义的c_base.tpl和c_right_base.tpl
            var baseObj = gConf.base;
            var cBasePath = '';
            var cRightBasePath = '';
            var absBaseLeft = util.getAbsPath(baseObj.left);
            var absBaseRight = util.getAbsPath(baseObj.right);

            if (absBaseLeft) {
                cBasePath = absBaseLeft;
            }
            else {
                cBasePath = path.resolve( __dirname, '../env/' + 'c_base.tpl');
            }

            
            if (absBaseRight) {
                cRightBasePath = absBaseRight;
            }
            else {
                cRightBasePath = path.resolve( __dirname, '../env/' + 'c_right_base.tpl');
            }

            result.base.tpl.push(cBasePath);
            result.base.tpl.push(cRightBasePath);
        }

        items.forEach(function(item) {
            result[item.side.toLowerCase()][item.name] = {
                'tpl': item.tpl,
                'data': item.data
            };
        });

    }
    

    return result;
}

/**
 * 通过模板名获取配置文件
 * @param {string|undefined} tplName
 */
function getConfigByTplName(tplName) {
    return name2ConfMap[tplName];
}

module.exports = {
    index: index,
    updateIndex: updateIndex,
    getResult: getResult,
    getRenderConf: getRenderConf,
    getConfigByTplName: getConfigByTplName,
    name2ConfMap: name2ConfMap
};
