/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file watch.js ~ 2014-04-25 18:40
 * @author sekiyika (px.pengxing@gmail.com)
 * @description
 *  watch一些文件的修改，然后做一些相应的处理
 */

var path = require('path');
var watch = require('edp-watch');
var indexer = require('./indexer');
var builder = require('./build');
var util = require('./util');

var globalFilters = {
    ignoreNodeModules: '!(node_modules/*|*/node_modules/*)',
    ignoreVCSFiles   : '!(*).(git|svn|idea)/*',
    ignoreIDEFiles   : '!(*).(DS_Store)',
    ignoreNodeConfig : '!(*)(.gitignore|package.json|*.md)',
    ignoreViFiles    : '!(*).(swp|swo)'
};

var injectPlugin = function( plugins ) {
    for ( var key in plugins ) {
        global[ key ] = plugins[ key ];
    }
};

/**
 * watch config文件的改动
 */
exports.watchConfig = function(root) {

    // 启一个watch来watch config文件的改动，来更新索引
    watch({
        baseDir: root,
        globalFilters: globalFilters,
        injectPlugin: injectPlugin,
        getTasks: function() {
            return ({
                updateIndex: {
                    filters: ['**/config.js'],
                    events: [
                        'addedFiles',
                        'modifiedFiles'
                    ],
                    plugins: [
                        function(files) {
                            files = files['files'];
                            files.forEach(function(file) {
                                indexer.updateIndex(path.resolve(root, file));
                            });
                        }
                    ],
                    intervalTime: 500
                }
            });
        },
        getGroups: function() {
            return {
                'default': ['updateIndex']
            };
        }
    });

};

/**
 * watch模板相关的文件改动
 * 然后编译模板文件
 */
exports.watchRelatedFiles = function(root) {

    var data = indexer.name2ConfMap;

    var config;
    for(var name in data) {
        config = data[name];
        if(!config) {
            continue;
        }

        (function(name, config) {
            var fullpath = config.fullpath;
            watch({
                baseDir: fullpath,
                globalFilters: util.extend({}, globalFilters, {ignoreConfFiles: '!config.js'}),
                injectPlugin: injectPlugin,
                getTasks: function() {
                    return (
                        {
                            generateTemplate: {
                                filters: config.watch.filters,
                                events: config.watch.events,
                                plugins: [
                                    function(files) {
                                        // 编译page.tpl
                                        builder.buildUnitByPath(fullpath, name, {r: false, info: 'build'});
                                    }
                                ],
                                intervalTime: 500
                            }
                        }
                    );
                },
                getGroups: function() {
                    return {
                        'default': ['generateTemplate']
                    };
                }
            });
        })(name, config);
    }

};
