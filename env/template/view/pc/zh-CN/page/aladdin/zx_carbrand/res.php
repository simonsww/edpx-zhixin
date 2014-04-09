<?php 
  class CssJs_Util_zx_carbrand
   {
      private static $cssStr = '.op-zx-carbrand-titleicon{background-repeat:no-repeat;background-position:0 1px;padding-left:20px;}.op-zx-carbrand-shot{color:#666;}.op-zx-carbrand-shot:visited{color:#606;}.op-zx-carbrand-official,.op-zx-carbrand-baike{margin-bottom:18px;}.op-zx-carbrand-baike-img{display:block;width:119px;height:119px;border:1px solid #ccc;background-position:center center;}.op-zx-carbrand-nowrap{display:block;white-space:nowrap;overflow:hidden;}.op-zx-carbrand-baike-abstract{word-break:break-all;}.op-zx-carbrand-morelink{padding-top:5px;}.op-zx-carbrand-vtag{display:inline-block;width:16px;height:16px;vertical-align:text-bottom;cursor:pointer;background:url(\'http://s1.bdstatic.com/r/www/cache/global/img/commonHintIcon-1.1.png\') no-repeat;}.op-zx-carbrand-vsign{position:absolute;display:none;}.op-zx-carbrand-arrow{position:absolute;top:-1px;left:-2px;z-index:1;line-height:110%;}.op-zx-carbrand-arrowout,.op-zx-carbrand-arrowin{color:#ccc;position:absolute;top:3px;left:5px;font-size:12px;font-family:Simsun;font-weight:normal;display:block;z-index:1;}.op-zx-carbrand-arrowin{color:#fff;margin-top:1px;}.op-zx-carbrand-vcon{font-size:12px;line-height:22px;color:#575757;min-width:230px;_width:230px;position:absolute;border:1px solid #CCC;padding:3px 10px 5px;background:#fff;top:9px;left:0;box-shadow:1px 1px 2px #ccc;-moz-box-shadow:1px 1px 2px #ccc;-webkit-box-shadow:1px 1px 2px #ccc;white-space:nowrap;}.op-zx-carbrand-vname{font-weight:bold;}.op-zx-carbrand-vicon{height:22px;margin-right:6px;vertical-align:middle;}.op-zx-carbrand-star{background:url(http://s1.bdstatic.com/r/www/cache/res/static/certification/img/hinticon_ecom_star_6b95c0d3.png) no-repeat 0 2px;width:55px;height:13px;vertical-align:text-top;display:inline-block;}.op-zx-carbrand-table .op-zx-carbrand-tdtitle{font-weight:bold;width:52px;}.op-zx-carbrand-table td{width:80px;}.op-zx-carbrand-simsun{font-family:Simsun;}.op-zx-carbrand-official{word-break:break-all;}.op-zx-carbrand-title{font-weight:normal;font-size:medium;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zx_carbrand",function(){A.setup(function(){var h=this,d=A.baidu,g,b,e,a=200,c=h.qq("op-zx-carbrand-vtag"),f=h.qq("op-zx-carbrand-vsign");b=function(){var i=d.dom.getPosition(c);f.style.cssText="display:block;left:"+i.left+"px;top:"+(i.top+17)+"px;"};e=function(){f.style.cssText="display:none"};if(c&&f){document.body.appendChild(f);d.event.on(c,"mouseover",function(){clearTimeout(g);b()});d.event.on(c,"mouseout",function(){g=setTimeout(e,a)});d.event.on(f,"mouseover",function(){clearTimeout(g)});d.event.on(f,"mouseout",function(){g=setTimeout(e,a)})}})});';   // js字串，不含<script标签
      private static $uiList = 'table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
