<?php 
  class CssJs_Util_right_chunjie2013
   {
      private static $cssStr = '.op-chunjie2013-middle{width:260px;padding-top:135px;background:url(\'http://www.baidu.com/aladdin/img/right_chunjie2013/chunjiebg.png\') #d2382b no-repeat;color:#fee8dd;}.op-chunjie2013-title{display:block;padding:0 36px 12px 36px;text-align:center;}.op-chunjie2013-draop{padding-left:10px;color:#000;}.op-chunjie2013-btncon{padding:20px 0 10px 13px;}a.op-chunjie2013-btn{width:234px;height:36px;display:block;text-align:center;line-height:36px;font-size:16px;font-weight:bold;color:#fff;text-decoration:none;font-family:\'黑体\';border-radius:5px;filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=\'#ffffad00\',endColorstr=\'#ffff9100\');background:-webkit-linear-gradient(#ffad00 0,#ff9100 100%);background:-moz-linear-gradient(#ffad00 0,#ff9100 100%);background:-ms-linear-gradient(#ffad00 0,#ff9100 100%);background:-o-linear-gradient(#ffad00 0,#ff9100 100%);text-shadow:0 1px 0 rgba(0,0,0,0.2);box-shadow:0 2px 0 rgba(0,0,0,0.1),inset 0 1px 0 #ffcf69;}a.op-chunjie2013-btn:hover{filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=\'#ffffbc00\',endColorstr=\'#ffff7d00\');background:-webkit-linear-gradient(#ffbc00 0,#ff7d00 100%);background:-moz-linear-gradient(#ffbc00 0,#ff7d00 100%);background:-ms-linear-gradient(#ffbc00 0,#ff7d00 100%);background:-o-linear-gradient(#ffbc00 0,#ff7d00 100%);}a.op-chunjie2013-btn:active{box-shadow:inset 0 1px 0 #b55b0b;filter:none;background:#e79403;}.op-chunjie2013-downwidth{width:65px;float:left;}.op-chunjie2013-downwidth .c-dropdown2-btn{padding:0 5px;}.op-chunjie2013-downwidth .c-dropdown2-btn-icon{padding-left:5px;}.op-chunjie2013-type{background:#f2f2f2;color:#ccc;}.op-chunjie2013-type .c-dropdown2-btn-icon{background:#f2f2f2;}.op-chunjie2013-type:hover .c-dropdown2-btn-group{box-shadow:none;box-shadow:none;}.op-chunjie2013-type:hover .c-dropdown2-btn-icon{box-shadow:none;box-shadow:none;border-top:0;}.c-dropdown2-btn-hidden{width:65px;height:26px;position:absolute;z-index:300;}.op-chunjie2013-deword{float:left;padding:0 5px;color:#fff;padding-top:4px;}.op-chunjie2013-errortip{display:none;color:#691105;text-align:center;}.op-chunjie2013-tipfoot{height:50px;width:259px;background:url(\'http://www.baidu.com/aladdin/img/right_chunjie2013/footbg.png\') no-repeat;margin-top:6px;}@-webkit-keyframes btn{0%{background-position:left 0;}100%{background-position:1200px 0;}}@-moz-keyframes btn{0%{background-position:left 0;}100%{background-position:1200px 0;}}@-ms-keyframes btn{0%{background-position:left 0;}100%{background-position:1200px 0;}}@-o-keyframes btn{0%{background-position:left 0;}100%{background-position:1200px 0;}}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_chunjie2013",function(){A.setup(function(){var _this=this,dropDown1=_this.find(".op-chunjie2013-type1").eq(0),dropDown2=_this.find(".op-chunjie2013-type2").eq(0),dropDown3=_this.find(".op-chunjie2013-type3").eq(0),menubox1=_this.find(".op-chunjie2013-menubox1").eq(0),menubox2=_this.find(".op-chunjie2013-menubox2").eq(0),menubox3=_this.find(".op-chunjie2013-menubox3").eq(0),btn=_this.find(".op-chunjie2013-btn").eq(0),errortip=_this.find(".op-chunjie2013-errortip").eq(0);data=_this.data.data;function regType(str){return/选择/.test(str)}function ajaxData(){var str="";$.each(eval(data),function(i,o){var selected=o.datavalue?"":\'data-selected="selected"\';str+=\'<li class="c-dropdown2-option" data-value="\'+o.datavalue+\'" \'+selected+">"+o.name+"</li>"});menubox1.html(str);menubox1.find("li:eq(0)").remove();menubox2.html(str);menubox3.html(str)}ajaxData();A.use("dropdown21",function(){dropdown1=A.ui.dropdown21(dropDown1[0]);dropdown2=A.ui.dropdown21(dropDown2[0],{onchange:function(ev){var dropdown2Value=dropdown2.getValue();if(dropdown2Value!=="0"){btn.removeAttr("data-nolog");dropDown3.removeClass("op-chunjie2013-type").prev().hide();textUrl(ev,dropdown1,dropdown2)}else{btn.attr("data-nolog","ture");dropDown3.addClass("op-chunjie2013-type");dropDown3.prev().show();dropdown3.setIndex(0);btn.attr("href","javascript:void(0);")}}});dropdown3=A.ui.dropdown21(dropDown3[0],{onchange:function(ev){var dropdown3Value=dropdown3.getValue();if(dropdown3Value!=="0"){textUrl(ev,dropdown1,dropdown2,dropdown3)}else{textUrl(ev,dropdown1,dropdown2)}}})});function textUrl(ev,dropdown1,dropdown2,dropdown3){var dropdown1Text=dropdown1.getText(),dropdown2Text=dropdown2.getText(),dropdown3Text=dropdown3?(regType(dropdown3.getText())?"":"的"+dropdown3.getText()):"";if(regType(dropdown2Text)){errortip.show();ev.preventDefault();return false}else{errortip.hide()}var keyword=dropdown1Text+"的"+dropdown2Text+dropdown3Text+"叫什么",url="http://www.baidu.com/s?wd="+encodeURIComponent(keyword)+_this.data.urlparameter;btn.attr("href",url).attr("data-click",url)}btn.click(function(ev){textUrl(ev,dropdown1,dropdown2,dropdown3)});this.dispose=function(){dropdown1&&dropdown1.dispose&&dropdown1.dispose();dropdown2&&dropdown2.dispose&&dropdown2.dispose();dropdown3&&dropdown3.dispose&&dropdown3.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'dropdown2';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
