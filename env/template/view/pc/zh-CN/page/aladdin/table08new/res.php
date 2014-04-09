<?php 
  class CssJs_Util_table08new
   {
      private static $cssStr = '.op_table08_new_gray{color:#666;}.op_table08new_tab_content{display:none;}.op_table08new_content{position:relative;}.op_table08new_content .c-tabs-nav-li{padding-left:10px;padding-right:10px;}.op_table08new_morelink{font-family:simsun;}.op_table08new_logo{width:121px;padding-left:17px;position:absolute;right:3px;top:0;}.op_table08new_logo img{position:absolute;right:60px;}.op_table08new_logo span{font-weight:bold;font-size:1.077em;color:#d50029;font-family:"Microsoft YaHei",微软雅黑,"MicrosoftJhengHei",华文细黑,STHeiti,MingLiu;position:absolute;right:0;top:5px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("table08new",function(){A.setup(function(){var g=this,h,c,d,m,q,n,o=false,r=g.data,e=-1,l=r.query,a=r.sourceId,k=g.find(".op_table08_table").get(0),b=g.find(".op_table08_tabs").get(0),i=g.find(".c-tabs-nav-li"),p=g.find("ul.c-tabs-nav").get(0).getElementsByTagName("li");h=function(v,s){var u,t,w=false;for(u=0,t=p.length;u<t;u++){if(v==p[u]){w=true;break}}if(w){if(u>0){p[u-1].style.visibility=s?"visible":"hidden"}if(u<t-1){p[u+1].style.visibility=s?"visible":"hidden"}}};function f(s){if(e!=-1){$(i[e-1]).removeClass("op_table08_tabs_current");$(i[e-1]).removeClass("c-tabs-nav-selected");h(i[e-1],true)}$(i[s-1]).addClass("op_table08_tabs_current");$(i[s-1]).addClass("c-tabs-nav-selected");h(i[s-1],false);if(e!=-1){if(!c){d(s)}else{q(s)}}e=s}d=function(t){var s,u;m=t;if(o){return}buildHightlight=function(){var x,w,v=[];for(x=1;x<=7;x++){for(w=1;w<=6;w++){v.push("tr"+x+".*.c"+w)}}return v.join(",")};u=A.AJAX.PARAMS;A.AJAX.PARAMS=$.extend({hilight:buildHightlight()},u);g.ajax(l,a,{success:function(w){try{c=w[0];q(m)}catch(v){n()}},error:function(v){n()}});A.AJAX.PARAMS=u};q=function(x){var z=table=tr=td=morelink="",C,w,s,v,B,y,u,t;C=c["th"+x]&&c["th"+x][0];if(C&&C.c1){z+=\'<thead class="c-table-nohihead">\';for(u=1;u<7;u++){z+=$.format("<th#{firstClass}>#{content}</th>",{firstClass:u==1?\' style="padding:0 0 0 10px;"\':"",content:C["c"+u]})}z+="</thead>"}w=c["tr"+x];for(u=0,t=w.length;u<t;u++){td="";for(j=1;j<7;j++){s=w[u];B=s["c"+j+"Link"];y=s["c"+j];td+=$.format("<td#{firstClass}>#{linkHead}#{content}#{linktail}</td>",{firstClass:j==1?\' style="padding:0 0 0 10px;"\':"",linkHead:B?\'<a href="\'+B+\'" target="_blank"\'+(j==1?\' class="OP_LOG_BTN">\':">"):"",content:y,linkTail:B?"</a>":""})}tr+=$.format("<tr>#{tdContent}</tr>",{tdContent:td})}v=c["more"+x];if(v&&v[0]){morelink=$.format(\'<div class="c-gap-top op_table08new_morelink"><a href="#{link}" target="_blank" class="OP_LOG_BTN">#{content}</a></div>\',{link:v[0].link,content:v[0].txt})}table=$.format(\'<table class="c-table">        #{thead}        <tbody>            #{tr}        </tbody>      </table>      #{morelink}\',{thead:z,tr:tr,morelink:morelink});k.innerHTML=table};n=function(){};$.each(i,function(s,t){$(t).on("click",function(){f(t.getAttribute("data-index"))})});f(g.data.op_table08_curtab)})});';   // js字串，不含<script标签
      private static $uiList = 'table,tabs';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
