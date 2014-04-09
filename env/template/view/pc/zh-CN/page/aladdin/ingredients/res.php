<?php 
  class CssJs_Util_ingredients
   {
      private static $cssStr = '.op-ingredients-title{font-weight:bold;font-size:1.07em;}.op-ingredients-pages{margin-top:15px;}.op-ingredients-cont{border-top:1px solid #f1f1f1;}.op-ingredients-tab{display:inline-block;padding:3px 6px;text-align:center;vertical-align:text-bottom;line-height:100%;font-style:normal;overflow:hidden;color:#00c;cursor:pointer;}.op-ingredients-sel{background-color:#2b99ff;color:#fff;}.op-ingredients-img{position:relative;display:block;text-decoration:none;overflow:hidden;}.op-ingreditents-tip{position:absolute;right:0;bottom:0;}.op-ingreditents-tipinfo{color:#fff;padding:0 8px;position:relative;z-index:100;}.op-ingreditents-tipbg{width:100%;height:100%;position:absolute;left:0;top:0;background:#000;opacity:.65;filter:alpha(opacity=65);z-index:10;}.op-ingredients-hidden{display:none;}a.op-ingredients-noline{text-decoration:none;}a.op-ingredients-noline:hover{text-decoration:underline;}.op-ingredients-center{text-align:center;}.op-ingredients-gapbtm{margin-bottom:7px;}.op-ingredients-tip{text-align:right;margin-bottom:-4px;}.op-ingredients-gray{color:#999;}.op-ingredients-split{color:#ccc;}.op-ingredients-loading{margin:150px auto;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("ingredients",function(){A.setup(function(){var e=this;var h=e.find(".op-ingredients-tab");var i=e.find(".op-ingredients-cont");var k=e.find(".op-ingredients-err");var c=e.find(".op-ingredients-tip");var d=e.find(".op-ingredients-pages");var b={listNum:Number(e.data.resultnum),nowPage:1,endPage:undefined,pn:0,rn:4};var f;var j=false;h.on("click",function(){d.hide();var o=$(this);var l=h.index(o);var p=o.attr("data-key");var n=i.eq(l);o.addClass("op-ingredients-sel").siblings(".op-ingredients-sel").removeClass("op-ingredients-sel");if(n.attr("data-flag")==0){var m="http://opendata.baidu.com/api.php?format=json&ie=utf-8&oe=utf-8&query="+encodeURIComponent(e.data.key)+"&apn=0&arn=96&resource_id="+encodeURIComponent(e.data.sid)+"&co=tag[key="+encodeURIComponent(p)+"]";$.ajax({url:m,dataType:"jsonp",jsonp:"cb",timeout:6000,success:function(q){if(q.data[0]&&q.data[0].tag){if(j){return}var q=q.data[0];n.find(".op-ingredients-tags").html(g(q.tag));a(n);n.attr("data-flag","1")}}})}else{b.listNum=n.find(".c-span12").length;b.nowPage=parseInt(n.find(".op-ingredients-show").attr("pagenum"));a(n)}n.removeClass("op-ingredients-hidden").siblings(".op-ingredients-cont:visible").addClass("op-ingredients-hidden");c.eq(l).removeClass("op-ingredients-hidden").siblings(".op-ingredients-tip:visible").addClass("op-ingredients-hidden")});k.on("click",function(){$(this).addClass("op-ingredients-hidden").next(".op-ingredients-tks").removeClass("op-ingredients-hidden")});function g(q){var n="";b.listNum=q.length;for(var o=0;o<b.listNum;o++){var m=q[o];var l=Math.floor(o/4)+1;var s="";var p="";var r="";if(o>=4){p=" op-ingredients-hidden";r=\' srctxt="\'+m.poster+\'"}\'}else{p=" op-ingredients-show";r=\' src="\'+m.poster+\'"}\'}if(o%2==1){s=" c-span-last"}n+=\'<div class="c-gap-top c-span12 op-ingredients-page\'+l+s+p+\'" pagenum="\'+l+\'">\';n+=\'<a href="\'+m.link+\'" target="_blank" class="op-ingredients-img">\';n+=\'<img class="c-img c-img12" \'+r+" />";if(m.sumpic){n+=\'<div class="op-ingreditents-tip"><span class="op-ingreditents-tipinfo">\'+$.subByte(m.sumpic,20)+\'</span><span class="op-ingreditents-tipbg">&nbsp;</span></div>\'}n+="</a>";n+=\'<p class="c-gap-top-small op-ingredients-center">\';n+=\'<a href="\'+m.link+\'" target="_blank" class="op-ingredients-noline">\'+$.subByte(m.name,20)+"</a>";n+=\'<span class="c-gray">\'+$.subByte(m.sumper,16)+"</span>";n+="</p>";n+="";n+="</div>"}return n}function a(l){if(b.listNum>4){d.show();b.endPage=Math.ceil(b.listNum/b.rn);A.use("page",function(){f=A.ui.page(d[0],b.nowPage,b.endPage,{prePageText:"上一页",nextPageText:"下一页",onChange:function(n,m){l.find(".op-ingredients-show").removeClass("op-ingredients-show").addClass("op-ingredients-hidden");l.find(".op-ingredients-page"+n).removeClass("op-ingredients-hidden").addClass("op-ingredients-show").find("img").each(function(o,p){var q=p.getAttribute("srctxt");if(q){p.setAttribute("src",q);p.setAttribute("srctxt","")}})}})})}else{d.hide()}}a(i.eq(0));this.dispose=function(){if(!j){j=true}f&&f.dispose&&f.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'tabs,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
