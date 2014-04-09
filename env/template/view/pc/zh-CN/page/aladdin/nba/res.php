<?php 
  class CssJs_Util_nba
   {
      private static $cssStr = '.op_nba{margin-top:4px;}.op_nba td a{text-decoration:none;}.op_nba_gray{padding-top:2px;color:#666;font-size:12px;}.op_nba .op_nba_pabtom{padding:2px 0;color:#77c;}.op_nba_num{margin:2px 0 4px 0;}.op_nba_more{padding:5px 0 0;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("nba",function(){A.setup(function(){var h=this,f=h.find(".op_nba_table")[0],b=[],d=[],a=[];function e(m){var k="";for(var l=0;l<9;l++){var j="col"+l;if(m&&m[j]){k+="<th>"+m[j]+"</th>"}}return k}function c(m){var n=[];for(var k=0;k<9;k++){var j=m["col"+k],l=m["col"+k+"link"];if(j&&l){n.push(\'<td><a href="\'+l+\'" target="_blank">\'+j+"</a></td>")}else{if(j){n.push("<td>"+j+"</td>")}else{n.push("")}}}return n}function g(l){var j=[];for(var k=1;k<10;k++){if(l[k]){j.push("<tr>"+c(l[k]).join("")+"</tr>")}else{break}}return j}h.ajax(h.data.originQuery,h.data.srcid,{co:"form|link",success:function(l){var k=l[0].form,j=l[0].link,i=k[0];d=["<tr>",e(i),"</tr>"];if(j&&j.linkurl){a=[\'<tr class="c-table-noborder"><td colspan=2 class="op_nba_pabtom">\',\'<a href="\'+j.linkurl+\'" target="_blank">\'+j.linkcontent+\'<span style="font-family:simsun">>></span></a>\',"</td></tr>"]}b=[\'<table border="0" cellpadding="0" cellspacing="0" id="op_table" class="c-table op_nba">\'].concat(d,g(k),a).join("")+"</table>";f.innerHTML=b},error:function(){}})})});';   // js字串，不含<script标签
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
