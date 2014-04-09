<?php 
  class CssJs_Util_guoqing2013
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("guoqing2013",function(){A.setup(function(){var _this=this,tabLi=_this.find(".op_guoqing_tab")[0].getElementsByTagName("li"),tabContent=_this.find(".op_guoqing_content").get(),activeTab=tabLi[0],activeCont=tabContent[0],tab2Str=[],tab2Con=[],tab2=eval(_this.data.tab2),tab3=eval(_this.data.tab3),ul2=_this.find(".op_guoqing_ul2")[0],ul3=_this.find(".op_guoqing_ul3")[0],tabmodle=_this.find(".op_guoqing_tabmodle").get(),tips=_this.find(".op_guoqing_tips").get();$(tabLi).each(function(index,obj){$(obj).click(function(){$(activeTab).removeClass("op_guoqing_active");activeTab.style.borderRightColor="#e9e9e9";activeTab=obj;$(activeTab).addClass("op_guoqing_active");activeCont.style.display="none";activeCont=tabContent[index];activeCont.style.display="block";if(index==1){ul2.innerHTML=tabContentDom(tab2).join("")}if(index==2){ul3.innerHTML=tabContentDom(tab3).join("");activeTab.style.borderRightColor="#408eff"}})});function singleDom(obj,n){var starAge=obj.age?"<span>"+obj.age+"</span>":\'<i class="c-icon c-icon-star-gray"><i class="c-icon c-icon-star" style="width:\'+obj.star+\'%"></i></i>\';var spanLast=n?\'<li class="c-span6 c-span-last c-gap-top">\':\'<li class="c-span6 c-gap-top">\';tab2Str=[spanLast+\'<div class="op_guoqing_border">\',\'<div class="op_guoqing_img"><a href="\'+obj.hrefurl+\'" target="_blank"><img class="c-img c-img6" src="\'+obj.imgurl+\'" /></a></div>\',\'<div class="op_guoqing_data">\',\'<a href="\'+obj.hrefurl+\'" target="_blank">\'+obj.title+"</a>",\'<div class="op_guoqing_star">\',\'<i class="op_guoqing_starnum">\'+obj.starnum+"</i>",starAge,"</div></div></div></li>"];return tab2Str}function tabContentDom(obj){tab2Con.length=0;for(var i=0;i<obj.length;i++){var singleDomStr=(i==3||i==7)?singleDom(obj[i],1).join(""):singleDom(obj[i]).join("");tab2Con.push(singleDomStr)}return tab2Con}})});';   // js字串，不含<script标签
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
