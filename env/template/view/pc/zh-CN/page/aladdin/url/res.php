<?php 
  class CssJs_Util_url
   {
      private static $cssStr = '.op_url_showurl{position:relative;_zoom:1;}.op_url_tips_renzheng{background:#FFF;border:1px solid #CCC;color:#575757;padding:8px;min-width:230px;_width:230px;position:absolute;text-align:left;z-index:15;box-shadow:1px 1px 1px #dfdfdf;top:28px;}.op_url_baidu{display:block;line-height:14px;margin-bottom:8px;color:#575757;}.op_url_clearfix{zoom:1;}.op_url_tip_logo{border:0 none;height:16px;left:10px;overflow:hidden;width:19px;display:inline-block;vertical-align:middle;}.op_url_hidden{display:none;}.op_url_safe{position:relative;z-index:2;}.op_url_safeico_new{color:#b95b07;}.op_url_tip_arrow{background:transparent url(\'http://a.baidu.com/xianzhi/ec_new_rz.png\') no-repeat scroll 6px -140px;width:252px;height:9px;position:absolute;top:-9px;left:0;}.op_url_tip_arrowre{background-position:2px -140px;}.op_url_tips_safeico_new{width:380px;position:absolute;background:#fff;z-index:1000;left:0;top:16px;}.op_url_tips_safeico_new .op_url_safe_con{top:9px;position:absolute;border:1px solid #ccc;color:#666;background:#fff;padding:5px;box-shadow:1px 1px 2px #ccc;-moz-box-shadow:1px 1px 2px #ccc;-webkit-box-shadow:1px 1px 2px #ccc;filter:progid:DXImageTransform.Microsoft.Shadow(Strength=2,Direction=120,Color="#cccccc")9;}.op_url_safe_list{background:#f7f7f7;padding:10px 0 5px;}.op_url_safe_icons{width:60px;line-height:16px;text-align:center;display:inline-block;vertical-align:top;}.op_url_safe_icons_bd,.op_url_safe_icons_sc,.op_url_safe_icons_qq,.op_url_safe_icons_js,.op_url_safe_icons_hs{width:16px;height:16px;display:inline-block;background:url(http://www.baidu.com/cache/spam/img/safe-icons-1.1.png) no-repeat -17px 0;position:relative;z-index:0;}.op_url_safe_icons_fail{width:14px;height:14px;display:inline-block;background:url(http://www.baidu.com/cache/spam/img/safe-icons-1.1.png) no-repeat -159px 0;position:absolute;left:9px;top:7px;}.op_url_safe_icons_sc{background:url(http://www.baidu.com/cache/spam/img/safe-icons-1.1.png) no-repeat -51px 0;}.op_url_safe_icons_qq{background:url(http://www.baidu.com/cache/spam/img/safe-icons-1.1.png) no-repeat -173px 0;}.op_url_safe_icons_js{background:url(http://www.baidu.com/cache/spam/img/safe-icons-1.1.png) no-repeat 0 0;}.op_url_safe_icons_hs{background:url(http://www.baidu.com/cache/spam/img/safe-icons-1.1.png) no-repeat -68px 0;}.op_url_safe_warning{color:#e10602;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("url",function(){A.setup(function(){var g=this,c,e;function b(i){clearTimeout(e);var i=i||event;this.parentNode.style.zIndex=g.p1+2;var j=this.className.slice(-8);var h=g.find(".op_url_tips_"+j);if(h.length>0){h.css("left",this.offsetLeft);h.hover(function(){clearTimeout(e);h.removeClass("op_url_hidden")},function(){clearTimeout(e);e=setTimeout(function(){h.addClass("op_url_hidden")},100)});c=setTimeout(function(){h.removeClass("op_url_hidden")},100)}}function f(){clearTimeout(c);var i=this.className.slice(-8);this.parentNode.style.zIndex=g.p1+2;var h=g.find(".op_url_tips_"+i);if(h.length>0){e=setTimeout(function(){h.addClass("op_url_hidden")},100)}}var a=g.find(".op_url_renzheng");if(a.length>0){a.mouseover(b);a.mouseout(f)}var d=g.find(".op_url_safeico_new");if(d.length>0){d.mouseover(b);d.mouseout(f)}if(g.find(".op_url_guanwang").length<1&&a.length<1){g.find(".op_url_showurl_url").css("marginLeft","0px")}this.dispose=function(){clearTimeout(e);clearTimeout(c)}})});';   // js字串，不含<script标签
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
