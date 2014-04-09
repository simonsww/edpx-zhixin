<?php 
  class CssJs_Util_right_educourse
   {
      private static $cssStr = '.opr-educourse-title{background:url(\'http://www.baidu.com/aladdin/img/right_relainfo/horizon.png\') repeat-x 0 bottom;}.opr-educourse-title span{background:#fff;padding-right:10px;font-size:1.077em;font-weight:bold;color:#333;}.opr-educourse-content{margin-top:8px;}.opr-educourse-item{padding:5px 0;}.opr-educourse-item-title{position:relative;left:-21px;padding-left:21px;line-height:20px;height:20px;background:url(\'http://www.baidu.com/aladdin/img/right_pregnancyv/tlv.png\') no-repeat;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;}.opr-educourse-item-name{display:inline-block;height:21px;line-height:21px;background:#92b2f1;padding:0 13px 0 10px;color:#fff;cursor:pointer;margin-left:2px;}.opr-educourse-desc{color:#666;margin-left:6px;}.opr-educourse-itemlist{display:none;margin-top:3px;}.opr-educourse-itemlink{display:block;line-height:24px;padding-left:15px;}.opr-educourse-itemlink a{text-decoration:none;}.opr-educourse-item-show .opr-educourse-itemlist{display:block;}.opr-educourse-item-show .opr-educourse-item-title{background-position:0 -40px;}.opr-educourse-item-show .opr-educourse-item-name{background:#fa7d7d;}.opr-educourse-item-show .opr-educourse-desc{color:#333;}.opr-educourse-arrow{display:inline-block;position:relative;top:-1px;left:5px;font-size:0;height:0;width:0;overflow:hidden;line-height:0;border:4px dashed transparent;border-bottom:0 none;border-top:4px solid #fff;vertical-align:middle;}.opr-educourse-item-show .opr-educourse-arrow{border-top:0 none;border-bottom:4px solid #fff;*border-bottom:5px solid #fff;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_educourse",function(){A.setup(function(){var d=this,h,g=d.data.defaultIndex-1,f=d.data.query,j=d.data.srcid,b=false,k="opr-educourse-item-show",e=d.find(".opr-educourse-item"),a=d.find(".opr-educourse-item-name"),c=d.find(".opr-educourse-itemlist");var i=false;h=function(m){if(b){m();return}b=true;var l="http://opendata.baidu.com/api.php?resource_id=#{srcid}&query=#{query}&ie=utf8&oe=gbk&format=json&limit=#{limit}&t=#{t}";l=$.format(l,{srcid:j,query:encodeURIComponent(f),limit:"version.*.chapter.name:36",t:+new Date()});$.ajax({url:l+"&cb=reducourse",dataType:"jsonp",success:function(p){if(i){return}var n=p.data[0].version,o;if(!n.length){n=[n]}o=\'<span class="opr-educourse-itemlink"><a href="#{link}" title="#{name}" target="_blank">#{name}</a></span>\';$.each(c,function(t,s){var w,q,r=n[t].chapter,u=[];for(w=0,q=r.length;w<q;w++){u.push($.format(o,{link:r[w].link,name:r[w].name}))}s.innerHTML=u.join("")});m()},timeout:5000,jsonpCallback:"reducourse"})};$.each(a,function(m,l){$(l).on("click",function(){var n=window.event;n&&(n.returnValue=false);h(function(){if(g!=m){if(e[g]){$(e[g]).removeClass(k)}$(e[m]).addClass(k);g=m}else{if(g==m){$(e[g]).removeClass(k);g=-1}}})})});this.dispose=function(){if(!i){i=true}}})});';   // js字串，不含<script标签
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
