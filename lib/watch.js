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
var edp = require('edp-core');
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

                            // 先酌情重新编译

                            (function () {

                                // 读取相关配置

                                var file = files.file;
                                var name = file.match(/(?:^|\/)(\w+)\/config\.js$/);
                                if (!name || !(name = name[1])) {
                                    return;
                                }
                                var config = indexer.getConfigByTplName(name);
                                if (!config || !config.watch) {
                                    return;
                                }
                                file = path.join(root, file);
                                try {
                                    delete require.cache[file];
                                    var configFile = require(file);
                                }
                                catch (err) {
                                    return void edp.log.warn('[' + file + ']' + ' ' + err);
                                }
                                var cfg = configFile.config;
                                if (!cfg || !cfg.watch) {
                                    return;
                                }

                                // 处理build

                                var buildType = cfg.build; // 当前配置
                                if (buildType && !~'build,release'.indexOf(buildType)) {
                                    return void edp.log.warn('Unexpected build type: ' + buildType);
                                }
                                buildType = buildType || 'build';
                                var cacheType = config.build || 'build'; // 缓存配置
                                if (buildType !== cacheType) { // 若配置变更则重新build
                                    builder.buildUnitByPath(
                                        file.slice(0, file.lastIndexOf('/')),
                                        name,
                                        {
                                            r: buildType === 'release',
                                            info: buildType
                                        }
                                    );
                                }

                            })();

                            // 然后再更新配置

                            files['files'].forEach(function (file) {
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
        if(!config || !config.watch) {
            continue;
        }

        (function(name, config) {
            var fullpath = config.fullpath;
            watch({
                baseDir: fullpath,
                globalFilters: util.extend(
                    {},
                    globalFilters,
                    {
                        ignoreConfFiles: '!config.js',
                        ignoreReleaseFiles: '!page.tpl'
                    }
                ),
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
                                        var buildType = indexer.getConfigByTplName(name).build || 'build';
                                        builder.buildUnitByPath(
                                            fullpath,
                                            name,
                                            {
                                                r: buildType === 'release',
                                                info: buildType
                                            }
                                        );
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
