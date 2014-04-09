<?php
/**
 * 获取GET POST参数类
 * @author cuichao02 
 * @date 2011/02/21
 */
class Saf_Base_Cgi{

    /**
     * 从提交信息里获取CGI数据
     * @author cuichao02 
     * @date 2011/02/21
     */
    public static function getRequest() {
        if (class_exists(Ap_Dispatcher)) {
            $params = Ap_Dispatcher::getInstance()->getRequest()->getParams();
            if (!empty($params)) {
                foreach($params as $key => $value) {
                    $_GET[$key] = $value;
                }
            }
        }
        $request_get = self :: __arrayTrans($_GET);
        $request_post = self :: __arrayTrans($_POST);
        $request_param = array_merge($request_get, $request_post);
        $request = array( 'get' => $request_get,
                          'post' => $request_post,
                          'request_param' => $request_param);
        return $request;
    }

    private static function __arrayTrans($arr) {
        if( empty($arr) ) {
            return $arr;
        }
        self :: __ieTode($arr, $_REQUEST['ie']);
        return $arr;
    }

    /**
     * 网页编码与程序编码转化
     * ie:页面提交编码(conf文件中定义，cgi传递，自动判断) de:程序需要的编码(conf文件中定义)
     * 编码标识以lib库中的编码转化转化函数一致（php手册中的iconv编码）
     * @param array &$value
     * @param cgi传过来的ie值 $strCgiIe
     * @return bool
     */
    private static function __ieTode(&$value, $strCgiIe) {
        $safConf = Bd_Conf :: getAppConf('/saf');
        if(empty($safConf)){
            $safConf = Bd_Conf ::getConf('/saf');
        }
        if ( $strCgiIe == '' ) {
            $strCgiIe = $safConf['cgi_ie'];
        }
        $strConfOe = $safConf['cgi_oe'];
        if ( $strCgiIe == '' ) {
            if ( true === Bd_Charset :: isUtf8( self :: __arrToString($value) ) ) {
                $strCgiIe = 'UTF-8';
            }
            elseif ( true === Bd_Charset :: isGbk( self :: __arrToString($value) ) ) {
                $strCgiIe = 'GBK';
            }
        }
        if ( ($strCgiIe == $strConfOe) || $strConfOe == '' || $strCgiIe == '' ) {
            return true;
        }
        $ret = Bd_String :: iconv_recursive($value, $strCgiIe, $strConfOe);
        if($ret) {
            $value = $ret;
        }
        return true;
    }

    private function __arrToString($value, $p=' ') {
        if ( is_array ( $value ) ) {
            foreach ( $value as $v ) {
                $s =  $p . self :: __arrToString( $v ) . $s;
            }
        } else {
            return $value;
        }
        return trim($s, $p);
    }
}

/* vim: set ts=4 sw=4 sts=4 tw=100 */
