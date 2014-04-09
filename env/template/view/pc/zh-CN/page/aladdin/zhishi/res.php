<?php 
  class CssJs_Util_zhishi
   {
      private static $cssStr = '.op_zhishi_list{margin-top:10px;font-size:13px;}.op_zhishi_pic{text-align:center;width:75px;}.op_zhishi_pic a img{vertical-align:middle;display:inline-block;}.op_zhishi_content{float:left;display:inline;margin-left:6px;}.op_zhishi_title{font-weight:bold;font-size:14px;}.op_zhishi_close,.op_zhishi_open{display:inline-block;color:#261CDC;text-decoration:underline;cursor:pointer;margin:3px 0;font-size:13px;}.op_zhishi_close b,.op_zhishi_open b{height:13px;width:14px;overflow:hidden;float:left;margin:3px 3px 0 0;}.op_zhishi_close{display:none;}.op_zhishi_more{display:none;}.op_zhishi_showicon{background:url("http://www.baidu.com/cache/global/img/bg-1.0.8.png") no-repeat left -619px;padding-left:20px;line-height:18px;margin:0 15px 10px 0;width:516px;font-weight:bold;font-size:14px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zhishi",function(){A.setup(function(){var d=this,f=d.data.originQuery,g=d.data.srcid;var i=false;var c=d.find(".op_zhishi_table").eq(0),b=d.find(".op_zhishi_open").eq(0),h=d.find(".op_zhishi_close").eq(0);if(b.length>0){b.click(function(){c.css("display","block");h.css("display","block");b.css("display","none");a()});h.click(function(){c.css("display","");h.css("display","");b.css("display","")})}function e(k){var j=[\'<div class="c-row op_zhishi_list"><div class="c-span4"><div class="op_zhishi_pic"><a href="\'+k.baikelink+\' target="_blank"><img class="c-img c-img4 op_zhishi_img" src="\'+k.icon+\'" /></a><span></span></div></div><div class="c-span20 c-span-last"><p class="op_zhishi_title">\'+k.name+\'</p><p class="op_zhishi_link"><a href="\'+k.titlelink+\'" target="_blank">\'+k.title+\'</a></p><p class="op_zhishi_text">\'+k.intro+\'</p><p class="op_zhishi_blink"><a href="\'+k.baikelink+\'" target="_blank">\'+k.baike+\'</a> <span>|</span> <a href="\'+k.morelink+\'" target="_blank" class="op_zhishi_font">\'+k.more+"</p>"];return j.join("")}function a(){var j="http://opendata.baidu.com/api.php?resource_id="+g+"&query="+encodeURIComponent(f)+"&ie=utf8&oe=gbk&format=json&hilight=list.*.intro,list.*.title,list.*.baike,list.*.more&limit=list.*.title:68,list.*.intro:120,list.*.baike:30&t="+(+new Date());$.ajax({url:j,dataType:"jsonp",timeout:5000,jsonp:"cb",success:function(l){if(i){return}var l=l.data[0].list;c.html("");for(var k=4;k<8;k++){c.get(0).innerHTML+=e(l[k])}}})}this.dispose=function(){if(!i){i=true}}})});';   // js字串，不含<script标签
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
