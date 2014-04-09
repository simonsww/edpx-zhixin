<?php 
  class CssJs_Util_pet_sort
   {
      private static $cssStr = '.op-pet-sort-title-desc{font-weight:normal;font-size:.87em;font-size:13px\\9;}.op-pet-sort-recommand{border-top:1px solid #ebebeb;padding-top:5px;}.op-pet-sort-name{display:block;padding:15px 0;position:relative;}.op-pet-sort-name span{display:block;position:absolute;width:120%;left:-10%;top:5px;text-align:center;}.op-pet-sort-name a{text-decoration:none;}.op-pet-sort-name a:hover{text-decoration:underline;}.op-pet-sort-pager{padding:5px 0;}.op-pet-sort-result{padding-top:5px;}.op-pet-sort-suffix{display:block;position:absolute;top:0;left:0;width:20px;height:27px;color:#fff;font-size:.92em;font-size:12px\\9;text-align:center;white-space:nowrap;text-decoration:none;}.op-pet-sort-suffix1 .op-pet-sort-suffix-bg{border-color:#f8433f transparent transparent #f8433f;}.op-pet-sort-suffix2 .op-pet-sort-suffix-bg{border-color:#ff8138 transparent transparent #ff8138;}.op-pet-sort-suffix3 .op-pet-sort-suffix-bg{border-color:#ffad23 transparent transparent #ffad23;}.op-pet-sort-suffix-bg{position:absolute;top:0;left:0;display:block;width:0;height:0;overflow:hidden;border-width:14px;border-width:15px\\9;border-style:solid dashed dashed solid;border-color:#39f transparent transparent #39f;}.op-pet-sort-suffix-index{position:relative;z-index:1;margin-left:-2px;text-decoration:none;}.op-pet-sort-list li{position:relative;}.op-pet-sort-list img{height:121px;}.op-pet-sort-list a{text-decoration:none;}.op-pet-sort-title{font-size:1.17em;margin:0;padding:0;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("pet_sort",function(){A.setup(function(){var p=this,o=p.data,c=o.length,r=o.pageNumber,e=o.query,g=o.srcid,j=$(".op-pet-sort-tabcon"),a=$(".op-pet-sort-pager"),m=$(".op-pet-sort-result"),i=$(document),q=$(".op-pet-sort-list"),k,d,h=0,b,n,f,s,l;d=function(){var t=m.offset().top;k&&k.dispose&&k.dispose();if(c<=r){a.hide();return}a.show();A.use("page",function(){k=A.ui.page(a.get(0),1,Math.ceil(c/r),{onChange:function(v,u){if(i.scrollTop()>t){i.scrollTop(t)}l(v-1,n)}})})};f=function(t){return"/s?wd="+t+"&rsv_dl=0_left_pet_sort_"+g};n=function(u,t){q.html($.map(u,function(w,x){return $.format(\'<li class="c-span6 c-gap-top-small #{last}">                <a href="#{url}" title="#{title}" target="_blank"><img class="c-img c-img6" src="#{img}" /><span class="op-pet-sort-suffix op-pet-sort-suffix#{suffix}"><span class="op-pet-sort-suffix-index">#{suffix}</span><span class="op-pet-sort-suffix-bg"></span></span></a>				<span class="op-pet-sort-name"><span><a href="#{url}" title="#{title}" target="_blank">#{name}</a></span></span>                </li>\',{last:(x+1)%4==0?"c-span-last":"",url:f(w.word),img:w.img,name:$.subByte(w.name,20),title:w.name,suffix:(t*r+x+1)})}).join(""))};l=function(u,v){var t=function(){c=s.tab[h]["pet"].length;v&&v(s.tab[h]["pet"].slice(u*r,(u+1)*r),u)};if(!s){p.ajax(e,g,{success:function(w){if(s){return}s=w[0];if(!s.tab[0]){s.tab=[s.tab]}t()},error:function(){}})}else{t()}};if(j.size()){A.use("tabs5",function(){var t;t=function(u){h=u;l(0,function(v){d();n(v,0)})};b=A.ui.tabs5(j.get(0),{onChange:t})})}d();this.dispose=function(){k&&k.dispose&&k.dispose();b&&b.dispose&&b.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'tabs';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
