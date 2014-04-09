<?php 
  class CssJs_Util_minisearch
   {
      private static $cssStr = '.op_minisearch_main{margin-top:5px;}.op_minisearch_sug{color:#666;line-height:26px;height:26px;display:block;font-size:.9em;padding-top:5px;}.op_minisearch_rank{margin:4px 0 0;border-top:1px solid #dedede;}.op_minisearch_rank td{font-size:1em;line-height:22px;vertical-align:top;font-family:Sim-Sun;padding:5px 0;}.op_minisearch_rank td a{text-decoration:none;}.op_minisearch_rank td a:hover{text-decoration:underline;}.op_minisearch_rank span{margin:0 9px 0 0;display:inline-block;}.op_minisearch_rank td{border-bottom:1px solid #dedede;}.op_minisearch_morelink{margin:4px 0 0;}.op_minisearch_morelink a{text-decoration:underline;color:#7a77c8;font-size:.9em;font-family:simsun;}.op_minisearch_item{width:416px;height:22px;overflow:hidden;float:left;}.op_minisearch_item_more{float:right;}.op_minisearch_td{width:100%;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("minisearch",function(){A.setup(function(){var b=this,a=b.find(".op_minisearch_item");$(function(){$.each(a,function(d,e){if(e.scrollHeight>23){var c=b.find("."+e.getAttribute("data-item")+"_more").eq(0);if(c){c.show()}}})})})});';   // js字串，不含<script标签
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
