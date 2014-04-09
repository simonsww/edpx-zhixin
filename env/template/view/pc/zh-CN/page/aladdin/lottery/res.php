<?php 
  class CssJs_Util_lottery
   {
      private static $cssStr = '.op_lottery_dropdown1,.op_lottery_dropdown2{width:6.55em;float:left;}.op_lottery_date{float:left;line-height:2em;}.op_lottery_hidden{display:none;}.op_lottery_numbers span{float:left;margin-right:5px;padding:2px 5px;font-size:1.69em;background:#ff7921;color:#fff;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("lottery",function(){A.setup(function(){var h=this,m=h.data.phase,a=h.data.typeId;var d={},b={},e=[];var g=h.find(".op_lottery_date_val")[0],j=h.find(".op_lottery_dropdown1")[0],i=h.find(".op_lottery_dropdown2")[0],c=i.getElementsByTagName("ul")[0],n=h.find(".op_lottery_dropdown2").eq(0).find(".c-dropdown2-btn")[0],l=h.find(".op_lottery_numbers")[0];var f=function(p){var o=[];$.each(p.split("/"),function(r,q){o.push(["<span>",q,"</span>"].join(""))});l.innerHTML=o.join("")};$.each(m,function(p,o){if(a==o.id){e.push([\'<li data-value=\\\'{"value":"\',o.number,\'","date":"\',o.date,\'"}\\\'  class="c-dropdown2-option "\',o.selected?\' data-selected="selected"\':"",">",o.name,"</li>"].join(""))}});c.innerHTML=e.join("");function k(){$.each(m,function(q,p){if(a==p.id){if(p.selected){b.add({value:\'{"value":"\'+p.number+\'","date":"\'+p.date+\'"}\',text:p.name,selected:1})}else{b.add({value:\'{"value":"\'+p.number+\'","date":"\'+p.date+\'"}\',text:p.name})}}});var o=$.parseJSON(b.getValue());g.innerHTML=o.date;f(o.value)}A.use("dropdown21",function(){d=A.ui.dropdown21(j,{onchange:function(p){b.removeAll();a=d.getValue();k()}});b=A.ui.dropdown21(i,{onchange:function(){var p=$.parseJSON(b.getValue());g.innerHTML=p.date;f(p.value)}});var o=$.parseJSON(b.getValue());g.innerHTML=o.date;f(o.value)});this.dispose=function(){d&&d.dispose&&d.dispose();b&&b.dispose&&b.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'dropdown2';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
