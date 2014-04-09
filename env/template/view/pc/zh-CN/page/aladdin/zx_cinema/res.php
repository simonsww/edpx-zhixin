<?php 
  class CssJs_Util_zx_cinema
   {
      private static $cssStr = '.op_zx_cinema h3{font-size:16px;margin-bottom:5px;font-weight:normal;}.op_zx_cinema .c-border{padding-top:3px;padding-bottom:0;}.op_zx_cinema_condition{margin-bottom:2px;}.op_zx_cinema_condition td{padding:0;font-size:13px;}.op_zx_cinema_condition b{color:#333;}.op_zx_cinema_condition a{margin:3px 9px;color:#00C;cursor:pointer;display:inline-block;text-decoration:none;line-height:16px;}.op_zx_cinema_condition a:hover{text-decoration:underline;}.op_zx_cinema_condition a.op_zx_cinema_noselect:hover{cursor:default;text-decoration:none;}.op_zx_cinema_condition a.op_zx_cinema_select{font-weight:bold;color:#333;padding:2px 2px;*padding:4px 2px 0;}.op_zx_cinema_condition a.op_zx_cinema_noselect{color:#bfbfbf;}.op_zx_cinema_from,.op_zx_cinema_date,.op_zx_cinema_area{color:#bfbfbf;}.op_zx_cinema_info{line-height:32px;}.op_zx_cinema_subtitle{float:left;position:relative;width:200px;}.op_zx_cinema_subtitle a,.op_zx_cinema_morelink a{display:inline-block;text-decoration:none;}.op_zx_cinema_subtitle a:hover,.op_zx_cinema_morelink a:hover{text-decoration:underline;}.op_zx_cinema_subtitle b{display:inline-block;background:url(http://www.baidu.com/aladdin/img/zx_cinema/tuan.png);position:relative;height:16px;width:16px;margin-left:5px;top:4px;*top:0;}.op_zx_cinema_info li{border-top:1px solid #f0f0f0;}.op_zx_cinema_info li.op_zx_cinema_noborder{border-top:1px solid #e4e4e4;}.op_zx_cinema_open,.op_zx_cinema_close{padding-right:10px;border:1px solid #fff;white-space:nowrap;color:#666;cursor:pointer;position:relative;display:inline-block;height:18px;padding:1px 15px 1px 8px;}.op_zx_cinema_open b,.op_zx_cinema_close b{background:url(http://www.baidu.com/aladdin/img/zhixin/triangle.png) no-repeat;position:absolute;display:inline-block;width:10px;height:10px;right:5px;top:5px;}.op_zx_cinema_open b{background-position:-4px -1px;*background-position:-4px -2px;}.op_zx_cinema_close b{background-position:-18px -1px;*background-position:-18px -2px;}.op_zx_cinema_oc_hover{border:1px solid #67a5eb;background-color:#f2f8ff;}.op_zx_cinema_time{color:#bfbfbf;float:left;width:225px;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;}.op_zx_cinema_time span{color:#333;margin:0 3px;}.op_zx_cinema_load,.op_zx_cinema_noresult,.op_zx_cinema_request2{border:1px solid #ebedf0;background:#fff;line-height:32px;height:132px;width:518px;}.op_zx_cinema_load div{height:30px;line-height:30px;font-size:14px;background:url("http://www.baidu.com/aladdin/img/videoidea/loading_L.gif") no-repeat;padding-left:40px;}.op_zx_cinema_btn{float:right;text-decoration:none;margin:5px 5px 0 0;width:60px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
      public static function getHeadCss()
      {
         if (!is_string(self::$cssStr))
         {
            return '';
         }
         return self::$cssStr;
      }
      
      public static function getFootJs()
      {
         if (!is_string(self::$jsStr))
         {
            return '';
         }
         return self::$jsStr;
      }
      
      // 返回数组
      public static function getCssUI()
      {
		 if ( empty(self::$uiList) ) return array();

         $arr = @explode(',', self::$uiList);
         if (!is_array($arr))
         {
            $arr = array();
         }
         return $arr;
      }
   }
