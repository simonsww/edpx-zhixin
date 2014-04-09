<?php 
  class CssJs_Util_trust_info
   {
      private static $cssStr = '.op_trustInfo_margin{margin-top:-10px;}td.op_trustInfo_tdLeft{color:#666;padding-left:0;width:177px;text-align:right;padding-top:3px;padding-bottom:3px;}td.op_trustInfo_tdRight{width:322px;padding-left:6px;-padding-right:17px;padding-top:3px;color:#000;}.op_trustInfo_foot{text-align:right;font-size:.9em;clear:both;margin-bottom:-3px;margin-top:5px;}.op_trustInfo_foot span{color:#ccc;margin:0 8px;}.op_trustInfo_foot{color:#999;}.op_trustInfo_foot a{text-decoration:none;color:#999;}.op_trustInfo_foot a.op_trustInfo_color{color:#0100ce;}.op_trustInfo_foot a:hover{text-decoration:underline;}.op_trustInfo_cont{margin:-7px 9px 0;}.op_trustInfo_contSec{margin:-7px 0 0;}.op_trustInfo_btn_list{position:relative;}.op_trustInfo_btn_list i{position:absolute;right:11px;top:11px;}.op_trust_infoSec{margin-left:9px;margin-right:9px;}.op_trustInfo_item .op_trust_infoSec{display:none;}li.op_trust_infoActive .op_trust_infoSec{display:block;}td.op_trust_info_name{color:#00c;padding-left:0;}.opui-page{font-size:.92em;line-height:1.6;color:#00c;text-align:center;}.opui-page-number,.opui-page-pre,.opui-page-next{border:1px solid #e7ecf0;font-weight:normal;cursor:pointer;margin:0 2px;padding:0 5px;display:inline-block;}.opui-page-number:hover,.opui-page-pre:hover,.opui-page-next:hover{border:1px solid #5a9ff1;}.opui-page-number-now{color:#000;font-weight:bold;margin:0 8px;display:inline-block;*border:1px solid #fff;}.opui-page-more{color:#000;}.op_trustInfo_tp{height:18px;line-height:18px;padding-left:14px;color:#c00;margin-top:6px;margin-bottom:6px;}.op_trustInfo_tpCont{background:#f5f5f5;height:30px;overflow:hidden;}.op_trustInfo_tp i{margin-right:9px;}.op_trustInfo_page_number:hover,.op_trustInfo_page_pre:hover,.op_trustInfo_page_next:hover{border:1px solid #5a9ff1;}.op_trust_pages{margin-top:13px;margin-bottom:-8px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("trust_info",function(){A.setup(function(){var _this=this,len=_this.data.dataLen;var acou=_this.find(".op_trustInfo_scroll")[0];if($(acou).height()>100){$(acou).height(100)}A.use("scrollbarv",function(){scrollbar=A.ui.scrollbarv({content:acou})});if(len=="1"){return}var $trust_btn=_this.find(".op_trustInfo_btn_list"),$pageArea=_this.find(".op_trust_pages").eq(0),oldEle,$page=_this.find(".op_trust_pages")[0];var pageJson={pageindex:1,nownum:5,resultnum:len};function initPageComp($pageArea){var fn=pageJson;if(fn.resultnum>3){if(fn.resultnum>fn.nownum){$pageArea.css("display","block");var endPage=Math.ceil(fn.resultnum/fn.nownum);A.use("page",function(){A.ui.page($page,1,endPage,{prePageText:"上一页",nextPageText:"下一页",onChange:function(nowPage,endPage){addCnt(nowPage)}})})}else{$pageArea.css("display","none")}}}initPageComp($pageArea);function addCnt(page){var cntHtml="";var dataC=eval("("+_this.data.resultData+")");for(var i=(page-1)*5;i<page*5&&i<pageJson.resultnum;i++){var entity="";var activeClass="";var iconClass="c-icon c-icon-chevron-bottom";if(dataC[i]["businessEntity"]!=""){entity=\'<tr><td class="op_trustInfo_tdLeft">法定代表人或者负责人姓名：</td><td class="op_trustInfo_tdRight">\'+dataC[i]["businessEntity"]+"</td></tr>"}if(i==(page-1)*5){activeClass="op_trust_infoActive";iconClass="c-icon c-icon-chevron-top"}cntHtml+=\'<li class="op_trustInfo_item \'+activeClass+\'"><div class="c-clearfix op_trustInfo_btn_list" style="cursor: default;"><i class="\'+iconClass+\'"></i><table class="c-table"><tr><td class="op_trust_info_name" width="223">\'+dataC[i]["iname"]+\'</td><td width="94">\'+dataC[i]["areaName"]+\'</td><td width="200">\'+dataC[i]["cardNum"]+\'</td></tr></table></div><div class="op_trust_infoSec"><table class="c-table">\'+entity+\'<tr><td class="op_trustInfo_tdLeft">执行法院：</td><td class="op_trustInfo_tdRight">\'+dataC[i]["courtName"]+\'</td></tr><tr><tr><td class="op_trustInfo_tdLeft">省份：</td><td class="op_trustInfo_tdRight">\'+dataC[i]["areaName"]+\'</td></tr><tr><td class="op_trustInfo_tdLeft">案号：</td><td class="op_trustInfo_tdRight">\'+dataC[i]["caseCode"]+\'</td></tr><tr><td class="op_trustInfo_tdLeft">生效法律文书确定的义务：</td><td class="op_trustInfo_tdRight"><div style="position:relative; width:100%; overflow:hidden;"><div class="op_trustInfo_scroll" style="overflow:hidden;"><div style="padding-right:7px;">\'+dataC[i]["duty"]+\'</div></div><div class="op_cjlive_scrollbar op_cjlive_ctrl_scroll" style="position:absolute;right:0;top:0;"></div></div></td></tr><tr><td class="op_trustInfo_tdLeft">被执行人的履行情况：</td><td class="op_trustInfo_tdRight">\'+dataC[i]["performance"]+\'</td></tr><tr><td class="op_trustInfo_tdLeft">失信被执行人行为具体情形：</td><td class="op_trustInfo_tdRight">\'+dataC[i]["disruptTypeName"]+\'</td></tr><tr><td class="op_trustInfo_tdLeft">发布时间：</td><td class="op_trustInfo_tdRight">\'+dataC[i]["publishDate"]+"</td></tr></table></div></li>"}var $appendBox=$(\'<ul class="op_trustInfo_main">\'+cntHtml+"</ul>");$(".op_trustInfo_contSec").html($appendBox)}$(".op_trustInfo_contSec").on("click",".op_trustInfo_item",function(ev){var ev=ev||window.event;var obj=ev.target||ev.srcElement;if(obj.className.indexOf("op_trustInfo_tdLeft")!=-1||obj.className.indexOf("op_trustInfo_tdRight")!=-1||obj.className.indexOf("opui-scroll-slider")!=-1||obj.className.indexOf("op_trustInfo_trusScrcon")!=-1){return}while(!$(obj).hasClass("op_trustInfo_item")){obj=$(obj).parent()}$(obj).toggleClass("op_trust_infoActive").siblings().removeClass("op_trust_infoActive");var $cion=$(obj).find(".c-icon");_this.find(".op_trustInfo_main i").each(function(i,el){if(el!=$cion[0]){el.className="c-icon c-icon-chevron-bottom"}});if($cion.hasClass("c-icon-chevron-bottom")){$cion.removeClass("c-icon-chevron-bottom").addClass("c-icon-chevron-top")}else{$cion.removeClass("c-icon-chevron-top").addClass("c-icon-chevron-bottom")}var acou=$(obj).find(".op_trustInfo_scroll")[0];if($(acou).height()>100){$(acou).height(100);A.use("scrollbarv",function(){scrollbar=A.ui.scrollbarv({content:acou})})}var scrBar=$(obj).find(".opui-scroll-slider")[0];$(acou).bind("click",function(ev){if(ev&&ev.stopPropagation){ev.stopPropagation()}else{window.event.cancelBubble=true}});$(scrBar).bind("click",function(ev){if(ev&&ev.stopPropagation){ev.stopPropagation()}else{window.event.cancelBubble=true}});if(ev&&ev.stopPropagation){ev.stopPropagation()}else{window.event.cancelBubble=true}});this.dispose=function(){scrollbar&&scrollbar.dispose&&scrollbar.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
