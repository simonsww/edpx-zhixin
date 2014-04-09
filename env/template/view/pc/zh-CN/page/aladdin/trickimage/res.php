<?php 
  class CssJs_Util_trickimage
   {
      private static $cssStr = '.op_trickimage_list_wz_first,.op_trickimage_list_wz_second{display:block;float:left;}.op_trickimage_list_wz_first{color:#999;padding:2px 0;height:12px;line-height:12px;}.op_trickimage_list_wz_second{width:473px;}.op_trickimage_list_wz_second a{display:inline-block;height:12px;padding:2px 5px;text-align:center;vertical-align:text-bottom;font-size:12px;line-height:12px;font-style:normal;overflow:hidden;}.op_trickimage_list_wz_second .c-text{color:#00c;}.op_trickimage_list_wz_second .c-text-public{color:#fff;}.op_trickimage_list_last{border-bottom:1px solid #f0f0f0;}.op_trickimage_showurl{color:#666a6a;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("trickimage",function(){A.setup(function(){var f=this;var m=f.find(".op_trickimage_container").get(0);var c=m.getElementsByTagName("a");var h=f.find(".op_trickimage_list_wz_second");var k=f.find(".op_trickimage_img");var d=f.find(".op_trickimage_linkurl");var l=null;var a=null;var g=null;var j=false;for(var b=0;b<d.length;b++){$(d[b]).on("click",function(){l=h.eq(0).find(".c-text-public")[0].innerHTML;a=h.eq(1).find(".c-text-public")[0].innerHTML;g=h.eq(2).find(".c-text-public")[0].innerHTML;$(this).attr("href",$(this).attr("href")+"&word="+encodeURIComponent(f.data.query+" "+l+" "+a+" "+g)+"&ie=utf-8")})}for(var b=0;b<c.length;b++){$(c[b]).on("click",function(){var r=this.parentNode.children;for(var q=0;q<r.length;q++){r[q].className="c-text c-text-mult c-gap-right-small c-gap-bottom"}$(this).attr("class","c-text c-text-mult c-gap-right-small c-gap-bottom c-text-public");l=h.eq(0).find(".c-text-public")[0].innerHTML;a=h.eq(1).find(".c-text-public")[0].innerHTML;g=h.eq(2).find(".c-text-public")[0].innerHTML;var n="";if(l!="全部"){n="&category="+encodeURIComponent(l).toLocaleLowerCase()}var o="";if(a!="全部"){o="&style="+encodeURIComponent(a).toLocaleLowerCase()}var s="";if(g!="全部"){s="&effect="+encodeURIComponent(g).toLocaleLowerCase()}var p="http://opendata.baidu.com/api.php?resource_id="+f.data.srcid+"&format=json&ie=utf-8&oe=utf-8&query="+encodeURIComponent(f.data.query)+n+o+s;var r=$(this).parent().children();for(var q=0;q<r.length;q++){r[q].className="c-text c-text-mult c-gap-right-small c-gap-bottom"}$(this).attr("class","c-text c-text-mult c-gap-right-small c-gap-bottom c-text-public");$.ajax({url:p+"&cb=trickimg",dataType:"jsonp",success:function(u){if(j){return}var u=u.data[0].result;for(var t=0;t<k.length;t++){k[t].src=u[t].url;d[t].href=u[t].midpage_url+"&word="+encodeURIComponent(f.data.query+" "+l+" "+a+" "+g)+"&ie=utf-8"}},timeout:5000,jsonpCallback:"trickimg"})})}var e=f.find(".op_trickimage_showurl").eq(0);e.on("click",function(){l=h.eq(0).find(".c-text-public")[0].innerHTML;a=h.eq(1).find(".c-text-public")[0].innerHTML;g=h.eq(2).find(".c-text-public")[0].innerHTML;var i="&word="+encodeURIComponent(f.data.query)+"&ala=1&fr=ala1#stepWord="+encodeURIComponent(f.data.query);$(this).attr("href","http://image.baidu.com/i?tn=baiduimage&ipn=r&ct=201326592&cl=2&lm=-1&st=-1&fm=result&sf=1&fmq=1383287913640_R&pv=&ic=0&nc=1&z=&se=1&showtab=0&fb=0&width=&height=&face=0&istype=2&ie=utf-8"+i)});this.dispose=function(){if(!j){j=true}}})});';   // js字串，不含<script标签
      private static $uiList = 'img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
