<?php 
  class CssJs_Util_newsoftdown
   {
      private static $cssStr = '.op_newsoftdown{width:540px;}.op_newsoftdown_left{float:left;text-align:center;}.op_newsoftdown_left img{border:0;}.op_newsoftdown_main{float:left;margin-top:-6px;margin-left:8px;margin-bottom:0;width:470px;}.op_newsoftdown_main td .op_newsoftdown_links{padding-top:0;}.op_newsoftdown_buttons{padding-top:6px;}.op_newsoftdown_links{color:#008000;font-size:13px;clear:left;padding-top:4px;}.op_newsoftdown{padding:0;margin-top:8px;}.op_newsoftdown_main_td span{color:#010101;font-size:13px;line-height:21px;padding-right:10px;font-family:Arial 宋体;}.op_newsoftdown_qq{padding-left:20px;background:url(http://www.baidu.com/aladdin/img/softdown/qq-1.1.png) no-repeat 0;display:block;cursor:pointer;}a.op_newsoftdown_btn{margin-right:10px;text-decoration:none;color:#000;font-size:13px;float:left;height:32px;line-height:32px;display:inline-block;}a.op_newsoftdown_btn div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) 0 -64px repeat-x;}a.op_newsoftdown_btn div div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) 0 0 no-repeat;}a.op_newsoftdown_btn div div div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) right -32px no-repeat;padding:0 36px;white-space:nowrap;*padding:1px 0 -1px;}a.op_newsoftdown_btn:hover,a.op_newsoftdown_btn:focus{border:none;}a.op_newsoftdown_btn:hover div,a.op_newsoftdown_btn:focus div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) 0 -128px repeat-x;border:none;}a.op_newsoftdown_btn:hover div div,a.op_newsoftdown_btn:focus div div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) 0 -96px no-repeat;}a.op_newsoftdown_btn:hover div div div,a.op_newsoftdown_btn:focus div div div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) right -160px no-repeat;padding:0 36px;}.op_newsoftdown_main_td .op_newsoftdown_showtip{background:url(http://www.baidu.com/aladdin/img/safe/safetip.png) 0 0 no-repeat;font-weight:bold;color:#73b338;padding-left:16px;line-height:14px;display:inline-block;margin-top:5px;}.op_newsoftdown_qm{display:none;}.op_newsoftdown_qm .op_newsoftdown_qmtip{display:inline-block;margin-bottom:5px;color:#666;width:100%;}.op_newsoftdown_tableqqnew{clear:both;margin-top:8px;width:410px;}.op_newsoftdown_newqq{border:1px solid #ececec;padding-left:9px;padding-bottom:8px;font-size:13px;}.op_newsoftdown_newqq_span{display:inline-block;float:left;cursor:default;}.op_newsoftdown_newqq_down{display:inline-block;float:left;color:#00c;padding-left:5px;}.op_newsoftdown_newqq_down a{line-height:0;height:0;color:#00c;margin-right:0;float:none;display:initial;font-size:13px;}.op_newsoftdown_newqq_down a:hover{text-decoration:underline;}.op_newsoftdown_newqq_down span{padding-left:8px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = '';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
