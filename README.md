# edpx-zhixin

[![Build Status](https://travis-ci.org/ecomfe/edpx-zhixin.png?branch=master)](https://travis-ci.org/ecomfe/edxp-zhixin) [![Dependencies Status](https://david-dm.org/ecomfe/edpx-zhixin.png)](https://david-dm.org/ecomfe/edpx-zhixin)


`edpx-zhixin`是edp的一个扩展，提供给百度的FE开发搜索结果页模板的工具

### 启动edpx-zhixin

通过下面的命令，将根据默认的配置文件`edpx-zhixin-config.js`，启动edpx-zhixin，edpx-zhixin会在当前目录查找配置文件，如果没找到，会一直向上级目录查找，找到为止。在`默认`情况下，edpx-zhixin会使用`8848`作为默认端口，并且将`当前目录`作为 `documentRoot`

```
$ edp zhixin start
10:45:21 [INFO] monitor -> /Users/sekiyika/Documents/work/src
10:45:21 all plugins have been loaded.
edp INFO EDP WebServer start, http://192.168.1.106:8848
edp INFO root = [/Users/sekiyika/Documents/work/src/], listen = [8848] 
```

### 指定配置文件

通过`--config`参数，可以指定edpx-zhixin的配置文件

```
$ edp zhixin start --config=src/edpx-zhixin-config.js 
10:52:26 [INFO] monitor -> /Users/sekiyika/Documents/work/src
10:52:26 all plugins have been loaded.
edp INFO EDP WebServer start, http://192.168.1.106:8848
edp INFO root = [/Users/sekiyika/Documents/work/src/], listen = [8848] 
```

### 目录结构

`edpx-zhixin`要求开发者遵循目录规范，如下：

    edpx-zhixin-config.js
    src
        page
            ecl_ec_weigou
                config.js
                _page.tpl
                page.tpl
                page.html
                data.json
                ...
                

### 配置edpx-zhixin

运行`edp zhixin start`时，需要`edpx-zhixin-config.js`文件，下面是构成`edpx-zhixin-config.js`的默认配置

```javascript
/**
 * @file edpx-zhixin-config.js
 */

/**
 * edpx-zhixin的配置
 */
exports.server = { 
    documentRoot: './', // documentRoot以配置文件所在的目录来计算绝对路径，默认为process.cwd()
    port: 8848 // edpx-zhixin的启动端口，默认为8848
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
exports.php = 'php'; // 指定渲染模板使用的php路径，如果path中有，写php即可

/**
 * 指定依赖的base文件，默认会使用edpx-zhixin中自带的c_base.tpl和c_right_base.tpl文件
 */
exports.base = { 
    left: 'c_base.tpl',
    right: 'c_right_base.tpl'
};

/**
 * wise相关的base文件
 */
// exports.base = {
//    iphone: './aladdin/base/iphone.tpl',
//    big: './aladdin/base/big.tpl',
//    wml: './aladdin/base/wml.tpl',
//    middle: './aladdin/base/middle.tpl',
//    utouch: './aladdin/base/utouch.tpl'
// };
```

###开发模板

从新建模板到release，都提供了相应的命令和工具

#### edp zhixin init

在行业目录下运行`edp zhixin init ecl_fn_demo`，如下：

```
$ edp zhixin init ecl_fn_demo
>> Do you really want to init `ecl_fn_demo` project in `/Users/sekiyika/Documents/work/src/finance` ?(y/n)y
>> There is a exist project, cover it ?(y/n)y
edp INFO >> `/Users/sekiyika/Documents/work/src/finance/page/ecl_fn_demo` create success.
...
edp INFO >> `/Users/sekiyika/Documents/work/src/finance/page/ecl_fn_demo/config.js` create success.
```

这样就构建好了一个模板开发所需的基本文件

#### edp zhixin initwise

创建wise相关的模板命令:

```
edp zhixin initwise [--root|-r] [--platform|-p] [--data|-d]
```

目前支持的wise平台为 iphone,utouch,big，在访问的时候url后缀添加

&tn=iphone、&tn=utouch、&tn=big， 切换到相应的平台

例如：

http://m.baidu.com/s?word=%E7%94%B7%E7%A7%91%E5%8C%BB%E9%99%A2&sa=tb&st=111041&tn=utouch

会调用utouch版本的模板


#### 使用 utpl 支持模板编写

集成utpl的模板功能，在`_page.tpl`中引入后，自动编译成相关的函数使用，
utpl语法同`underscore.js`的模板语法类似，请参考[underscore](http://documentcloud.github.io/underscore/) 获取更多信息

例如：


_page.tpl 内容：

```
{%*include file="./ajax-list.utpl"*%}
```

注：形如：`ajax-list.utpl`会被编译成`ajaxListRender`函数，可以在js中直接调用

ajax-list.utpl 内容：

```
/*utpl:innerFn=false,trim=false*/
<!--列表项目-->
<ul>
    {%each(tplData.list, function(item, index){%}
        <li><a href="{%=item.link%}">{%-item.title%}</a></li>
    {%)};%}
</ul>
<!--记录数-->
{%len = tplData.list.length%}
{%if (len!==0) {%}
    {%=len%}条记录
{%}%}
```

其中

```
/*utpl:innerFn=false,strip=false*/
```

为编译选项：

1. innerFn=false，表示`each`,`escape`等函数不会在模板中内置，需要外部提供

2. strip=false，表示不会自动去除空格、注释



##### config.js

`config.js`是每个模板目录下都需要的一个配置文件，主要包含和该模板相关的配置

```javascript
exports.config = { 
    tpl: 'ecl_fn_demo', // 模板明
    querys: [
        'iphone',  // 命中该模板时的query，不指定data会默认使用data.json文件作为数据文件
        {   
            query: '游戏',
            data: 'data.json' // 指定渲染所需要使用的数据文件
        }
    ],  
    side: 'left', // 模渲染的位置，有left和right的取值
    platform: ['ipad', 'pc'], // 该模板适用于ipad或者pc，根据url中的dsp参数来区分，可以为platform: 'pc'
    //platform: ['iphone', 'utouch', 'big'], //wise相关的platform，根据url中的tn参数来区分，tn=utouch，会切换到简版模板
    ajaxs: [ // 代理请求的数据，常用于代理/ecomui的请求
        {
            url: /a.js/,
            file: 'a_1.js', // file和handler是互斥的关系，handler优先级更高
            handler: function(request) {
                return fs.readFileSync('data.json')
            }
        }
    ],
    watch: { // 监控源文件的变化并编译产出page.tpl文件
        filters: [
            '_page.tpl',
            '*.less'
        ],
        events: [
            'addedFiles',
            'modifiedFiles'
        ]
    }
};
```

#### edp zhixin start

`edpx-zhixin`启动时，会查找`documentRoot`目录下的所有`config.js`文件，然后根据`config.js`文件建立query到模板之间的索引

启动之后，可以通过`http://127.0.0.1:8848`访问

**注意**：在这里推荐配一个host，搜索结果页大部分静态文件都做了`referrer`过滤，非百度域可能会遇到403 forbidden，导致文件加载失败


#### edp zhixin build

`build`可以让用户手动编译生成page.tpl文件，代码不压缩

#### edp zhixin release

开发完成模板之后，需要发布压缩后的代码，`release`比`build`多做了一步就是编译压缩



