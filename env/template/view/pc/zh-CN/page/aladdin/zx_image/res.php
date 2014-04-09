<?php 
  class CssJs_Util_zx_image
   {
      private static $cssStr = '.op_zx_renwu_photo{overflow:hidden;background-color:#fafafa;padding:15px 10px;margin-bottom:10px;margin-right:1px;width:615px;}.op_zx_renwu_photo a,.op_zx_renwu_photo a em{text-decoration:none;}.op_zx_renwu_photo a:hover,.op_zx_renwu_photo a:hover em{text-decoration:underline;}.op_zx_renwu_photo table{border-collapse:collapse;}.op_zx_renwu_photo td{padding:0;vertical-align:top;}.op_zx_renwu_photo h2{font-size:14px;font-weight:bold;line-height:30px;margin:0 0 5px;}.op_zx_renwu_photo h2 a,.op_zx_renwu_photo h2 a em{text-decoration:underline;}.op_zx_renwu_photo_list{overflow:hidden;height:92px;width:600px;}.op_zx_renwu_photo_list a{float:left;display:block;height:90px;overflow:hidden;border:#ccc solid 1px;}.op_zx_renwu_photo_list img{display:block;height:90px;}.op_zx_renwu_photo_more{font-size:13px;line-height:30px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zx_image",function(){A.setup(function(){var a=this;(function(){var j=a.find(".op_zx_renwu_photo_list").get(0);if(!j){return}var d=new Function("return "+a.find(".op_zx_renwu_photo_data").get(0).value)(),b=j.getElementsByTagName("div")[0],k=[];width=0;for(var e=0,c,h,f,l;l=d[e];e++){if(l.height<90){continue}c=l.width/l.height;l.width=c*90;if(width+l.width+7>680){break}width+=l.width+7;f=document.createElement("img");f.src=l.src;h=document.createElement("a");h.appendChild(f);h.href=l.link;h.target="_blank";h.style.width=f.style.width=l.width+"px";l.a=h;if(e){h.style.marginLeft="5px"}k.push(l);j.insertBefore(h,b)}if(width>600){var g=(width-600)/k.length;for(var e=0,l;l=k[e];e++){l.a.style.width=l.width-g+"px"}}})()})});';   // js字串，不含<script标签
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
