<?php 
  class CssJs_Util_dongjingdyj
   {
      private static $cssStr = '.op_dongjingdyj_imgsource{color:#333;}.op_dongjingdyj_img{display:block;zoom:1;position:relative;margin-bottom:4px;text-decoration:none;}.op_dongjingdyj_ico{position:absolute;color:#fff;width:16px;height:32px;line-height:15px;top:0;left:0;text-align:center;font-size:.92em;text-decoration:none;cursor:pointer;background:url(http://www.baidu.com/aladdin/img/chinavoice/sign.png) 0 0 no-repeat;cursor:pointer;}.op_dongjingdyj_ygpico{position:absolute;bottom:0;height:24px;_height:20px;_padding-top:4px;line-height:24px;background:rgba(0,0,0,.6);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=1,startColorstr=#80000000,endColorstr=#80000000);color:#fff;padding-left:.62em;width:93%;cursor:pointer;}.op_dongjingdyj_tip{background:#fcfcfc;text-align:center;cursor:pointer;border-bottom:1px solid #f0f0f0;clear:both;}.op_dongjingdyj_tipbtn{display:inline-block;padding:5px 0;color:#666;cursor:pointer;}.op_dongjingdyj_hidden{display:none;}.op_dongjingdyj_icobottom{margin-left:5px;}.op_dongjingdyj_playico{width:16px;height:16px;display:inline-block;background:url(\'http://www.baidu.com/aladdin/img/dongjingdyj/play.png\') no-repeat;vertical-align:text-bottom;zoom:1;margin-right:5px;}.op_dongjingdyj_title4{font-weight:bold;color:#c29a3b;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("dongjingdyj",function(){A.setup(function(){var _this=this,$tipbtn=_this.find(".op_dongjingdyj_tip"),$icobottom=_this.find(".op_dongjingdyj_icobottom"),tipData=_this.find(".op_dongjingdyj_tipData")[0],tipText=_this.find(".op_dongjingdyj_text")[0],clickStatus=true,sourceData=eval(_this.data.djsource),more=eval(_this.data.more);$tipbtn.click(function(){if(clickStatus){$icobottom.removeClass("c-icon-chevron-bottom");$icobottom.addClass("c-icon-chevron-top");tipText.innerHTML=more[0].hidden;sourceVisi();clickStatus=false}else{$icobottom.addClass("c-icon-chevron-bottom");$icobottom.removeClass("c-icon-chevron-top");$(tipData).addClass("op_dongjingdyj_hidden");tipText.innerHTML=more[0].show;clickStatus=true}});function setString(str,len){if(str.length*2<=len){return str}var strlen=0;var newstr="";for(var i=0;i<str.length;i++){if(str.charCodeAt(i)>128){strlen=strlen+2;if(strlen>len){return newstr.substring(0,newstr.length-1)+"..."}}else{strlen=strlen+1;if(strlen>len){return newstr.substring(0,newstr.length-2)+"..."}}newstr=newstr+str.charAt(i)}return newstr}function sourceDom(obj,index){var sourceDomArray=[\'<div class="c-span6 c-gap-bottom op_dongjingdyj_imgsource\'];index%4==3?sourceDomArray.push(\' c-span-last">\'):sourceDomArray.push(\'">\');sourceDomArray.push(\'<a class="op_dongjingdyj_img" href="\'+obj.href+\'" target="_blank"><img class="c-img c-img6" src="\'+obj.src+\'" />\');if(obj.hjico){sourceDomArray.push(\'<div class="op_dongjingdyj_ico">\'+obj.hjico+"</div>")}if(obj.playico){sourceDomArray.push(\'<div class="op_dongjingdyj_ygpico"><i class="op_dongjingdyj_playico"></i>\'+obj.playico+"</div>")}sourceDomArray.push("</a>");if(obj.title4){sourceDomArray.push(\'<p class="op_dongjingdyj_title4">\'+setString(obj.title4,16)+"</p>")}if(obj.title1){sourceDomArray.push(\'<p><a href="\'+obj.href+\'" target="_blank" title="\'+obj.title1+\'">\'+setString(obj.title1,18)+"</a></p>")}if(obj.title2){sourceDomArray.push("<p>"+setString(obj.title2,17)+"</p>")}if(obj.title3){sourceDomArray.push("<p>"+setString(obj.title3,18)+"</p>")}sourceDomArray.push("</div>");return sourceDomArray.join("")}function sourceVisi(){$(tipData).removeClass("op_dongjingdyj_hidden");tipData.innerHTML="";$(sourceData).each(function(i,o){if(i>3){tipData.innerHTML+=sourceDom(o,i)}})}})});';   // js字串，不含<script标签
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
