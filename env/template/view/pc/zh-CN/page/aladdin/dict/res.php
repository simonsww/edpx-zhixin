<?php 
  class CssJs_Util_dict
   {
      private static $cssStr = '.op_dict_content p strong{color:#c00;margin-right:8px;}.op_dict_content div p{margin:0;}.op_dict_content div p strong{color:#333;font-weight:normal;}.op_dict_content p span a{background:url(http://dict.baidu.com/static/img/bg.png) no-repeat -60px -28px;padding:0 7px;margin-right:2px;text-decoration:none;}.op_dict_content p span .mp3_play{background-position:0 -27px;}.op_dict_content .op_dict_source span{color:#666;}.op_dict_content .op_dict_source span a{background:none;padding:0;text-decoration:underline;}.op_dict_content p b{margin:0 4px 0 8px;font-family:"lucida sans unicode",arial;}.op_dict_content .op_dict_cnheader strong,.op_dict_content .op_dict_cnheader b{font-weight:normal;}.op_dict_content .op_dict_download{margin-left:8px;}#op_dict_fmp_flash_div{height:1px;width:1px;position:absolute;right:0;overflow:hidden;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("dict",function(){A.setup(function(){var b=false;try{b=external.max_version}catch(a){}Utils={g:function(c){return document.getElementById(c)},f:function(c){this.g(c.cid).innerHTML=this.fm(this.b.isIE?\'<object id="#{id}" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="#{width}" height="#{height}" align="#{align}"><param name="movie" value="#{movie}" /><param name="allowScriptAccess" value="#{allowScriptAccess}" /><param name="allowNetworking" value="#{allowNetworking}" /><param name="flashVars" value="#{flashVars}" /><param name="wmode" value="#{wmode}" /><param name="scale" value="#{scale}" /><param name="salign" value="#{salign}" /></object>\':\'<embed id="#{id}" src="#{movie}" allowScriptAccess="#{allowScriptAccess}" allowNetworking="#{allowNetworking}" flashVars="#{flashVars}" width="#{width}" height="#{height}" align="#{align}" type="application/x-shockwave-flash" pluginspage="http://www.adobe.com/go/getflashplayer" wmode="#{wmode}" scale="#{scale}" salign="#{salign}" />\',c)},fm:function(f,d){if(arguments.length){if(typeof(d)=="object"){f=f.replace(/#\\{([^\\{\\}]+)\\}/g,function(i,c){var h=d[c];if(typeof h=="function"){h=h(c)}return typeof(h)=="undefined"?"":h})}else{if(typeof(d)!="undefined"){for(var e=arguments.length-2;e>-1;e--){f=f.replace(new RegExp("#\\\\{"+e+"\\\\}","g"),arguments[e+1])}}}}return f},b:{isIE:/msie/i.test(navigator.userAgent),isFF:/firefox/i.test(navigator.userAgent),isMaxthon:b},mo:function(){var g={};var e=arguments.length;for(var j=0;j<e;j++){var i=arguments[j];for(var h in i){if(g[h]!=null){continue}g[h]=arguments[j][h]}}return g}};FMP={g:Utils.g,f:Utils.f,b:Utils.b,fm:Utils.fm,_flash:null,loaded:false,cfg:{cid:"op_dict_fmp_flash_div",id:"fmp_flash",width:100,height:100,align:"middle",movie:"flash/fmp.swf?v=090105a",allowScriptAccess:"always",allowNetworking:"all",salign:"lt",wmode:"window",scale:"noscale",flashVars:"_instanceName=FMP"},load:function(){if(this.b.isMaxthon){this.cfg.movie+="&r="+Math.random()}this.f(this.cfg)},getUrl:function(){this._flash._getVar("url")},setUrl:function(c){this._flash._setVar("url",c)},getVolume:function(){return this._flash._getVar("volume")*100},setVolume:function(c){this._flash._setVar("volume",c/100)},getMute:function(){this._flash._getVar("mute")},setMute:function(c){this._flash._setVar("mute",c)},getCurrentPosition:function(){return this._flash._getVar("currentPosition")/1000},setCurrentPosition:function(c){this._flash._setVar("currentPosition",c*1000)},getDuration:function(){return this._flash._getVar("duration")/1000},getDownloadProgress:function(){return this._flash._getVar("downloadProgress")*100},play:function(){this._flash._play()},pause:function(){this._flash._pause()},stop:function(){this._flash._stop()},_onLoad:function(){this.loaded=true;this._flash=this.g(this.cfg.id);if(this.onLoad){this.onLoad()}},_onPlayStateChange:function(c){if(this.onPlayStateChange){this.onPlayStateChange(c)}}};FMP.cfg.movie="http://dict.baidu.com/static/flash/fmp.swf?v=090105a";FMP.load();window.dictAlaFMP={flashPlay:function(d){try{if(FMP.loaded){FMP.stop();FMP.setUrl(d);FMP.play()}else{FMP.onLoad=function(){FMP.setUrl(d);FMP.play()}}}catch(c){}}}})});';   // js字串，不含<script标签
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
