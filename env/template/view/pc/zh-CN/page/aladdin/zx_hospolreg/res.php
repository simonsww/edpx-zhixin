<?php 
  class CssJs_Util_zx_hospolreg
   {
      private static $cssStr = '.op-zx-hospolreg{position:relative;z-index:10;}.op-zx-hospolreg-hide{visibility:hidden;}.op-zx-hospolreg .op-zx-hospolreg-safetip{background:url(http://www.baidu.com/aladdin/img/safe/safetip.png) no-repeat 0 2px;color:#6fba2c;font-weight:bold;padding:0 10px 0 18px;margin-bottom:2px;}.op-zx-hospolreg-select{float:left;position:relative;width:181px;height:24px;line-height:24px;border-top:1px solid #999;border-right:1px solid #d8d8d8;border-bottom:1px solid #d8d8d8;border-left:1px solid #999;cursor:pointer;}.op-zx-hospolreg-select-val{padding:0 24px 0 5px;display:inline-block;height:24px;overflow:hidden;}.op-zx-hospolreg-select-btn{position:absolute;top:0;right:0;width:23px;height:24px;line-height:24px;background:#fbfbfb;border-left:1px solid #d8d8d8;text-align:center;}.op-zx-hospolreg-select-box{position:absolute;}.op-zx-hospolreg-select-list{position:absolute;top:26px;left:0;width:390px;max-height:300px;_height:300px;overflow:hidden;background:white;border:1px solid #bbb;box-shadow:1px 1px #f0f0f0;cursor:default;}.op-zx-hospolreg-select-list span{width:90px;padding-left:7px;display:inline-block;line-height:24px;float:left;overflow:hidden;}.op-zx-hospolreg-select-list span:hover{background:#f5f5f5;}.op-zx-hospolreg-select-li{border-bottom:1px solid #f3f3f3;margin-left:2px;padding:5px;}.op-zx-hospolreg-select-li td{padding:0;font-size:.923em;}.op-zx-hospolreg-select-li a{text-decoration:none;}.op-zx-hospolreg-select-li a:hover{text-decoration:underline;}.op-zx-hospolreg .op-zx-hospolreg-select-scroll{position:absolute;left:382px;top:27px;margin-top:27px\\9;}.op-zx-hospolreg-btn,.op-zx-hospolreg-btn:link{display:inline-block;width:67px;height:24px;border:1px solid #bdc0c3;text-decoration:none;text-align:center;line-height:24px;color:#333;background:#fafafa;}.op-zx-hospolreg-btn:hover{border:1px solid #279cf1;box-shadow:0 1px #e0e0e0;background:#f5f5f5;background:-moz-linear-gradient(top,#fff,#ececec);background:-webkit-gradient(linear,0 0,0 bottom,from(#fff),to(#ececec));}.op-zx-hospolreg-btn:active{border:1px solid #a7aaaf;box-shadow:0 1px #c7c7c7 inset;background:#f0f0f0;background:-moz-linear-gradient(top,#ebebeb,#f5f5f5);background:-webkit-gradient(linear,0 0,0 bottom,from(#ebebeb),to(#f5f5f5));}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zx_hospolreg",function(){A.setup(function(){var i=this;var f=i.data.hospitalid,n=i.data.selectedroom;var h=i.find(".op-zx-hospolreg-select"),j=i.find(".op-zx-hospolreg-select-val"),l=i.find(".op-zx-hospolreg-select-box"),m=i.find(".op-zx-hospolreg-select-scroll"),c=i.find(".op-zx-hospolreg-select-list"),g=i.find(".op-zx-hospolreg-select-li"),b=i.find(".op-zx-hospolreg-select-a"),e=i.find(".op-zx-hospolreg-btn");var k;if(n){d(n[0].id)}l.css("top",h.get(0).offsetTop);l.css("left",h.get(0).offsetLeft);A.use("scrollbarv",function(){var o=c.get(0).clientHeight-1;k=A.ui.scrollbarv({scrollbar:m.get(0),content:c.get(0),length:o});m.attr("data-click",\'{fm:"beha"}\');if(c.get(0).offsetHeight<c.find("ul").get(0).offsetHeight){k.render()}else{g.css("margin-right","2px")}});h.click(function(o){o.stopPropagation(o);m.toggleClass("op-zx-hospolreg-hide");c.toggleClass("op-zx-hospolreg-hide")});var a=function(o){c.addClass("op-zx-hospolreg-hide");m.addClass("op-zx-hospolreg-hide")};$(document).click(a);m.click(function(o){o.stopPropagation(o)});l.click(function(o){o.stopPropagation(o)});b.click(function(){j.html($(this).attr("data-value"));d($(this).attr("data-did"));c.addClass("op-zx-hospolreg-hide");m.addClass("op-zx-hospolreg-hide")});function d(p){var o="http://home.guahao.cn/expert/fastorder/list?clinicTypeId=all&doctorTitleId=all&hospitalId="+f+"&hospDeptId="+p;e.attr("href",o)}this.dispose=function(){$(document).unbind("click",a);k&&k.dispose&&k.dispose()}})});';   // js字串，不含<script标签
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
