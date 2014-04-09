<?php 
  class CssJs_Util_zx_tuan_cinema
   {
      private static $cssStr = '.op_zx_tuan_cinema-filminfo{padding-top:0;padding-bottom:0;margin-top:3px;box-shadow:2px 2px 2px #ececec;-webkit-box-shadow:2px 2px 2px #ececec;-moz-box-shadow:2px 2px 2px #ececec;-o-box-shadow:2px 2px 2px #ececec;}.op_zx_tuan_cinema-filminfo .c-tabs b{float:left;height:20px;line-height:20px;padding:5px 0 4px;}.op_zx_tuan_cinema-filminfo .c-tabs .c-tabs{border-bottom:1px solid #e4e4e4;}.op_zx_tuan_cinema-filminfo .c-tabs .c-tabs-nav{padding:5px 0 4px;}.op_zx_tuan_cinema-filminfo .c-tabs .c-tabs li.op-tab-first{margin-left:0;}.op_zx_tuan_cinema-filminfo .c-table td .c-btn{width:4.7em;*width:57px;float:right;color:#666;margin-right:5px;}.op_zx_tuan_cinema-filminfo .c-table .op_zx_tuan_cinema-td-last{border-bottom:none;}.op_zx_tuan_cinema-filminfo .c-table td{padding-left:0;}.op_zx_tuan_cinema-filminfo .c-table .op_zx_tuan_cinema-film-name{width:30%;overflow:hidden;}.op_zx_tuan_cinema-filminfo .c-table .op_zx_tuan_cinema-film-time{width:55%;overflow:hidden;}.op_zx_tuan_cinema-abstract p.op_zx_tuan_cinema-des{line-height:16px;}.op_zx_tuan_cinema-grey{color:#666;}.op_zx_tuan_cinema-size10{font-size:.77em;}.op_zx_tuan_cinema-mg10{margin:0 10px;}.op_zx_tuan_cinema-mg5{margin:0 5px;}.op_zx_tuan_cinema-mgl5{margin-left:5px;}.op_zx_tuan_cinema-abstract p{line-height:24px;}p.op_zx_tuan_cinema-hot{height:20px;overflow:hidden;}p.op_zx_tuan_cinema-hot .op_zx_tuan_cinema-hot-film{display:inline-block;margin-right:8px;dispaly:inline-block;white-space:noswrap;}p.op_zx_tuan_cinema-subbranch{color:#00c;font-size:.92em;}.op_zx_tuan_cinema-subbranch a{display:inline-block;}.op_zx_tuan_cinema-subbranch span{display:inline-block;margin:0 5px;color:#00c;}.op_zx_tuan_cinema-split{display:inline-block;width:1px;height:12px;line-height:100%;border-right:1px solid #d8d8d8;}a.op_zx_tuan_cinema-see-all{text-decoration:underline;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zx_tuan_cinema",function(){A.setup(function(){var c=this;c.find(".c-tabs-nav-li").click(function(f){var d=c.find(".op_zx_tuan_cinema-content"+$(this).attr("data-id"));if(d.length>0){b();d.css("display","block")}a();$(this).addClass("c-tabs-nav-selected")});var a=function(){c.find(".c-tabs-nav-selected").removeClass("c-tabs-nav-selected")};var b=function(){c.find(".op_zx_tuan_cinema-table").css("display","none")}})});';   // js字串，不含<script标签
      private static $uiList = 'btn,tabs,table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
