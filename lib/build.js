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
 * @return {string} 需要build的卡片的项目文件夹绝对路径
 */
function analysisFrame(tplPath) {

    var fileList = [];
    var _pagePath = path.resolve(tplPath, '_page.tpl');

    if (fs.existsSync(_pagePath)) {
        var _pageContent = fs.readFileSync(_pagePath, 'utf8');
        var re = /(\s*\{%\*\s*)include\s+file=\s*([\"\'])((.*?\/)*?.+?(\..+?)+?)\2\s*(\*%\}\s*)/igm;
        if (re.test(_pageContent)) {
            _pageContent.match(re).forEach(function (item) {
                fileList.push(item.replace(re, '$3'));
            });
            return fileList;
        }
    }
    else {
        edp.log.error('>> No `_page.tpl` file in `' + tplPath + '`.');
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
        maxLineLen: 0,
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

    var UglifyJS = require('uglify-js');
    try {
        var ast = UglifyJS.parse(fs.readFileSync(filePath, 'utf8'));
    }
    catch (ex) {
        edp.log.error('>> errors in ' + filePath);
        edp.log.error('>> ' + ex.message 
            + '\n>> line: ' + ex.line 
            + '\n>> col: ' + ex.col 
            + '\n>> pos: ' + ex.pos
        )
        process.exit(1);
    }
    ast.figure_out_scope();
    ast.compute_char_frequency();
    ast.mangle_names({ 
        except: [ '$', 'require', 'exports', 'module' ] 
    });

    return ast.print_to_string();
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
                    relativeUrls: true
                },
                this.compileOptions || {}
            ),
            function (error, cssCode) {
                if (error) {
                    edp.log.warn(
                        '>> Compile less failed, file = [%s], msg = [%s]',
                        filePath,
                        error.toString()
                    );
                }
                else {
                    var cssFilePath = path.resolve(path.dirname(filePath), './page.css');
                    var code = opts.r
                        ? minCss(cssCode)
                        : cssCode;
                    fs.writeFileSync(cssFilePath, code);
                    fs.chmodSync(cssFilePath, 0777);
                }
                callback();
            }
        );
    }
    catch (ex) {
        edp.log.fatal(
            '>> Compile less failed, file = [%s], msg = [%s]',
            filePath,
            ex.toString()
        );
        callback();
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
    codeMap[filename] = opts.r 
        ? jsUglify(filePath)
        : fs.readFileSync(filePath, 'utf8');;
}

/**
 * build css
 *
 * @inner
 * @param  {string} filePath css文件的绝对路径
 * @param  {string} filename 在_page.tpl中include的文件名
 */
function buildCss(filePath, filename) {
    codeMap[filename] = fs.readFileSync(filePath, 'utf8');
}

/**
 * build html
 *
 * @inner
 * @param  {string} filepath html文件路径
 * @param  {string} filename 在_page.tpl中include的文件名
 */
function buildHtml(filePath, filename) {
    codeMap[filename] = fs.readFileSync(filePath, 'utf8');
}

/**
 * build卡片
 * 
 * @inner
 * @param  {string} tplPath 需要build的卡片的绝对路径
 * @param  {Object} opts    命令行参数
 */
function buildProject(tplPath, opts) {

    var fileList = analysisFrame(tplPath);
    
    fileList.forEach(
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
                    case '.html':
                        buildHtml(filePath, filename);
                        break;
                    default:
                        break;
                };
            }
            else {
                edp.log.warn('>> No such file `' + filePath + '`.');
            }
        }
    );
}

function createPageTpl(tplPath) {
    
    var _pagePath = path.resolve(tplPath, '_page.tpl');
    var _pageContent = fs.readFileSync(_pagePath, 'utf8');
    var re = /(\s*\{%\*\s*)include\s+file=\s*([\"\'])((.*?\/)*?.+?(\..+?)+?)\2\s*(\*%\}\s*)/igm;

    if (re.test(_pageContent)) {
        _pageContent.match(re).forEach(function (item) {
            var tmpKey = item.replace(re, '$3');
            if (codeMap[tmpKey]) {
                var pageTplPath = path.resolve(tplPath, './page.tpl');
                _pageContent = _pageContent.replace(item, codeMap[tmpKey]);
                fs.writeFileSync(pageTplPath, _pageContent);
                fs.chmodSync(pageTplPath, 0777);
            }
        });
    }
}


/**
 * build命令入口
 * 
 * @param  {Array<string>} args arguments
 * @param  {Object} opts options
 */
exports.start = function (args, opts) {
    
    var tplName = args[0];
    var pagePath = util.findFile(process.cwd(), 'page/' + tplName);

    if (fs.existsSync(pagePath)) {

        var tplPath = path.resolve(pagePath + '/page', tplName);
        var lessPath = path.resolve(tplPath, './page.less');
        
        if (fs.existsSync(lessPath)) {
            lessCompiler(lessPath, opts, function () {
                buildProject(tplPath, opts);
                createPageTpl(tplPath);
                edp.log.info('>> `' + tplName + '` build success.');
            });
        }
        else {
            edp.log.fatal('>> No `page.less` file.');
        }
    }
    else {
        edp.log.error('>> No such project named `' + tplName + '`.');
    }
}; 