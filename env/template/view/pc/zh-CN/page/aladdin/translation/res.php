<?php 
  class CssJs_Util_translation
   {
      private static $cssStr = '.op_translation_main,.op_translation_canvas textarea{font-size:13px;}.op_translation_usertip,.op_translation_canvas{margin-top:3px;}.op_translation_usertip{font-weight:bold;}.op_translation_searchbtn,.op_translation_act{vertical-align:middle;}.op_translation_searchbtn{display:inline-block;}.op_translation_canvas textarea{word-wrap:break-word;word-break:keep-all;line-height:20px;padding:2px;font-family:arial,simsun;resize:none;overflow-y:hidden;border:1px solid #999;border-color:#999 #d8d8d8 #d8d8d8 #999;outline:none;}.op_translation_select{position:relative;overflow:hidden;margin:4px 0;*zoom:1;float:left;display:inline;margin-right:30px;}.op_translation_text_default{color:#acacac;}.op_translation_text_normal{color:#000;}.op_translation_textbg{background:url(http://www.baidu.com/aladdin/img/translation/watermark.png) no-repeat 437px bottom;}.op_translation_titlebg{background:url(http://www.baidu.com/aladdin/img/safe/logo.gif) no-repeat left 1px;padding-left:20px;*background-position:left 2px;}.op_translation_download{width:150px;padding:0 0 2px 125px;*zoom:1;float:left;display:inline;margin-top:7px;position:relative;}.op_translation_download .op_translation_download_tit{position:absolute;left:0;top:1px;color:#666;}.op_translation_download_box{position:relative;font-size:13px;*zoom:1;}.op_translation_download_box li{overflow:hidden;position:relative;display:inline-block;*display:inline;height:20px;line-height:20px;margin:0 -3px 0 0;*margin-right:0;padding:0 10px 0 18px;vertical-align:bottom;*zoom:1;}.op_translation_download_icon{position:absolute;left:0;top:3px;display:block;width:12px;height:14px;background:url(http://www.baidu.com/aladdin/img/translation/tran_down_icon.png) -1px -18px no-repeat;}.op_translation_download_icon_ios{top:1px;width:13px;height:15px;background-position:-16px -17px;}.op_translation_download_icon_ot{width:11px;background-position:-32px -18px;}.op_translation_download_icon_pc{width:14px;background-position:-46px -19px;}.op_translation_download_on .op_translation_download_icon_ad{background-position:-1px -1px;}.op_translation_download_on .op_translation_download_icon_ios{background-position:-16px 0;}.op_translation_download_on .op_translation_download_icon_ot{background-position:-32px -1px;}.op_translation_download_on .op_translation_download_icon_pc{background-position:-46px -2px;}.op_translation_download_box .op_translation_gap{float:left;display:inline;margin:3px 0 0;text-align:center;color:#ADADAD;*zoom:1;}.op_translation_download_link{float:left;display:inline;white-space:nowrap;text-decoration:underline;color:#666;}.op_translation_download_link:hover{color:#00C;}.op_translation_operation{height:26px;line-height:24px;position:relative;z-index:100;}.op_translation_selbox{float:left;display:inline;position:relative;z-index:100;}.op_translation_selfrom,.op_translation_selto{height:24px;padding:0 32px 0 9px;padding-left:9px;border:1px solid #999;border-color:#999 #d8d8d8 #d8d8d8 #999;background-image:url(http://www.baidu.com/aladdin/img/translation/fy1.png);background-position:right top;color:#333;background-repeat:no-repeat;cursor:pointer;text-decoration:none;display:inline-block;}.op_translation_selhover{background-position:right -24px;}.op_translation_selfrom:hover,.op_translation_selto:hover{background-position:right -24px;}.op_translation_sel_exchange{width:24px;height:24px;border:1px solid #d8d8d8;float:left;display:inline;cursor:pointer;background-color:#f9f9f9;}.op_translation_sel_exchange:hover{border-color:#388bff;}.op_translation_sel_exchange:active{border-color:#a2a6ab;background-color:#f0f0f0;}.op_translation_sel_exchange .c-icon-exchange{margin:6px 0 0 6px;}.op_translation_sel_echover:hover{background-position:-24px -48px;border:1px solid #279cf1;}.op_translation_operation a.op_translation_sel_ecclick{background-position:-48px -48px;border:1px solid #a3a7ac;}.op_translation_lagfrom,.op_translation_lagto{height:60px;padding:2px 0;position:absolute;border:1px solid #bbb;left:0;top:26px;background:#fff;box-shadow:1px 1px 2px rgba(0,0,0,0.15);border-color:#bbb #bdbdbd #c0c0c0 #bbb;display:none;z-index:100;}.op_translation_lagtip_data td{word-break:keep-all;white-space:nowrap;}.op_translation_lagtip_data a.op_translation_lag_seldata{background:#f5f5f5;}.op_translation_lagtip_data a{height:30px;line-height:30px;color:#999;display:block;padding:0 12px;overflow:hidden;text-decoration:none;}.op_translation_lagtip_data a.op_translation_lag_data{cursor:pointer;color:#333;}.op_translation_lagtip_data a.op_translation_lag_data:hover{background:#f5f5f5;}.op_translation_clear{display:block;clear:both;width:0;height:0;font-size:0;overflow:hidden;}.op_translation_new .op_translation_act{display:none;}';  // css字串，不含<style>和</style>标签
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
