/***************************************************************************
*
* Copyright (C) 2014 Baidu.com, Inc. All Rights Reserved
*
***************************************************************************/

/**
 * @file AssembleTemplate.js ~ 2014-04-09 14:34
 * @author sekiyika (px.pengxing@gmail.com)
 * @description
 *  根据VUI的渲染结果，拼装模板
 */

/**
 * 左侧渲染结果的占位符
 */
var LEFT_CONTENT = /\{%LEFT_CONTENT%\}/;
/**
 * 右侧渲染结果的占位符
 */
var RIGHT_CONTENT = /\{%RIGHT_CONTENT%\}/;

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
 */
module.exports = function(template, result) {
};
