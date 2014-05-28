/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file AssembleTemplate.js ~ 2014-05-25 17:48
 * @author mengke01 (kekee000@gmail.com)
 * @description
 *  wise相关的模板拼装
 */


var util = require('./util');

/**
 * @type {string}
 * wise渲染结果的占位符
 */
var WISE_CONTENT = '{%WISE_CONTENT%}';



/**
 * @param {string} template
 * @param {Obejct} result
 *
 * result的格式为
 * {
 *     'wise': {
 *         'zx_medical': '<div>...</div>'
 *     }
 * }
 *
 * @return {string} 返回拼装之后的html字符串
 */
exports.assmeble = function(template, result) {
    result = result || {};

    var lhtml = '';
    var rhtml = '';

    var keys = [];

    for(var key in result.wise) {
        keys.push(key);
        lhtml += result.wise[key];

        //移除同名标签块
        if(false !== result.removeSameTpl) {
            template = util.removeTplBlock(template, key);
        }
    }

    template = template.replace(WISE_CONTENT, lhtml);

    return template;
};

/**
 * 拆解模板，替换占位符
 * @param {string} platform iphone or utouch or big
 * @param {string} html
 *
 * @return {string} 返回拆解后的模板字符串
 */
exports.disassemble = function(platform, html) {

    if(platform === 'utouch' || platform === 'big') {
        html = html.replace(/(<div\s+class="reswrap"[^>]*>)/, '$1' + WISE_CONTENT);
    } else {
        html = html.replace(/(<div\s+id="results"\s+class="results"[^>]*>)/, '$1' + WISE_CONTENT);
    }

    return html;
};


