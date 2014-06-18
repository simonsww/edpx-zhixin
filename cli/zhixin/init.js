/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file /cli/zhixin/init.js ~ 2014-04-10 02:20
 * @author Johnson (zoumiaojiang@gmail.com)
 * @description edp zhixin init 模块
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
cli.options = ['root:', 'data', 'side:'];


/**
 * 命令行的描述信息
 * @const
 * @type {string}
 */
cli.description = '新建一个卡片项目';


/**
 * 命令行的使用方法
 * @const
 * @type {string}
 */
cli.usage = 'edp zhixin init card_project_name [--root|-r] [--data|-d] [--side|-s]';


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

    var extendsFile = 'c_base.tpl';
    
    if (opts.side && opts.side === 'right') {
        extendsFile = 'c_right_base.tpl';
    }

    /**
     * 初始化的模版
     * 
     * @type {Object}
     */
    var templates = {
        '_page.tpl': ''
            + '{%extends \'' + extendsFile + '\'%}\n\n'
            + '{%block name=\'title\'%}{%/block%}\n'
            + '{%block name=\'content\'%}\n'
            + '<style type="text/css">\n    '
            +     '{%*include file="page.css"*%}\n'
            + '</style>\n'
            + '{%*include file="page.html"*%}\n'
            + '<script>\n    '
            +     'A.setup(function () {\n        '
            +         '// Inclue your js file here\n        '
            +         'var SMARTY_DATA = this.data.DATA; //smarty data\n    '
            +     '});\n'
            + '</script>\n'
            +'{%/block%}',

        'page.html': ''
            + '{%strip%}\n    '
            +     '<!--page.html: Input your tpl here-->\n'
            + '{%/strip%}\n'
            + '<script>\n    '
            +     '// Put your smarty varaible here when your js file want to use\n    '
            +     'A.setup(\'DATA\', {\n        \n    '
            +     '});\n'
            + '</script>',

        'data.json': '{\n    '
            + '"item": {\n        '
            +     '"display": {\n            '
            +         '"extData": {\n            \n            '
            +         '},\n            '
            +         '"tplData": {\n            \n            '
            +         '}\n        '
            +     '}\n    '
            + '}\n}',

        'page.less': '/**page.less: Write your less here*/',
        'config.js': '/**config.js*/\n\nexports.config = {\n    '
            +     'tpl: \'' + args[0] + '\',\n    '
            +     'querys: [\'' + args[0] + '\', {\n        '
            +         'query: "",\n        '
            +         'data: "data.json"\n    '
            +     '}],\n    '
            +     'side: \'' + (opts.side === 'right' ? 'right' : 'left') + '\',\n    '
            +     'platform: [\'pc\', \'ipad\'],\n    '
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
            +             '"_page.tpl",\n            '
            +             '"page.html",\n            '
            +             '"js/*.js",\n            '
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
        'page.less',
        'data.json',
        'page.html',
        '_page.tpl',
        'config.js'
    ];

    /**
     * 需要初始化的文件夹
     * 
     * @type {Array<string>}
     */
    var dirs = [
        'js',
        'less',
        'ajaxs',
        'amds'
    ];

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
            var filePath = path.resolve(projectPath, file);
            // if (opts.d) {
            fs.writeFileSync(
                filePath, 
                templates[file] || ''
            );
            // }
            // else {
            //     fs.writeFileSync(filePath, '');
            // }
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
