<?php
    /* 格式是 “10.签名串.时间戳.appid”，其中签名串是md5(时间戳+cookie中的baiduid+appid+sk)
     */
    function smarty_function_makeAccessToken($params){
        $sec     = time();
        $baiduid = trim($_COOKIE['BAIDUID']);

        $appid   = "1088598";
        $sk      = "4nnvlDekoLG68sG0QIeyFkEO0SZzAszz";
        $di      = md5($sec.$baiduid.$appid.$sk);
        return "access_token=10.$di.$sec.$appid&cookie=$baiduid";
    }
?>
