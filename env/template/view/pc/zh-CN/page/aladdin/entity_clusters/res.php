<?php 
  class CssJs_Util_entity_clusters
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("entity_clusters",function(){A.setup(function(){var b=this,m=false;b.find(".op_entity_clusters_tools_fb").on("click",function(){$(this).replaceWith("<span>感谢反馈</span>")});var k=b.srcid,j=encodeURIComponent(b.data.OriginQuery),l=Math.min(Number(b.data.EntityNum),120),c=b.data.ViewType;var f={apn:(c=="P")?6:24,arn:(c=="P")?l:l};var h=b.find(".op_entity_clusters_entitys_more"),g=b.find(".op_entity_clusters_entitys");e();function e(){var n=$("a",h);n.length&&n.on("click",function(){d(f.apn,f.arn)})}function d(o,p){var n="http://opendata.baidu.com/api.php?resource_id="+k+"&format=json&ie=utf-8&oe=utf-8&query="+j+"&apn="+o+"&arn="+p+"&co=entity";$.ajax({dataType:"jsonp",scriptCharset:"utf-8",jsonp:"cb",timeout:6000,url:n,success:i})}function i(q){if(m){return}if(q.status=="0"&&q.data[0].entity){var r=q.data[0].entity,p=[];if(c=="P"){for(var o=0;o<r.length;o++){p=p.concat([\'<div class="op_entity_clusters_entity c-gap-bottom c-span4 \',(o%6==5)?"c-span-last":"",\'">\',\'<p class="op_entity_clusters_entity_img">\',r[o].jumplink?\'<a href="\'+r[o].jumplink+\'" title="\'+r[o].ename+\'" target="_blank">\':(r[o].nonelink?\'<a href="\'+r[o].nonelink+\'" title=""\'+r[o].ename+\'"词条尚未收录，点击创建" target="_blank">\':""),(r[o].pic)?\'<img class="c-img c-img4" src="\'+r[o].pic+\'"/>\':\'<span class="c-img c-img4 op_entity_clusters_entity_noimg"></span>\',r[o].jumplink||r[o].nonelink?"</a>":"","</p>",\'<p class="c-gap-top-small">\',r[o].jumplink?\'<a href="\'+r[o].jumplink+\'" title="\'+r[o].ename+\'" target="_blank">\':(r[o].nonelink?\'<a href="\'+r[o].nonelink+\'" class="op_entity_clusters_nonelink" title=""\'+r[o].ename+\'"词条尚未收录，点击创建" target="_blank">\':""),$.subByte(r[o].ename,10),r[o].jumplink||r[o].nonelink?"</a>":"","</p>","</div>"])}}else{if(c=="T"){for(var o=0;o<r.length;o++){var s="";if(o==r.length-1&&o>5&&o%6!=5){for(var n=0;n<5-o%6;n++){s+="<td></td>"}}p=p.concat([(o%6==0)?"<tr>":"","<td>",r[o].jumplink?\'<a href="\'+r[o].jumplink+\'" title="\'+r[o].ename+\'" target="_blank">\':(r[o].nonelink?\'<a href="\'+r[o].nonelink+\'" class="op_entity_clusters_nonelink" title=""\'+r[o].ename+\'"词条尚未收录，点击创建" target="_blank">\':""),$.subByte(r[o].ename,10),r[o].jumplink||r[o].nonelink?"</a>":"","</td>",s?s:"",(o%6==5||o==r.length-1)?"</tr>":""])}}}a(p.join(""))}}function a(p){if(c=="P"){g.append(p)}else{if(c=="T"){$("table",g).append(p)}}var o=b.find(".op_entity_clusters_subtitle_right"),n=\'<a class="op_entity_clusters_entitys_hide OP_LOG_BTN"><i class="c-icon c-icon-triangle-up"></i>收起</a>\';h.html(n);if((c=="P"&&l>18)||(c=="T"&&l>48)){o.html(n)}b.find(".op_entity_clusters_entitys_hide").on("click",function(){if(c=="P"){$(".op_entity_clusters_entity:gt(5)",g).remove()}else{if(c=="T"){$("table tr:gt(3)",g).remove()}}h.html(\'<a class="OP_LOG_BTN"><i class="c-icon c-icon-triangle-down"></i>展开更多</a>\');o.empty();e()})}this.dispose=function(){if(!m){m=true}}})});';   // js字串，不含<script标签
      private static $uiList = 'img,table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
