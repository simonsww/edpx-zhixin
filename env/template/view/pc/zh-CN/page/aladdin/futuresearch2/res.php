<?php 
  class CssJs_Util_futuresearch2
   {
      private static $cssStr = '.op-futuresearch2-main{display:none;padding-bottom:10px;}.op-futuresearch2-childtab .op-ui-tabx-tabs{background:#fff;}.op-futuresearch2-childtab .op-ui-tabx-tab{margin-left:10px;padding:0;text-align:center;line-height:18px;height:18px;display:inline;}.op-futuresearch2 .op-ui-tabx-content{padding-top:7px;}.op-futuresearch2-childtab .op-ui-tabx-sep{background-image:none;}.op-futuresearch2-childtab .op-ui-tabx-tabs .op-ui-tabx-selected{border-radius:2px;margin-right:2px;border:none;color:#fff;font-weight:normal;background-color:#71b348;padding:0;text-align:center;line-height:18px;height:18px;}.op-futuresearch2-childtab .op-ui-tabx-tabs .op-ui-tabx-only{margin-left:10px;margin-right:2px;padding:0;text-align:center;line-height:18px;height:18px;background:transparent;color:#000;font-weight:bold;display:inline;}.op-futuresearch2-childtab .op-ui-tabx-content{padding-top:0;margin-top:-3px;}.op-futuresearch2-childtab .op-ui-tabx-content th,.op-futuresearch2-childtab .op-ui-tabx-content td{white-space:nowrap;height:28px;font-size:12px;text-align:left;font-weight:normal;width:105px;overflow:hidden;border-bottom:#ededed 1px solid;}.op-futuresearch2-childtab .op-ui-tabx-content th{border:#dedede 1px solid;border-left:0 none;border-right:0 none;color:#666;}.op-futuresearch2-childtab table a{text-decoration:none;}.op-futuresearch2-content-box{padding-left:15px;}.op-futuresearch2-provider{color:#676767;line-height:16px;padding-bottom:6px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("futuresearch2",function(){A.setup(function(){var f=this,e,b,k,c,m,d=f.data,a=[],h={},g=d.thead,j=f.find(".op-futuresearch2-main")[0];for(e=0,b=d.tab.length;e<b;e++){a.push({value:d.tab[e].value,childlist:[]})}for(e=0,b=d.childtab.length;e<b;e++){k=d.childtab[e];a[k.tab].childlist.push(k)}for(e=0,b=d.list.length;e<b;e++){c=h[d.list[e].id];if(!c){c=h[d.list[e].id]=[]}c.push(d.list[e])}m=function(t){var r,o,p,s,q,n;r=\'<div class="op-futuresearch2-content-box">                <table class="op-futuresearch2-content" cellspacing="0" cellpadding="0">                    #{thead}                    #{tbody}                </table>            </div>\';o="";if(g&&typeof g==="object"){o=["<tr>"];for(s in g){if(g.hasOwnProperty(s)){o.push("<th>"+g[s]+"</th>")}}o.push("</tr>");o=o.join("")}p=[];for(s=0,n=t.length;s<n;s++){c=["<tr>"];c.push($.format(\'<td><a href="#{link}" target="_blank">#{text}</a></td>\',{link:t[s].col1link,text:t[s].col1}));c.push($.format(\'<td style="color:#{color}">#{text}</td>\',{color:t[s].col2colour,text:t[s].col2}));for(q=3;q<6;q++){c.push($.format("<td>#{text}</td>",{text:t[s]["col"+q]}))}c.push("</tr>");p.push(c.join(""))}p=p.join("");return $.format(r,{thead:o,tbody:p})};A.use("tabx",function(){var s,r,n,q,p,t,o=A.ui.tabx(j);for(s=0,n=a.length;s<n;s++){o.add(a[s].value);p=o[s].child({className:"op-futuresearch2-childtab",only:true});for(r=0,q=a[s].childlist.length;r<q;r++){t=a[s].childlist[r].id;p.add(a[s].childlist[r].value,m(h[t]));if(t==d.defaultTab){o.sw(s);p.sw(r)}}}j.style.display="block";a=h=null})})});';   // js字串，不含<script标签
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
