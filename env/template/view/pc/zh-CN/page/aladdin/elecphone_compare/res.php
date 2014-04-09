<?php 
  class CssJs_Util_elecphone_compare
   {
      private static $cssStr = '.op_elesphone_compare_content{margin-top:-9px;}.op_elesphone_compare_content tr td.op_elesphone_compare_tdwid{width:120px;}.op_elesphone_compare_content tr td.op_elesphone_compare_tdleft{text-align:right;padding-right:10px;}.op_elesphone_compare_content tr td.op_elesphone_compare_tdcenter{text-align:center;width:69px;background:#fafafa;padding-left:0;}.op_elesphone_compare_more{text-align:center;}.op-elesphone_compare-dropdown{text-align:left;width:202px;}.op-elesphone_compare-dropdown li{padding-left:10px;}.op_elesphone_compare_price{color:#ff830f;font-weight:bold;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("elecphone_compare",function(){A.setup(function(){var s=this,k=[],t,t,n,m,v=[],u=[],d=s.find(".op_elesphone_compare_ucontent").get(0),y=s.find(".op_elesphone_compare_ucontent").get(1),c=s.find(".op-elesphone_compare-dropdown").get(0),e=s.find(".op-elesphone_compare-dropdown").get(1),o=s.find(".op_elesphone_compare_price").get(0),p=s.find(".op_elesphone_compare_price").get(1),z=s.find(".op_elesphone_compare_screen").get(0),x=s.find(".op_elesphone_compare_screen").get(1),a=s.find(".op_elesphone_compare_photo").get(0),g=s.find(".op_elesphone_compare_photo").get(1),i=s.find(".op_elesphone_compare_capacity").get(0),h=s.find(".op_elesphone_compare_capacity").get(1),j=s.find(".op_elesphone_compare_battery").get(0),b=s.find(".op_elesphone_compare_battery").get(1),l=s.find(".op_elesphone_compare_rate").get(0),f=s.find(".op_elesphone_compare_rate").get(1),w=s.find(".op_elesphone_compare_morelink").get(0);if(s.data.listLen){n=s.data.typeid1Str}else{n=s.data.typeid1Str1}if(s.data.listLen1){m=s.data.typeid1Str2}else{m=s.data.typeid1Str21}var r=d.getElementsByTagName("li")[0];var q=y.getElementsByTagName("li")[0];o.innerHTML=r.getAttribute("data-price");z.innerHTML=r.getAttribute("data-screen");i.innerHTML=r.getAttribute("data-rom");j.innerHTML=r.getAttribute("data-battery");l.innerHTML=r.getAttribute("data-cpu");p.innerHTML=q.getAttribute("data-price");x.innerHTML=q.getAttribute("data-screen");h.innerHTML=q.getAttribute("data-rom");b.innerHTML=q.getAttribute("data-battery");f.innerHTML=q.getAttribute("data-cpu");w.setAttribute("href","http://detail.zol.com.cn/ProductComp_param_"+n+"-"+m+".html");A.use("dropdown21",function(){t=A.ui.dropdown21(c,{onchange:function(C){var B=t.getIndex(),D=d.getElementsByTagName("li")[B];if(D.getAttribute("data-camera")){a.innerHTML=D.getAttribute("data-camera")}else{a.innerHTML="无"}n=D.getAttribute("data-id");o.innerHTML=D.getAttribute("data-price");z.innerHTML=D.getAttribute("data-screen");i.innerHTML=D.getAttribute("data-rom");j.innerHTML=D.getAttribute("data-battery");l.innerHTML=D.getAttribute("data-cpu");w.setAttribute("href","http://detail.zol.com.cn/ProductComp_param_"+n+"-"+m+".html")},type:"custom",width:202})});A.use("dropdown21",function(){dropdown1=A.ui.dropdown21(e,{onchange:function(C){var B=dropdown1.getIndex(),D=y.getElementsByTagName("li")[B];m=D.getAttribute("data-id");if(D.getAttribute("data-camera")){g.innerHTML=D.getAttribute("data-camera")}else{g.innerHTML="无"}p.innerHTML=D.getAttribute("data-price");x.innerHTML=D.getAttribute("data-screen");h.innerHTML=D.getAttribute("data-rom");b.innerHTML=D.getAttribute("data-battery");f.innerHTML=D.getAttribute("data-cpu");w.setAttribute("href","http://detail.zol.com.cn/ProductComp_param_"+n+"-"+m+".html")},type:"custom",width:202})});this.dispose=function(){t&&t.dispose&&t.dispose();dropdown1&&dropdown1.dispose&&dropdown1.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'table,btn,dropdown2,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
