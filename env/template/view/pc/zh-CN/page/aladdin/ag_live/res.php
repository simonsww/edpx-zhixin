<?php 
  class CssJs_Util_ag_live
   {
      private static $cssStr = '.op_asiangames03_liveicon{width:121px;height:91px;position:relative;}.op_asiangames03_liveicon a{width:100%;height:100%;display:block;}.op_asiangames03_livelinks,.op_asiangames03_morelinks{font-size:13px;}.op_asiangames03_livelinks a,.op_asiangames03_morelinks a{margin-right:6px;}.op_asiangames03_text{margin-top:-4px;}.op_asiangames03_text p span{color:#666;}.op_asiangames03_morelinks{margin-top:6px;}.op_asiangames03_live tr td{font-size:13px;}.op_asiangames03_livetable tr td{height:25px;line-height:25px;font-size:13px;}.op_asiangames03_livetable a{text-decoration:none;}.op_asiangames03_live{width:31px;height:13px;line-height:13px;font-size:12px;text-align:center;*vertical-align:bottom;*padding-top:1px;*height:12px;}.op_asiangames03_live0_i{background-color:#D9E7EB;border:1px solid #EAF2EB;}.op_asiangames03_live0_o{border:1px solid #B5CFFB;width:33px;}.op_asiangames03_live1_i{background-color:#EEE;border:1px solid #D9E7EB;color:#3C3C3C;}.op_asiangames03_live1_o{border:1px solid #C2C2C2;width:33px;}.op_asiangames03_live2_i{background-color:#FFF;border:1px solid #FFF;color:#949494;}.op_asiangames03_live2_o{border:1px solid #C2C2C2;width:33px;}.op_asiangames03_morelivelinks{font-weight:bold;text-decoration:none;}.op_asiangames03_provider{color:#696969;font-size:12px;height:14px;line-height:14px;margin-top:8px;}.op_asiangames03_showURL{color:#008000;font-size:13px;}.op_asiangames03_tipinfo{color:#666;margin-top:3px;font-size:13px;}.op_asiangames03_td{vertical-align:top;padding-right:9px;}.op_asiangames03_live_title{font-size:13px;font-weight:bold;color:#666;}.op_asiangames03_footnote,.op_asiangames03_footnote_mask{position:absolute;width:100%;color:#fff;left:0;bottom:0;_bottom:-1px;}.op_asiangames03_footnote_mask{background:#000;opacity:.65;-moz-opacity:.65;-webkit-opacity:.65;-ms-opacity:.65;filter:alpha(opacity=65);}.op_asiangames03_footnote_left{float:left;width:65px;overflow:hidden;display:block;text-align:left;margin-left:4px;}.op_asiangames03_footnote_right{float:right;display:block;text-align:right;margin-right:4px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'table,btn,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
