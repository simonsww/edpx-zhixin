/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file AssembleTemplate.js ~ 2014-04-09 14:34
 * @author sekiyika (px.pengxing@gmail.com)
 * @description
 *  1. 根据VUI的渲染结果，拼装模板
 *  2. 拆解模板，将占位符塞进去
 */

/**
 * @type {string}
 * 左侧渲染结果的占位符
 */
var LEFT_CONTENT = '{%LEFT_CONTENT%}';
/**
 * @type {string}
 * 右侧渲染结果的占位符
 */
var RIGHT_CONTENT = '{%RIGHT_CONTENT%}';

/**
 * @param {string} template
 * @param {Obejct} result
 *
 * result的格式为
 * {
 *     'left': {
 *         'ecl_ec_weigou': '<div>...</div>',
 *         'ecl_game': '<div>...</div>'
 *     },
 *     'right': {
 *         'ecl_ec_weigou': '<div>...</div>',
 *         'ecl_game': '<div>...</div>'
 *     }
 * }
 *
 * @return {string} 返回拼装之后的html字符串
 */
exports.assmeble = function(template, result) {
    console.log(1);
    var lhtml = '';
    var rhtml = '';

    for(var key in result.left) {
        lhtml += result.left[key];
    }
    for(key in result.right) {
        rhtml += result.right[key];
    }

    template = template.replace(LEFT_CONTENT, lhtml);
    template = template.replace(RIGHT_CONTENT, rhtml);

    return template;
};

/**
 * 拆解模板，替换占位符
 * @param {string} html
 *
 * @return {string} 返回拆解后的模板字符串
 */
exports.disassemble = function(html) {

    html = html.replace(/(\<div\s*id=\"content_left\".*\>)/, "$1" + LEFT_CONTENT);
    html = html.replace(/(\<div\s*id=\"content_right\".*\>)/, "$1" + RIGHT_CONTENT);

    return html;
};
