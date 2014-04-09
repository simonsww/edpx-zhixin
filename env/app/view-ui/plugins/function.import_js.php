<?php
/**
 *
 *
 * @file function.import_js.php
 * @package plugins
 * @author wangpeng20@baidu.com
 * @date 2012-12-17 10:47
 */

function smarty_function_import_js($params)
{
    //下面这行不能改，fis在build时会对路径做替换
    $PATH=array(VUI_APP_PATH.'/../../data/import-js-lib/');
    static $MATCHED=array(), $DEBUG=false, $IMPORTED=array();
    require_once("inc.import_js.php");
    $config=array(
        'MATCHED'=>&$MATCHED,
        'IMPORTED'=>&$IMPORTED,
        'DEBUG'=>&$DEBUG,
        'PATH'=>&$PATH,
    );
    return '<script>'.importTangram(explode(',', $params['mod']), false,$config)."</script>";
}
