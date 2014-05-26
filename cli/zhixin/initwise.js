/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file /cli/zhixin/init.js ~ 2014-5-26 11:31
 * @author mengke01 (kekee000@gmail.com)
 * @description edp zhixin initiwse 模块，初始化无线相关模块代码
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
cli.options = ['root:', 'data', 'platform:'];


/**
 * 命令行的描述信息
 * @const
 * @type {string}
 */
cli.description = '新建一个无线卡片项目';


/**
 * 命令行的使用方法
 * @const
 * @type {string}
 */
cli.usage = 'edp zhixin initwise card_project_name [--root|-r] [--data|-d] [--platform|-p]';


var fs = require('fs');
var path = require('path');
var util = require('../../lib/util');
var edp = require('edp-core');


/**
 * 初始化
 *
 * @param {Array} args 命令运行参数
 * @param {Object} opts 命令运行选项
 */
var initFiles = function (args, opts) {

    var projectPath = path.join(opts.root, './page', args[0]);

    if (fs.existsSync(projectPath)) {
        var rl = require('readline').createInterface({
            input: process.stdin,
            output: process.stdout
        });
        rl.question('>> There is a exist project, cover it ?(y/n)', function (a) {
            if ('Y' === a.trim().toUpperCase()) {
                rl.close();
                util.rmdir(projectPath);
                createFiles(args, opts);
            }
            else {
                rl.close();
            }
        });
    }
    else {
        createFiles(args, opts)
    }
};

/**
 * 创建文件和文件夹
 * 
 * @param {Array} args 命令运行参数
 * @param {Object} opts 命令运行选项
 */
var createFiles = function (args, opts) {

    var platform;

    if (!opts.platform) {
        platform = 'iphone';
    }
    else if(/^(iphone|utouch|big)(\,(iphone|utouch|big))*$/.test(opts.platform)) {
        platform = opts.platform;
    }
    else {
        edp.log.fatal('>> platform mast be `%s`.', 'iphone,utouch,big');
    }

    var platforms = platform.split(',');

    /**
     * 初始化的模版
     * 
     * @type {Object}
     */
    var templates = {

        //炫版
        '_iphone.tpl': ''
            + '{%extends "aladdin/base/`$pageData.tpl`.`$pageData.tplType`"%} \n'
            + '{%block name="wrapper_prefix"%}\n'
            + '<div class="result card-result <!--//TODO 模板类名-->" srcid="{%$alaData.srcid%}">\n'
            + '{%/block%}\n'
            + '{%block name=\'content\'%}\n'
            + '<style>\n'
            + '{%*include file="./iphone/page.less"*%}\n'
            + '</style>\n'
            + '{%*include file="./iphone/page.html"*%}\n'
            + '<script>\n'
            + 'A.init(function() {\n'
            +     'var $ = Zepto;\n'
            +     '{%*include file="./iphone/page.js"*%}\n'
            + '});\n'
            + '</script>\n'
            + '{%/block%}',

        //简版
        '_utouch.tpl': ''
            + '{%extends "aladdin/base/`$pageData.tpl`.`$pageData.tplType`"%}\n'
            + '{%block name="wrapper_prefix"%}\n'
            + '<div class="<!--//TODO 模板类名-->" srcid="{%$alaData.resourceid%}">\n'
            + '{%/block%}\n'
            + '{%block name="content"%}\n'
            + '<style>\n'
            + '{%*include file="./utouch/page.less"*%}\n'
            + '</style>\n'
            + '{%strip%}{%*include file="./utouch/page.html"*%}{%/strip%}\n'
            + '<script>\n'
            + 'document.addEventListener( "DOMContentLoaded", function() {\n'
            +    '//TODO \n'
            + '});\n'
            + '</script>\n'
            + '{%/block%}',

        //xhtml版
        '_big.tpl': ''
            + '{%extends "aladdin/base/`$pageData.tpl`.`$pageData.tplType`"%}\n'
            + '{%block name="wrapper_prefix"%}\n'
            + '<div class="<!--//TODO 模板类名-->" srcid="{%$alaData.resourceid%}">\n'
            + '{%/block%}\n'
            + '{%block name="content"%}\n'
            + '<style>/*<![CDATA[*/\n'
            + '{%*include file="./big/page.less"*%}\n'
            + '/*]]>*/</style>\n'
            + '{%strip%}{%*include file="./big/page.html"*%}{%/strip%}\n'
            + '<script>/*<![CDATA[*/\n'
            + 'document.addEventListener( "DOMContentLoaded", function() {\n'
            +   '//TODO\n'
            + '});\n'
            + '/*]]>*/</script>\n'
            + '{%/block%}',


        'data.json': '{\n    '
            + '"item": {\n        '
            +     '"display": {\n            '
            +         '"extData": {\n            \n            '
            +         '},\n            '
            +         '"tplData": {\n            \n            '
            +         '}\n        '
            +     '}\n    '
            + '}\n}',

        'page.less': '',
        'page.html': '',
        'page.js': '',

        'config.js': '\n\nexports.config = {\n    '
            +     'tpl: \'' + args[0] + '\',\n    '
            +     'querys: [\'' + args[0] + '\', {\n        '
            +         'query: "",\n        '
            +         'data: "data.json"\n    '
            +     '}],\n    '
            +     'platform: [\'' + platforms.join('\',\'') + '\'],\n    '
            +     '/**ajaxs: [{\n        '
            +         'url: "",\n        '
            +         'file: "",\n        '
            +         'handler: function (context) {\n            '
            +             'return "ajax json data~";\n        '
            +         '}\n    '
            +     '}],*/\n    '
            +     'amds: [{\n        \n    }],\n    '
            +     'watch: {\n        '
            +         'filters: [\n            '
            +             '"_' + platforms.join('.tpl","_') + '.tpl",\n            '
            +             '"*.less"\n        '
            +         '],\n        '
            +         'events: [\n            '
            +             '"addedFiles",\n            '
            +             '"modifiedFiles"\n        '
            +         ']\n    '
            +     '}\n'
            + '};'
    };

    /**
     * 需要初始化的文件
     * 
     * @type {Array<string>}
     */
    var files = [
        'data.json',
        'config.js'
    ];

    var dirs = [];

    platforms.forEach(function(item) {
        dirs.push(item);

        files.push( '_' + item + '.tpl' );
        files.push({
            file: './' + item + '/page.less',
            template: 'page.less'
        });
        files.push({
            file: './' + item + '/page.html',
            template: 'page.html'
        });
        files.push({
            file: './' + item + '/page.js',
            template: 'page.js'
        });
    });

    var projectPath = path.join(opts.root, './page', args[0]);
    var pageRoot = path.join(opts.root, './page');
    
    if (!fs.existsSync(pageRoot)) {
        edp.log.fatal('>> Please create `%s` first.', pageRoot);
    }
    else {
        fs.mkdirSync(projectPath);
        edp.log.info('>> `%s` create success.', projectPath);
        dirs.forEach(function (dir) {
            var dirPath = path.resolve(projectPath, dir);
            if (!fs.existsSync(dirPath)) {
                fs.mkdirSync(dirPath);
            }
            edp.log.info('>> `%s` create success.', dirPath);
        });

        files.forEach(function (file) {
            if(typeof file === 'string') {
                var filePath = path.resolve(projectPath, file);
                fs.writeFileSync(
                    filePath, 
                    templates[file] || ''
                );
            }
            else if(file.file && file.template) {
                var filePath = path.resolve(projectPath, file.file);
                fs.writeFileSync(
                    filePath, 
                    templates[file.template] || ''
                );
            }

            edp.log.info('>> `%s` create success.', filePath);
        });
    }
};


/**
 * 模块命令行运行入口
 * 
 * @param {Array} args 命令运行参数
 * @param {Object} opts 命令运行选项
 */
cli.main = function (args, opts) {
    
    var stdin = process.stdin;
    var root = opts.root 
        ? (util.getAbsPath(opts.root) || process.cwd()) 
        : process.cwd();
    opts.root = root;

    if (args[0]) {

        var rl = require('readline').createInterface({
            input: process.stdin,
            output: process.stdout
        });

        rl.question('>> Do you really want to init `' + args[0] + '` project in `' + root + '` ?(y/n)', 
            function (a) {
                if ('Y' === a.trim().toUpperCase()) {
                    rl.close();
                    initFiles(args, opts);
                }
                else {
                    rl.close();
                }
            }
        ); 
    }
    else {
        edp.log.fatal('>> Please input a card_project_name.');
    }

};


/**
 * 命令行配置项
 *
 * @type {Object}
 */
exports.cli = cli;
