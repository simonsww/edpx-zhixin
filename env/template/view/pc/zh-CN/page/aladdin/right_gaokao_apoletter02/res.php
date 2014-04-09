<?php 
  class CssJs_Util_right_gaokao_apoletter02
   {
      private static $cssStr = '.opr_rightgkle02_abstract{position:relative;}.container_l .opr_rightgkle02_wra{width:450px;height:550px;background:url(http://www.baidu.com/aladdin/img/right_gaokao/right_gkal02_bg_l.png) no-repeat;position:relative;}.container_s .opr_rightgkle02_wra{width:280px;height:340px;background:url(http://www.baidu.com/aladdin/img/right_gaokao/right_gkal02_bg_s.png) no-repeat;position:relative;}.container_l .opr_rightgkle02_btn{width:121px;height:42px;background:url(http://www.baidu.com/aladdin/img/right_gaokao/right_gkal_bg_ls.png) no-repeat 0 -94px;border:none;position:absolute;left:90px;bottom:120px;display:block;cursor:pointer;}.container_s .opr_rightgkle02_btn{width:86px;height:30px;background:url(http://www.baidu.com/aladdin/img/right_gaokao/right_gkal_bg_ls.png) no-repeat 0 -151px;border:none;position:absolute;left:55px;bottom:59px;display:block;cursor:pointer;}.opr_rightgkle02_float{display:none;}.container_l .opr_rightgkle02_float{width:200px;height:38px;border:1px solid #c7c7c7;background:url(http://www.baidu.com/aladdin/img/right_gaokao/right_gkal_bg_ls.png) repeat-x -219px -191px #fafafa;position:absolute;left:48px;top:438px;}.container_s .opr_rightgkle02_float{width:200px;height:38px;border:1px solid #c7c7c7;background:url(http://www.baidu.com/aladdin/img/right_gaokao/right_gkal_bg_ls.png) repeat-x -219px -191px #fafafa;position:absolute;left:-2px;top:290px;}.container_l .opr_rightgkle02_float_top{width:13px;height:9px;display:block;background:url(http://www.baidu.com/aladdin/img/right_gaokao/right_gkal_bg_ls.png) no-repeat 0 -239px;position:absolute;top:-8px;left:95px;}.container_s .opr_rightgkle02_float_top{width:13px;height:9px;display:block;background:url(http://www.baidu.com/aladdin/img/right_gaokao/right_gkal_bg_ls.png) no-repeat 0 -239px;position:absolute;top:-8px;left:95px;}div.opr_rightgkle02_bdshare{margin:6px 8px;overflow:hidden;*display:inline;}#bdshare_l_c{display:none;}.opr_rightgkle_abstract{position:relative;}.container_l .opr_rightgkle_wra{width:450px;height:662px;background:url(http://www.baidu.com/aladdin/img/right_gaokao/right_gkal_bg_l.png) no-repeat;position:relative;}.container_s .opr_rightgkle_wra{width:280px;height:475px;background:url(http://www.baidu.com/aladdin/img/right_gaokao/right_gkal_bg_s.png) no-repeat;position:relative;}.container_l .opr_rightgkle_txt1{width:88px;height:20px;line-height:20px;position:absolute;left:124px;top:230px;border:none;}.container_s .opr_rightgkle_txt1{width:54px;height:12px;line-height:12px;position:absolute;left:84px;top:142px;border:none;}.container_l .opr_rightgkle_submit{width:220px;height:42px;background:url(http://www.baidu.com/aladdin/img/right_gaokao/right_gkal_bg_ls.png) no-repeat 0 0;border:none;position:absolute;left:121px;bottom:49px;cursor:pointer;}.container_s .opr_rightgkle_submit{width:164px;height:32px;background:url(http://www.baidu.com/aladdin/img/right_gaokao/right_gkal_bg_ls.png) no-repeat 0 -52px;border:none;position:absolute;left:63px;bottom:25px;cursor:pointer;}.opr_rightgkle_float{display:none;}.container_l .opr_rightgkle_float{width:200px;height:38px;border:1px solid #c7c7c7;background:url(http://www.baidu.com/aladdin/img/right_gaokao/right_gkal_bg_ls.png) repeat-x -219px -191px #fafafa;position:absolute;left:130px;top:620px;}.container_s .opr_rightgkle_float{width:200px;height:38px;border:1px solid #c7c7c7;background:url(http://www.baidu.com/aladdin/img/right_gaokao/right_gkal_bg_ls.png) repeat-x -219px -191px #fafafa;position:absolute;left:45px;top:458px;}.container_l .opr_rightgkle_float_top{width:13px;height:9px;display:block;background:url(http://www.baidu.com/aladdin/img/right_gaokao/right_gkal_bg_ls.png) no-repeat 0 -239px;position:absolute;top:-8px;left:95px;}.container_s .opr_rightgkle_float_top{width:13px;height:9px;display:block;background:url(http://www.baidu.com/aladdin/img/right_gaokao/right_gkal_bg_ls.png) no-repeat 0 -239px;position:absolute;top:-8px;left:95px;}div.opr_rightgkle_bdshare{margin:6px 8px;*display:inline;}#bdshare_l_c{display:none;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_gaokao_apoletter02",function(){A.setup(function(){var d=this;var a=d.find(".opr_rightgkle02_btn")[0];var b=d.find(".opr_rightgkle02_float")[0];var c=null;a.onclick=a.onmouseover=b.onmouseover=function(){if(c){clearInterval(c)}c=setTimeout(function(){b.style.display="block"},300)};a.onmouseout=b.onmouseout=function(){if(c){clearInterval(c)}c=setTimeout(function(){b.style.display="none"},300)};this.dispose=function(){clearTimeout(c)}})});A.merge("right_gaokao_apoletter02",function(){A.setup(function(){var b=A.baidu,e=this;var a=e.find(".opr_rightgkle_submit")[0];var c=e.find(".opr_rightgkle_float")[0];var d=null;a.onclick=a.onmouseover=c.onmouseover=function(){if(d){clearInterval(d)}d=setTimeout(function(){c.style.display="block"},300)};a.onmouseout=c.onmouseout=function(){if(d){clearInterval(d)}d=setTimeout(function(){c.style.display="none"},300)};this.dispose=function(){clearTimeout(d)}})});';   // js字串，不含<script标签
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
