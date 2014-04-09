<?php 
  class CssJs_Util_zx_movie
   {
      private static $cssStr = '.op_zx_movie_playnow,.op_zx_movie_info_playicon{background:url(http://www.baidu.com/aladdin/img/newvideo/newvideo-1.3.png) no-repeat;}.op_zx_movie_morelink{font-size:12px;font-family:simsun;float:right;margin:1px 7px 3px 0;}.op_zx_movie_postera{position:relative;width:130px;height:180px;overflow:hidden;display:block;}.op_zx_movie_poster{width:130px;height:180px;}.op_zx_movie_imgborder{position:absolute;top:0;left:0;border:1px solid #000;filter:alpha(opacity=10);opacity:.1;-moz-opacity:.1;display:block;}.op_zx_movie_postera .op_zx_movie_imgborder{width:128px;height:178px;}.op_zx_movie_playnow{display:inline-block;width:130px;height:32px;margin-top:10px;}.op_zx_movie_main{padding:15px;background:#f8f8f8;width:606px;position:relative;color:#666;overflow:hidden;}.op_zx_movie_info h3{line-height:23px;}.op_zx_movie_info div{position:absolute;top:13px;left:160px;width:450px;}.op_zx_movie_info div p{line-height:23px;font-size:13px;}.op_zx_movie_info h3{font-size:14px;}.op_zx_movie_split{padding:0 4px;color:#cdcdcd;}.op_zx_movie_info_play{position:absolute;top:200px;left:160px;width:450px;line-height:24px;margin-top:3px;padding:4px 4px 4px 0;font-size:13px;}.op_zx_movie_info_play div{display:inline-block;float:left;}.op_zx_movie_info_play div div{font-size:12px;}.op_zx_movie_info_playicon{margin:2px 10px 0 0;background-position:0 -96px;}.op_zx_movie_info_playicon div{height:20px;line-height:20px;padding:0 5px 0 26px;padding-top:1px\\9;border:1px solid #cdcdcd;color:#666;background:no-repeat 5px 2px;background:no-repeat 5px 1px/9;}.op_zx_movie_info_play a{text-decoration:none;cursor:pointer;}.op_zx_movie_clearfix:after{content:"\\0020";display:block;height:0;clear:both;visibility:hidden;}.op_zx_movie_clearfix{zoom:1;}';  // css字串，不含<style>和</style>标签
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
