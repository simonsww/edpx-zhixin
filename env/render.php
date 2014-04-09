<?php
// 测试时，打印出所有的信息
// error_reporting(E_ALL);
date_default_timezone_set('Asia/Shanghai');

$GLOBALS['globalConf'] = array(
    'compileCheck' => true
);
$GLOBALS['TplLOG'] = array(
    'log_file' => 'tpl.log',
    'log_switch' => 0
);

$GLOBALS['ALADDIN_TEMPLATE_TYPE'] = 'aladdin';
$GLOBALS['STRUCT_TEMPLATE_TYPE'] = 'result';
$GLOBALS['ECOM_TEMPLATE_TYPE'] = 'ecom';

//定义全局变量
define('VUI_APP_PATH', dirname(__FILE__) . "/app/view-ui/");
define('VUI_PHP_PATH', dirname(__FILE__) . "/../php/");
define('VUI_CONF_PATH', dirname(__FILE__) . "/conf/");
define('VUI_TEMPLATE_PATH', dirname(__FILE__) . "/template/");
define('VUI_LOG_PATH', dirname(__FILE__) . "/log/");
define('VUI_TEMPLATE_PLUGIN_PATH', VUI_APP_PATH . "/plugins");
define('VUI_TEMPLATE_ALADDIN_TEMPLATE_TYPE', "aladdin");

$GLOBALS['ECOM_TEMPLATE_TYPE'] = 'ecom';


require (VUI_APP_PATH . '/libs/Smarty/Smarty.class.php');
require (VUI_APP_PATH . '/utils/CSmarty.class.php');
require (VUI_APP_PATH . '/plugins/modifier.common_render.php');
require (VUI_APP_PATH . '/libs/log/CLog.class.php');
require (VUI_APP_PATH . '/utils/Util.php');
// require (dirname(__FILE__) . '/phplib/bd/Conf.php');
require (VUI_APP_PATH . '/libs/log/TplLog.php');
require (VUI_APP_PATH . '/utils/base.php');
require (VUI_APP_PATH . '/utils/Volatile.php');

// 进行SDK的初始化
if(!file_exists(VUI_TEMPLATE_PATH)) {
    // 初始化VUI给SDK使用

    // 执行复制命令，将template拷到template_sdk
    $cmd = 'cp -r ' . dirname(__FILE__) . '/../template ' . VUI_TEMPLATE_PATH;
    exec($cmd);
}


$smartyConf = array(
    'language' => 'zh-CN',
    'type' => 'ecom',
    'platform' => 'pc'
);
$smarty = CSmarty::getInstance($smartyConf);

function render($tplName) {
    global $smarty;
    global $smartyConf;

    // 这里，$data有三种数据格式，第一种是我定义的最原始的数据格式，第二种是有的同学在display里面进行了细分，加了extData，第三种是平台的数据格式
    // 所以，在这里先进行一次处理
    $data = preprocess(json_decode(file_get_contents(dirname(__FILE__) . '/data.json'), 1));

    // 将tpl写到对应的目录下去
    // 获取模板路径
    $tplDir = VUI_TEMPLATE_PATH . 'view' . '/' . $smartyConf['platform'] . '/' . $smartyConf['language'] . '/page/' . $smartyConf['type'] . '/' . $tplName;
    if(!file_exists($tplDir . '/page.tpl')) {
        mkdir($tplDir, 0700, true);
    }
    // file_put_contents($tplDir . '/page.tpl', $tpl);

    return $smarty->do_render($data, $tplName);
}

echo render('ecl_ec_weigou_b');

function preprocess($data) {
    $result = array(
        'resultData' => array(),
        'strategy' => array()
    );
    if($data['document']) {
        // 第三种格式
        $result['resultData']['tplData'] = $data['document'][0]['item']['display'];
        $result['resultData']['extData'] = array(
            'OriginQuery' => $data['document'][0]['item']['key']
        );
        $result['strategy']['hilightWord'] = $data['document'][0]['item']['key'];
    } elseif($data['item'] && $data['item']['display'] && $data['item']['display']['tplData']) {
        // 第二种格式
        $result['resultData']['tplData'] = $data['item']['display']['tplData'];
        $result['resultData']['extData'] = $data['item']['display']['extData'];
        $result['strategy']['hilightWord'] = $data['item']['key'];
    } else {
        // 第一种格式
        $result['resultData']['tplData'] = $data['item']['display'];
        $result['resultData']['extData'] = array(
            'OriginQuery' => $data['item']['key']
        );
        $result['strategy']['hilightWord'] = $data['item']['key'];
    }

    return $result;
}

?>
