<?php 
  class CssJs_Util_nbageneral
   {
      private static $cssStr = '.op_nbageneral_table td{font-size:13px;}.op_nbageneral_table_right div{padding-bottom:7px;margin-top:-2px;}.op_nbageneral_bgitem{bottom:1px;height:22px;left:1px;position:absolute;width:117px;text-align:center;color:#FFF;}.op_nbageneral_bgcolor{background:none repeat scroll 0 0 #000;bottom:0;height:22px;left:0;opacity:.7;position:absolute;width:117px;text-align:center;}.op_nbageneral_main{padding-top:10px;}.op_nbageneral_tabs{background:url(http://www.baidu.com/aladdin/img/nba/bg.png) repeat scroll 0 0 transparent;width:100%;display:inline-block;height:26px;overflow:hidden;text-decoration:none;margin-top:8px;}.op_nbageneral_tabs span{float:left;display:inline-block;font-size:13px;height:26px;overflow:hidden;cursor:pointer;border-bottom:1px solid #dedede;}.op_nbageneral_tabs span a{display:block;color:#020202;padding:4px 16px 0 20px;text-decoration:none;outline:none;}.op_nbageneral_curBorder{border:1px solid #dedede;border-bottom:0;border-top:0;font-weight:bold;background:url(http://www.baidu.com/aladdin/nba_bg2.png) repeat scroll 0 0 transparent;}.op_nbageneral_table_b{border-collapse:collapse;width:100%;}.op_nbageneral_table_b td{font-size:13px;border:none;border-bottom:1px solid #EDEDED;vertical-align:middle;line-height:18px;padding-top:4px;padding-bottom:4px;white-space:nowrap;}.op_nbageneral_table_b a{text-decoration:none;}.op_nbageneral_col1{width:70px;}.op_nbageneral_col2{width:85px;}.op_nbageneral_col3{text-align:right;width:85px;}.op_nbageneral_col4{width:74px;text-align:center;color:#C00;font-weight:bold;}.op_nbageneral_col4 span{font-size:14px;}.op_nbageneral_col5{text-align:left;width:85px;}.op_nbageneral_middle{vertical-align:middle;}.op_nbageneral_link{padding-right:10px;font-size:12px;}.op_nbageneral_a a{text-decoration:none;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("nbageneral",function(){A.setup(function(){var g=this,c=g.find(".op_nbageneral_options")[0];function f(k){var m=g.find(".op_nbageneral_txt")[0];for(var j=0,h=m.length;j<h;j++){if(m[j]==k){return j+1}}}if(c){c.onchange=function(){a(this)}}function a(i){var h=g.find(".op_nbageneral_form")[0];if(c.value!="no"){h.action=c.value;h.submit()}}var b=g.find(".op_nbageneral_tab");for(var d=0;d<b.length;d++){b[d].onclick=function(){e(this)}}function e(m){var n=g.find(".op_nbageneral_table_b");var j=g.find(".op_nbageneral_tab");var o=g.find(".op_nbageneral_morelink");for(var k=0,h=j.length;k<h;k++){if(j[k]==m){$(j[k]).addClass("op_nbageneral_curBorder");$(n[k]).show();if(o[k]){$(o[k]).show()}}else{$(j[k]).removeClass("op_nbageneral_curBorder");$(n[k]).hide();if(o[k]){$(o[k]).hide()}}}}})});';   // js字串，不含<script标签
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
