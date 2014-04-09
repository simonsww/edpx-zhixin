<?php 
  class CssJs_Util_exactqa_family
   {
      private static $cssStr = '.op_exactqa_family_main a,.op_exactqa_family_tools a{text-decoration:none;}.op_exactqa_family_main a:hover,.op_exactqa_family_tools a:hover{text-decoration:underline;}.op_exactqa_family_tools{color:#999;font-size:.92em;text-align:right;margin:-15px 0 -3px 0;}.op_exactqa_family_tools a{color:#999;}.op_exactqa_family_tools_sep{color:#ccc;margin:0 8px;}.op_exactqa_family_s_item{overflow:auto;}.op_exactqa_family_s_area{padding-bottom:20px;}.op_exactqa_family_s_prop{font-size:1.07em;font-weight:bold;color:#999;}.op_exactqa_family_s_prop a,.op_exactqa_family_s_prop a:hover{color:#999;}.op_exactqa_family_s_answer{font-family:"Microsoft YaHei",SimHei;font-size:1.69em;}.op_exactqa_family_s_answer_more{white-space:nowrap;}.op_exactqa_family_s_abstract_more{font-family:SimSun;white-space:nowrap;color:#00c;}.op_exactqa_family_s_abstract_more a{color:#00c;}.op_exactqa_family_process_ext{border-top:1px solid #f0f0f0;}.op_exactqa_family_process_ext_title{color:#666;font-weight:bold;}.op_exactqa_family_process_family{position:relative;}.op_exactqa_family_process_canvas_text{position:absolute;z-index:10;text-align:center;text-decoration:none;display:block;}.op_exactqa_family_process_ext_body ul{*display:inline-block;}.op_exactqa_family_process_ext_text li{padding-left:20px;}.op_exactqa_family_process_ext_text .op_exactqa_family_process_ext_icon{background:url(http://www.baidu.com/aladdin/img/exactqa/exactqa_process_icon.png) -175px -14px no-repeat;}.op_exactqa_family_process_ext_text .op_exactqa_family_process_ext_firsticon{background:url(http://www.baidu.com/aladdin/img/exactqa/exactqa_process_icon.png) -197px 6px no-repeat;}.op_exactqa_family_process_ext_text a{color:#333;text-decoration:none;}.op_exactqa_family_process_ext_text a:hover{text-decoration:underline;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("exactqa_family",function(){A.setup(function(){var a=this;var e=a.find(".op_exactqa_family_process_family")[0],b=a.find(".op_exactqa_family_process_canvas")[0];a.find(".op_exactqa_family_tools_fb").on("click",function(){$(this).replaceWith("<span>感谢反馈</span>")});var c=!!document.createElement("canvas").getContext;if(!c&&b){A.use("canvas",function(){A.ui.canvas.init(b);d()})}else{if(b){d()}}function d(){var u=b.getContext("2d");var o=a.data.EndParams,s=Number(a.data.FamilyTree_TEXT_H),m=Number(a.data.FamilyTree_LINE_H),t=Number(a.data.FamilyTreeLevelMax),q=$.parseJSON(a.data.FamilyTree),h=60,l=70,g=300;var f={line:function(y,x,w,v,i){u.beginPath();u.strokeStyle=i||"#ccc";u.lineWidth=2;u.lineCap="round";u.moveTo(y,x);u.lineTo(w,v);u.stroke()},text:function(C,v,E,w,i){var z=document.createElement("a");var D=document.createTextNode(C);z.appendChild(D);z.href="http://www.baidu.com/s?wd="+C+o;z.target="_blank";z.className="op_exactqa_family_process_canvas_text";z.style.color=w||"#333";z.style.top=E+"px";e.appendChild(z);var B=z.offsetWidth;z.style.left=v-B/2+"px";if(i){f.line(v-B/2,E+s-2,v+B/2,E+s-2,i)}},family:function(v,D,E,w,C){var B=D.length;var x=(s+m)*(t-v);for(var y=0;y<B;y++){var z=E+(2*y+1-B)*h/2;f.text(D[y],z,x,w,C);if(v!=t){f.line(z,x,z,x-m/2);if(B>1&&y!=B-1){f.line(z,x-m/2,z+h,x-m/2)}}}if(v==t){f.line(E,s,E,s+m/2);if(E!=l){f.line(l,s+m/2,g,s+m/2)}}else{if(v+1!=t){f.line(E,x-m/2,E,x-m)}}}};var r=l;for(var j=0;j<q.length;j++){var k="#333",p=undefined,n=q[j];n.level=Number(n.level);if((r==l&&n.level<t)||(n.level==t&&(j==0||j==q.length-1))){r=l}else{if(n.level==t&&j+1!=q.length){r=(l+g)/2}else{if(r!=l){r=g}}}if(j==0||j+1==q.length){k="#000"}if(j==0){p="#f54545"}else{if(j==q.length-1){p="#389cff"}}f.family(n.level,n.text,r,k,p)}}})});';   // js字串，不含<script标签
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
