<?php 
  class CssJs_Util_zx_renwu_music
   {
      private static $cssStr = '.op_zx_renwu_music{overflow:hidden;background-color:#fafafa;padding:15px 10px;margin-bottom:10px;margin-right:1px;}.op_zx_renwu_music a,.op_zx_renwu_music a em{text-decoration:none;}.op_zx_renwu_music a:hover,.op_zx_renwu_music a:hover em{text-decoration:underline;}.op_zx_renwu_music table{border-collapse:collapse;}.op_zx_renwu_music td{padding:0;vertical-align:top;}.op_zx_renwu_music h2{font-size:1.1em;font-weight:bold;line-height:30px;margin:0 0 5px;}.op_zx_renwu_music h2 a,.op_zx_renwu_music h2 a em{text-decoration:underline;}.op_zx_renwu_music_list{width:100%;margin-bottom:5px;}.op_zx_renwu_music_list th{height:28px;text-align:left;font-weight:normal;font-size:.9em;padding:0 0 10px 0;border-bottom:dotted 1px #d2d2d2;color:#666;}.op_zx_renwu_music_list td{vertical-align:middle;height:32px;border-bottom:dotted 1px #d2d2d2;}.op_zx_renwu_music_list_hot{width:100px;height:10px;overflow:hidden;}.op_zx_renwu_music_list_hot div{height:10px;background-color:#e5e5e5;}.op_zx_renwu_music_playbutton,.op_zx_renwu_music_playbutton span,.op_zx_renwu_music_list_play,.op_zx_renwu_music_list_down{background:url("http://www.baidu.com/aladdin/img/zhixin/sprites2-8.png") no-repeat;}.op_zx_renwu_music_list_play{background-position:-231px 1px;padding:4px 8px;}.op_zx_renwu_music_list_play:hover{background-position:-134px 1px;text-decoration:none!important;}.op_zx_renwu_music_list_down{background-position:-248px 1px;padding:4px 8px;}.op_zx_renwu_music_list_down:hover{background-position:-160px 1px;text-decoration:none!important;}.op_zx_renwu_music_list_name{font-size:1.1em;}.op_zx_renwu_music_playbutton,.op_zx_renwu_music_playbutton span{line-height:26px;display:inline-block;}.op_zx_renwu_music_playbutton:hover,.op_zx_renwu_music_playbutton:hover span{text-decoration:none!important;}.op_zx_renwu_music_playbutton{background-position:0 -22px;cursor:pointer;margin-right:10px;}.op_zx_renwu_music_playbutton span{margin-left:24px;padding-right:15px;background-position:right -22px;color:#fff;}.op_zx_renwu_music_number{margin:0 5px;}.op_zx_renwu_music_header h2{float:left;}.op_zx_renwu_music_listennumber{float:right;font-size:1em;line-height:30px;}.op_zx_renwu_music_more{font-size:.9em;}.op_zx_renwu_music_list_index{margin:0 10px;}';  // css字串，不含<style>和</style>标签
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
