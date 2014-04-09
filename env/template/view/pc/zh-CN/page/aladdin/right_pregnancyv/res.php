<?php 
  class CssJs_Util_right_pregnancyv
   {
      private static $cssStr = '.container_l .opr_right_pregnancyv_main{width:351px;}.opr_right_pregnancyv_title,.opr_right_pregnancyv_tab,.opr_right_pregnancyv_tab .opr_right_pregnancyv_label{background:url(http://www.baidu.com/aladdin/img/right_pregnancyv/tl.png) no-repeat;}.opr_right_pregnancyv_title{font-size:14px;background-position:0 0;position:relative;zoom:1;}.opr_right_pregnancyv_title_tip{font-weight:bold;background:#fff;padding-right:10px;}.opr_right_pregnancyv_tab{height:20px;line-height:18px;position:relative;margin-top:14px;overflow:hidden;background-position:0 50%;}.opr_right_pregnancyv_tab .opr_right_pregnancyv_label a:hover{background-color:#47a3ff;color:#fff;}.opr_right_pregnancyv_tab.opr_right_pregnancyv_active .opr_right_pregnancyv_label .opr_right_pregnancyv_empty,.opr_right_pregnancyv_tab.opr_right_pregnancyv_active .opr_right_pregnancyv_label a{color:#fff;background:#389cff;border-top-color:#3490ec;border-left-color:#3490ec;}.opr_right_pregnancyv_link span{border-left:1px solid #ccc;padding:0 10px;}.opr_right_pregnancyv_link a{text-decoration:none;}.opr_right_pregnancyv_link a:hover{text-decoration:underline;}.opr_right_pregnancyv_link a:active{background-color:transparent;}.opr_right_pregnancyv_t{display:none;}.container_l .opr_right_pregnancyv_t{display:inline;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
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
