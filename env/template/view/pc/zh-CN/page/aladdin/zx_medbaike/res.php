<?php 
  class CssJs_Util_zx_medbaike
   {
      private static $cssStr = '.op-medbaike{width:540px;}.op-medbaike-summary1{margin-top:6px;padding-bottom:5px;font-size:13px;line-height:22px;word-break:break-all;word-wrap:break-word;border-bottom:1px solid #F5F5F5;}.op-medbaike-tabs{height:27px;color:#666;border-bottom:1px solid #D9D9D9;background-color:#FAFAFA;}.op-medbaike-tabs span{width:72px;height:27px;display:inline-block;cursor:pointer;position:relative;_top:1px;}.op-medbaike-tabs b{font-weight:normal;width:100%;height:16px;line-height:16px;margin:5px 0;text-align:center;border-right:1px solid #D9D9D9;display:inline-block;position:absolute;}.op-medbaike-tabs span:hover b{color:#00c;}.op-medbaike-tabs span.op-medbaike-selected:hover b{color:#333;}.op-medbaike-selected{border:1px solid #D9D9D9;border-bottom:none;background-color:#FFF;}.op-medbaike-selected b{color:#333;font-weight:bold;}.op-medbaike-twoline{height:55px;}.op-medbaike-content{color:#333;line-height:22px;padding:10px 10px 0 0;display:none;overflow:hidden;}.op-medbaike-show{display:block;}.op-medbaike-summary{font-size:13px;line-height:20px;word-break:break-all;word-wrap:break-word;}.op-medbaike-key{font-size:13px;font-weight:bold;}.op-medbaike-value{font-size:13px;margin-right:20px;display:inline-block;}.op-medbaike-tips{font-size:13px;margin-top:3px;padding-bottom:2px;}.op-medbaike-tips span{padding-right:5px;display:inline-block;}.op-medbaike-questions-legend{display:inline-block;float:left;font-weight:bold;color:#333;}.op-medbaike-questions{width:480px;height:auto;overflow:hidden;}.op-medbaike-question{display:inline-block;float:left;width:240px;overflow:hidden;}.op-medbaike-more{font-size:13px;margin-top:10px;vertical-align:;}.op-medbaike-mr{margin-right:1px;display:inline-block;}.op-medbaike-content a,.op-medbaike-morequestion span{font-family:simsun;}.op-medbaike-common{display:inline-block;padding-left:21px;height:18px;line-height:18px;background:url(http://www.baidu.com/aladdin/img/zx_medzhidao/medzhidao.png) no-repeat;text-decoration:underline;cursor:pointer;}.op-medbaike-hdf{background-position:0 -40px;}.op-medbaike-jk39{background-position:0 -20px;}.op-medbaike-xywy{background-position:0 1px;}.op-medbaike-dxy{background:url(http://www.baidu.com/aladdin/img/zx_medbaike/dxy.png) no-repeat 0 0;_background-position:0 -2px;*background-position:0 -2px;}.op-medbaike-vline{color:#D8D8D8;display:inline-block;padding:0 9px;}.op-medbaike-addon{margin-top:3px;color:#666;}.op-medbaike-addon a{color:#666;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zx_medbaike",function(){A.setup(function(){var g=this,e=g.find(".OP_LOG_BTN"),c=g.find(".op-medbaike-content"),f=0,b=null;var d="op-medbaike-selected",a="op-medbaike-show";if(e.length>0&&c.length>0){e.each(function(h,j){$item=$(j);if($item.hasClass(d)){b=$item;f=h}$item.click(function(k){var i=$(this);if(b!=i){if(b.length>0&&b.hasClass(d)){b.removeClass(d)}if(!i.hasClass(d)){i.addClass(d);b=i}if(c.eq(f).length>0&&c.eq(f).hasClass(a)){c.eq(f).removeClass(a)}if(c.eq(h).length>0&&!c.eq(h).hasClass(a)){c.eq(h).addClass(a);f=h}}})})}})});';   // js字串，不含<script标签
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
