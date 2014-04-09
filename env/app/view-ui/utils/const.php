<?php
define ( 'MAX_OUTPUT_NUM', 760 );
define ( 'DA_RES_COUNT', 8 );
define ( 'DEFAULT_PLATFORM', 'pc' );

// code type
define ( 'NEW_WINDOW_BIT', 0x00040000 );
define ( 'BAIDU_REFER_BIT', 0x00400000 );
define ( 'SITE_SEARCH_BIT', 0x00200000 );
define ( 'DICT_SEARCH_BIT', 0x00100000 );
define ( 'NEWS_SEARCH_BIT', 0x00080000 );
define ( 'DIRECT_SEARCH_BIT', 0x00800000 );
define ( 'MON_BIT', 0x80000000 );
define ( 'INTER_PAGE_BIT', 0x40000000 );
define ( 'TITLE_SEARCH_BIT', 0x20000000 );
define ( 'AUTHOR_SEARCH_BIT', 0x10000000 );
define ( 'NOUSE_BLANK_BIT', 0x40000 );
define ( 'SEARCH_TEST_BIT', 0x20000 );

define ( 'WENKU_WAP_PC_KEY', 'pst' );
define ( 'OPEN_ADVANCED_MODIFY', 0 );

// 360开关
define ( 'DEFAULT_PROTECTPP_SWITCH', 0 );
define ( 'PROTECTPP_SWITCH_OPEN', 1 );
define ( 'PROTECTPP_SWITCH_CLOSE', 0 );
define ( 'PROTECTPP_SWITCH_PART_OPEN', 2 );

// 服务
define ( 'SvrType_PP', 0 );
define ( 'SvrType_AS', 1 );
define ( 'SvrType_RS', 2 );
define ( 'SvrType_NS', 3 );
define ( 'SvrType_TB', 4 );
define ( 'SvrType_EC', 5 );
define ( 'SvrType_CA', 6 );
define ( 'SvrType_JCASQ', 7 );
define ( 'SvrType_GSS', 8 );
define ( 'SvrType_RSJ', 10 );
define ( 'SvrType_EH', 11 );
define ( 'SvrType_APP', 12 );
define ( 'SvrType_XL', 13 );
define ( 'SvrType_ERS', 14 );
define ( 'SvrType_FAVO', 15 );
define ( 'SvrType_VUI', 16 );
define ( 'SvrType_LANG', 17 );

define ( 'MAX_SVR_NUM', 20 );
define ( 'ALL_SERVICE', 'PP,AS,RS,NS,TB,EC,CA,JC,GSS,MS,RSJ,EH,APP,XL,ERS,FAVO,VUI,LANG' );

// vui返回给前端的状态码
define ( 'VUI_US_DOWN', 2 );

// vui返回给前端的状态码
define ( 'DEFAULT_MAX_DISP_NUM', 100000000 );

// interleaving开关
define ( 'USE_INTERLEAVING', 1 );

// us返回的状态码
define ( 'US_RET_BS_DOWN', - 1 );
define ( 'US_RET_BS_FILTER', - 9 );
define ( 'US_RET_BS_PARSENULL', - 10 );
define ( 'US_RET_BS_TIMEOUT', - 11 );
define ( 'US_RET_GPSCHK_FILTER', - 12 );
define ( 'US_RET_GPSCHK_OK', - 13 );
define ( 'US_RET_HIT_CACHE', - 150 );
define ( 'US_RET_NOT_HIT_CACHE', - 151 );
define ( 'US_RET_SCHEDULE_ERROR', - 112 );
define ( 'US_RET_INSERT_DA_QUEUE_FAILED', - 101 );
define ( 'US_RET_SEXY_FILTER', - 28 );
define ( 'US_RET_POLITICS_FILTER', - 29 );
define ( 'US_RET_IS_CHECK_FAIL', - 501 );
define ( 'US_RET_IS_OVERLOAD', - 502 );
define ( 'US_RET_IS_CLOSE', - 503 );
define ('US_RET_IS_PREDICT_FAIL',-504);

// ecom广告(http://wiki.babel.baidu.com/twiki/bin/view/Ps/Searcher/DisllayLogFomat)
// 凤巢
define ( 'EC_FC_IM', 1 );
define ( 'EC_FC_PP', 213 );
define ( 'EC_FC_PPIM_UL', 204 );
define ( 'EC_FC_PPIM_LL', 217 );
// 品牌
define ( 'EC_PP_ZQ', 119 );
define ( 'EC_PP_DB', 542 );
define ( 'EC_PP_DB_2', 657 );
define ( 'EC_PP_QTZ', 120 );
// 百度推广
define ( 'EC_TG', 2 );

// 模板选择
define ( 'BAIDU_TEMPLATE', 'baidu' );
define ( 'DEFAULT_TEMPLATE_STRATEGY', 'portal' );
define ( 'TEMP_CONFIG_KEY_LEN', 32 );
define ( 'TEMP_CONFIG_VALUE_LEN', 2048 );

define ( 'SE_MASK', 2 );
define ( 'FROM_SE', 12 );
define ( 'FROM_RS', 1 );
define ( 'FROM_SUG', 3 );

define ( 'MAX_EC_SRC_NUM', 16 );
//define ( 'USE_TPL_PARAM', 1 );
define ( 'NOT_USE_TPL_PARAM', 0 );
define ( 'SITE_SEARCH_TEMP_PP', 1 );
define ( 'SITE_SEARCH_TEMP_NOPP', 2 );

define ( 'SAMPLING_MIN', 1000 );
define ( 'PHP_TEMPLATES', '/config/php_templates.php' );
define ('IS_NORMAL_REQ',0);
define ('IS_PRE_REQ',1);
define ('IS_CONFIRM_REQ',2);
define ('IS_PRE_DICT_REQ',11);
define ('IS_PARAM_ERROR',-1);
define ('IS_US_OVERLOAD',-2);
define ('IS_US_CHECKFAIL',-3);
define ('IS_VUI_ERROR',-4);
define ('IS_HIT_PINZHUAN',-5);
define ('IS_FEATURE_CLOSE',-6);
define ('IS_VUI_CHECKFAIL',-7);
define ('IS_FINAL_FEATURE_CLOSE',-8);
define ('IS_COOKIE_ISSW_EXIST',-9);
define ('IS_ASYNC_TEMP_NOT_EXIST',-10);
define ('IS_FE_HAVE_CACHE',-11);
define ('IS_US_PREDICT_FAIL',-12);
define ('IS_US_NO_RESULT', -13);
define ('IS_HIT_PINZHUAN_BLANK',-14);
//请求SUG的状态码
define('SUG_STATUS_NORMAL',0);
define('SUG_STATUS_NO_SUG',1);
define('SUG_STATUS_JSON_FAIL',2);
define('SUG_STATUS_ERROR_REQ',3);
define('SUG_STATUS_RAL_ERROR',4);
//IS/HIS开关
define('IS_CLOSE','-3');//IS全关闭
define('IS_HIS_ALL_CLOSE','-2');//异步请求总体关闭(包括IS/HIS)
define('HIS_CLOSE','-1');//HIS全关闭
define('HIS_PRE_CLOSE','0');//HIS关闭预查询请求(mod=1)
