<?php 
  class CssJs_Util_guahao
   {
      private static $cssStr = '.op_guahao_safetip{color:#6FBA2C;font-weight:bold;}.op_guahao_safetip span{display:inline-block;}.op_guahao_select{float:left;}.op_entity_info{display:inline-block;margin-right:20px;}.op_guahao_tip{font-weight:bold;float:left;}.op-illness{width:20.5em;}.op-illness li{float:left;width:90px;color:#00C;}.op-illness-label{width:5.2em;padding-left:10px;}.op-illness-dropdown{width:10em;}.op_tr_bg{background:#fafafa;}.c-dropdown2 .op_tr_bg .c-dropdown2-option{background:#fafafa;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("guahao",function(){A.setup(function(){var d=this;var b=d.find(".op-illness-dropdown")[0];var a=d.find(".op_guahao_submit")[0];var c=null;A.use("dropdown21",function(){if(d.data.platform==="pc"){c=A.ui.dropdown21(b,{type:"custom",width:266,height:200})}else{c=A.ui.dropdown21(b,{type:"custom",width:307,height:231})}});a.onclick=function(){this.href=d.data.url+c.getValue()};this.dispose=function(){c&&c.dispose&&c.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'btn,dropdown2';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
