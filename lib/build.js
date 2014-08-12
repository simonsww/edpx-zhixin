/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file build.js ~ 2014-04-22 11:20
 * @author Johnson (zoumiaojiang@gmail.com)
 * @description
 *  1. build卡片项目
 *  2. release卡片项目
 *  3. 打印编译log
 */

var edp = require('edp-core');
var util = require('./util');
var path = require('path');
var fs = require('fs');
var butpl = require('./build-utpl');

/**
 * 代码map
 *
 * @inner
 * @type {Object}
 */
var codeMap = {};

/**
 * 分析_page.tpl
 *
 * @inner
 * @param {string} tplPath 模板路径
 * @param {string} tplName 模板名称
 *
 * @return {string} 需要build的卡片的项目文件夹绝对路径
 */
function analysisFrame(tplPath, tplName) {
    tplName = tplName || '_page.tpl';
    var fileList = [];
    var _pagePath = path.resolve(tplPath, tplName);

    if (fs.existsSync(_pagePath)) {
        var _pageContent = fs.readFileSync(_pagePath, 'utf8');
        var re = /(\s*\{%\*\s*)include\s+file=\s*([\"\'])((.*?\/)*?.+?(\..+?)+?)\2\s*(\*%\}\s*)/igm; // 连\n一起吞..
        if (re.test(_pageContent)) {
            _pageContent.match(re).forEach(function (item) {
                fileList.push(item.replace(re, '$3'));
            });
            return fileList;
        }
    }
    else {
        edp.log.error('>> No `'+ tplName +'` file in `' + tplPath + '`.');
        process.exit(1);
    }
}

/**
 * 编译less代码（异步）
 *
 * @inner
 * @param {string} code less源代码
 * @param {Object} parserOptions 解析器参数
 * @param {function(string)} callback 编译完成回调函数
 */
function compileLessAsync(code, parserOptions, callback) {
    // less没有提供sync api
    var parser = new(require('less').Parser)(parserOptions);

    parser.parse(
        code,
        function ( error, tree ) {
            if ( error ) {
                callback( error );
            }
            else {
                try {
                    callback(
                        null,
                        tree.toCSS( {
                            compress: !!parserOptions.compress
                        } )
                    );
                }
                catch (ex) {
                    callback( ex );
                }
            }
        }
    );
}


/**
 * 压缩css代码
 *
 * @inner
 * @param  {string} cssCode css代码
 * @return {string}         压缩后的css代码
 */
function minCss(cssCode) {
    var processor = require('uglifycss').processString;
    var extraParam = {
        maxLineLen: 500,
        expandVars: false,
        cuteComments: true
    };

    return processor(cssCode, extraParam);

}


/**
 * 编译js
 *
 * @inner
 * @param  {string} filepath 需要编译的文件绝对路径
 * @param  {Object} opts     编译参数
 * @return {string}          编译后的js代码
 */
function jsUglify(filePath) {

    try {
        var UglifyJS = require('uglify-js');
        var finalCode = UglifyJS.minify(filePath, 
            {
                output: {'max_line_len': 512},
                mangle: {
                    except: [ '$', 'require', 'exports', 'module' ]
                }
            }
        ).code;
        return finalCode;
    }
    catch (ex) {
        edp.log.error('>> errors in ' + filePath);
        edp.log.error('>> ' + ex.message
            + '\n>> line: ' + ex.line
            + '\n>> col: ' + ex.col
            + '\n>> pos: ' + ex.pos
        );
        process.exit(1);
    }
}

/**
 * build less|css
 *
 * @inner
 * @param  {string} filePath css文件的绝对路径
 * @param  {string} filename 在_page.tpl中include的文件名
 * @param  {Object} opts     参数列表
 */
function lessCompiler(filePath, opts, callback) {

    try {
        compileLessAsync(
            fs.readFileSync(filePath, 'utf8'),
            util.extend({},
                {
                    paths: [path.dirname(filePath)],
                    relativeUrls: true,
                    syncImport: true
                },
                this.compileOptions || {}
            ),
            function (error, cssCode) {
                if (error) {
                    edp.log.fatal(
                        '\n    >> Compile less failed\n    >> file: %s\n    >> msg: %s\n    >> line: %s',
                        filePath,
                        error.toString(),
                        error.line
                    );
                    process.exit(1);
                }
                else {

                    var code = opts.r
                        ? minCss(cssCode)
                        : cssCode;

                    //如果需要保存文件
                    if(opts.saveCss) {
                        var cssFilePath;
                        if(/\.less$/.test(filePath)) {
                            cssFilePath =  filePath.replace(/\.less$/, '.css');
                        }
                        else {
                            cssFilePath = filePath + '.css';
                        }
                        fs.writeFileSync(cssFilePath, code);
                        fs.chmodSync(cssFilePath, 0777);
                    }

                    callback(code);
                }
            }
        );
    }
    catch (ex) {
        edp.log.fatal(
            '\n    >> Compile less failed\n    >> file: %s\n    >> msg: %s\n    >> line: %s',
            filePath,
            error.toString(),
            error.line
        );
        process.exit(1);
    }
}

/**
 * build js
 *
 * @inner
 * @param  {string} filePath js文件的绝对路径
 * @param  {string} filename 在_page.tpl中include的文件名
 * @param  {Object} opts     参数列表
 */
function buildJs(filePath, filename, opts) {
    codeMap[util.getPathHash(filePath)] = opts.r 
        ? jsUglify(filePath)
        : fs.readFileSync(filePath, 'utf8');
}

/**
 * build css
 *
 * @inner
 * @param  {string} filePath css文件的绝对路径
 * @param  {string} filename 在_page.tpl中include的文件名
 */
function buildCss(filePath, filename) {
    codeMap[util.getPathHash(filePath)] = fs.readFileSync(filePath, 'utf8');
}

/**
 * build less
 *
 * @inner
 * @param  {string} filePath css文件的绝对路径
 * @param  {string} filename 在_page.tpl中include的文件名
 * @param  {Object} opts     参数列表
 */
function buildLess(filePath, filename, opts) {

    lessCompiler(filePath, opts, function(code) {
        codeMap[util.getPathHash(filePath)] = code;
    });
}

/**
 * build html
 *
 * @inner
 * @param  {string} filepath html文件路径
 * @param  {string} filename 在_page.tpl中include的文件名
 */
function buildHtml(filePath, filename) {
    codeMap[util.getPathHash(filePath)] = fs.readFileSync(filePath, 'utf8');
}

/**
 * build tpl
 *
 * @inner
 * @param  {string} filepath tpl文件路径
 * @param  {string} filename 在_page.tpl中include的文件名
 */
function buildTpl(filePath, filename) {
    codeMap[filename] = fs.readFileSync(filePath, 'utf8');
}

/**
 * build utpl
 *
 * @inner
 * @param  {string} filePath utpl文件路径
 * @param  {string} fileName 在_page.tpl中include的文件名
 * @param  {Object} opts 编译参数
 */
function buildUtpl(filePath, fileName, opts) {
    var compiled = butpl.compile(filePath, butpl.getFnName(fileName));

    //release模式
    if(opts.r) {
        try {
            var UglifyJS = require('uglify-js');
            var finalCode = UglifyJS.minify(compiled, 
                {
                    fromString: true,
                    output: {'max_line_len': 512}
                }
            ).code;
            codeMap[util.getPathHash(filePath)] = finalCode;
        }
        catch (ex) {
            edp.log.error('>> errors in ' + filePath);
            edp.log.error('>> ' + ex.message
                + '\n>> line: ' + ex.line
                + '\n>> col: ' + ex.col
                + '\n>> pos: ' + ex.pos
            );
            process.exit(1);
        }
    }
    else {
        codeMap[util.getPathHash(filePath)] = compiled;
    }
}

/**
 * build卡片
 *
 * @inner
 * @param  {string} tplPath 需要build的卡片的绝对路径
 * @param  {Object} opts    命令行参数
 */
function buildProject(tplPath, opts) {
    buildProjectFiles(tplPath, opts, analysisFrame(tplPath) || []);
}

/**
 * 编译模板相关文件
 *
 * @param {string} tplPath 模板路径
 * @param {Object} opts 编译参数
 * @param {Array} fileList 文件列表
 */
function buildProjectFiles(tplPath, opts, fileList) {

    (fileList || []).forEach(
        function (filename) {
            var filePath = path.resolve(tplPath, filename);
            if (fs.existsSync(filePath)) {
                switch (path.extname(filePath).toLowerCase()) {
                    case '.js':
                        buildJs(filePath, filename, opts);
                        break;
                    case '.css':
                        buildCss(filePath, filename);
                        break;
                    case '.less':
                        buildLess(filePath, filename, opts);
                        break;
                    case '.html':
                        buildHtml(filePath, filename);
                        break;
                    case '.tpl':
                        buildTpl(filePath, filename);
                        break;
                    case '.utpl':
                        buildUtpl(filePath, filename, opts);
                        break;
                    default:
                        break;
                }
            }
            else {
                edp.log.warn('>> No such file `' + filePath + '`.');
            }
        }
    );
}


/**
 * 编译wise相关的项目
 *
 * @param {string} tplPath 模板路径
 * @param {Object} opts 编译参数
 * @param {Array} platforms 待编译的平台
 */
function buildWiseProject(tplPath, opts, platforms) {
    platforms.forEach(function(item) {
        var tplName = '_' + item + '.tpl';
        buildProjectFiles(tplPath, opts, analysisFrame(tplPath, tplName) || []);
    });
}

/**
 * 创建page.tpl文件
 *
 * @inner
 * @param  {string} tplPath 卡片项目的路径
 */
function createPageTpl(tplPath) {

    var _pagePath = path.resolve(tplPath, '_page.tpl');
    var _pageContent = fs.readFileSync(_pagePath, 'utf8');
    var re = /(\s*\{%\*\s*)include\s+file=\s*([\"\'])((.*?\/)*?.+?(\..+?)+?)\2\s*(\*%\}\s*)/igm;
    var pageTplPath = path.resolve(tplPath, './page.tpl');

    if (re.test(_pageContent)) {
        _pageContent.match(re).forEach(function (item) {
            var tmpKey = item.replace(re, '$3');
            var fileName = path.resolve(tplPath, tmpKey);
            _pageContent = _pageContent.replace(item, codeMap[util.getPathHash(fileName)] || '');
        });
    }

    fs.writeFileSync(pageTplPath, _pageContent);
    fs.chmodSync(pageTplPath, 0777);
}

/**
 * 创建wise相关的tpl文件
 *
 * @inner
 * @param  {string} tplPath 卡片项目的路径
 * @param {Array} platforms 待编译的平台
 */
function createWisePageTpl(tplPath, platforms) {

    //根据平台名称创建wise模板
    function createPlatformTpl(platform) {
        var tplName = '_' + platform + '.tpl';
        var destTplName = platform + '.tpl';

        var _pagePath = path.resolve(tplPath, tplName);
        var _pageContent = fs.readFileSync(_pagePath, 'utf8');
        var re = /(\s*\{%\*\s*)include\s+file=\s*([\"\'])((.*?\/)*?.+?(\..+?)+?)\2\s*(\*%\}\s*)/igm;
        var pageTplPath = path.resolve(tplPath, destTplName);

        if (re.test(_pageContent)) {
            _pageContent.match(re).forEach(function (item) {
                var tmpKey = item.replace(re, '$3');
                var fileName = path.resolve(tplPath, tmpKey);
                _pageContent = _pageContent.replace(item, codeMap[util.getPathHash(fileName)] || '');
            });
        }
        
        fs.writeFileSync(pageTplPath, _pageContent);
        fs.chmodSync(pageTplPath, 0777);
    }

    platforms.forEach(createPlatformTpl);
}


/**
 * 全部build
 *
 * @inner
 * @param {string} root
 * @param  {Object} opts 参数
 */
function buildAll(root, opts) {
    root = root || getProjectRoot(process.cwd());
    var dirs = fs.readdirSync(root);

    function buildUnitByTpl(tplname) {
        buildUnit(root, tplname, opts);
    }

    for (var i = 0, l = dirs.length; i < l; i ++) {
        var item = dirs[i];
        var dirPath = path.resolve(root, item);
        if (fs.statSync(dirPath).isDirectory()) {
            if (item == 'page') {
                fs.readdirSync(path.resolve(root, './page'))
                    .forEach(buildUnitByTpl);
            }
            else {
                buildAll(dirPath, opts);
            }
        }
    }
}

 /**
  * 判断是否为项目根目录
  *
  * @param  {string} rootPath 待判断的路径
  * @return {Boolean}         判断结果
  */
function judgeRoot(rootPath) {
    var ret = false;
    fs.readdirSync(rootPath).forEach(
        function (item) {
            if (item.trim() == 'edpx-zhixin-config.js') {
                ret = true;
            }
        }
    );
    return ret;
}

/**
 * 得到项目的根目录－即 edpx-zhixin-config.js所在处
 *
 * @param  {string} curPath 当前的所在路径
 * @return {string}         项目根目录路径
 */
function getProjectRoot(curPath) {
    var pathArr = curPath.split(path.sep);
    var num = pathArr.length - 1;
    while(num --) {
        var realPath = pathArr.join(path.sep);
        if (judgeRoot(realPath)) {
            return realPath;
        }
        else {
            pathArr.pop();
        }
    }
}

/**
 * 指定build的卡片名
 *
 * @inner
 * @param {string} root
 * @param  {string} tplName 卡片名
 * @param  {Object} opts    参数
 */
function buildUnit(root, tplName, opts) {

    root = root || getProjectRoot(process.cwd());

    fs.readdirSync(root).forEach(
        function (item) {
            var dirPath = path.resolve(root, item);
            if (fs.statSync(dirPath).isDirectory()) {
                if (item == tplName) {
                    buildUnitByPath(dirPath, tplName, opts);
                }
                else {
                    buildUnit(dirPath, tplName, opts);
                }
            }
        }
    );
}

/**
 * 根据具体的地址来build
 * @param {string} tplPath
 * @param {string} tplName
 * @param {Object} opts
 */
function buildUnitByPath(tplPath, tplName, opts) {
    var lessPath = path.resolve(tplPath, './page.less');
    //如果有page.less则编译
    if (fs.existsSync(lessPath)) {

        var lessCompileOpt = util.extend({
            saveCss: true
        }, opts);

        lessCompiler(lessPath, lessCompileOpt, function () {
            buildProject(tplPath, opts);
            createPageTpl(tplPath);
            edp.log.info('>> `' + tplName + '` ' + (opts.info ? opts.info : '') + ' success.');
        });

    }
    //否则按照项目来编译
    else {

        var cfgPath = path.resolve(tplPath, './config.js');

        if(fs.existsSync(cfgPath)) {

            var cfg = require(cfgPath);

            //如果是wise相关的项目
            if(cfg.config && util.isWisePlatform(cfg.config.platform)) {
                var plat = cfg.config.platform;
                var platforms = plat instanceof Array ? plat : [plat];
                buildWiseProject(tplPath, opts, platforms);
                createWisePageTpl(tplPath, platforms);
                edp.log.info('>> `' + tplName + '` ' + (opts.info ? opts.info : '') + ' success.');
            }
            //按照
            else {
                buildProject(tplPath, opts);
                createPageTpl(tplPath);
                edp.log.info('>> `' + tplName + '` ' + (opts.info ? opts.info : '') + ' success.');
            }
        }
        else {
            edp.log.fatal('>> No `page.less` file.');
            process.exit(1);
        }
    }
}


/**
 * merge文件，生成page.tpl文件
 * @param {string} root
 * @param {string} tplName
 * @param {Object} opts
 */
function merge(root, tplName, opts) {
    opts = opts || {};

    if (fs.existsSync(pagePath)) {

        var tplPath = getProjectPath(root, tplName);
        buildProject(tplPath, opts);
        createPageTpl(tplPath);
        edp.log.info('>> `' + tplName + '` ' + (opts.info ? opts.info : 'build') + ' success.');
    }
    else {
        edp.log.error('>> No such project named `' + tplName + '`.');
        process.exit(1);
    }
}

/**
 * build命令入口
 *
 * @param  {Array<string>} args arguments
 * @param  {Object} opts options
 * @deprecated
 */
exports.start = function (args, opts) {
    opts = opts || {};

    var root = require('./sdk').getRoot();

    if (args[0]) {
        var tplName = args[0];
        buildUnit(root, tplName, opts);
    }
    else {
        buildAll(root, opts);
    }
};

exports.buildUnit = buildUnit;
exports.buildUnitByPath = buildUnitByPath;
exports.merge = merge;
