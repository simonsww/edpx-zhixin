<?php 
  class CssJs_Util_tieba_live
   {
      private static $cssStr = '.op_tieba_live_table{height:25px;border-bottom:1px solid #ebebeb;}.op_tieba_live_list_dl dd{float:left;}.op_tieba_live_list_pic{width:56px;}.op_tiaba_live_list_con{width:363px;height:60px;overflow:hidden;}.op_tieba_live_list_time{width:62px;color:#666;}.op_tieba_live_list_dl{height:57px;overflow:hidden;border-bottom:1px dashed #e8e8e8;padding-top:10px;padding-bottom:10px;}.op_tieba_live_wamp{height:312px;overflow:hidden;}.op_tieba_live_talk_wamp{height:156px;overflow:hidden;position:relative;}.op_tieba_live_inner,.op_tieba_live_talk{overflow:hidden;}.op_tieba_live_title{display:inline-block;}.op_tieba_live_mutual{text-align:right;padding-right:10px;}.op_tieba_live_layer1,.op_tieba_live_layer2{background:#fff7f0;height:25px;line-height:25px;text-align:center;position:absolute;left:0;width:509px;display:none;z-index:999;display:none;}.op_tieba_live_layer1{top:-25px;}.op_tieba_live_layer2{bottom:-25px;}.op_tieba_live_layer a{display:block;}.op_tieba_live_outer{_zoom:1;}.op_tieba_live_talk_blank{height:6px;overflow:hidden;background:#f2f2f2;border-top:1px solid #e1e1e1;border-bottom:1px solid #e1e1e1;}.op_tieba_live_talk .op_tieba_live_list_pic div{display:block;width:56px;height:56px;}.op_tieba_live_tip1,.op_tieba_live_tip2{position:absolute;left:0;top:10px;background:#52c276;width:15px;height:48px;padding-top:8px;color:#fff;font-family:\'微软雅黑\';text-align:center;}.op_tieba_live_list_div2_one .op_tieba_live_tip1,.op_tieba_live_list_div2_one .op_tieba_live_tip2,.op_tieba_live_list_div2_two .op_tieba_live_tip1,.op_tieba_live_list_div2_two .op_tieba_live_tip2{top:0;}.op_tieba_live_tip2{background:#f13e41;}.op_tieba_live_list_pic img{width:56px;height:56px;}.op_tieba_live_join{background:#f2f2f2;padding-top:6px;padding-bottom:6px;text-align:right;padding-right:20px;zoom:1;}.op_tieba_live_join a{float:right;}.op_tieba_live_list_div,.op_tieba_live_list_div2{padding-top:10px;padding-bottom:10px;border-bottom:1px dashed #e8e8e8;height:56px;position:relative;}.op_tieba_live_list_div2{height:122px;position:static;}.op_tieba_live_list_div2_one,.op_tieba_live_list_div2_two{height:56px;position:relative;}.op_tieba_live_list_div2_one{margin-bottom:10px;}.op_tieba_live_list_pic,.op_tiaba_live_list_con,.op_tieba_live_list_time{float:left;}.op_list_txt{margin-right:6px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'img,btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
