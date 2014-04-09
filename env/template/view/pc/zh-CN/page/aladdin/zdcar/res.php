<?php 
  class CssJs_Util_zdcar
   {
      private static $cssStr = '.op_zdcar_container a{text-decoration:none;}.op_zdcar_container a:hover{text-decoration:underline;}.op_zdcar_container td{font-size:13px;}.op_zdcar_container .c-tabs-nav-li{padding-left:9px;padding-right:9px;*padding-left:7px;*padding-right:7px;}.op_zdcar_tab_content li{padding:7px 0;border-bottom:1px solid #f3f3f3;}.op_zdcar_item_title_container{cursor:pointer;}.op_zdcar_current_item .op_zdcar_item_title_container{cursor:default;}.op_zdcar_item_title{color:#0000cb;_padding-top:2px;}.op_zdcar_item_title i{font-style:normal;display:inline-block;width:14px;height:14px;font-size:12px;color:#fff;background:#2c99ff;line-height:14px;text-align:center;position:relative;bottom:1px;}.op_zdcar_item_title a{display:none;font-weight:bold;}.op_zdcar_gray{color:#666;}.op_zdcar_hilight{color:#c00;}.op_zdcar_hilight_black{color:#000;}.op_zdcar_hilight_green{color:#007f00;}.op_zdcar_bold{font-weight:bold;}.op_zdcar_item_price{position:relative;font-size:14px;color:#ff8a00;}.op_zdcar_container .c-icon-chevron-bottom{position:absolute;top:3px;right:8px;}.op_zdcar_current_item .op_zdcar_item_title span,.op_zdcar_current_item .op_zdcar_item_comment,.op_zdcar_current_item .op_zdcar_item_price,.op_zdcar_current_item .c-icon-chevron-bottom{display:none;}.op_zdcar_current_item .op_zdcar_item_title a{display:inline;}.op_zdcar_item_content{display:none;}.op_zdcar_current_item .op_zdcar_item_content{display:block;}.op_zdcar_owner_comment{vertical-align:top;width:60px;}.op_zdcar_grade{font-size:14px;color:#ff8a00;}.op_zdcar_price{font-size:14px;float:right;margin:0 40px 0 0;}.op_zdcar_price span{font-size:16px;color:#ff8a00;}.op_zdcar_margintopn2{margin-top:-2px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zdcar",function(){A.setup(function(){var d=this;var b={};var c=function(e,g){var h=[];$.each(g[0].car,function(k,j){h.push(["<li",k===0?\' class="op_zdcar_current_item"\':"",">"].join(""));h.push([\'<div class="c-row op_zdcar_item_title_container OP_LOG_BTN"><div class="c-span6 op_zdcar_item_title"><i class="c-gap-right">\',k+1,"</i><span>",j.carTitle,\'</span><a target="_blank" href="\',j.iconlinkUrl,\'">\',j.carTitle,"</a></div>"].join(""));h.push(\'<div class="c-span11 op_zdcar_item_comment op_zdcar_gray">\');if(j.grade){h.push([\'<span class="c-icon c-icon-star-gray c-gap-right-small"><span class="c-icon c-icon-star" style="width:\',j.grade*100/5,\'%"></span></span>\',j.grade].join(""))}else{if(j.averageOilNumber){h.push([j.averageOil,\'<span class="op_zdcar_hilight_black op_zdcar_bold">\',j.averageOilNumber,"</span>",j.averageOilUnit].join(""))}else{if(j.percent){h.push([\'<span class="op_zdcar_hilight_black">\',j.percent,"</span>&nbsp;",j.percentTxt].join(""))}}}h.push([\'<span class="c-gap-left-small">\',j.totalOpinion,"</span></div>"].join(""));h.push([\'<div class="c-span7 c-span-last op_zdcar_item_price">\',j.closePriceValue,j.unit,\'<i class="c-icon c-icon-chevron-bottom"></i></div>\'].join(""));h.push([\'</div><div class="c-row c-gap-top-small op_zdcar_item_content">\'].join(""));h.push([\'<div class="c-span6"><a target="_blank" href="\',j.iconlinkUrl,\'"><img class="c-img c-img6" src="\',j.iconaddress,\'"></a></div><div class="c-span18 c-span-last">\'].join(""));h.push(\'<div class="c-clearfix op_zdcar_margintopn2"><div style="float:left;">\');if(j.grade){h.push([\'<span class="c-icon c-icon-star-gray c-gap-right-small"><span class="c-icon c-icon-star" style="width:\',j.grade*100/5,\'%"></span></span><span class="op_zdcar_grade">\',j.grade,"</span>"].join(""))}else{if(j.averageOilNumber){h.push([j.averageOil,\'<span class="op_zdcar_hilight_black op_zdcar_bold">\',j.averageOilNumber,"</span>",j.averageOilUnit].join(""))}else{if(j.percent){h.push([\'<span class="op_zdcar_hilight_black">\',j.percent,"</span>&nbsp;",j.percentTxt].join(""))}}}h.push(\'</div><div class="op_zdcar_price op_zdcar_bold op_zdcar_margintopn2">\',j.closePrice,"<span>",j.closePriceValue,j.unit,"</span></div>");h.push("</div>");(j.advantageTxt||j.disadvantageTxt)&&h.push([\'<table class="c-gap-top-small c-gap-bottom-small" cellpadding="0" cellspacing="0" width="100%"><tr><td class="op_zdcar_bold op_zdcar_owner_comment">\',j.ownerNumber,\'</td><td><p><span class="op_zdcar_hilight_green">\',j.advantage,"</span>",j.advantageTxt,\'</p><p><span class="op_zdcar_hilight">\',j.disadvantage,"</span>",j.disadvantageTxt,"</p></td></tr></table>"].join(""));j.goodOpinionTxt&&h.push(["<p>",j.goodOpinion,\'<a class="op_zdcar_gray" target="_blank" href="\',j.goodOpinionLinkUrl,\'">\',j.goodOpinionTxt,"</a></p>"].join(""));j.badOpinionTxt&&h.push(["<p>",j.badOpinion,\'<a class="op_zdcar_gray" target="_blank" href="\',j.badOpinionLinkUrl,\'">\',j.badOpinionTxt,"</a></p>"].join(""));j.allOpinionLinkUrl&&j.allOpinionLinkName&&h.push([\'<p><a target="_blank" href="\',j.allOpinionLinkUrl,\'">\',j.allOpinionLinkName,"&gt;&gt;</a></p>"].join(""));h.push(["</div></div></li>"].join(""))});var f=d.find(".op_zdcar_tabs_content_"+e).first().find("ul.op_zdcar_tab_content").eq(0);f.html(h.join(""));f.find("li").click(function(){if(!$(this).hasClass("op_zdcar_current_item")){f.find("li.op_zdcar_current_item").eq(0).removeClass("op_zdcar_current_item");$(this).addClass("op_zdcar_current_item")}})};var a=function(e){if(b[e]){return}d.ajax(d.data.query,d.srcid,{co:"car[id="+e+"]",success:function(f){b[e]=true;c(e,f)}})};a(d.data.curtab);d.data.counttab>1&&A.use("tabs5",function(){A.ui.tabs5(d.find(".c-tabs").get(0),{toggleSep:true,onChange:function(e,f){a(f.getAttribute("data-rtid"))}})})})});';   // js字串，不含<script标签
      private static $uiList = 'tabs,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
