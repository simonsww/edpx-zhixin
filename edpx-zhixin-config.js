/**
 *@file edpx-zhixin-config.js
 */

exports.zhixinConfig = {
    'proxy': {
        hostname: 'www.baidu.com',
        port: 80,
        method: 'GET',
        path: '/s'
    },
    'server': {
        documentRoot: '../../work/workSpace', // 项目根目录相对于此config文件的相对路径， 最好写成绝对路径, 减少歧义
        port: 8848
    }
};