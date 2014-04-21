<?php /* Smarty version Smarty-3.0.8, created on 2014-04-11 15:55:17
         compiled from "/Users/zoumiaojiang/code/edpx-zhixin/env/template/view/pc/zh-CN/page/ecom/ecl_ec_weigou_b/page.tpl" */ ?>
<?php /*%%SmartyHeaderCode:120642298753479fe56f2982-62154463%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '16ec7caddce51ab8bde2efd0bbcfbba229097fe4' => 
    array (
      0 => '/Users/zoumiaojiang/code/edpx-zhixin/env/template/view/pc/zh-CN/page/ecom/ecl_ec_weigou_b/page.tpl',
      1 => 1397184941,
      2 => 'file',
    ),
    '97eb9e541d0ca4ec405372218386fdb6eea7cdbc' => 
    array (
      0 => '/Users/zoumiaojiang/code/edpx-zhixin/env/template/view/pc/zh-CN/page/ecom/c_base.tpl',
      1 => 1397184941,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '120642298753479fe56f2982-62154463',
  'function' => 
  array (
    'fe_fn_c_get_grid_height' => 
    array (
      'parameter' => 
      array (
        'col' => 6,
        'rate' => 1,
        'border' => '',
        'special' => false,
      ),
      'compiled' => '',
    ),
    'fe_fn_c_get_img_height' => 
    array (
      'parameter' => 
      array (
        'col' => 6,
        'rate' => 1,
        'border' => '',
      ),
      'compiled' => '',
    ),
    'fe_fn_c_make_url' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'fe_fn_c_enc_url' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'fe_fn_c_title_prefix' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'fe_fn_c_showgw' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'fe_fn_c_title' => 
    array (
      'parameter' => 
      array (
        'title' => '',
        'url' => '',
        'token' => '',
        'backEndEncryption' => '',
        'highlightParam' => 0,
        'showgw' => '',
      ),
      'compiled' => '',
    ),
    'fe_fn_c_title_url' => 
    array (
      'parameter' => 
      array (
        'url' => '',
        'token' => '',
        'backEndEncryption' => '',
      ),
      'compiled' => '',
    ),
    'fe_fn_c_title_soucang' => 
    array (
      'parameter' => 
      array (
        'title' => '',
        'url' => '',
        'token' => '',
        'backEndEncryption' => '',
      ),
      'compiled' => '',
    ),
    'fe_fn_c_title_suffix' => 
    array (
      'parameter' => 
      array (
        'title' => '',
        'url' => '',
        'token' => '',
        'backEndEncryption' => '',
      ),
      'compiled' => '',
    ),
    'fe_fn_c_showurl_tools' => 
    array (
      'parameter' => 
      array (
        'title' => '',
        'url' => '',
      ),
      'compiled' => '',
    ),
    'fe_fn_c_showurl' => 
    array (
      'parameter' => 
      array (
        'showurl' => '',
        'date' => '',
        'showlamp' => '',
      ),
      'compiled' => '',
    ),
    'fe_fn_c_likeshare' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'fe_fn_c_css_write' => 
    array (
      'parameter' => 
      array (
        'css' => '',
        'ext' => '',
      ),
      'compiled' => '',
    ),
    'fe_fn_c_css' => 
    array (
      'parameter' => 
      array (
        'css' => '',
        'ext' => '',
      ),
      'compiled' => '',
    ),
    'fe_fn_c_wrap_attrs' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'get_promo_type' => 
    array (
      'parameter' => 
      array (
        'p1' => 'promo_data',
      ),
      'compiled' => '',
    ),
    'get_char_num' => 
    array (
      'parameter' => 
      array (
        'str' => 'str',
      ),
      'compiled' => '',
    ),
    'get_mer_name' => 
    array (
      'parameter' => 
      array (
        'product' => 'product',
      ),
      'compiled' => '',
    ),
    'is_transfer' => 
    array (
      'parameter' => 
      array (
        'product' => 'product',
      ),
      'compiled' => '',
    ),
    'get_trans_url' => 
    array (
      'parameter' => 
      array (
        'product' => 'product',
      ),
      'compiled' => '',
    ),
  ),
  'has_nocache_code' => 0,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/Users/zoumiaojiang/code/edpx-zhixin/env/app/view-ui/libs/Smarty/plugins/modifier.escape.php';
if (!is_callable('smarty_modifier_limitlen')) include '/Users/zoumiaojiang/code/edpx-zhixin/env/app/view-ui//plugins/modifier.limitlen.php';
if (!is_callable('smarty_modifier_highlight')) include '/Users/zoumiaojiang/code/edpx-zhixin/env/app/view-ui//plugins/modifier.highlight.php';
if (!is_callable('smarty_modifier_truncate')) include '/Users/zoumiaojiang/code/edpx-zhixin/env/app/view-ui/libs/Smarty/plugins/modifier.truncate.php';
?><?php if (!isset($_smarty_tpl->tpl_vars['extData']) || !is_array($_smarty_tpl->tpl_vars['extData']->value)) $_smarty_tpl->createLocalArrayVariable('extData', null, null);
$_smarty_tpl->tpl_vars['extData']->value['feData']['hasBorder'] = false;?>
<?php if (!isset($_smarty_tpl->tpl_vars['extData']) || !is_array($_smarty_tpl->tpl_vars['extData']->value)) $_smarty_tpl->createLocalArrayVariable('extData', null, null);
$_smarty_tpl->tpl_vars['extData']->value['feData']['hasTitleGap'] = true;?>
<?php if (!isset($_smarty_tpl->tpl_vars['extData']) || !is_array($_smarty_tpl->tpl_vars['extData']->value)) $_smarty_tpl->createLocalArrayVariable('extData', null, null);
$_smarty_tpl->tpl_vars['extData']->value['feData']['hasShowURLGap'] = false;?>
<?php if (!isset($_smarty_tpl->tpl_vars['extData']) || !is_array($_smarty_tpl->tpl_vars['extData']->value)) $_smarty_tpl->createLocalArrayVariable('extData', null, null);
$_smarty_tpl->tpl_vars['extData']->value['feData']['platform'] = 'pc';?>




<?php $_smarty_tpl->tpl_vars['FE_GBVAR'] = new Smarty_variable(array('url_encryption'=>(($_smarty_tpl->getVariable('templateConfig')->value['URLEncryption']=="1")),'encrypt_prefix'=>($_smarty_tpl->getVariable('templateConfig')->value['urlEncryption_jump']),'urlEncMaxLen'=>$_smarty_tpl->getVariable('templateConfig')->value['urlEncMaxLen'] ? ((int)$_smarty_tpl->getVariable('templateConfig')->value['urlEncMaxLen']) : 2000,'gridSolid'=>6,'gridGap'=>17,'boxGridSolid'=>12,'boxGridGap'=>10), null, null);?>
<?php if (!function_exists('smarty_template_function_fe_fn_c_get_grid_height')) {
    function smarty_template_function_fe_fn_c_get_grid_height($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['fe_fn_c_get_grid_height']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?><?php if (!$_smarty_tpl->getVariable('special')->value&&($_smarty_tpl->getVariable('extData')->value['burstFlag']||$_smarty_tpl->getVariable('extData')->value['feData']['hasBorder']||$_smarty_tpl->getVariable('border')->value)){?><?php $_smarty_tpl->tpl_vars['solid'] = new Smarty_variable($_smarty_tpl->getVariable('FE_GBVAR')->value['boxGridSolid'], null, null);?><?php $_smarty_tpl->tpl_vars['gap'] = new Smarty_variable($_smarty_tpl->getVariable('FE_GBVAR')->value['boxGridGap'], null, null);?><?php }else{ ?><?php $_smarty_tpl->tpl_vars['solid'] = new Smarty_variable($_smarty_tpl->getVariable('FE_GBVAR')->value['gridSolid'], null, null);?><?php $_smarty_tpl->tpl_vars['gap'] = new Smarty_variable($_smarty_tpl->getVariable('FE_GBVAR')->value['gridGap'], null, null);?><?php }?><?php echo round(($_smarty_tpl->getVariable('col')->value*($_smarty_tpl->getVariable('solid')->value+$_smarty_tpl->getVariable('gap')->value)-$_smarty_tpl->getVariable('gap')->value)*$_smarty_tpl->getVariable('rate')->value);?>
<?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>

<?php if (!function_exists('smarty_template_function_fe_fn_c_get_img_height')) {
    function smarty_template_function_fe_fn_c_get_img_height($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['fe_fn_c_get_img_height']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?><?php if ($_smarty_tpl->getVariable('col')->value==6){?><?php $_smarty_tpl->tpl_vars['special'] = new Smarty_variable(true, null, null);?><?php }?><?php smarty_template_function_fe_fn_c_get_grid_height($_smarty_tpl,array('col'=>$_smarty_tpl->getVariable('col')->value,'rate'=>$_smarty_tpl->getVariable('rate')->value,'border'=>$_smarty_tpl->getVariable('border')->value,'special'=>$_smarty_tpl->getVariable('special')->value));?>
<?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<?php $_smarty_tpl->tpl_vars['baiduId'] = new Smarty_variable($_smarty_tpl->getVariable('queryInfo')->value['baiduId'], null, null);?>
<?php $_smarty_tpl->tpl_vars['serverTime'] = new Smarty_variable($_smarty_tpl->getVariable('queryInfo')->value['listTime'], null, null);?>
<?php $_smarty_tpl->tpl_vars['productEncKey'] = new Smarty_variable($_smarty_tpl->getVariable('queryInfo')->value['productEncKey'], null, null);?>

<?php $_smarty_tpl->tpl_vars['resToken'] = new Smarty_variable(array(), null, null);?>
<?php if (!isset($_smarty_tpl->tpl_vars['resToken']) || !is_array($_smarty_tpl->tpl_vars['resToken']->value)) $_smarty_tpl->createLocalArrayVariable('resToken', null, null);
$_smarty_tpl->tpl_vars['resToken']->value["tieba"] = ($_smarty_tpl->getVariable('templateConfig')->value['token_tieba']=="1");?>
<?php if (!isset($_smarty_tpl->tpl_vars['resToken']) || !is_array($_smarty_tpl->tpl_vars['resToken']->value)) $_smarty_tpl->createLocalArrayVariable('resToken', null, null);
$_smarty_tpl->tpl_vars['resToken']->value["baike"] = ($_smarty_tpl->getVariable('templateConfig')->value['token_baike']=="1");?>

<?php if (!function_exists('smarty_template_function_fe_fn_c_make_url')) {
    function smarty_template_function_fe_fn_c_make_url($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['fe_fn_c_make_url']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?><?php echo strlen($_smarty_tpl->getVariable('eurl')->value)>0&&strlen($_smarty_tpl->getVariable('eurl')->value)<$_smarty_tpl->getVariable('FE_GBVAR')->value['urlEncMaxLen'] ? ($_smarty_tpl->getVariable('FE_GBVAR')->value['encrypt_prefix']).($_smarty_tpl->getVariable('eurl')->value) : ($_smarty_tpl->getVariable('ourl')->value);?>
<?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<?php if (!is_callable('smarty_modifier_encryptUrl')) include '/Users/zoumiaojiang/code/edpx-zhixin/env/app/view-ui//plugins/modifier.encryptUrl.php';
?><?php if (!function_exists('smarty_template_function_fe_fn_c_enc_url')) {
    function smarty_template_function_fe_fn_c_enc_url($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['fe_fn_c_enc_url']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?><?php if ($_smarty_tpl->getVariable('FE_GBVAR')->value['url_encryption']){?><?php if ($_smarty_tpl->getVariable('token')->value&&$_smarty_tpl->getVariable('resToken')->value[$_smarty_tpl->getVariable('token')->value]){?><?php $_smarty_tpl->tpl_vars['urlTokenMd5Str'] = new Smarty_variable(($_smarty_tpl->getVariable('url')->value).($_smarty_tpl->getVariable('serverTime')->value), null, null);?><?php $_smarty_tpl->tpl_vars['urlTokenMd5'] = new Smarty_variable(md5($_smarty_tpl->getVariable('urlTokenMd5Str')->value), null, null);?><?php $_smarty_tpl->tpl_vars['urlToken'] = new Smarty_variable(smarty_modifier_encryptUrl(($_smarty_tpl->getVariable('urlTokenMd5')->value)."&".($_smarty_tpl->getVariable('serverTime')->value),3,$_smarty_tpl->getVariable('productEncKey')->value), null, null);?><?php if (strlen($_smarty_tpl->getVariable('urlToken')->value)>0&&strlen($_smarty_tpl->getVariable('urlToken')->value)<$_smarty_tpl->getVariable('FE_GBVAR')->value['urlEncMaxLen']){?><?php $_smarty_tpl->tpl_vars['url'] = new Smarty_variable(($_smarty_tpl->getVariable('url')->value)."&__bd_tkn__=".($_smarty_tpl->getVariable('urlToken')->value), null, null);?><?php }?><?php smarty_template_function_fe_fn_c_make_url($_smarty_tpl,array('eurl'=>smarty_modifier_encryptUrl($_smarty_tpl->getVariable('url')->value),'ourl'=>$_smarty_tpl->getVariable('url')->value));?>
<?php }elseif($_smarty_tpl->getVariable('backEndEncryption')->value){?><?php echo $_smarty_tpl->getVariable('url')->value;?>
<?php }else{ ?><?php smarty_template_function_fe_fn_c_make_url($_smarty_tpl,array('eurl'=>smarty_modifier_encryptUrl($_smarty_tpl->getVariable('url')->value),'ourl'=>$_smarty_tpl->getVariable('url')->value));?>
<?php }?><?php }else{ ?><?php echo $_smarty_tpl->getVariable('url')->value;?>
<?php }?><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<?php if (!function_exists('smarty_template_function_fe_fn_c_title_prefix')) {
    function smarty_template_function_fe_fn_c_title_prefix($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['fe_fn_c_title_prefix']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?><h3 class="t<?php if ($_smarty_tpl->getVariable('extData')->value['feData']['hasBorder']||$_smarty_tpl->getVariable('extData')->value['feData']['hasTitleGap']){?> c-gap-bottom-small<?php }?>"><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<?php if (!function_exists('smarty_template_function_fe_fn_c_showgw')) {
    function smarty_template_function_fe_fn_c_showgw($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['fe_fn_c_showgw']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?><a target="_blank" href="http://guanwang.baidu.com/vcard/officialsite/" class="icon-gw">官网</a><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<?php if (!is_callable('smarty_modifier_limitlen')) include '/Users/zoumiaojiang/code/edpx-zhixin/env/app/view-ui//plugins/modifier.limitlen.php';
if (!is_callable('smarty_modifier_highlight')) include '/Users/zoumiaojiang/code/edpx-zhixin/env/app/view-ui//plugins/modifier.highlight.php';
?><?php if (!function_exists('smarty_template_function_fe_fn_c_title')) {
    function smarty_template_function_fe_fn_c_title($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['fe_fn_c_title']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?><?php if ($_smarty_tpl->getVariable('title')->value===''){?><?php $_smarty_tpl->tpl_vars['title'] = new Smarty_variable($_smarty_tpl->getVariable('tplData')->value['title'], null, null);?><?php }?><?php if ($_smarty_tpl->getVariable('url')->value===''){?><?php $_smarty_tpl->tpl_vars['url'] = new Smarty_variable($_smarty_tpl->getVariable('tplData')->value['url'], null, null);?><?php }?><?php if ($_smarty_tpl->getVariable('showgw')->value===''){?><?php $_smarty_tpl->tpl_vars['showgw'] = new Smarty_variable($_smarty_tpl->getVariable('tplData')->value['showgw'], null, null);?><?php }?><?php if ($_smarty_tpl->getVariable('showgw')->value){?><?php $_smarty_tpl->tpl_vars['titleLimitlen'] = new Smarty_variable(56, null, null);?><?php }else{ ?><?php $_smarty_tpl->tpl_vars['titleLimitlen'] = new Smarty_variable(62, null, null);?><?php }?><a href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
" target="_blank"><?php ob_start();?><?php echo $_smarty_tpl->getVariable('highlightParam')->value;?>
<?php $_tmp1=ob_get_clean();?><?php echo smarty_modifier_highlight(smarty_modifier_limitlen($_smarty_tpl->getVariable('title')->value,$_smarty_tpl->getVariable('titleLimitlen')->value),$_tmp1);?>
</a><?php if ($_smarty_tpl->getVariable('showgw')->value){?><?php smarty_template_function_fe_fn_c_showgw($_smarty_tpl,array());?>
<?php }?><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<?php if (!function_exists('smarty_template_function_fe_fn_c_title_url')) {
    function smarty_template_function_fe_fn_c_title_url($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['fe_fn_c_title_url']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?><?php smarty_template_function_fe_fn_c_enc_url($_smarty_tpl,array('url'=>($_smarty_tpl->getVariable('url')->value),'token'=>($_smarty_tpl->getVariable('token')->value),'backEndEncryption'=>($_smarty_tpl->getVariable('backEndEncryption')->value)));?>
<?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<?php if (!function_exists('smarty_template_function_fe_fn_c_title_soucang')) {
    function smarty_template_function_fe_fn_c_title_soucang($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['fe_fn_c_title_soucang']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<?php if (!function_exists('smarty_template_function_fe_fn_c_title_suffix')) {
    function smarty_template_function_fe_fn_c_title_suffix($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['fe_fn_c_title_suffix']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?></h3><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<?php if (!is_callable('smarty_modifier_urlsign')) include '/Users/zoumiaojiang/code/edpx-zhixin/env/app/view-ui//plugins/modifier.urlsign.php';
if (!is_callable('smarty_modifier_escape')) include '/Users/zoumiaojiang/code/edpx-zhixin/env/app/view-ui/libs/Smarty/plugins/modifier.escape.php';
?><?php if (!function_exists('smarty_template_function_fe_fn_c_showurl_tools')) {
    function smarty_template_function_fe_fn_c_showurl_tools($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['fe_fn_c_showurl_tools']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?><?php if ($_smarty_tpl->getVariable('url')->value===''){?><?php $_smarty_tpl->tpl_vars['url'] = new Smarty_variable($_smarty_tpl->getVariable('tplData')->value['url'], null, null);?><?php }?><?php if ($_smarty_tpl->getVariable('title')->value===''){?><?php $_smarty_tpl->tpl_vars['title'] = new Smarty_variable($_smarty_tpl->getVariable('tplData')->value['title'], null, null);?><?php }?><?php if ($_smarty_tpl->getVariable('url')->value){?><span class="c-tools" id="tools_<?php echo smarty_modifier_urlsign($_smarty_tpl->getVariable('url')->value);?>
" data-tools="{title:'<?php echo smarty_modifier_escape(smarty_modifier_escape($_smarty_tpl->getVariable('title')->value,'javascript'));?>
',url:'<?php echo smarty_modifier_escape(smarty_modifier_escape($_smarty_tpl->getVariable('url')->value,'javascript'));?>
'}"><a class="c-tip-icon"><i class="c-icon c-icon-triangle-down-g"></i></a></span><?php }?><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<?php if (!is_callable('smarty_modifier_escape')) include '/Users/zoumiaojiang/code/edpx-zhixin/env/app/view-ui/libs/Smarty/plugins/modifier.escape.php';
?><?php if (!function_exists('smarty_template_function_fe_fn_c_showurl')) {
    function smarty_template_function_fe_fn_c_showurl($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['fe_fn_c_showurl']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?><?php if ($_smarty_tpl->getVariable('showurl')->value===''){?><?php $_smarty_tpl->tpl_vars['showurl'] = new Smarty_variable($_smarty_tpl->getVariable('tplData')->value['showurl'], null, null);?><?php }?><?php if ($_smarty_tpl->getVariable('date')->value===''){?><?php $_smarty_tpl->tpl_vars['date'] = new Smarty_variable($_smarty_tpl->getVariable('tplData')->value['date'], null, null);?><?php }?><?php if ($_smarty_tpl->getVariable('showlamp')->value===''){?><?php $_smarty_tpl->tpl_vars['showlamp'] = new Smarty_variable($_smarty_tpl->getVariable('tplData')->value['showlamp'], null, null);?><?php }?><span class="c-showurl"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('showurl')->value,'html');?>
 <?php if ($_smarty_tpl->getVariable('date')->value){?> <?php echo smarty_modifier_escape($_smarty_tpl->getVariable('date')->value,'html');?>
 <?php }?></span><?php if ($_smarty_tpl->getVariable('showurl')->value){?><?php smarty_template_function_fe_fn_c_showurl_tools($_smarty_tpl,array());?>
<?php }?><?php if ($_smarty_tpl->getVariable('showlamp')->value){?> - <a target="_blank" href="http://open.baidu.com/" class="op_LAMP"></a><?php }?><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>
 

<?php if (!function_exists('smarty_template_function_fe_fn_c_likeshare')) {
    function smarty_template_function_fe_fn_c_likeshare($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['fe_fn_c_likeshare']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<?php if (!function_exists('smarty_template_function_fe_fn_c_css_write')) {
    function smarty_template_function_fe_fn_c_css_write($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['fe_fn_c_css_write']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?>
    <?php if (!isset($_smarty_tpl->getVariable('extData',null,true,false)->value['feData']['cssState'][$_smarty_tpl->getVariable('css',null,true,false)->value][$_smarty_tpl->getVariable('ext',null,true,false)->value])){?>
        <?php echo $_smarty_tpl->getVariable('extData')->value['feData']['cssUI'][$_smarty_tpl->getVariable('css')->value][$_smarty_tpl->getVariable('ext')->value];?>

        <?php if (!isset($_smarty_tpl->tpl_vars['extData']) || !is_array($_smarty_tpl->tpl_vars['extData']->value)) $_smarty_tpl->createLocalArrayVariable('extData', null, null);
$_smarty_tpl->tpl_vars['extData']->value['feData']['cssState'][$_smarty_tpl->getVariable('css')->value][$_smarty_tpl->getVariable('ext')->value] = 1;?>
    <?php }?><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<?php if (!function_exists('smarty_template_function_fe_fn_c_css')) {
    function smarty_template_function_fe_fn_c_css($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['fe_fn_c_css']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?>
    <?php if ($_smarty_tpl->getVariable('css')->value){?>
        <?php smarty_template_function_fe_fn_c_css_write($_smarty_tpl,array('css'=>$_smarty_tpl->getVariable('css')->value,'ext'=>'common'));?>

        <?php if ($_smarty_tpl->getVariable('ext')->value){?>
            <?php if (is_array($_smarty_tpl->getVariable('ext')->value)){?>
                <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('ext')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value){
?>
                    <?php smarty_template_function_fe_fn_c_css_write($_smarty_tpl,array('css'=>$_smarty_tpl->getVariable('css')->value,'ext'=>$_smarty_tpl->tpl_vars['item']->value));?>

                <?php }} ?>
            <?php }else{ ?>
                <?php smarty_template_function_fe_fn_c_css_write($_smarty_tpl,array('css'=>$_smarty_tpl->getVariable('css')->value,'ext'=>$_smarty_tpl->getVariable('ext')->value));?>

            <?php }?>
        <?php }?>
    <?php }?><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>

<?php if (!is_callable('smarty_modifier_escape')) include '/Users/zoumiaojiang/code/edpx-zhixin/env/app/view-ui/libs/Smarty/plugins/modifier.escape.php';
?><?php if (!function_exists('smarty_template_function_fe_fn_c_wrap_attrs')) {
    function smarty_template_function_fe_fn_c_wrap_attrs($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['fe_fn_c_wrap_attrs']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?>class="result-op c-container<?php if ($_smarty_tpl->getVariable('extData')->value['feData']['fm']&&$_smarty_tpl->getVariable('extData')->value['feData']['fm']=="alxl"){?> result-zxl<?php }?><?php if ($_smarty_tpl->getVariable('extData')->value['feData']['isSameSize']&&$_smarty_tpl->getVariable('fe_fn_c_nameFlag')->value){?> c-res<?php }?><?php if ($_smarty_tpl->getVariable('extData')->value['resourceid']&&$_smarty_tpl->getVariable('extData')->value['resourceid']<5999){?> xpath-log<?php }?><?php if ($_smarty_tpl->getVariable('extData')->value['feData']['urData']){?> click-parent-reward<?php }?>" <?php if ($_smarty_tpl->getVariable('extData')->value['resourceid']){?> srcid="<?php echo $_smarty_tpl->getVariable('extData')->value['resourceid'];?>
"<?php }?> <?php if ($_smarty_tpl->getVariable('extData')->value['fetchkey']){?> fk="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('extData')->value['fetchkey']);?>
"<?php }?> id="<?php if ($_smarty_tpl->getVariable('extData')->value['feData']['fm']&&$_smarty_tpl->getVariable('extData')->value['feData']['fm']=="alxl"){?>zxl_<?php echo $_smarty_tpl->getVariable('extData')->value['feData']['id'];?>
<?php }else{ ?><?php echo $_smarty_tpl->getVariable('extData')->value['feData']['id'];?>
<?php }?>" tpl="<?php echo basename(dirname($_smarty_tpl->getTemplateFilepath()));?>
" mu="<?php echo $_smarty_tpl->getVariable('extData')->value['feData']['mu'];?>
" data-op="{'y':'<?php echo $_smarty_tpl->getVariable('extData')->value['feData']['y'];?>
'}" data-click="{'p1':'<?php echo $_smarty_tpl->getVariable('extData')->value['feData']['id'];?>
','rsv_bdr':'<?php echo $_smarty_tpl->getVariable('extData')->value['burstFlag'];?>
'<?php if ($_smarty_tpl->getVariable('extData')->value['feData']['fm']){?>,'fm':'<?php echo $_smarty_tpl->getVariable('extData')->value['feData']['fm'];?>
'<?php }?><?php if (isset($_smarty_tpl->getVariable('extData',null,true,false)->value['feData']['catid'])){?>,rsv_catid:'<?php echo $_smarty_tpl->getVariable('extData')->value['feData']['catid'];?>
'<?php }?><?php if (isset($_smarty_tpl->getVariable('extData',null,true,false)->value['feData']['cardid'])){?>,rsv_cardid:'<?php echo $_smarty_tpl->getVariable('extData')->value['feData']['cardid'];?>
'<?php }?><?php if (isset($_smarty_tpl->getVariable('extData',null,true,false)->value['feData']['ename'])&&trim($_smarty_tpl->getVariable('extData')->value['feData']['ename'])){?>,rsv_ename:'<?php echo smarty_modifier_escape(smarty_modifier_escape($_smarty_tpl->getVariable('extData')->value['feData']['ename'],'javascript'),'html');?>
'<?php }?><?php if (isset($_smarty_tpl->getVariable('extData',null,true,false)->value['feData']['uri'])&&trim($_smarty_tpl->getVariable('extData')->value['feData']['uri'])){?>,rsv_uri:'<?php echo smarty_modifier_escape(smarty_modifier_escape($_smarty_tpl->getVariable('extData')->value['feData']['uri'],'javascript'),'html');?>
'<?php }?>,rsv_stl:'<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('extData')->value['feData']['rsv_stl']);?>
'}"<?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>




<div <?php smarty_template_function_fe_fn_c_wrap_attrs($_smarty_tpl,array());?>
<?php if ($_smarty_tpl->getVariable('extData')->value['feData']['urData']){?> urdata="<?php echo $_smarty_tpl->getVariable('extData')->value['feData']['urData'];?>
"<?php }?>>
    
        <?php smarty_template_function_fe_fn_c_title_prefix($_smarty_tpl,array());?>

        <?php smarty_template_function_fe_fn_c_title($_smarty_tpl,array());?>

        <?php smarty_template_function_fe_fn_c_title_suffix($_smarty_tpl,array());?>

    
    <?php if ($_smarty_tpl->getVariable('extData')->value['feData']['hasBorder']){?><div class="c-border"><?php }?>
<?php if (!function_exists('smarty_template_function_get_promo_type')) {
    function smarty_template_function_get_promo_type($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['get_promo_type']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?>
<?php if ($_smarty_tpl->getVariable('p1')->value['id']!=0&&$_smarty_tpl->getVariable('p1')->value['type']!=-1){?>
<?php if ($_smarty_tpl->getVariable('p1')->value['type']==0){?>flash-sale<?php }elseif($_smarty_tpl->getVariable('p1')->value['type']==1){?>brand-sale<?php }elseif($_smarty_tpl->getVariable('p1')->value['type']==2){?>tuan<?php }?>
<?php }?><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<?php if ($_smarty_tpl->getVariable('tplData')->value['StdStl']==5){?> 

<?php if (!function_exists('smarty_template_function_get_char_num')) {
    function smarty_template_function_get_char_num($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['get_char_num']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?>
<?php echo strlen(preg_replace("/[\x{4e00}-\x{9fa5}]{1}/u",'**',$_smarty_tpl->getVariable('str')->value));?>
<?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<?php if (!is_callable('smarty_modifier_escape')) include '/Users/zoumiaojiang/code/edpx-zhixin/env/app/view-ui/libs/Smarty/plugins/modifier.escape.php';
?><?php if (!function_exists('smarty_template_function_get_mer_name')) {
    function smarty_template_function_get_mer_name($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['get_mer_name']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?>
<?php if ($_smarty_tpl->getVariable('product')->value['product_type']==0){?>
微购正品
<?php }else{ ?>
<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('product')->value['vendor'],'html');?>

<?php }?><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<?php if (!function_exists('smarty_template_function_is_transfer')) {
    function smarty_template_function_is_transfer($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['is_transfer']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?>
<?php if ($_smarty_tpl->getVariable('product')->value['product_type']==1){?>
data-transfer='true'
<?php }?><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<?php if (!is_callable('smarty_modifier_escape')) include '/Users/zoumiaojiang/code/edpx-zhixin/env/app/view-ui/libs/Smarty/plugins/modifier.escape.php';
?><?php if (!function_exists('smarty_template_function_get_trans_url')) {
    function smarty_template_function_get_trans_url($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->template_functions['get_trans_url']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?>
<?php $_smarty_tpl->tpl_vars["root_url"] = new Smarty_variable("http://weigou.baidu.com/", null, null);?>
<?php if ($_smarty_tpl->getVariable('product')->value['product_type']==1){?>
<?php echo $_smarty_tpl->getVariable('root_url')->value;?>
site/transition?pid=<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('product')->value['id'],'none');?>
&merchant_name=<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('product')->value['vendor'],'url');?>
&product_url=<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('product')->value['product_url'],'url');?>

<?php }else{ ?>
<?php echo $_smarty_tpl->getVariable('root_url')->value;?>
item?id=<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('product')->value['id'],'none');?>

<?php }?><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;}}?>


<style type="text/css">
.ecl-weigou-header{zoom:1;}.ecl-weigou-header-inner{height:24px;}.ecl-weigou-header-logo{font-size:15px;margin:10px 0 0 8px;_display:inline;_zoom:1;width:65px;height:17px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -295px -19px;}.ecl-weigou-header-logo a{display:block;width:65px;height:17px;}.ecl-weigou-header-features{float:left;margin:10px 0 0 10px;line-height:18px;_display:inline;_zoom:1;}.ecl-weigou-header-left{float:left;}.ecl-weigou-header-left a{height:24px;line-height:24px;font-size:medium;}.ecl-weigou-header-right{float:right;margin:10px 8px 0 10px;_display:inline;}.ecl-weigou-header-right a{color:#7a77c8;}.ecl-weigou-header-logo{float:left;}.ecl-weigou-header-item{float:left;margin-right:10px;_zoom:1;_display:inline;}.ecl-weigou-header-item b{float:left;width:14px;height:14px;margin:2px 5px 0 0;display:inline-block;}
.ecl-weigou-header-item span{color:#AAA;float:left;}.ecl-weigou-header-quick{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -58px -82px;}.ecl-weigou-header-register{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -58px -52px;}.ecl-weigou-header-quality{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -58px -67px;}.ecl-weigou-address{display:none!important;position:relative;float:right;z-index:2;color:#666;width:117px;}.ecl-weigou-address .ecl-weigou-address-text{color:#000;margin-top:4px;margin-top:5px\9;float:left;line-height:16px;}.ecl-weigou-address-selector{left:100px;cursor:pointer;float:left;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -194px -96px;height:19px;width:64px;margin:2px 0 0 5px;_display:inline;}.ecl-weigou-address-content{display:inline-block;height:19px;width:53px;line-height:21px;_line-height:19px;text-align:center;}
.ecl-weigou-address-picker-wrapper{width:450px;overflow:hidden;}#ecl-weigou-address-picker{display:none;position:absolute;top:20px;right:0;border:1px solid #b5b5b5;padding:20px 12px;color:#806f66;background:#FFF;}.ecl-weigou-address-picker-inner{width:460px;font-size:0;*word-spacing:-1px;}.ecl-weigou-address-picker-inner div{margin:auto;width:480px;padding:3px 2px;zoom:1;border-bottom:1px dashed #ccc;}.ecl-weigou-address-picker-inner b{position:absolute;top:3px;right:3px;width:20px;height:20px;cursor:pointer;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -52px;}.ecl-weigou-address-picker-inner a{display:inline-block;_zoom:1;width:60px;height:24px;line-height:24px;overflow:hidden;cursor:pointer;font-size:12px;}.ecl-weigou-address-picker-inner .ecl-weigou-address-noborder{border:0;}.ecl-weigou-nav-buy{margin-top:10px;font-size:12px;}
.ecl-weigou-nav-buy #ecl-weigou-nav-buy-transfer{color:#00c;}.ecl-weigou-nav-buy #ecl-weigou-nav-buy-transfer .query-word{color:#C00;}.ecl-weigou-nav-buy .ecl-weigou-nav-buy-weigou-show-url{color:#008000;font-size:13px;}.ecl-weigou-nav-buy .ecl-weigou-nav-buy-weigou-show-url .c-icon-bao{margin:2px 0 0 3px;}.ecl-weigou-pur{padding-bottom:10px;position:relative;}.ecl-weigou-pur-section{margin:20px 0 0;}.ecl-weigou-pur-section th{font-size:12px;}.ecl-weigou-pur-title{font-size:14px;font-weight:bold;padding:0 0 10px 5px;zoom:1;overflow:hidden;}.ecl-weigou-pur-title span{float:left;}.ecl-weigou-product-counter-wrapper{width:100px;overflow:hidden;}.ecl-weigou-counter{width:84px;margin:auto;}.ecl-weigou-counter span{float:left;}.ecl-weigou-counter .ecl-weigou-minus,.ecl-weigou-counter .ecl-weigou-plus{width:20px;height:20px;cursor:pointer;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -95px -133px;-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;}
.ecl-weigou-counter .ecl-weigou-plus{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat 0 -52px;}.ecl-weigou-counter .ecl-weigou-count{width:32px;height:18px;border:1px solid #e1e1e1;margin:0 5px;overflow:hidden;}.ecl-weigou-counter input{width:32px;height:20px;line-height:20px;_line-height:18px;outline:0;border:0;text-align:center;}.ecl-weigou-pur-list table{width:540px;text-align:center;}.ecl-weigou-pur-list th{height:25px;vertical-align:middle;background:#f5f5f5;color:#666;}.ecl-weigou-pur-bottom{overflow:hidden;zoom:1;}.ecl-weigou-pur-bottom .ecl-weigou-invoice,.ecl-weigou-pur-bottom #ecl-weigou-pur-agmt{margin:-2px 3px 1px 3px;margin-top:0\9;_margin-top:-1px;height:13px;width:13px;vertical-align:middle;}.ecl-weigou-pur-bottom .ecl-weigou-invoice-text{color:#666;}.ecl-weigou-pur-bottom .ecl-weigou-invoice-tip{color:#9a9a9a;}
.ecl-weigou-pur-bottom .ecl-weigou-pur-agmt-wrapper{margin-top:8px;color:#666;}.ecl-weigou-pur-bottom .ecl-weigou-pur-agmt-wrapper a{color:#666;}.ecl-weigou-pur-bottom-left{float:left;width:200px;}.ecl-weigou-pur-bottom-right{float:right;color:#666;}.ecl-weigou-pur-bottom-right div{margin-bottom:6px;}.ecl-weigou-pur-bottom-right table{text-align:right;float:right;overflow:hidden;}.ecl-weigou-pur-bottom-right th{font-weight:normal;}.ecl-weigou-pur-bottom-right td{font-weight:bold;color:#da220c;}#ecl-weigou-view-container .ecl-weigou-pur-bottom-right .ecl-weigou-money{color:#da220c;}#ecl-weigou-pur-submit{float:right;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -377px -74px;width:120px;height:28px;color:#FFF;text-align:center;padding-top:8px;cursor:pointer;}#ecl-weigou-pur-submit-loading{float:right;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -377px -37px;width:120px;height:36px;overflow:hidden;color:#FFF;}
#ecl-weigou-pur-submit-loading img{display:block;width:10px;height:10px;margin:12px auto 0;}.ecl-weigou-pur-logo{margin:auto;height:60px;width:60px;overflow:hidden;}.ecl-weigou-pur-logo div{border:1px solid #e1e1e1;}.ecl-weigou-pur-logo img{display:block;width:58px;height:58px;}.ecl-weigou-pur-item{height:70px;}.ecl-weigou-pur-name{display:inline-block;padding:0 8px;text-align:left;word-break:break-all;word-wrap:break-word;}.ecl-weigou-pur-price{color:#da220c;display:inline-block;font-weight:bold;}.ecl-weigou-pur-delete{display:inline-block;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -194px -116px;line-height:21px;_line-height:23px;text-align:center;width:48px;height:21px;overflow:hidden;cursor:pointer;color:#666;}.ecl-weigou-pur-bottom{border-top:1px solid #e1e1e1;padding:10px 0 0;}.ecl-weigou-product-price-td,.ecl-weigou-product-counter-td,.ecl-weigou-product-op-td{vertical-align:top;}
.ecl-weigou-pur-price-wrapper,.ecl-weigou-counter,.ecl-weigou-pur-delete{margin-top:17px;}.ecl-weigou-product-errmsg{height:22px;line-height:22px;border:1px solid #f1a4a4;padding:0 5px 0 20px;color:#d00;width:55px;margin:5px auto 0;zoom:1;background:url(http://bs.baidu.com/adtest/6c0fcd727d9a0a5c1e3572128061272e.png) 4px 5px no-repeat;display:none;}#ecl-weigou-pur-total-price{font-size:18px;color:#da220c;font-weight:bold;}#ecl-weigou-pur-total-price-text{font-size:12px;display:none;}.ecl-weigou-pur-bottom-total{font-weight:bold;}#ecl-weigou-pur-return-btn{float:right;font-size:15px;cursor:pointer;text-decoration:underline;color:#7a77c8;visibility:visible;margin:18px 0 0 25px;display:none;}#ecl-weigou-pur-prices{display:none;padding-left:46px;}#ecl-weigou-pur-global-msg{position:absolute;display:none;width:258px;}
#ecl-weigou-pur-global-msg b{position:absolute;right:8px;top:8px;height:20px;width:20px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -117px;display:block;cursor:pointer;}.ecl-weigou-pur-global-wrapper{margin-bottom:4px;_margin-bottom:5px;zoom:1;border:1px solid #f99;background:#ffc;color:#df1411;}.ecl-weigou-pur-global-inner{width:200px;margin:10px 28px;}.ecl-weigou-pur-global-arrow{position:absolute;bottom:0;left:130px;height:5px;width:9px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat 0 -90px;}#ecl-weigou-pur-address-link{color:#7a77c8;font-size:12px;font-weight:normal;text-decoration:none;display:none;}.ecl-weigou-pur-new-addr{background:#f9f9f9;border:1px solid #e1e1e1;position:relative;zoom:1;}.ecl-weigou-pur-new-addr b{height:21px;width:21px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -73px -133px;}
.ecl-weigou-pur-noaddr,.ecl-weigou-pur-new-addr-expanded{border:1px solid #e80550;height:auto;}.ecl-weigou-pur-noaddr .ecl-weigou-pur-new-addr-header,.ecl-weigou-pur-new-addr-expanded .ecl-weigou-pur-new-addr-header{cursor:default;}.ecl-weigou-pur-noaddr .ecl-weigou-pur-new-addr-body,.ecl-weigou-pur-new-addr-expanded .ecl-weigou-pur-new-addr-body{display:block;}.ecl-weigou-pur-noaddr .ecl-weigou-pur-address-b,.ecl-weigou-pur-new-addr-expanded .ecl-weigou-pur-address-b{display:block;}.ecl-weigou-pur-noaddr .ecl-weigou-pur-new-addr-header{display:none;}.ecl-weigou-pur-address-b{position:absolute;right:0;bottom:0;display:none;}.ecl-weigou-pur-new-addr-header{overflow:hidden;height:26px;padding-left:236px;cursor:pointer;text-align:center;}.ecl-weigou-pur-new-addr-header b,.ecl-weigou-pur-new-addr-header span{text-align:left;float:left;font-size:12px;margin:5px 0 0 5px;width:65px;}
.ecl-weigou-pur-new-addr-header span{padding-top:2px\9;}.ecl-weigou-pur-new-addr-header b{margin:7px 0 0 0;height:12px;width:13px;overflow:hidden;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -302px;}.ecl-weigou-pur-new-addr-body{display:none;}.weigou-pur-new-addr-table{margin-top:10px;color:#666;}.weigou-pur-new-addr-table tr,.weigou-pur-new-addr-table th,.weigou-pur-new-addr-table td{vertical-align:middle;height:23px;}.weigou-pur-new-addr-table th{text-align:right;font-weight:normal;width:130px;}.weigou-pur-new-addr-table td{width:495px;}.weigou-pur-new-addr-table input.ecl-weigou-pur-input{float:left;border:1px solid #d3d3d3;height:20px;line-height:20px;width:177px;padding:1px 3px;-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box;color:#000;}.weigou-pur-new-addr-table span{float:left;}
.weigou-pur-new-addr-table .ecl-weigou-pur-form-first{height:30px;vertical-align:top;}.weigou-pur-new-addr-table .ecl-weigou-pur-form-first span{color:#da220c;font-weight:bold;}.ecl-weigou-pur-address-wrapper{position:relative;zoom:1;}.ecl-weigou-pur-addresses{position:absolute;display:none;width:380px;background:#FFF;border:1px solid #e1e1e1;left:0;top:23px;_top:25px;padding-bottom:10px;z-index:1;}.ecl-weigou-pur-addresses b{position:absolute;right:0;top:0;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -117px;width:20px;height:20px;cursor:pointer;}.ecl-weigou-pur-address-select{float:left;margin:10px 10px 0 10px;_display:inline;_zoom:1;}.ecl-weigou-pur-address-select select{width:100px;}#ecl-weigou-address-input{width:300px;}.ecl-weigou-pur-pick-address{height:22px;width:183px;border:1px solid #e1e1e1;background:#fff;color:#000;cursor:pointer;}
.ecl-weigou-pur-pick-address span{margin-left:5px;float:left;height:22px;line-height:22px;_line-height:24px;}.ecl-weigou-pur-pick-address b{float:right;width:11px;overflow:hidden;height:7px;margin:7px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -315px;}.ecl-weigou-pur-pick-address span{margin-left:5px;}.ecl-weigou-pur-error-message{display:none;float:left;height:22px;line-height:22px;border:1px solid #f1a4a4;padding:0 5px 0 20px;color:#d00;margin-left:10px;zoom:1;background:url(http://bs.baidu.com/adtest/6c0fcd727d9a0a5c1e3572128061272e.png) 4px 5px no-repeat;}.ecl-weigou-pur-top-addresses{width:540px;overflow:hidden;margin-bottom:6px;zoom:1;}.ecl-weigou-pur-top-addresses-inner{width:546px;overflow:hidden;margin-top:-6px;zoom:1;position:relative;}.ecl-weigou-pur-addreses-collapsed{height:88px;}
.ecl-weigou-pur-address{border:1px solid #e1e1e1;float:left;margin:6px 6px 0 0;position:relative;color:#666;cursor:pointer;}.ecl-weigou-pur-address b{position:absolute;right:0;bottom:0;_bottom:-1px;height:21px;width:21px;display:none;overflow:hidden;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -73px -133px;}.ecl-weigou-pur-address span{vertical-align:middle;}.ecl-weigou-pur-address-hover div a{display:block;}.ecl-weigou-pur-address-selected{border:1px solid #e80550;background:#ffc;}.ecl-weigou-pur-address-selected b{display:block;}.ecl-weigou-pur-address-inner{width:174px;vertical-align:middle;line-height:19px;}.ecl-weigou-pur-address-inner .ecl-addr-top{padding:10px 5px 0;word-break:break-all;word-wrap:break-word;overflow:hidden;height:40px;}.ecl-weigou-pur-address-inner .ecl-addr-bottom{margin:0 7px 8px;}
.ecl-weigou-pur-address-inner a{display:none;}.ecl-weigou-pur-address-inner:hover a{display:block;}.ecl-addr-bottom{overflow:hidden;_zoom:1;}.ecl-addr-bottom span{float:left;}.ecl-addr-bottom a{float:right;text-decoration:none;color:#7977c6;}.ecl-name{font-weight:bold;}#ecl-weigou-view-container #ecl-weigou-pur-offers td .ecl-weigou-money{color:#093;}#ecl-weigou-view-container #ecl-weigou-pur-offers td{color:#093;}.ecl-weigou-pur-address-btns{margin:10px auto;overflow:hidden;padding-left:188px;zoom:1;}#ecl-weigou-pur-address-ok{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat 0 -26px;height:25px;width:72px;margin-right:20px;float:left;}.ecl-weigou-pur-noaddr #ecl-weigou-pur-address-cancel{display:none;}.ecl-weigou-pur-noaddr .ecl-weigou-pur-address-btns{padding-left:245px;}#ecl-weigou-pur-address-cancel{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -377px -111px;height:25px;width:72px;margin-right:20px;float:left;margin:0 0 0 20px;cursor:pointer;}
#ecl-weigou-pur-addresses-msg{color:#fa7600;margin:0 0 10px 3px;}.ecl-weigou-pur-pay-method strong{font-weight:normal;color:#d9230e;}#ecl-weigou-pur-expand-address{float:left;color:#6563d3;font-size:12px;font-weight:normal;margin-top:2px;margin:2px 27px 0 0;_margin-top:0;}.ecl-weigou-pur-add-address{border:1px solid #e1e1e1;float:left;margin:6px 6px 0 0;position:relative;cursor:pointer;width:174px;height:77px;text-align:center;}.ecl-weigou-pur-add-address span{display:inline-block;width:44px;height:44px;vertical-align:middle;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -73px -89px;margin-top:17px;}.ecl-weigou-pur-summary-button{margin-top:5px;clear:both;}.ecl-weigou-pur-summary-button span{float:left;visibility:hidden;}.ecl-weigou-pur-details{border:1px solid #f99;background:#ffc;color:#333;padding:10px;line-height:24px;overflow:hidden;zoom:1;}
.ecl-weigou-pur-details span{display:inline-block;}.ecl-weigou-pur-details div{margin:0;}.ecl-weigou-pur-details-left{float:left;overflow:hidden;width:380px;}.ecl-weigou-pur-details-right{overflow:hidden;float:right;vertical-align:bottom;}.ecl-weigou-pur-details-right .ecl-price-title{color:#000;}.ecl-weigou-pur-details-right .ecl-price{color:#e11310;font-size:16px;margin-left:4px;font-weight:bold;}.ecl-weigou-pur-details-right .ecl-price-unit{color:#e11310;font-size:12px;margin-left:10px;}.ecl-weigou-pur-details-right div{overflow:hidden;zoom:1;}.ecl-weigou-pur-details-right div span,.ecl-weigou-pur-details-right div strong{float:left;}.ecl-weigou-pur-details-right strong{color:#e11310;font-weight:normal;}#ecl-weigou-pur-change-mobile{display:none!important;}.ecl-weigou-pur-promo-no{vertical-align:middle;}
.ecl-weigou-pur-name-td{vertical-align:top;text-align:left;padding-top:5px;}.ecl-weigou-pur-name-td b{display:block;width:81px;height:18px;margin:2px 0 0 9px;}.ecl-weigou-pur-name-td .brand-sale{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -194px -25px;}.ecl-weigou-pur-name-td .flash-sale{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -295px 0;}.ecl-weigou-pur-name-td .tuan{width:53px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -73px -70px;}.ecl-weigou-detail{padding:10px 0 0;}.ecl-weigou-detail-left{float:left;_display:inline;width:194px;overflow:hidden;}.ecl-weigou-detail-right{float:left;padding-left:20px;_display:inline;zoom:1;width:325px;color:#666;position:relative;z-index:11;}.ecl-weigou-detail-image-container{border:1px solid #e1e1e1;background:#FFF;}.ecl-weigou-detail-image-container div{width:192px;height:192px;overflow:hidden;}
.ecl-weigou-detail-image-container img{margin:1px;height:190px;width:190px;}.ecl-weigou-detail-gallery-wrapper{width:10000px;height:46px;position:absolute;left:0;}.ecl-weigou-detail-gallery-container{display:none;}.ecl-weigou-detail-gallery-container{margin-top:10px;width:194px;height:38px;overflow:hidden;display:none;position:relative;}.ecl-weigou-detail-gallery-left{cursor:pointer;position:absolute;left:0;top:0;}.ecl-weigou-detail-gallery-left div{width:10px;height:38px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -21px -223px;}.ecl-weigou-detail-gallery-left div.disabled{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -21px -262px;cursor:default;}.ecl-weigou-detail-gallery-right{width:10px;height:38px;cursor:pointer;position:absolute;right:0;top:0;}.ecl-weigou-detail-gallery-right div{width:10px;height:38px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -21px -145px;}
.ecl-weigou-detail-gallery-right div.disabled{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -21px -184px;cursor:default;}.ecl-weigou-detail-gallery{position:absolute;left:14px;width:167px;height:46px;overflow:hidden;_display:inline;}.ecl-weigou-detail-gallery ul{position:absolute;}.ecl-weigou-detail-gallery ul li{float:left;cursor:pointer;width:36px;height:36px;border:1px solid #e1e1e1;margin-right:5px;overflow:hidden;}.ecl-weigou-detail-gallery ul li img{width:36px;height:36px;}.ecl-weigou-detail-gallery ul li.selected{border:1px solid #ff6767;}.ecl-weigou-detail-name{font-size:14px;line-height:24px;width:305px;}.ecl-weigou-detail-name a{font-weight:bold;cursor:default;color:#000;text-decoration:none;word-wrap:break-word;word-break:break-all;}.ecl-weigou-detail-name a.transfer{cursor:pointer;}
.ecl-weigou-detail-vendor{color:#666;margin-top:7px;}.ecl-weigou-detail-vendor span{float:left;margin-top:3px;}.ecl-weigou-detail-vendor-name{color:#000;}.ecl-weigou-detail-vendor-name strong{font-weight:normal;color:#de1e1c;}.ecl-weigou-detail-price{margin-top:7px;}.ecl-weigou-detail-price span{float:left;margin-top:2px;}.ecl-weigou-detail-price .price{color:#d9230e;font-size:16px;margin:0 10px 0 2px;font-weight:bold;}.ecl-weigou-detail-price .price-old{color:#999;text-decoration:line-through;margin-right:10px;}.ecl-weigou-detail-price s{float:left;margin:2px 0 0;color:#999;}.ecl-weigou-countdown{margin:2px 0 0 5px;color:#000;}.ecl-weigou-detail-limit-buy{margin:3px 0 0 10px;color:#d9230e;}.ecl-weigou-detail-promo div{margin-top:7px;overflow:hidden;_zoom:1;}.ecl-weigou-detail-promo .promo-price{color:#d9230e;font-size:14px;}
.ecl-weigou-detail-promo span{float:left;}.ecl-weigou-detail-promo .promo-tag{height:18px;width:81px;}.ecl-weigou-detail-promo .brand-sale{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -194px -25px;}.ecl-weigou-detail-promo .flash-sale{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -295px 0;}.ecl-weigou-detail-promo .tuan{width:53px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -73px -70px;}.ecl-weigou-detail-lite-title{margin-top:2px;}.ecl-weigou-detail-counter{margin-top:7px;}.ecl-weigou-detail-counter span{float:left;}.ecl-weigou-detail-counter .ecl-weigou-detail-counter-title{margin-top:2px;}.ecl-weigou-detail-counter .ecl-weigou-detail-minus,.ecl-weigou-detail-counter .ecl-weigou-detail-plus{width:20px;height:20px;cursor:pointer;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -95px -133px;-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;}
.ecl-weigou-detail-counter .ecl-weigou-detail-plus{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat 0 -52px;}.ecl-weigou-detail-counter .ecl-weigou-detail-counter-input{width:32px;height:18px;border:1px solid #e1e1e1;margin:0 5px;overflow:hidden;}.ecl-weigou-detail-counter input{width:32px;height:20px;line-height:20px;_line-height:18px;outline:0;border:0;text-align:center;}.ecl-weigou-detail-pay-method{width:130px;}#ecl-weigou-detail-transfer{float:left;color:#7a77c8;margin-left:5px;width:98px;}#ecl-weigou-detail-transfer span{float:none;}.ecl-weigou-detail-transfer-disabled{display:none;}.ecl-weigou-detail-submit-wrapper{z-index:1;position:relative;}.ecl-weigou-detail-submit{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -377px 0;width:120px;height:36px;overflow:hidden;margin-top:10px;cursor:pointer;float:left;}
.ecl-weigou-detail-submit-disabled{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -73px 0;}.ecl-weigou-detail-bottom{display:none;margin:10px 0;zoom:1;}.ecl-weigou-rcmd-container{background:#FFF;padding:15px 0;color:#666;overflow:hidden;zoom:1;}.ecl-weigou-rcmd-left{float:left;width:117px;_display:inline;_zoom:1;}.ecl-weigou-rcmd-left .ecl-weigou-rcmd-item-top img{cursor:default;}.ecl-weigou-rcmd-left .ecl-weigou-rcmd-item-middle a{cursor:default;}.ecl-weigou-rcmd-middle{float:left;_display:inline;}.ecl-weigou-rcmd-middle b{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -147px -76px;width:23px;height:22px;display:block;margin:64px 11px 0 0;}.ecl-weigou-rcmd-right{float:left;width:376px;height:135px;}.ecl-weigou-rcmd-gallery-container{position:relative;}.ecl-weigou-rcmd-gallery-left,.ecl-weigou-rcmd-gallery-right{cursor:pointer;z-index:2;position:absolute;top:34px;}
.ecl-weigou-rcmd-gallery-left div,.ecl-weigou-rcmd-gallery-right div{width:15px;height:81px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -138px;}.ecl-weigou-rcmd-gallery-right div{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -21px -52px;}.ecl-weigou-rcmd-gallery-left div.disabled{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -73px -155px;cursor:default;}.ecl-weigou-rcmd-gallery-right div.disabled{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -220px;cursor:default;}.ecl-weigou-rcmd-gallery-right{right:1px;_right:0;}.ecl-weigou-rcmd-gallery{width:345px;height:135px;position:absolute;overflow:hidden;border-right:1px dashed #ededed;border-left:1px dashed #ededed;left:14px;}.ecl-weigou-rcmd-gallery-wrapper{height:135px;width:5000px;position:absolute;}
.ecl-weigou-rcmd-gallery-wrapper ul{position:absolute;}.ecl-weigou-rcmd-gallery-wrapper ul li{float:left;width:115px;height:135px;overflow:hidden;}.ecl-weigou-rcmd-gallery-wrapper ul li .ecl-weigou-rcmd-item{width:132px;}.ecl-weigou-rcmd-item{height:130px;}.ecl-weigou-rcmd-item-top{margin:auto;width:70px;height:70px;overflow:hidden;}.ecl-weigou-rcmd-item-top img{cursor:pointer;width:70px;height:70px;}.ecl-weigou-rcmd-item-middle{width:95px;height:32px;line-height:16px;margin:5px auto;overflow:hidden;}.ecl-weigou-rcmd-item-middle a{display:block;width:97px;overflow:hidden;word-wrap:break-word;word-break:break-all;}.ecl-weigou-rcmd-item-name{color:#666;word-break:break-all;word-wrap:break-word;}.ecl-weigou-rcmd-item-bottom{width:95px;margin:auto;padding-left:4px;}.ecl-weigou-rcmd-item-bottom input{margin:-2px 3px 1px 3px;margin-top:0 9;_margin-top:-1px;height:13px;width:13px;vertical-align:middle;}
.ecl-weigou-rcmd-item-bottom strong{color:#ff7800;}.ecl-weigou-rcmd-bottom{float:right;margin:5px 8px 0 0;_display:inline;}.ecl-weigou-rcmd-bottom span{display:inline-block;margin:6px 2px 0;_margin-top:7px;}.ecl-weigou-rcmd-count-wrapper span{color:#ff7800;display:inline-block;float:none;margin:0 3px 0;font-weight:bold;}span.ecl-weigou-rcmd-buy{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat 0 0;width:72px;height:25px;color:#FFF;font-weight:bold;margin-top:0;cursor:pointer;text-align:center;line-height:24px;}span.ecl-weigou-rcmd-buy-disabled{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -194px -70px;cursor:default;}.ecl-weigou-rcmd-tip{position:absolute;background:#FFF;font-size:12px;width:540px;z-index:12;}.ecl-weigou-rcmd-tip-inner{border:1px solid #e1e1e1;overflow:hidden;padding-bottom:10px;}
.ecl-weigou-rcmd-tip-inner b{position:absolute;right:0;top:0;height:20px;width:20px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -117px;display:block;cursor:pointer;}.ecl-weigou-rcmd-tip-left{float:left;margin:10px;_display:inline;_zoom:1;border:1px solid #e1e1e1;}.ecl-weigou-rcmd-tip-left div{width:192px;height:192px;overflow:hidden;}.ecl-weigou-rcmd-tip-left img{height:192px;width:192px;}.ecl-weigou-rcmd-tip-right{float:left;color:#666;width:314px;overflow:hidden;margin:10px 0 0 10px;_display:inline;_zoom:1;}.ecl-weigou-rcmd-tip-name-wrapper{font-size:14px;color:#333;line-height:24px;width:314px;word-break:break-all;word-wrap:break-word;}.ecl-weigou-rcmd-tip-vendor{margin:12px 0 8px 0;}.ecl-weigou-rcmd-tip-price strong{color:#ff7800;font-size:13px;}.ecl-weigou-rcmd-tip-attrs{margin-top:4px;}
.ecl-weigou-rcmd-tip-attr{margin:4px 0 0 0;float:left;height:17px;overflow:hidden;width:140px;text-overflow:ellipsis;white-space:nowrap;_display:inline;_zoom:1;}.ecl-weigou-detail-top{zoom:1;}.ecl-attr-key{color:#666;}.ecl-attr-value{color:#000;}.ecl-weigou-detail-tabs-header{text-align:center;color:#666;overflow:hidden;zoom:1;position:relative;}.ecl-weigou-detail-tabs-header .selected{font-weight:bold;color:#000;cursor:default;}.ecl-weigou-detail-tabs-header .selected .ecl-weigou-detail-tab-line{height:0;visibility:visible;border-top:1px solid #de1e1c;border-right:1px solid #de1e1c;}.ecl-weigou-detail-tabs-header .selected .ecl-weigou-detail-tab-text{background:#fff;border-bottom:1px solid #fff;border-top:1px solid #de1e1c;}.ecl-weigou-detail-tab-header{float:left;cursor:pointer;overflow:hidden;}.ecl-weigou-detail-tab-line{height:1px;visibility:hidden;overflow:hidden;float:left;padding:0 20px;}
.ecl-weigou-detail-tab-text{background:#f7f7f7;height:23px;line-height:25px;border:1px solid #e1e1e1;border-left:none;padding:0 20px;clear:left;float:left;}.ecl-weigou-detail-first-tab .ecl-weigou-detail-tab-text{border-left:1px solid #e1e1e1;}.ecl-weigou-detail-tabs-main{margin-top:-1px;border:1px solid #e1e1e1;_zoom:1;}.ecl-weigou-detail-tabs-main .selected{display:block;}.ecl-weigou-detail-tab-main{display:none;}.ecl-weigou-detail-rcmd{_zoom:1;}.ecl-weigou-detail-attrs{padding-top:10px;_zoom:1;overflow:hidden;}.ecl-weigou-detail-attr{height:25px;width:245px;overflow:hidden;margin:0 0 0 20px;float:left;text-overflow:ellipsis;white-space:nowrap;_zoom:1;_display:inline;}.ecl-weigou-detail-region{border-bottom:1px dashed #e6e6e6;border-top:1px dashed #e6e6e6;_zoom:1;margin-top:7px;padding:5px 0;width:325px;}
.ecl-weigou-detail-region th{font-weight:normal;font-family:simsun;text-align:left;}.ecl-weigou-detail-region span{float:left;}.ecl-weigou-detail-addr-container{zoom:1;height:25px;overflow:hidden;}.ecl-weigou-detail-addr{height:22px;border:1px solid #e1e1e1;width:127px;overflow:hidden;cursor:pointer;}.ecl-weigou-detail-addr span{margin-left:5px;line-height:22px;width:97px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;}.ecl-weigou-detail-addr b{float:right;width:11px;overflow:hidden;height:7px;margin:7px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -315px;}.ecl-weigou-detail-addr-td{position:relative;z-index:2;}.ecl-weigou-detail-addr-wrapper{position:absolute;display:none;width:380px;background:#FFF;border:1px solid #e1e1e1;left:0;top:23px;padding-bottom:10px;z-index:1;}.ecl-weigou-detail-addr-wrapper b{position:absolute;right:0;top:0;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -117px;width:20px;height:20px;cursor:pointer;}
.ecl-weigou-detail-addr-selector{overflow:hidden;}.ecl-weigou-detail-addr-msg{line-height:25px;height:25px;overflow:hidden;color:#60be44;font-weight:bold;margin-left:5px;}.ecl-weigou-detail-addr-msg-disabled{color:#fa7900;}.ecl-weigou-detail-pay-method{color:#de1e1c;}.ecl-weigou-detail-attr-link{display:inline-block;float:left;color:#7a77c8;margin:2px 10px 0 4px;padding:1px 5px 2px 5px;}.ecl-weigou-detail-attr-more{text-align:center;float:left;width:528px;}.ecl-weigou-detail-attr-more a{line-height:30px;}#ecl-weigou-detail-check-loading{height:25px;overflow:hidden;width:10px;margin:0 0 0 5px;}#ecl-weigou-detail-check-loading img{display:block;margin-top:8px;}.ecl-weigou-success{overflow:hidden;text-align:center;color:#666;margin-bottom:20px;}.ecl-weigou-success div{margin-bottom:5px;}.ecl-weigou-success a{color:#7878c6;}
.ecl-weigou-success .ecl-weigou-btn{display:block;margin:8px 14px 0;float:left;cursor:pointer;text-decoration:none;line-height:32px;}.ecl-weigou-success .ecl-weigou-orderview-btn{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -73px -37px;width:73px;height:32px;}.ecl-weigou-success .ecl-weigou-success-tip{color:#df1f1c;}.ecl-weigou-success-title{margin:40px 0 0;padding-left:100px;height:48px;overflow:hidden;zoom:1;}.ecl-weigou-success-title b{float:left;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -147px -37px;width:40px;height:38px;}.ecl-weigou-success-title span{float:left;color:#333;font-size:26px;font-family:'Microsoft yahei',sans-serif;display:inline-block;height:38px;line-height:38px;margin-left:5px;}.ecl-weigou-success-op{padding-left:143px;}.ad-widget-weigou-pager{text-align:center;margin-top:10px;font-size:12px;}
.ad-widget-weigou-pager a{display:inline-block;line-height:22px;text-align:center;height:22px;min-width:12px;border:1px solid #e1e1e1;margin:0 5px;text-decoration:none;padding:2px 6px;font-weight:bold;cursor:pointer;}.ad-widget-weigou-pager a.selected{border:1px solid #fafafa;font-weight:bold;color:#000;}.ad-widget-weigou-pager a.omit{border:0;margin:0;padding:0;color:#000;}.ecl-weigou-list-wrapper{line-height:1.3;overflow:hidden;width:540px;_width:520px;}.ecl-weigou-morebtn{font-size:12px;cursor:pointer;margin-top:3px;padding-top:8px;color:#666;padding-left:240px;zoom:1;height:15px;overflow:hidden;border-top:1px solid #ececec;}.ecl-weigou-morebtn span{float:left;color:#00C;}.ecl-weigou-morebtn b{float:left;zoom:1;overflow:hidden;margin:2px 0 0 0;*margin-top:0;}.ecl-weigou-list{padding:0;}.ecl-weigou-product-list{height:196px;width:540px;overflow:hidden;position:relative;}
.ecl-weigou-product-link{position:absolute;left:0;top:0;width:129px;height:186px;background:#000;opacity:0;filter:alpha(opacity=0);}.ecl-weigou-product{float:left;width:121px;height:188px;overflow:hidden;_display:inline;margin:8px 10px 0 0;background:#FFF;position:relative;cursor:pointer;}.ecl-weigou-product .ecl-weigou-product-top img{width:121px;height:121px;}.ecl-weigou-product .ecl-weigou-product-inner{height:186px;}.ecl-weigou-product .ecl-weigou-product-center{margin:0 5px;line-height:19px;height:38px;overflow:hidden;}.ecl-weigou-product .ecl-weigou-product-bottom{margin:0 5px;line-height:19px;height:19px;overflow:hidden;}.ecl-weigou-product .ecl-weigou-product-price{font-size:12px;font-weight:bold;}.ecl-weigou-product .ecl-weigou-product-price strong{color:#ff7800;}.ecl-weigou-product .ecl-weigou-product-original-price{color:#999;margin-left:1px;height:19px;overflow:hidden;white-space:nowrap;}
    .ecl-weigou-product .ecl-weigou-product-image{cursor:pointer;}.ecl-weigou-product .ecl-weigou-product-name{color:#00c;word-break:break-all;word-wrap:break-word;}.ecl-weigou-product-vendor{position:absolute;top:104px;right:0;height:17px;}.ecl-weigou-product-vendor .ecl-weigou-product-protection-icon{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat 0 -73px;width:16px;height:16px;position:absolute;top:-104px;right:103px;}.ecl-weigou-product-vendor span{position:absolute;height:17px;line-height:18px;_line-height:19px;overflow:hidden;color:#fff;right:4px;top:0;z-index:1;}.ecl-weigou-product-vendor .ecl-weigou-product-vendor-bg{background:#000;color:#000;float:left;height:17px;line-height:18px;opacity:.6;padding:0 3px;overflow:hidden;filter:alpha(opacity=60);}.ecl-weigou-list .ecl-weigou-product-list2{height:auto;}
.ecl-weigou-product-list2 .ecl-weigou-product-link{width:255px;height:146px;}.ecl-weigou-product-list2 .ecl-weigou-product{width:255px;height:146px;overflow:hidden;margin:8px 8px 0 0;}.ecl-weigou-product-list2 .ecl-weigou-product-inner{height:144px;color:#666;}.ecl-weigou-product-list2 .ecl-weigou-product-left{float:left;height:110px;width:110px;margin:16px 0 0 4px;_display:inline;_zoom:1;position:relative;}.ecl-weigou-product-list2 .ecl-weigou-product-left .ecl-promo-brand-sale-tag,.ecl-weigou-product-list2 .ecl-weigou-product-left .ecl-promo-flash-sale-tag,.ecl-weigou-product-list2 .ecl-weigou-product-left .ecl-promo-tuan-tag{top:-13px;}.ecl-weigou-product-list2 .ecl-weigou-product-right{float:left;margin-left:4px;width:130px;_display:inline;_zoom:1;}.ecl-weigou-product-list2 img{display:block;width:110px;height:110px;}
.ecl-weigou-product-list2 .ecl-weigou-product-name-wrapper{font-size:12px;line-height:18px;margin-top:10px;word-wrap:break-word;word-break:break-all;}.ecl-weigou-product-list2 .ecl-weigou-product-src{margin:8px 0 8px 0;}.ecl-weigou-product-list2 .ecl-weigou-product-price{float:none;font-weight:normal;}.ecl-weigou-product-list2 .ecl-weigou-product-original-price{float:none;margin-left:0;}.ecl-weigou-product-list2 .ecl-weigou-product-detail{margin-top:8px;}.ecl-weigou-product-list2 .ecl-weigou-product-detail a{color:#00c;}.ecl-weigou-product-list2 .ecl-weigou-product-vendor{right:141px;top:108px;}.ecl-weigou-product-list2 .ecl-weigou-product-vendor .ecl-weigou-product-protection-icon{top:-92px;right:244px;}.ecl-weigou-list-noresult{height:120px;padding-top:70px;text-align:center;}.ecl-weigou-pager{display:none;}
.ecl-weigou-filters{margin:-5px 0 0 0;_margin-bottom:-3px;}.ecl-weigou-filter-wrapper{width:465px;float:left;}.ecl-weigou-filter-wrapper a{display:inline-block;cursor:pointer;text-decoration:none;color:#00c;padding:0 5px;border:1px solid #fff;}.ecl-weigou-filter-wrapper a:hover{text-decoration:underline;}.ecl-weigou-filter-wrapper span{display:inline-block;}.ecl-weigou-filter-wrapper .selected{background:#569df4;color:#fff;}.ecl-weigou-filter-wrapper a,.ecl-weigou-filter-wrapper span{height:18px;line-height:19px;_line-height:20px;margin:6px 0 0;float:left;white-space:nowrap;}.ecl-weigou-filter-first{margin-left:0;}.ecl-weigou-filter-name{width:65px;overflow:hidden;text-align:right;font-weight:bold;float:left;}.ecl-weigou-filter-more{float:right;width:42px;overflow:hidden;margin-top:9px;_display:inline;_zoom:1;cursor:pointer;}
.ecl-weigou-filter-more span{float:left;}.ecl-weigou-filter-more b{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat 0 -96px;float:left;width:7px;height:4px;overflow:hidden;margin:6px 0 0 3px;}.ecl-weigou-filter-more .ecl-weigou-collapse{display:none;}.ecl-weigou-filter-more-expanded .ecl-weigou-expand{display:none;}.ecl-weigou-filter-more-expanded .ecl-weigou-collapse{display:block;}.ecl-weigou-filter-more-expanded b{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat 0 -101px;}.ecl-weigou-filter-line{border-top:1px solid #ddd;position:relative;background:#f7f7f7;height:3px;overflow:hidden;display:none;}.ecl-weigou-filter-items-wrapper{overflow:hidden;height:27px;float:left;width:400px;}.ecl-weigou-filter-items{padding-bottom:6px;}.ecl-weigou-login{color:#666;padding-bottom:20px;}.ecl-weigou-login h1{padding:0;margin:0;font-size:14px;height:38px;line-height:35px;color:#000;padding-left:5px;}
.ecl-weigou-login #ecl-weigou-login-loading{text-align:center;padding:100px 0;}.ecl-weigou-login table{width:100%;border-collapse:collapse;border-spacing:0;}.ecl-weigou-login .ecl-weigou-login-section{margin:10px 0;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-login-content{background-color:#f5f5f5;border:1px solid #d3d3d3;padding:25px 0 8px 0;}.ecl-weigou-login .ecl-weigou-login-section .ecl-tips{padding-left:5px;color:#e0201e;margin-bottom:8px;}.ecl-weigou-login .ecl-weigou-login-section tr,.ecl-weigou-login .ecl-weigou-login-section th,.ecl-weigou-login .ecl-weigou-login-section td{vertical-align:middle;height:30px;}.ecl-weigou-login .ecl-weigou-login-section th{text-align:right;font-weight:normal;}.ecl-weigou-login .ecl-weigou-login-section input{float:left;border:1px solid #d3d3d3;height:20px;line-height:19px;width:138px;padding:1px 3px;-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box;}
.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-verify{position:relative;height:24px;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-verify #ecl-weigou-vcode-option{position:absolute;width:20px;height:20px;left:123px;top:2px;cursor:pointer;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-verify i{display:inline-block;width:14px;height:10px;margin-top:5px;margin-left:3px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -21px -134px;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-verify .ecl-pwd-btn i{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -58px -97px;}.ecl-weigou-login .ecl-weigou-login-section #ecl-weigou-vcode-input{background-color:#fff;padding-right:24px;width:117px;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-get-mobile-code{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -194px 0;height:24px;line-height:24px;*line-height:26px;width:100px;margin-left:10px;cursor:pointer;overflow:hidden;text-align:center;}
.ecl-weigou-login .ecl-weigou-login-section #ecl-weigou-login-submit{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -194px -44px;width:72px;height:25px;display:inline-block;color:#fff;font-size:14px;line-height:25px;cursor:pointer;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-login-tdCenter{text-align:center;height:50px;}.ecl-weigou-login .ecl-weigou-login-section span{float:left;}.ecl-weigou-login .ecl-weigou-login-section .ecl-error{color:#e0201e;line-height:24px;margin-left:10px;*padding-top:2px;*line-height:22px;}.ecl-weigou-login .ecl-weigou-login-section #ecl-weigo-server-error{color:#e0201e;padding:10px 20px;line-height:20px;}.ecl-weigou-header{margin-bottom:5px;}.ecl-weigou{font-size:12px;width:540px;background:#fff;position:relative;}.ecl-weigou-font-songti{font-family:simsun;}.ecl-weigou-money{font-family:arial;font-weight:bold;color:#999;}
.ecl-weigou-left{float:left;}.ecl-weigou-right{float:right;}.ecl-weigou-line-through{text-decoration:line-through;}.ecl-weigou-clear{clear:both;}#ecl-weigou-back-btn{position:absolute;width:20px;height:43px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -73px;top:42px;right:0;cursor:pointer;display:none;z-index:99;}.ecl-weigou-background{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/gradient.png) 0 bottom repeat-x;padding-bottom:20px;}.ecl-promo-notag{display:none;}.ecl-promo-flash-sale-tag,.ecl-promo-brand-sale-tag,.ecl-promo-tuan-tag{width:39px;height:39px;position:absolute;right:3px;top:3px;}.ecl-promo-flash-sale-tag{background:url(http://bs.baidu.com/weigou-baidu-com/80fdac88f8380274eeb31c1a8a0c8a4a.png) no-repeat;_background:0;_filter:progid:dximagetransform.microsoft.alphaimageloader(enabled=true,sizingMethod=noscale,src='http://bs.baidu.com/weigou-baidu-com/80fdac88f8380274eeb31c1a8a0c8a4a.png');}
.ecl-promo-brand-sale-tag{background:url(http://bcscdn.baidu.com/weigou-baidu-com/993d95bfcdcdf3fe763ae669124256dd.png) no-repeat;_background:0;_filter:progid:dximagetransform.microsoft.alphaimageloader(enabled=true,sizingMethod=noscale,src='http://bs.baidu.com/weigou-baidu-com/993d95bfcdcdf3fe763ae669124256dd.png');}.ecl-promo-tuan-tag{background:url(http://bs.baidu.com/weigou-baidu-com/a06791e34368118c1d82758d4343f2fb.png) no-repeat;_background:0;_filter:progid:dximagetransform.microsoft.alphaimageloader(enabled=true,sizingMethod=noscale,src='http://bs.baidu.com/weigou-baidu-com/a06791e34368118c1d82758d4343f2fb.png');}
</style>

<div id="ecl-weigou-view-container" class="ecl-weigou-pc ecl-weigou">
    <div id="ecl-weigou-back-btn" style="display: none"></div>
    <div id="ecl-weigou-view-container-placeholder">
        <div class="ecl-weigou-header">
            <div class="ecl-weigou-header-inner">
                <h3 class="t">
                    <?php ob_start();?><?php smarty_template_function_get_char_num($_smarty_tpl,array('str'=>$_smarty_tpl->getVariable('extData')->value['OriginQuery']));?>
<?php $_tmp1=ob_get_clean();?><?php $_smarty_tpl->tpl_vars["query_length"] = new Smarty_variable($_tmp1, null, null);?>
                    <?php if ($_smarty_tpl->getVariable('query_length')->value>12){?>
                    <?php $_smarty_tpl->tpl_vars["weigou_title"] = new Smarty_variable((((((($_smarty_tpl->getVariable('extData')->value['OriginQuery']).("（共")).($_smarty_tpl->getVariable('tplData')->value['totalCount'])).("款商品")).("）")).("报价_参数_评论_百度微购")), null, null);?>
                    <?php }elseif($_smarty_tpl->getVariable('query_length')->value<=12&&$_smarty_tpl->getVariable('query_length')->value>=8){?>
                    <?php $_smarty_tpl->tpl_vars["weigou_title"] = new Smarty_variable(((((((($_smarty_tpl->getVariable('extData')->value['OriginQuery']).("（共")).($_smarty_tpl->getVariable('tplData')->value['totalCount'])).("款商品")).("）")).($_smarty_tpl->getVariable('extData')->value['OriginQuery'])).("报价_参数_评论_百度微购")), null, null);?>
                    <?php }else{ ?>
                    <?php $_smarty_tpl->tpl_vars["weigou_title"] = new Smarty_variable((((((((($_smarty_tpl->getVariable('extData')->value['OriginQuery']).("（共")).($_smarty_tpl->getVariable('tplData')->value['totalCount'])).("款")).($_smarty_tpl->getVariable('extData')->value['OriginQuery'])).("）")).($_smarty_tpl->getVariable('extData')->value['OriginQuery'])).("报价_参数_评论_百度微购")), null, null);?>
                    <?php }?>
                    <a href="http://weigou.baidu.com/search?q=<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('extData')->value['OriginQuery'],'url');?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('weigou_title')->value,'html');?>
" target="_blank"><?php echo smarty_modifier_highlight(smarty_modifier_limitlen(smarty_modifier_escape($_smarty_tpl->getVariable('weigou_title')->value,'html'),70),0);?>
</a>
                </h3>
                <div id="ecl-weigou-address" class="ecl-weigou-address c-clearfix" style="display:<?php if ($_smarty_tpl->getVariable('tplData')->value['StdStl']==1){?>none<?php }else{ ?>block<?php }?>">
                    <span class="ecl-weigou-address-text">收货地区</span>
                    <div class="ecl-weigou-address-selector OP_LOG_BTN" data-click="{fm:'beha'}">
                        <span class="ecl-weigou-address-content"><?php if ($_smarty_tpl->getVariable('tplData')->value['lo_address']){?><?php echo $_smarty_tpl->getVariable('tplData')->value['lo_address'];?>
<?php }else{ ?><?php if ($_smarty_tpl->getVariable('tplData')->value['address']){?><?php echo $_smarty_tpl->getVariable('tplData')->value['address'];?>
<?php }else{ ?>请选择<?php }?><?php }?></span>
                    </div>
                    <div id="ecl-weigou-address-picker">
                        <div class="ecl-weigou-address-picker-wrapper">
                            <div class="ecl-weigou-address-picker-inner">
                                <b class="OP_LOG_BTN" data-click="{fm:'beha'}"></b>
                                <?php if ($_smarty_tpl->getVariable('tplData')->value['address']){?>
                                <div class="ecl-weigou-address-items">
                                    <a class="ecl-region">全国</a>
                                </div>
                                <?php }?>
                                <div class="ecl-weigou-address-items">
                                    <a class="ecl-region">北京</a>
                                    <a class="ecl-region">上海</a>
                                    <a class="ecl-region">天津</a>
                                    <a class="ecl-region">重庆</a>
                                </div>
                                <div class="ecl-weigou-address-items ecl-weigou-address-noborder">
                                    <a class="ecl-region">河北</a>
                                    <a class="ecl-region">山西</a>
                                    <a class="ecl-region">内蒙古</a>
                                    <a class="ecl-region">辽宁</a>
                                    <a class="ecl-region">吉林</a>
                                    <a class="ecl-region">黑龙江</a>
                                    <a class="ecl-region">江苏</a>
                                    <a class="ecl-region">浙江</a>
                                    <a class="ecl-region">安徽</a>
                                    <a class="ecl-region">福建</a>
                                    <a class="ecl-region">江西</a>
                                    <a class="ecl-region">山东</a>
                                    <a class="ecl-region">河南</a>
                                    <a class="ecl-region">湖北</a>
                                    <a class="ecl-region">湖南</a>
                                    <a class="ecl-region">广东</a>
                                    <a class="ecl-region">广西</a>
                                    <a class="ecl-region">海南</a>
                                    <a class="ecl-region">四川</a>
                                    <a class="ecl-region">贵州</a>
                                    <a class="ecl-region">云南</a>
                                    <a class="ecl-region">西藏</a>
                                    <a class="ecl-region">陕西</a>
                                    <a class="ecl-region">甘肃</a>
                                    <a class="ecl-region">青海</a>
                                    <a class="ecl-region">宁夏</a>
                                    <a class="ecl-region">新疆</a>
                                    <a class="ecl-region">台湾</a>
                                    <a class="ecl-region">香港</a>
                                    <a class="ecl-region">澳门</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ecl-weigou-view-container c-border">
            <?php if ($_smarty_tpl->getVariable('tplData')->value['StdStl']==5){?>
            <div class="ecl-weigou-view" id="ecl-weigou-view-placeholder">
                <div class="ecl-weigou-list">
                    <div class="ecl-weigou-filters" style="<?php if ($_smarty_tpl->getVariable('tplData')->value['options']&&count($_smarty_tpl->getVariable('tplData')->value['options'])>0&&$_smarty_tpl->getVariable('tplData')->value['totalCount']>8){?><?php }else{ ?>display:none<?php }?>">
                        <?php $_smarty_tpl->tpl_vars["filter_count"] = new Smarty_variable(0, null, null);?>
                        <?php  $_smarty_tpl->tpl_vars['option'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['index'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('tplData')->value['options']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['option']->key => $_smarty_tpl->tpl_vars['option']->value){
 $_smarty_tpl->tpl_vars['index']->value = $_smarty_tpl->tpl_vars['option']->key;
?>
                        <?php if (count($_smarty_tpl->tpl_vars['option']->value['items'])<=1){?><?php continue 1?><?php }?>
                        <?php $_smarty_tpl->tpl_vars["filter_count"] = new Smarty_variable(($_smarty_tpl->getVariable('filter_count')->value+1), null, null);?>
                        <?php if ($_smarty_tpl->getVariable('filter_count')->value>3){?>
                        <?php break 1?>
                        <?php }?>
                        <div class="ecl-weigou-filter c-clearfix">
                            <div class="ecl-weigou-filter-wrapper">
                                <span class="ecl-weigou-filter-name"><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['option']->value['name'],'html');?>
：</span>
                                <div class="ecl-weigou-filter-items-wrapper">
                                    <div class="ecl-weigou-filter-items c-clearfix" data-id="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['option']->value['id'],'html');?>
">
                                        <a class="ecl-weigou-filter-link ecl-weigou-filter-first selected">全部</a>
                                        <?php  $_smarty_tpl->tpl_vars['opt'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['option']->value['items']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['opt']->key => $_smarty_tpl->tpl_vars['opt']->value){
?>
                                        <a class="ecl-weigou-filter-link" <?php if ($_smarty_tpl->tpl_vars['option']->value['id']==1000002){?>data-max="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['opt']->value['max'],'html');?>
" data-min="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['opt']->value['min'],'html');?>
"<?php }else{ ?>data-value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['opt']->value['id'],'html');?>
"<?php }?>><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['opt']->value['name'],'html');?>
</a>
                                        <?php }} ?>
                                    </div>
                                </div>
                            </div>
                            <div class="ecl-weigou-filter-more OP_LOG_BTN" data-click="{fm:'beha'}" style="display:none">
                                <span class="ecl-weigou-expand">更多</span>
                                <span class="ecl-weigou-collapse">收起</span>
                                <b></b>
                            </div>
                        </div>
                        <?php }} ?>
                        <div class="ecl-weigou-filters-bottom">
                            <div class="ecl-weigou-filter-line"></div>
                        </div>
                    </div>
                    <div class="ecl-weigou-list-wrapper">
                    <?php if ($_smarty_tpl->getVariable('tplData')->value['totalCount']==2){?>
                        <div class="ecl-weigou-product-list ecl-weigou-product-list2">
                        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('tplData')->value['goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value){
?>
                            <?php $_smarty_tpl->tpl_vars["product_name"] = new Smarty_variable(($_smarty_tpl->tpl_vars['item']->value['promotion_data']['id']!=0&&$_smarty_tpl->tpl_vars['item']->value['promotion_data']['type']!=-1&&$_smarty_tpl->tpl_vars['item']->value['promotion_data']['title'] ? $_smarty_tpl->tpl_vars['item']->value['promotion_data']['title'] : $_smarty_tpl->tpl_vars['item']->value['name']), null, null);?>
                            <div class="ecl-weigou-product" data-vendor="<?php echo $_smarty_tpl->tpl_vars['item']->value['vendor'];?>
" data-id="<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
" <?php smarty_template_function_is_transfer($_smarty_tpl,array('product'=>$_smarty_tpl->tpl_vars['item']->value));?>
>
                                <div class="ecl-weigou-product-inner">
                                    <div class="ecl-weigou-product-left">
                                        <img class="ecl-weigou-product-image OP_LOG_IMAGE" data-click="{fm:'beha'}" src="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['item']->value['logo'],'html');?>
">
                                        <b class="ecl-promo-<?php smarty_template_function_get_promo_type($_smarty_tpl,array('p1'=>$_smarty_tpl->tpl_vars['item']->value['promotion_data']));?>
-tag"></b>
                                    </div>
                                    <div class="ecl-weigou-product-right">
                                        <div class="c-clearfix ecl-weigou-product-name-wrapper">
                                            <a class="ecl-weigou-product-name OP_LOG_LINK" data-click="{fm:'beha'}" href="javascript:;" title="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('product_name')->value,'html');?>
"><?php echo smarty_modifier_escape(smarty_modifier_limitlen($_smarty_tpl->getVariable('product_name')->value,36),'html');?>
</a>
                                        </div>
                                        <div class="c-clearfix ecl-weigou-product-src">
                                            <span>商品来源：</span><span><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['item']->value['vendor'],'html');?>
</span>
                                        </div>
                                        <div class="c-clearfix ecl-weigou-product-price">
                                            <span>现价：</span>
                                            <span><strong><?php if ($_smarty_tpl->tpl_vars['item']->value['promotion_data']&&$_smarty_tpl->tpl_vars['item']->value['promotion_data']['id']!=0){?><?php echo sprintf("%.1f",$_smarty_tpl->tpl_vars['item']->value['promotion_data']['price']);?>
<?php }else{ ?><?php echo sprintf("%.1f",$_smarty_tpl->tpl_vars['item']->value['price']);?>
<?php }?></strong></span>
                                        </div>
                                        <?php if ($_smarty_tpl->tpl_vars['item']->value['original_price']&&$_smarty_tpl->tpl_vars['item']->value['original_price']!=0&&$_smarty_tpl->tpl_vars['item']->value['original_price']>$_smarty_tpl->tpl_vars['item']->value['price']){?>
                                        <div class="c-clearfix ecl-weigou-product-original-price">
                                            <s>原价：<?php echo sprintf("%.1f",$_smarty_tpl->tpl_vars['item']->value['original_price']);?>
</s>
                                        </div>
                                        <?php }?>
                                        <div class="c-clearfix ecl-weigou-product-detail">
                                            <a href="javascript:;" class="OP_LOG_LINK" data-click="{fm:'beha'}"><span class="ecl-weigou-product-detail-text">查看详情</span><span class="ecl-weigou-font-songti">&gt;&gt;</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="ecl-weigou-product-vendor">
                                    <!--消费者保障计划-->
                                    <?php $_smarty_tpl->tpl_vars['protectionItems'] = new Smarty_variable(array(101,103,104), null, null);?>
                                    <?php if (count($_smarty_tpl->tpl_vars['item']->value['specialTags'])>0&&count(array_intersect($_smarty_tpl->getVariable('protectionItems')->value,$_smarty_tpl->tpl_vars['item']->value['specialTags']))>0){?>
                                     <b class="ecl-weigou-product-protection-icon"></b>
                                    <?php }?>


                                    <span><?php smarty_template_function_get_mer_name($_smarty_tpl,array('product'=>$_smarty_tpl->tpl_vars['item']->value));?>
</span>
                                    <b class="ecl-weigou-product-vendor-bg"><?php smarty_template_function_get_mer_name($_smarty_tpl,array('product'=>$_smarty_tpl->tpl_vars['item']->value));?>
</b>
                                </div>
                                <?php if ($_smarty_tpl->getVariable('tplData')->value['need_transfer']){?><a href="<?php smarty_template_function_get_trans_url($_smarty_tpl,array('product'=>$_smarty_tpl->tpl_vars['item']->value));?>
" target="_blank" title="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('product_name')->value,'html');?>
" class="ecl-weigou-product-link"></a><?php }?>
                            </div>
                            <?php }} ?>
                        </div>
                    <?php }else{ ?>
                        <div class="ecl-weigou-product-list">
                            <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('tplData')->value['goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value){
?>
                            <?php $_smarty_tpl->tpl_vars["product_name"] = new Smarty_variable(($_smarty_tpl->tpl_vars['item']->value['promotion_data']['id']!=0&&$_smarty_tpl->tpl_vars['item']->value['promotion_data']['type']!=-1&&$_smarty_tpl->tpl_vars['item']->value['promotion_data']['title'] ? $_smarty_tpl->tpl_vars['item']->value['promotion_data']['title'] : $_smarty_tpl->tpl_vars['item']->value['name']), null, null);?>
                            <div class="ecl-weigou-product" data-id="<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
" data-vendor="<?php echo $_smarty_tpl->tpl_vars['item']->value['vendor'];?>
"  <?php smarty_template_function_is_transfer($_smarty_tpl,array('product'=>$_smarty_tpl->tpl_vars['item']->value));?>
>
                                <div class="ecl-weigou-product-inner">
                                    <div class="ecl-weigou-product-top">
                                        <img class="ecl-weigou-product-image OP_LOG_IMAGE" data-click="{fm:'beha'}" src="<?php echo $_smarty_tpl->tpl_vars['item']->value['logo'];?>
" />
                                        <b class="ecl-promo-<?php smarty_template_function_get_promo_type($_smarty_tpl,array('p1'=>$_smarty_tpl->tpl_vars['item']->value['promotion_data']));?>
-tag"></b>
                                    </div>
                                    <div class="ecl-weigou-product-center">
                                        <a class="ecl-weigou-product-name OP_LOG_LINK" data-click="{fm:'beha'}" href="javascript:;" title="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('product_name')->value,'html');?>
"><?php echo smarty_modifier_escape(smarty_modifier_limitlen($_smarty_tpl->getVariable('product_name')->value,30),'html');?>
</a>
                                    </div>
                                    <div class="ecl-weigou-product-bottom c-clearfix">
                                        <span class="ecl-weigou-product-price">
                                            <strong>¥<?php if ($_smarty_tpl->tpl_vars['item']->value['promotion_data']&&$_smarty_tpl->tpl_vars['item']->value['promotion_data']['id']!=0){?><?php echo sprintf("%.1f",$_smarty_tpl->tpl_vars['item']->value['promotion_data']['price']);?>
<?php }else{ ?><?php echo sprintf("%.1f",$_smarty_tpl->tpl_vars['item']->value['price']);?>
<?php }?></strong>
                                        </span>
                                        <?php if ($_smarty_tpl->tpl_vars['item']->value['original_price']&&$_smarty_tpl->tpl_vars['item']->value['original_price']!=0&&$_smarty_tpl->tpl_vars['item']->value['original_price']>$_smarty_tpl->tpl_vars['item']->value['price']){?>
                                        <span class="ecl-weigou-product-original-price">
                                            <s>原价<?php echo sprintf("%.1f",$_smarty_tpl->tpl_vars['item']->value['original_price']);?>
</s>
                                        </span>
                                        <?php }?>
                                    </div>
                                </div>
                                <div class="ecl-weigou-product-vendor">
                                    <!--消费者保障计划-->
                                    <?php $_smarty_tpl->tpl_vars['protectionItems'] = new Smarty_variable(array(101,103,104), null, null);?>
                                    <?php if (count($_smarty_tpl->tpl_vars['item']->value['specialTags'])>0&&count(array_intersect($_smarty_tpl->getVariable('protectionItems')->value,$_smarty_tpl->tpl_vars['item']->value['specialTags']))>0){?>
                                     <b class="ecl-weigou-product-protection-icon"></b>
                                    <?php }?>

                                    <span><?php smarty_template_function_get_mer_name($_smarty_tpl,array('product'=>$_smarty_tpl->tpl_vars['item']->value));?>
</span>
                                    <b class="ecl-weigou-product-vendor-bg"><?php smarty_template_function_get_mer_name($_smarty_tpl,array('product'=>$_smarty_tpl->tpl_vars['item']->value));?>
</b>
                                </div>
                                <?php if ($_smarty_tpl->getVariable('tplData')->value['need_transfer']){?><a href="<?php smarty_template_function_get_trans_url($_smarty_tpl,array('product'=>$_smarty_tpl->tpl_vars['item']->value));?>
" target="_blank" class="ecl-weigou-product-link" title="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('product_name')->value,'html');?>
"></a><?php }?>
                            </div>
                            <?php }} ?>
                        </div>
                        <?php }?>
                    </div>

                    <?php if ($_smarty_tpl->getVariable('tplData')->value['totalCount']>4){?>
                    <div class="ecl-weigou-morebtn OP_LOG_BTN" data-click="{fm:'beha'}"><span class="ecl-weigou-morebtn-text">展开</span><b class="ecl-weigou-morebtn-icon c-icon c-icon-triangle-down"></b></div>
                    <?php }?>
                    <div class="ecl-weigou-pager ecl-weigou-backgroud c-clearfix"></div>
                </div>
            </div>
            <?php }else{ ?>
            <?php $_smarty_tpl->tpl_vars["is_promo"] = new Smarty_variable(($_smarty_tpl->getVariable('tplData')->value['promotion_data']['id']!=0&&$_smarty_tpl->getVariable('tplData')->value['promotion_data']['type']!=-1), null, null);?>
            <div class="ecl-weigou-view" style="" id="ecl-weigou-view-placeholder">
                <div class="ecl-weigou-detail">
                    <div class="ecl-weigou-detail-top c-clearfix">
                        <div class="ecl-weigou-detail-left">
                            <div class="ecl-weigou-detail-image-container">
                                <div>
                                    <?php if ($_smarty_tpl->getVariable('tplData')->value['need_transfer']){?>
                                    <a target="_blank" href="http://weigou.baidu.com/item?id=<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('tplData')->value['id'],'html');?>
">
                                    <?php }?>
                                    <img src="<?php if ($_smarty_tpl->getVariable('tplData')->value['gallery']){?><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('tplData')->value['gallery'][0],'html');?>
<?php }?>" class="ecl-weigou-detail-image" id="ecl-weigou-detail-image" />
                                    <?php if ($_smarty_tpl->getVariable('tplData')->value['need_transfer']){?>
                                    </a>
                                    <?php }?>
                                </div>
                            </div> 
                            <?php if (count($_smarty_tpl->getVariable('tplData')->value['gallery'])>1){?>
                            <div class="ecl-weigou-detail-gallery-container c-clearfix" style="display: block;">
                                <div class="ecl-weigou-detail-gallery">
                                    <div class="ecl-weigou-detail-gallery-wrapper">
                                        <ul class="c-clearfix">
                                            <?php  $_smarty_tpl->tpl_vars['icon'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['index'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('tplData')->value['icons']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['icon']->key => $_smarty_tpl->tpl_vars['icon']->value){
 $_smarty_tpl->tpl_vars['index']->value = $_smarty_tpl->tpl_vars['icon']->key;
?>
                                            <li<?php if ($_smarty_tpl->tpl_vars['index']->value==0){?> class="selected"<?php }?> data-src="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('tplData')->value['gallery'][$_smarty_tpl->tpl_vars['index']->value],'html');?>
"><img src="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['icon']->value,'html');?>
"/></li>
                                            <?php }} ?>
                                        </ul>
                                    </div>
                                </div>
                                <div id="ecl-weigou-detail-gallery-left" class="ecl-weigou-detail-gallery-left OP_LOG_BTN" data-click="{fm:'beha'}"><div class="disabled"></div></div>
                                <div id="ecl-weigou-detail-gallery-right" class="ecl-weigou-detail-gallery-right OP_LOG_BTN" data-click="{fm:'beha'}"><div <?php if (count($_smarty_tpl->getVariable('tplData')->value['gallery'])<5){?>class="disabled"<?php }?>></div></div>
                            </div>
                            <?php }?>
                        </div> 
                        <div class="ecl-weigou-detail-right">  
                            <div class="ecl-weigou-detail-name"> 
                                <?php $_smarty_tpl->tpl_vars["product_name"] = new Smarty_variable(($_smarty_tpl->getVariable('is_promo')->value&&$_smarty_tpl->getVariable('tplData')->value['promotion_data']['title'] ? $_smarty_tpl->getVariable('tplData')->value['promotion_data']['title'] : $_smarty_tpl->getVariable('tplData')->value['name']), null, null);?>
                                <a title="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('product_name')->value,'html');?>
" <?php if ($_smarty_tpl->getVariable('tplData')->value['need_transfer']){?> target="_blank" class="transfer" href="http://weigou.baidu.com/item?id=<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('tplData')->value['id'],'html');?>
"<?php }?>>
                                <?php echo smarty_modifier_escape(smarty_modifier_limitlen($_smarty_tpl->getVariable('product_name')->value,70),'html');?>

                                </a>
                            </div> 
                            <div class="ecl-weigou-detail-price c-clearfix">                    
                                <?php if ($_smarty_tpl->getVariable('is_promo')->value){?>
                                <?php if ($_smarty_tpl->getVariable('tplData')->value['price']>$_smarty_tpl->getVariable('tplData')->value['promotion_data']['price']){?>
                                <span class="ecl-weigou-font-songti">销&nbsp;售&nbsp;价：</span>
                                <span class="price-old">¥<?php echo sprintf("%.2f",$_smarty_tpl->getVariable('price')->value);?>
</span>
                                <?php }else{ ?>
                                <?php $_smarty_tpl->tpl_vars["noPrice"] = new Smarty_variable(1, null, null);?>
                                <?php }?>
                                <?php }else{ ?>
                                <span class="ecl-weigou-font-songti">销&nbsp;售&nbsp;价：</span>
                                <span class="ecl-weigou-money">¥</span>
                                <span class="price"><?php echo sprintf("%.2f",$_smarty_tpl->getVariable('tplData')->value['price']);?>
</span>
                                <?php }?>
                                <?php if ($_smarty_tpl->getVariable('tplData')->value['original_price']&&$_smarty_tpl->getVariable('tplData')->value['original_price']!=0&&$_smarty_tpl->getVariable('tplData')->value['original_price']>$_smarty_tpl->getVariable('tplData')->value['price']){?>
                                    <?php if ($_smarty_tpl->getVariable('noPrice')->value==1){?>
                                <span class="original-price ecl-weigou-font-songti">市&nbsp;场&nbsp;价：</span>
                                    <?php }else{ ?>
                                <span class="original-price">市场价：</span>
                                    <?php }?>
                                <s>¥<?php echo sprintf("%.2f",$_smarty_tpl->getVariable('tplData')->value['original_price']);?>
</s>
                                <?php }?>
                            </div>
                            <?php if ($_smarty_tpl->getVariable('is_promo')->value){?>
                            <div class="ecl-weigou-detail-promo">
                                <div>
                                    <span class="ecl-weigou-detail-lite-title ecl-weigou-font-songti">促&nbsp;销&nbsp;价：</span>
                                    <span class="promo-price">¥<strong><?php echo sprintf("%.2f",$_smarty_tpl->getVariable('tplData')->value['promotion_data']['price']);?>
</strong></span>
                                </div>
                                <div>
                                    <span class="ecl-weigou-detail-lite-title">促销类型：</span>
                                    <?php if ($_smarty_tpl->getVariable('tplData')->value['promotion_data']['type']==0){?>
                                    <span class="promo-tag flash-sale"></span>
                                    <span id="ecl-weigou-detail-countdown" class="ecl-weigou-countdown" data-start="<?php echo $_smarty_tpl->getVariable('tplData')->value['promotion_data']['start_time'];?>
" data-end="<?php echo $_smarty_tpl->getVariable('tplData')->value['promotion_data']['end_time'];?>
"></span>
                                    <?php }elseif($_smarty_tpl->getVariable('tplData')->value['promotion_data']['type']==1){?>
                                    <span class="promo-tag brand-sale"></span>
                                    <?php }elseif($_smarty_tpl->getVariable('tplData')->value['promotion_data']['type']==2){?>
                                    <span class="promo-tag tuan"></span>
                                    <?php }?>
                                </div>
                            </div>
                            <?php }?>
                            <div class="ecl-weigou-detail-vendor c-clearfix">                   
                                <span>发货商家：</span> 
                                <span class="ecl-weigou-detail-vendor-name"><strong><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('tplData')->value['vendor'],'html');?>
</strong></span> 
                                <?php if (count($_smarty_tpl->getVariable('tplData')->value['attributes'])>0){?>
                                <a class="ecl-weigou-detail-attr-link" href="javascript:;">商品详情</a>
                                <?php }?>
                            </div> 
                            <div class="ecl-weigou-detail-region">
                                <table>                        
                                    <tbody>
                                        <tr>                           
                                            <th>配&nbsp;送&nbsp;至：</th>                           
                                            <td>                               
                                                <div class="ecl-weigou-detail-addr-td">
                                                    <div class="ecl-weigou-detail-addr-container c-clearfix">
                                                        <span class="ecl-weigou-detail-addr OP_LOG_BTN" data-click="{fm:'beha'}">
                                                            <span id="ecl-weigou-detail-addr-text" data-ids="" data-names="<?php if ($_smarty_tpl->getVariable('tplData')->value['lo_address']){?><?php echo $_smarty_tpl->getVariable('tplData')->value['lo_address'];?>
<?php }else{ ?><?php if ($_smarty_tpl->getVariable('tplData')->value['address']){?><?php echo $_smarty_tpl->getVariable('tplData')->value['address'];?>
<?php }else{ ?>北京<?php }?><?php }?>"><?php if ($_smarty_tpl->getVariable('tplData')->value['lo_address']){?><?php echo $_smarty_tpl->getVariable('tplData')->value['lo_address'];?>
<?php }else{ ?><?php if ($_smarty_tpl->getVariable('tplData')->value['address']){?><?php echo $_smarty_tpl->getVariable('tplData')->value['address'];?>
<?php }else{ ?>请选择<?php }?><?php }?></span>
                                                            <b></b>
                                                        </span>
                                                        <span id="ecl-weigou-detail-check-loading" style="display:none">
                                                            <img src="http://www.baidu.com/cache/biz/ecom/weigou/loading-small-1.0.0.gif" />
                                                        </span>
                                                        <span id="ecl-weigou-detail-addr-msg" class="ecl-weigou-detail-addr-msg" style="display:none"></span>
                                                    </div>
                                                    <div class="ecl-weigou-detail-addr-wrapper">
                                                        <b></b>
                                                        <div class="ecl-weigou-detail-addr-selector"></div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>支付方式：</th>
                                            <td>
                                                <span class="ecl-weigou-detail-pay-method">货到付款</span>
                                                <a id="ecl-weigou-detail-transfer" data-click="{fm:'beha'}" class="ecl-weigou-detail-transfer-disabled OP_LOG_BTN" href="http://weigou.baidu.com/search?q=<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('extData')->value['OriginQuery'],'url');?>
" target="_blank">去看看其他商品<span class="ecl-weigou-font-songti">&gt;&gt;</span></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="ecl-weigou-detail-counter c-clearfix">
                                <span class="ecl-weigou-detail-counter-title">购买数量：</span>
                                <span class="ecl-weigou-detail-minus OP_LOG_BTN" data-click="{fm:'beha'}"></span>
                                <span class="ecl-weigou-detail-counter-input">
                                    <input id="ecl-weigou-detail-input" type="text" value="1" onclick="this.select()" <?php if ($_smarty_tpl->getVariable('is_promo')->value){?>data-limit="<?php echo $_smarty_tpl->getVariable('tplData')->value['promotion_data']['limit_num'];?>
"<?php }?>>
                                </span>
                                <span class="ecl-weigou-detail-plus OP_LOG_BTN" data-click="{fm:'beha'}"></span>
                            </div>
                            <div class="ecl-weigou-detail-submit-wrapper">
                                <div id="ecl-weigou-detail-submit" class="ecl-weigou-detail-submit OP_LOG_BTN" data-click="{fm:'beha'}"></div>
                            </div>
                        </div>
                    </div>
                    <div class="ecl-weigou-detail-bottom">
                        <div class="ecl-weigou-detail-tabs">
                            <div id="ecl-weigou-detail-tabs-header" class="ecl-weigou-detail-tabs-header"></div>
                            <div id="ecl-weigou-detail-tabs-main" class="ecl-weigou-detail-tabs-main"></div>
                        </div>
                    </div>
                </div>
            </div>
            <?php }?>
        </div>
    </div>
</div>
<div class="ecl-weigou-nav-buy OP_LOG_BTN" data-click="{fm:'beha'}">
    <?php if ($_smarty_tpl->getVariable('tplData')->value['need_transfer']){?>
    <div>
        <a id="ecl-weigou-nav-buy-transfer" href="http://weigou.baidu.com/search?q=<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('extData')->value['OriginQuery'],'url');?>
" target="_blank">查看更多关于"<span class="query-word"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('extData')->value['OriginQuery'],'html');?>
</span>"的商品<span class="ecl-weigou-font-songti">&gt;&gt;</span></a>
    </div>
    <?php }?>
    <span class="ecl-weigou-nav-buy-weigou-show-url">weigou.baidu.com<a target="_blank" class="c-icon c-icon-bao" href="http://baozhang.baidu.com/guarantee/"></a></span>        
</div>

<?php $_smarty_tpl->tpl_vars["cat_ids"] = new Smarty_variable(array(), null, null);?>
<?php $_smarty_tpl->tpl_vars["cat_names"] = new Smarty_variable(array(), null, null);?>
<?php  $_smarty_tpl->tpl_vars['cat'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('tplData')->value['front_cat_path']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['cat']->key => $_smarty_tpl->tpl_vars['cat']->value){
?>
<?php echo smarty_modifier_truncate(array_push($_smarty_tpl->getVariable('cat_ids')->value,$_smarty_tpl->tpl_vars['cat']->value['cat_id']),0,'');?>

<?php echo smarty_modifier_truncate(array_push($_smarty_tpl->getVariable('cat_names')->value,$_smarty_tpl->tpl_vars['cat']->value['cat_name']),0,'');?>

<?php }} ?>

<script>
    A.setup(function(){
        var bds = window.bds = window.bds || {};
        bds.ecom = bds.ecom || {};
        bds.ecom.data = {
            'zhixin': {
                'tpl': 'ecl_ec_weigou_b',
                'isDetail': <?php if ($_smarty_tpl->getVariable('tplData')->value['StdStl']==1){?>true<?php }else{ ?>false<?php }?>,
                'region': '<?php echo $_smarty_tpl->getVariable('tplData')->value['address'];?>
',
                'lo_region': '<?php echo $_smarty_tpl->getVariable('tplData')->value['lo_address'];?>
',
                'jd_region': '<?php echo $_smarty_tpl->getVariable('tplData')->value['jd_address'];?>
',
                'gb_region': '<?php echo $_smarty_tpl->getVariable('tplData')->value['gb_address'];?>
',
                'localcode': '<?php echo $_smarty_tpl->getVariable('tplData')->value['localcode'];?>
',
                'weigou_domain': '<?php echo $_smarty_tpl->getVariable('tplData')->value['weigou_domain'];?>
',                
                'logData': {
                    'cat_ids': '<?php echo implode(',',$_smarty_tpl->getVariable('cat_ids')->value);?>
',
                    'cat_names': '<?php echo implode(',',$_smarty_tpl->getVariable('cat_names')->value);?>
'
                },
                'need_transfer': <?php if ($_smarty_tpl->getVariable('tplData')->value['need_transfer']==1){?>true<?php }else{ ?>false<?php }?>,
                <?php if ($_smarty_tpl->getVariable('tplData')->value['StdStl']==5){?>
                'totalCount': <?php echo $_smarty_tpl->getVariable('tplData')->value['totalCount'];?>

                <?php }else{ ?>
                'data': {
                    'id': '<?php echo $_smarty_tpl->getVariable('tplData')->value['id'];?>
',
                    'name': '<?php if ($_smarty_tpl->getVariable('is_promo')->value&&$_smarty_tpl->getVariable('tplData')->value['promotion_data']['title']){?><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('tplData')->value['promotion_data']['title'],'javascript');?>
<?php }else{ ?><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('tplData')->value['name'],'javascript');?>
<?php }?>',
                    'logo': '<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('tplData')->value['logo'],'javascript');?>
',
                    'fare': '<?php echo $_smarty_tpl->getVariable('tplData')->value['fare'];?>
',
                    'vendor': '<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('tplData')->value['vendor'],'javascript');?>
',
                    'vendor_id': '<?php echo $_smarty_tpl->getVariable('tplData')->value['vendor_id'];?>
',
                    'price': <?php echo sprintf("%.2f",$_smarty_tpl->getVariable('tplData')->value['price']);?>
,
                    'original_price': <?php echo $_smarty_tpl->getVariable('tplData')->value['original_price'];?>
,
                    'promotionId': '<?php echo $_smarty_tpl->getVariable('tplData')->value['promotion_data']['id'];?>
',
                    'promotionType': <?php echo $_smarty_tpl->getVariable('tplData')->value['promotion_data']['type'];?>
,
                    'promotionPrice': <?php echo $_smarty_tpl->getVariable('tplData')->value['promotion_data']['price'];?>
,
                    <?php if ($_smarty_tpl->getVariable('is_promo')->value){?>'limitBuy': '<?php echo $_smarty_tpl->getVariable('tplData')->value['promotion_data']['limit_num'];?>
',<?php }?>
                    'icons': <?php echo json_encode($_smarty_tpl->getVariable('tplData')->value['icons']);?>
,
                    'gallery': <?php echo json_encode($_smarty_tpl->getVariable('tplData')->value['gallery']);?>
,
                    'attributes': <?php echo json_encode($_smarty_tpl->getVariable('tplData')->value['attributes']);?>

                }
                <?php }?>
            }
        };
        bds.ecom.data.zhixin.bdServerTime = window.bdServerTime;
        if(window.bdServerTime) {
            setInterval(function(){
                bds.ecom.data.zhixin.bdServerTime++;
            }, 1000);
        }

         $('.ecl-weigou-filter .ecl-weigou-filter-items').each(function(index, elem) {
            var $elem = $(elem);
        	if(elem.offsetHeight>34) {
                 $('.ecl-weigou-filter-more', $elem.parents('.ecl-weigou-filter')).show();   
            }  
        }); 


        <?php if ($_smarty_tpl->getVariable('tplData')->value['StdStl']==5){?>
        ;(function(){        
        	$('.ecl-weigou-product-list').bind('click', function(event) {
            	var loop = 5;
                var target = event.target;
                while(loop-- > 0 && target) {
                    if($(target).hasClass('.ecl-weigou-product')) {
                		bds.ecom.data.zhixin.targetId = target.getAttribute('data-id');
                        break;
                	} else {
                		target = target.parentNode;
                	}
                }
           	 });
        })();        
        <?php }?>
        function loadScript(url) {
            var script = document.createElement('script');
            script.charset = 'utf-8';
            var head = document.getElementsByTagName('head')[0];
            head.appendChild(script);
            script.src = url;
        };

        bds.ready(function() {
            loadScript('http://weigou.baidu.com/ecomui/ad_detector.js');
            loadScript('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_filter-2.1.js');                      
        });
    });
</script>
<?php }?>
<?php if ($_smarty_tpl->getVariable('extData')->value['feData']['hasBorder']){?></div><?php }?>
    
    <div<?php if ($_smarty_tpl->getVariable('extData')->value['feData']['hasBorder']||$_smarty_tpl->getVariable('extData')->value['feData']['hasShowURLGap']){?> class="c-gap-top-small"<?php }?>><?php smarty_template_function_fe_fn_c_showurl($_smarty_tpl,array());?>
</div> 
    
</div>
