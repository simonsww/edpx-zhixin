<?php 
  class CssJs_Util_vd_movie
   {
      private static $cssStr = '.vd_movie_new_main{margin-top:5px;width:540px;}.vd_movie_new_main tr td{font-size:13px;vertical-align:top;}.vd_movie_new_img{overflow:hidden;width:78px;height:104px;}.vd_movie_new_img img{border:1px solid #ccc;}.vd_movie_new_txt{padding-left:10px;}.vd_movie_new_txtbottom{padding-top:5px;color:#666;}.vd_movie_new_tubiao{float:left;width:15px;height:15px;margin-left:5px;margin-right:5px;border:0;display:block;margin-top:3px;}a.vd_movie_new_btn{margin-right:6px;text-decoration:none;color:#000;float:left;}a.vd_movie_new_btn div,a.vd_movie_new_btn div div,a.vd_movie_new_btn div div div,a.vd_movie_new_btn:hover div,a.vd_movie_new_btn:hover div div{background:url(http://www.baidu.com/aladdin/img/moviesy/bottom_16.jpg) 0 0 no-repeat;}a.vd_movie_new_btn div{background-position:0 -21px;background-repeat:repeat-x;line-height:21px;height:21px;cursor:pointer;float:left;}a.vd_movie_new_btn div div div{background-position:right -42px;padding-right:5px;white-space:nowrap;}a.vd_movie_new_btn:hover{border:0;}a.vd_movie_new_btn:hover div{background-position:0 -84px;background-repeat:repeat-x;border:0;}a.vd_movie_new_btn:hover div div{background-position:0 -63px;}a.vd_movie_new_btn:hover div div div{background-position:right -105px;}.vd_movie_new_nr{float:left;}';  // css字串，不含<style>和</style>标签
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
