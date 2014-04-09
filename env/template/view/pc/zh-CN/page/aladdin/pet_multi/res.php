<?php 
  class CssJs_Util_pet_multi
   {
      private static $cssStr = '.op-pet-multi-title{font-weight:bold;}.op-pet-multi-title-desc{font-weight:normal;font-size:.87em;font-size:13px\\9;}.op-pet-multi-option{cursor:pointer;color:#00c;display:inline-block;margin-right:7px;}.op-pet-multi-option input{position:relative;vertical-align:bottom;vertical-align:middle\\9;_vertical-align:text-bottom;top:-2px\\9;*top:0;}.op-pet-multi-typename{color:#999;}.op-pet-multi-menu{border-bottom:1px solid #ebebeb;}.op-pet-multi-menu p{margin:6px 0;}.op-pet-multi-recommand{border-top:1px solid #ebebeb;padding-top:5px;}.op-pet-multi-name{display:block;padding:15px 0;position:relative;}.op-pet-multi-name span{display:block;position:absolute;width:120%;left:-10%;top:5px;text-align:center;}.op-pet-multi-name a{text-decoration:none;}.op-pet-multi-name a:hover{text-decoration:underline;}.op-pet-mulit-recommand-tip{display:none;position:absolute;width:130px;background:#fff;border:1px solid #e3e3e3;padding:5px 10px;}.op-pet-mulit-recommand-tip span{display:block;}.op-pet-multi-tip-title{margin:0;font-size:1em;}.op-pet-multi-tip-arrow{position:absolute;top:-6px;width:12px;height:12px;overflow:hidden;}.op-pet-multi-tip-arrow span,.op-pet-multi-tip-arrow i{display:block;position:absolute;left:0;top:-4px;width:0;height:0;line-height:0;border:5px dashed transparent;border-bottom:5px solid #fff;}.op-pet-multi-tip-arrow i{border-width:6px;border-bottom-color:#e3e3e3;left:-1px;top:-6px;z-index:-1;}.op-pet-multi-noresult{display:none;padding:210px 0;text-align:center;}.op-pet-multi-result-hide .op-pet-multi-noresult{display:block;}.op-pet-multi-result-hide .op-pet-multi-result{display:none;}.op-pet-multi-title{font-size:1.17em;margin:0;padding:0;}.op-pet-multi-for-log{display:none;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("pet_multi",function(){A.setup(function(){var t=this,x=t.find(".op-pet-multi-result"),e=t.find(".op-pet-multi-result-box"),g=t.find(".op-pet-multi-menu"),b=g.find("p"),c=g.find("input"),y=t.find(".op-pet-mulit-recommand-tip"),l=t.find(".op-pet-multi-option"),n=t.find(".op-pet-multi-page"),v=t.find(".op-pet-mulit-list"),k=$(document),d="op-pet-multi-result-hide",j=t.data.srcid,f=t.data.query,u=window.navigator.userAgent.search(/MSIE 6/i)>-1,i=false,r=t.data.dataNum,z=t.data.pageNumber,m="http://opendata.baidu.com/api.php?format=json&ie=utf-8&oe=utf-8&query="+encodeURIComponent(f)+"&resource_id="+j+"&rn="+z+"&from_mid=1&pn=#{pageNum}&#{type}&t=#{t}",s,a,q,w,p,h,o;a=function(){var B=[];b.each(function(D,C){var E=$("input:checked",C),F;F=E.map(function(){return this.value});B.push(C.getAttribute("data-type")+"="+encodeURIComponent(F.toArray().join(",")))});return B.join("&")};h=function(B){return"/s?wd="+B+"&rsv_dl=0_left_pet_multi_"+j};l.each(function(){var E=$(this),D=$.parseJSON(E.attr("data-tip")),B,F,C;if(D.desc1.length){B=$.format(\'<div class="op-pet-multi-tip-arrow"><span></span><i></i></div>                    <h4 class="op-pet-multi-tip-title">#{name}</h4>                    <span>#{desc1}</span>\'+(D.desc2.length?"<span>#{desc2}</span>":""),{name:D.name,desc1:D.desc1,desc2:D.desc2});E.hover(function(){F=E.position();s=setTimeout(function(){y.html(B).css({left:F.left+22+"px",top:F.top+25+"px",display:"block"})},400)},function(){clearTimeout(s);y.hide()})}if(u){C=$("input",E);E.click(function(){C.attr("checked",C.attr("checked")=="checked"?false:true);C.trigger("change")})}});w=function(){var B=x.offset().top;if(r<=z){p&&p.dispose&&p.dispose();n.hide();return}n.show();A.use("page",function(){p=A.ui.page(n.get(0),1,Math.ceil(r/z),{onChange:function(D,C){if(k.scrollTop()>B){k.scrollTop(B)}q(D,true)}})})};o=function(B){v.html($.map(B,function(C,D){return $.format(\'<li class="c-span6 c-gap-top-small #{last}"><a href="#{url}" title="#{title}" target="_blank"><img class="c-img c-img6" src="#{img}" /><span class="op-pet-multi-for-log">#{title}</span></a>				<span class="op-pet-multi-name"><span><a href="#{url}" title="#{title}" target="_blank">#{name}</a></span></span>                </li>\',{last:(D+1)%4==0?"c-span-last":"",url:h(C.word),img:C.img,name:$.subByte(C.name,20),title:C.name})}).join(""))};q=function(D,C){var B=$.format(m,{pageNum:D!=undefined?(D-1)*z:0,type:a(),t:+new Date});$.ajax({url:B,dataType:"jsonp",jsonp:"cb",success:function(E){if(i){return}if(E.status=="0"&&E.data[0].disp_data){r=E.data[0].listNum;if(!isFinite(+r)||r<=0){e.addClass(d)}else{if(x.has(d)){e.removeClass(d)}}if(!C){w()}o(E.data[0].disp_data)}}})};c.on("change",function(){q(1)});w();this.dispose=function(){i=true;clearTimeout(s);p&&p.dispose&&p.dispose()}})});';   // js字串，不含<script标签
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
