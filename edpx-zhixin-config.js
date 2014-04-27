/**
 * @file edpx-zhixin-config.js
 */

exports.server = {
    documentRoot: '../../work', // 项目根目录相对于此config文件的相对路径， 最好写成绝对路径, 减少歧义
    port: 8848
};

/**
 * 用来配置开发环境依赖的结果页机器地址，可以配置线下机器
 * 默认hostname是www.baidu.com，port为80
 */
exports.proxy = {
    hostname: 'www.baidu.com',
    port: 80
};

/**
 * 指定php可执行的路径
 * @type {string}
 */
exports.php = 'php';

/**
 * 指定依赖的base文件
 */
exports.base = [
    'c_base.tpl',
    'c_right_base.tpl'
];
