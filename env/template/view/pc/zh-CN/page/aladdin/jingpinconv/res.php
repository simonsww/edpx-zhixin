<?php 
  class CssJs_Util_jingpinconv
   {
      private static $cssStr = '.op-jingpinconv-dropdown-outer{float:left;}.op-jingpinconv-switch-btn-container .op-jingpinconv-switch-btn-active{border:1px solid #388bff;}.op-jingpinconv-switch-btn-container .op-jingpinconv-switch-btn-active:hover{border:1px solid #388bff;}.op-jingpinconv-switch-btn-container .op-jingpinconv-switch-btn-active:active{border:1px solid #388bff;}.op-jingpinconv-subtitle{font-family:微软雅黑;font-size:15px;font-weight:bold;}.op-jingpinconv-tip{color:#999;}.op-jingpinconv-bra-container .op-jingpinconv-dropdown-outer{width:140px;}.op-jingpinconv-shoes-container .op-jingpinconv-dropdown-outer{width:110px;}.op-jingpinconv-shoes-container .op-jingpinconv-dropdown-long-outer{width:120px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("jingpinconv",function(){A.setup(function(){var d=this,c=d.data.data;function a(e){this.data=e.data;this.maps=[];if(this.data&&this.data.mapping&&this.data.mapping.map){this.maps=this.data.mapping.map}if(!this.maps.length){return}this.selectData=this.data.select;this.category=this.data.info.category;this.dropdownui={};this.init()}a.prototype={init:function(){this.initData();this.initDropdown();this.specialProcess()},initData:function(){this.excludeExp=/type|selected/;this.$con=d.find(".op-jingpinconv-"+this.data.info.category+"-container");this.$img=this.$con.find(".op-jingpincon-img");this.$dropdowns=this.$con.find(".op-jingpinconv-dropdown");if(this.category==="shoes"){this.currentType=this.$con.find(".op-jingpinconv-switch-btn-active").attr("data-value")}},initDropdown:function(){var e=this;A.use("dropdown21",function(){e.$dropdowns.each(function(g,h){var f=$(h).attr("data-key");e.dropdownui[f]=A.ui.dropdown21(h,{onchange:function(){var j={k:f,v:e.dropdownui[f].getValue()};var i=e.getMap(j);e.doMap(i)}})});e.initDefault()})},initDefault:function(){var e=this;var f=null;$.each(e.maps,function(g,h){if(!!h.selected){f=h;return false}});var f=f?f:e.maps[0];e.doMap(f)},doMap:function(f){var e=this;if(!f){return}$.each(f,function(h,g){if(!e.excludeExp.test(h)){e.dropdownui[h].setValue(g)}})},getMap:function(j){var g=this;var k=null;var h={upper:"under",under:"upper"};var i=h[j.k];var f=false;var e=null;$.each(g.maps,function(l,m){f=false;if(g.category==="shoes"){f=(m[j.k]===j.v&&m.type===g.currentType)?true:false}if(g.category==="bra"){if(i){if(m[j.k]===j.v){if(!e){e=m}if(m[i]&&g.dropdownui[i]&&m[i]===g.dropdownui[i].getValue()){f=true}}}else{f=(m[j.k]===j.v)?true:false}}if(f){k=m;return false}});if(g.category==="bra"&&i&&!f&&e){f=true;k=e}return k},specialProcess:function(){var e=this;if(e.category==="shoes"){e.$btns=e.$con.find(".op-jingpinconv-switch-btn");e.$btns.click(function(){e.$btns.removeClass("op-jingpinconv-switch-btn-active");var f=$(this);e.currentType=f.addClass("op-jingpinconv-switch-btn-active").attr("data-value");e.$img.attr("src",f.attr("data-img-url"));e.resetDropdown({k:"type",v:e.currentType})})}},resetDropdown:function(h){var g=this;var e=g.filterData(h);$.each(g.dropdownui,function(j,l){l.removeAll().add(e[j])});var f=g.$dropdowns.eq(0).attr("data-key");var i=g.dropdownui[f];var h={k:f,v:i.getValue()};g.doMap(g.getMap(h))},filterData:function(g){var f=this;var e={};$.each(f.selectData,function(h,i){e[h]=[];$.each(f.selectData[h].o,function(k,p){var j=p.split("|");var n=j[0];var m=j[1];var l=j[2];if(l===g.v){e[h].push({text:n,value:m})}})});return e},getDropdownui:function(){return this.dropdownui}};if(!c||!c.length){return}var b=[];$.each(c,function(e,f){b.push(new a({data:f}))});d.dispose=function(){$.each(b,function(e,g){var f=g.getDropdownui();$.each(f,function(h,i){i&&i.dispose&&i.dispose()})})}})});';   // js字串，不含<script标签
      private static $uiList = 'btn,dropdown2';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
