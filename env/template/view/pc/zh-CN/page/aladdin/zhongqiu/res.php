<?php 
  class CssJs_Util_zhongqiu
   {
      private static $cssStr = '.op_zhongqiu_bg{background:#eeedff;width:538px;height:412px;padding:2px;}.op_zhongqiu{background:url(\'http://www.baidu.com/aladdin/img/zhongqiujie/zq_bg2.jpg\') no-repeat right 0;padding:25px 0 0 9px;width:527px;height:385px;box-shadow:none;border:1px solid #eabafd;}.op_zhongqiu_padding{padding:0 9px 0 0;}.op_zhongqiu_des{padding-top:10px;line-height:22px;}.op_zhongqiu_gonglue{padding:0 3px;display:inline-block;background:#ffb54b;color:#fff;font-size:12px;margin-right:5px;line-height:18px;}.op_zhongqiu_des a{margin-right:10px;}.op_zhongqiu_tabcontainer{overflow:hidden;padding:10px 9px 0 0;}.op_zhongqiu_tab{overflow:hidden;}.op_zhongqiu_tab li{width:114px;height:26px;border:1px solid #e4e1f3;background-color:#f9f5fe;float:left;line-height:26px;cursor:pointer;padding-left:30px;}li.op_zhongqiu_tabactive{background-color:#b495f1;text-shadow:-1px 1px 0 #7c63fb;border:1px solid #9f8dff;color:#fff;font-weight:bold;}.op_zhongqiu_tab1,.op_zhongqiu_tab2{display:inline-block;background-image:url(\'http://www.baidu.com/aladdin/img/zhongqiujie/zq_tabico.gif\');background-position:0 -145px;background-repeat:no-repeat;padding-left:21px;}.op_zhongqiu_tab2{background-position:0 -20px;}li.op_zhongqiu_tabactive .op_zhongqiu_tab1{background-position:0 5px;}li.op_zhongqiu_tabactive .op_zhongqiu_tab2{background-position:0 -168px;}.op_zhongqiu_content{clear:both;}.op_zhongqiu_liwu{padding-top:10px;_padding-top:2px;}.op_zhongqiu_content li{margin-top:8px;clear:both;overflow:hidden;}.op_zhongqiu_content p{padding-left:15px;padding-left:26px\\9;margin-top:5px;}.op_zhongqiu_iconum{width:14px;height:14px;text-align:center;line-height:14px;display:inline-block;color:#b495f1;font-weight:bold;}.op_zhongqiu_liwu .op_zhongqiu_iconum{width:4px;height:4px;overflow:hidden;background:#b495f1;position:relative;top:-2px;top:10px\\9;left:4px;}.op_zhongqiu_icoleft{width:13px;float:left;}.op_zhongqiu_icoright{width:490px;float:left;padding-left:8px;}.op_zhongqiu_icoright a{margin-right:14px;padding:0 5px 0 14px;}.op_zhongqiu_liwu .op_zhongqiu_icoright a{padding:0 12px 0 0;margin-right:0;}.op_zhongqiu_margintop a{padding:0 5px;}.op_zhongqiu_hot{width:14px;height:14px;background:red;color:#fff;display:inline-block;line-height:14px;text-align:center;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zhongqiu",function(){A.setup(function(){var c=this,a=c.find(".op_zhongqiu_tab li"),b=c.find(".op_zhongqiu_content");a.click(function(){$(this).addClass("op_zhongqiu_tabactive").siblings("li").removeClass("op_zhongqiu_tabactive");var d=a.index(this);b.eq(d).show().siblings(".op_zhongqiu_content").hide()})})});';   // js字串，不含<script标签
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
