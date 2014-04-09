<?php 
  class CssJs_Util_seriesmovie
   {
      private static $cssStr = '.op-seriesmovie-a{position:relative;display:block;}.op-seriesmovie-poster{height:161px;}.op-seriesmovie-playicon{width:42px;height:42px;position:absolute;top:50%;left:50%;margin-left:-21px;margin-top:-21px;cursor:pointer;z-index:2;background:url(http://www.baidu.com/aladdin/img/movievideo/playicon.png) no-repeat;_background:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="http://www.baidu.com/aladdin/img/movievideo/playicon.png");}.op-seriesmovie-mask{width:100%;height:100%;position:absolute;top:0;left:0;background:#000;filter:alpha(opacity=20);opacity:.2;-moz-opacity:.2;cursor:pointer;display:none;z-index:1;}.op-seriesmovie-over .op-seriesmovie-mask{display:block;}.op-seriesmovie-right{position:relative;}.op-seriesmovie-finish,.op-seriesmovie-update{padding:0 1px;text-align:center;color:#fff;font-size:.92em;background:#2b99ff;}.op-seriesmovie-tvplay div{float:left;line-height:14px;margin-bottom:3px;}.op-seriesmovie-first{width:62%;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;}.op-seriesmovie-tip{color:#666;}.op-seriesmovie-info{color:#666;}.op-seriesmovie-rate{text-align:right;line-height:20px;position:absolute;right:0;top:-2px;color:#666;}.op-seriesmovie-rateleft{text-align:left;line-height:20px;}.op-seriesmovie-rate i,.op-seriesmovie-rateleft i{color:#ff4c2e;font-size:18px;}.op-seriesmovie-tip i{color:#ff4c2e;font-style:normal;}.op-seriesmovie-split{color:#d8d8d8;margin:0 5px;}.op-seriesmovie-left{float:left;}.op-seriesmovie-info a{padding-left:5px;}.op-seriesmovie-site a{font-family:simsun;}.op-seriesmovie-site span{padding-right:10px;}.op-seriesmovie-site img,.op-seriesmovie-info img{display:inline-block;width:16px;height:16px;vertical-align:text-bottom;font-style:normal;overflow:hidden;padding-right:3px;cursor:pointer;}.op-seriesmovie-summary,.op-seriesmovie-season{padding-left:3em;text-indent:-3em;}.op-seriesmovie-seasonEp{margin-right:17px;white-space:nowrap;}.op-seriesmovie-part a{position:relative;overflow:hidden;display:block;text-decoration:none;}.op-seriesmovie-partnumWrap{position:absolute;right:1px;bottom:0;z-index:1;overflow:hidden;}.op-seriesmovie-partnum{color:#fff;display:block;overflow:hidden;padding:0 5px;position:relative;}.op-seriesmovie-numMask{width:100%;height:100%;position:absolute;top:0;left:0;background:#000;filter:alpha(opacity=65);opacity:.65;-moz-opacity:.65;cursor:pointer;z-index:-1;}.op-seriesmovie-subtitle{font-weight:bold;}.op-seriesmovie-center{text-align:center;}.op-seriesmovie-page{font-size:.92em;clear:both;}.op-seriesmovie-page p{color:#00c;text-align:center;line-height:19px;}.op-seriesmovie-page-number,.op-seriesmovie-page-pre,.op-seriesmovie-page-next{border:1px solid #e7ecf0;text-align:center;font-weight:normal;cursor:pointer;margin:0 2px;padding:0 5px;display:inline-block;}.op-seriesmovie-page-number-now{font-weight:bold;color:#000;margin:0 8px;display:inline-block;*border:1px solid #fff;}.op-seriesmovie-page-more{color:#000;}.op-seriesmovie-page-number:hover,.op-seriesmovie-page-pre:hover,.op-seriesmovie-page-next:hover{border:1px solid #5a9ff1;}.op-seriesmovie-gap{padding:0 10px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("seriesmovie",function(){A.setup(function(){var h=this;var i=h.find(".op-seriesmovie-a"),f=h.data.series,b=h.find(".op-seriesmovie-series");resultNum=h.data.resultNum,nowNum=4,nowPage=1;i.hover(function(){$(this).toggleClass("op-seriesmovie-over")});function c(){var k=[];for(var j=(nowPage-1)*nowNum;j<f.length&&j<nowPage*nowNum;j++){var m=32;if(a(f[j].name)>=18&&a(f[j].name)<24){var l="op-seriesmovie-gap"}else{var l=""}k=k.concat([\'<div class="c-span6\']);if((j+1)%4==0){k=k.concat([" c-span-last"])}k=k.concat([\'"><div class="op-seriesmovie-part"><a target="_blank" href="\',f[j].link,\'"><img class="c-img c-img6 op-seriesmovie-poster" src="\',f[j].poster,\'"><div class="op-seriesmovie-partnumWrap"><span class="op-seriesmovie-partnum">\',f[j].part,\'</span><span class="op-seriesmovie-numMask">&nbsp;</span></div></a></div><div class="op-seriesmovie-center c-gap-top-small \'+l+\'"><a target="_blank" href="\',f[j].link,\'" title="\',f[j].name,\'">\',e(f[j].name,m),\'</a></div><div class="op-seriesmovie-center">\']);if(f[j].year){k=k.concat([\'<span class="op-seriesmovie-tip">\',f[j].year,"<span>"]);if(f[j].rate){k=k.concat([\'<span class="op-seriesmovie-split">|</span>\'])}}if(f[j].rate){k=k.concat([\'<span class="op-seriesmovie-tip"><i>\',f[j].rate,"</i>分<span>"])}k=k.concat(["</div></div>"])}g();b.html(k.join(""))}g();function g(){var m=h.find(".op-seriesmovie-page");if(m){if(resultNum>nowNum){m.css("display","block");var l=Math.ceil(resultNum/nowNum);d(nowPage,l);var k=h.find(".op-seriesmovie-page-number"),n=h.find(".op-seriesmovie-page-pre"),j=h.find(".op-seriesmovie-page-next");k.click(function(){nowPage=Number($(this).html());pn=(nowPage-1)*nowNum;c()});if(n){n.click(function(){nowPage=nowPage-1;pn=(nowPage-1)*nowNum;c()})}if(j){j.click(function(){nowPage=nowPage+1;pn=(nowPage-1)*nowNum;c()})}}else{m.css("display","none")}}}function d(n,k){n=Number(n);k=Number(k);var l=[];if(2<=k&&k<=7){for(var m=1;m<=k;m++){l=l.concat([m])}}else{if(k>=8){if(n<=4){l=[1,2,3,4,5,"M",k]}else{if(n>=k-3){l=[1,"M",k-4,k-3,k-2,k-1,k]}else{l=[1,"M",n-1,n,n+1,"M",k]}}}}var j=[];if(n!=1&&k>3){j=j.concat(["<span class=\\"op-seriesmovie-page-pre OP_LOG_BTN\\" data-click=\\"{\'fm\':\'beha\'}\\">上一页</span>"])}for(var m=0;m<l.length;m++){if(l[m]=="M"){j=j.concat([\'<span class="op-seriesmovie-page-more">…</span>\'])}else{if(l[m]==n){j=j.concat([\'<span class="op-seriesmovie-page-number-now">\',l[m],"</span>"])}else{j=j.concat(["<span class=\\"op-seriesmovie-page-number OP_LOG_BTN\\" data-click=\\"{\'fm\':\'beha\'}\\">",l[m],"</span>"])}}}if(n!=k&&k>3){j=j.concat(["<span class=\\"op-seriesmovie-page-next OP_LOG_BTN\\" data-click=\\"{\'fm\':\'beha\'}\\">下一页</span>"])}h.find(".op-seriesmovie-page p").html(j.join(""))}function e(q,j,n){var m=[],p=q.split("");n=n||"…";for(var o=0,k=p.length;o<k;o++){if(p[o].charCodeAt(0)>255){m.push("*")}m.push(p[o])}if(j&&j>0&&m.length>j){p=m.join("").substring(0,j-1).replace(/\\*/g,"")+n}else{return q}return p}function a(o){var k=[],n=o.split("");for(var m=0,j=n.length;m<j;m++){if(n[m].charCodeAt(0)>255){k.push("*")}k.push(n[m])}return k.length}})});';   // js字串，不含<script标签
      private static $uiList = 'btn,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
