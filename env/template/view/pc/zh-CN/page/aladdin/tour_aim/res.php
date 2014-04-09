<?php 
  class CssJs_Util_tour_aim
   {
      private static $cssStr = '.op_tour_aim_plan_wz{display:block;width:145px;float:left;}.op_tour_aim_plan_main{display:block;width:360px;float:left;}.op_tour_aim_plan_train_icon,.op_tour_aim_plan_plane_icon,.op_tour_aim_plan_house_icon,.op_tour_aim_plan_splitter{background:url("http://www.baidu.com/aladdin/img/tour/tour.gif") no-repeat;}.op_tour_aim_plan_pictext{width:100%;text-align:center;display:block;}.op_tour_aim_plan_train_icon,.op_tour_aim_plan_plane_icon,.op_tour_aim_plan_house_icon{padding:0 0 0 15px;display:inline-block;height:13px;vertical-align:middle;}.op_tour_aim_plan_train_icon{background-position:0 0;}.op_tour_aim_plan_plane_icon{background-position:0 -15px;}.op_tour_aim_plan_house_icon{background-position:0 -30px;}.op_tour_aim_plan_splitter{background-position:0 -44px;padding-right:10px;margin:8px 0 0 15px;display:inline-block;vertical-align:middle;}.op_tour_aim_plan_link{vertical-align:middle;}.op_tour_aim_tip_content{color:#666;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
