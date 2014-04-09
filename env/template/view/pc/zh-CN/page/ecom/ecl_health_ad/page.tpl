{%extends 'base_div.tpl'%}
{%block name='content'%}
{%if $tplData.adType eq 2%}
<style type="text/css">
.ecl-health-ad-left{font-size:12px;width:600px;border:1px solid #f3f3f3;border-bottom:0}.ecl-health-ad-left .pagelist-creative{height:auto!important}.ecl-health-ad-nav{height:35px;border-bottom:2px solid #8faef4;line-height:35px}.ecl-health-ad-nav .ad-title{width:360px;float:left;overflow:hidden}.ecl-health-ad-nav .ad-title em{font-style:normal;color:#c00}.ecl-health-ad-nav .ad-logo{float:left;height:30px;color:#1f5de9;margin:0 5px 0 8px;_margin-left:4px;font-size:16px;font-weight:bold}.ecl-health-ad-nav .ad-solog{color:#999}
.ecl-health-ad-nav .ad-chunks{float:right}.ecl-health-ad-nav .ad-chunks div{float:left;background-image:url('http://www.baidu.com/cache/biz/ecom/health/img/health_left_0-1.gif');background-repeat:no-repeat;padding:0 10px 0 18px;color:#a9a9a9}.ecl-health-ad-nav .ad-review{background-position:0 -134px}.ecl-health-ad-nav .ad-consult{background-position:0 -165px}.ecl-health-ad-nav .ad-appoint{background-position:0 -196px}.ecl-health-ad-idcard-expand .ecl-health-ad-idcard{display:block}.ecl-health-ad-idcard-icon{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/health/img/health_icon_0-1.png') no-repeat 0 -95px;width:16px;height:16px;display:inline-block}
.ecl-health-ad-idcard{_white-space:nowrap;background:#FFF;border:1px solid #CCC;color:#575757;display:none;font-size:12px;line-height:16px;padding:8px;width:auto!important;width:120px;position:absolute;text-align:left;z-index:160;margin-top:20px;box-shadow:1px 1px 1px #dfdfdf}.ecl-health-ad-idcard .EC_tip_title{display:inline-block;height:14px;line-height:14px;margin-bottom:8px;color:#575757}.ecl-health-ad-idcard .EC_tip_content{margin:0;padding:0;line-height:16px;white-space:nowrap;vertical-align:middle;zoom:1}
.ecl-health-ad-idcard .EC_tip_content li{height:18px;line-height:18px;font-size:12px}.ecl-health-ad-idcard .EC_tip_content li .EC_safeguard_tip_logo{vertical-align:top;margin-right:5px}.ecl-health-ad-idcard .EC_tip_content .EC_vshenfen .icon{display:inline-block;width:16px;height:16px;line-height:16px;vertical-align:text-top;background:url(http://a.baidu.com/xianzhi/wholeIconNew.gif) no-repeat 0 -117px;margin:1px 5px 0 0}.ecl-health-ad-idcard .EC_tip_content .EC_vshenfen .level{margin-left:5px;padding-right:38px;background-image:url(http://a.baidu.com/xianzhi/wholeIconNew.gif);background-repeat:no-repeat;background-position:76px -529px;display:none;display:inline}
.ecl-health-ad-idcard .EC_tip_content .EC_vshenfen .level0{background-position:76px -529px;padding-right:38px}.ecl-health-ad-idcard .EC_tip_content .EC_vshenfen .level1{background-position:76px -570px;padding-right:15px}.ecl-health-ad-idcard .EC_tip_content .EC_vshenfen .level2{background-position:76px -610px;padding-right:26px}.ecl-health-ad-idcard .EC_tip_content .EC_vshenfen .level3{background-position:76px -650px;padding-right:38px}.ecl-health-ad-idcard .EC_tip_content .EC_vshenfen .level4{background-position:76px -690px;padding-right:48px}
.ecl-health-ad-idcard .EC_tip_content .EC_vshenfen .level5{background-position:76px -730px;padding-right:59px}.ecl-health-ad-idcard .EC_tip_content .ecl-health-ad-certification{position:relative;top:3px}.ecl-health-ad-idcard .EC_tip_dir{background:url('http://www.baidu.com/cache/biz/ecom/health/EC_tip_dir.gif') no-repeat 5px 5px;width:100%;height:14px;position:absolute;top:-11px;left:0}.ecl-health-ad-left .health-clearfix:before,.ecl-health-ad-left .health-clearfix:after{display:table;line-height:0;content:""}
.ecl-health-ad-left .health-clearfix:after{clear:both}.ecl-health-ad-pagelist-showall{line-height:30px;text-align:center;cursor:pointer;color:#666;border-bottom:1px solid #f3f3f3}.ecl-health-ad-pagelist-showall span{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/health/img/health_right.png') no-repeat right -7px;display:inline-block;padding-right:10px}.ecl-health-ad-pagelist-item{padding:10px 0;border-bottom:1px solid #f3f3f3;position:relative;width:100%}.ecl-health-ad-pagelist-item .pagelist-lside{margin-right:140px;padding-left:10px}
.ecl-health-ad-pagelist-item .pagelist-rside{width:135px;float:right;padding-right:10px}.ecl-health-ad-pagelist-item .pagelist-tags{color:#666;line-height:18px;text-align:right;margin-bottom:20px}.ecl-health-ad-pagelist-item .pagelist-location{width:130px;text-align:right;line-height:20px;height:20px;overflow:hidden;position:absolute;bottom:10px;right:10px}.ecl-health-ad-pagelist-item .pagelist-location a{color:#666;background:url('http://www.baidu.com/cache/biz/ecom/health/img/health_left_0-1.gif') no-repeat 0 -110px;*background-position:0 -112px;display:inline-block;padding-left:15px}
.ecl-health-ad-pagelist-item .pagelist-name{margin-right:5px;font-size:14px;color:#00c}.ecl-health-ad-pagelist-item .pagelist-bottom{line-height:20px;min-height:10px}.ecl-health-ad-pagelist-item .pagelist-bottom a{padding:2px 5px}.ecl-health-ad-pagelist-item .pagelist-title{padding:0 3px;_height:20px}.ecl-health-ad-pagelist-item .pagelist-title ul{margin:0;padding:0;overflow:hidden}.ecl-health-ad-pagelist-item .pagelist-title li{float:left;list-style:none;line-height:18px}.ecl-health-ad-pagelist-item .pagelist-title li li{float:none}
.ecl-health-ad-pagelist-item .pagelist-creative{padding:5px 3px;line-height:18px;font-size:13px}.ecl-health-ad-pagelist-item .pagelist-creative em{font-style:normal;color:#c00}.ecl-health-ad-pagelist-item .pagelist-tuiguang{color:#666;text-decoration:underline;white-space:nowrap;*word-break:keep-all;margin-left:6px}.ecl-health-ad-pagelist-item .pagelist-review{background-position:0 -134px;text-align:right;overflow:hidden;line-height:18px;height:18px;margin-bottom:5px;font-size:13px;display:block;*zoom:1;*clear:both}
.ecl-health-ad-pagelist-item .pagelist-review :after{content:".";display:block;height:0;clear:both;visibility:hidden}.ecl-health-ad-pagelist-item .pagelist-review a{float:right}.ecl-health-ad-pagelist-item .icon-qiao{background:url('http://www.baidu.com/cache/biz/ecom/health/img/health_left_0-1.gif') no-repeat 0 -294px;padding-left:15px;margin-left:10px}.ecl-health-ad-pagelist-item .icon-qiao a{color:#666}.ecl-health-ad-pagelist-item .icon-guahao{background:url('http://www.baidu.com/cache/biz/ecom/health/img/health_left_0-1.gif') no-repeat 0 -232px;padding-left:14px;margin-left:10px}
.ecl-health-ad-pagelist-item .icon-guahao a{color:#666}.ecl-health-ad-pagelist-item .star{width:60px;height:18px;margin-right:5px;background-image:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/health/img/health_icon_0-1.png');background-position:0 -71px;background-repeat:no-repeat;float:right}.ecl-health-ad-pagelist-item .star0{width:0;background-position:0 -71px}.ecl-health-ad-pagelist-item .star1{width:12px;background-position:0 -56px}.ecl-health-ad-pagelist-item .star2{width:22px;background-position:0 -41px}.ecl-health-ad-pagelist-item .star3{width:35px;background-position:0 -26px}
.ecl-health-ad-pagelist-item .star4{width:48px;background-position:0 -11px}.ecl-health-ad-pagelist-item .star5{background-position:0 4px}
</style>

{%*点击统计*%} 
{%$sessionid=$extData.sessionid%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}
{%$tplName='ecl-health-ad'%}

<div class="{%$tplName|escape:'html'%}-left" data-click="{'sessionid':'{%$sessionid|escape:'html'%}','subqid':'{%$subqid|escape:'html'%}','sid':'{%$sid|escape:'html'%}'}">
{%*----------template:navigation--------------*%}
<div class="{%$tplName|escape:'html'%}-nav">
  <div class="ad-title">
      <div class="ad-logo">
         {%if $tplData.cardCaption%}
         <em>{%$tplData.termWord|escape:'html'%}</em>{%$tplData.cardCaption|escape:'html'%}
         {%else%}
         <em>{%$tplData.termWord|escape:'html'%}</em>_症状_治疗_病例_咨询_挂号
         {%/if%}
      </div>
  </div>
  <div class="ad-chunks OP_LOG_BTN" data-click="{'fm':'beha','btn-name':'chunks'}">
      <div class="ad-consult">免费咨询</div>
      <div class="ad-appoint">免费挂号</div>
      <div class="ad-review">权益保障</div>
  </div>
</div>

{%*------------template:pagelist--------*%}
<div class="{%$tplName|escape:'html'%}-pagelist-wrapper">
{%$list_num=count($tplData.hospitals)%}
{%for $idx=0 to ($tplData.showNum[1] - 1)%}
{%$h=$tplData.hospitals[$idx]%}
{%if $idx>=$list_num%}
{%break%}
{%/if%}
{%if $idx eq $tplData.showNum[0]%}
{%$ismore=true%}
<div class="{%$tplName|escape:'html'%}-pagelist-showall OP_LOG_BTN" data-click="{'fm':'beha','btn-name':'showall'}" ><span>查看更多相关医院</span></div>
<div class="{%$tplName|escape:'html'%}-pagelist-more" style="display:none">
{%/if%}

{%if $idx eq 0%}
<div class="{%$tplName|escape:'html'%}-pagelist-item" data-hid="{%$h.hospitalid|escape:'html'%}">
{%else%}

<div class="{%$tplName|escape:'html'%}-pagelist-item" data-hid="{%$h.hospitalid|escape:'html'%}">
{%/if%}
    <div class="pagelist-rside">
        <div class="pagelist-review health-clearfix">
            {%if $h.review%}
            <a href="{%$h.review.link|escape:'html'%}" target="_blank">
                {%if $h.review.num > 0%}
                    {%if $h.review.num < 10000%}
                        {%$h.review.num|escape:'html'%}条评论
                    {%else%}
                        {%floor($h.review.num / 10000)|escape:'html'%}万条评论
                    {%/if%}
                {%else%}
                    我要评论 
                {%/if%}
            </a>
            <div class="star star{%$h.review.star|escape:'html'%}"></div>
            {%/if%}
        </div>
        <div class="pagelist-tags">
            {%$h.tag|escape:'html'%}
        </div>
        
        <div class="pagelist-location">
            {%if $h.position.url%}
                <a  href="{%$h.position.url|escape:'html'%}"  target="_blank">
                    {%$h.position.addr|escape:'html'%}
                </a>
            {%/if%}
        </div>
        
    </div>


    <div class="pagelist-lside">
        <div class="pagelist-title">
            <ul>
                <li class="pagelist-name">   
                {%if $tplData.noEscape%}
                <a href="{%$tplData.hospitals[$idx].links.homePage%}"  target="_blank">{%$tplData.hospitals[$idx].redname%}</a>
                {%else%}
                <a href="{%$h.links.homePage|escape:'html'%}"  target="_blank">{%$h.redname|escape:'html'|highlight:0%}</a>
                {%/if%}
                </li>
                {%if $h.idcard.url%}
                 <li class="{%$tplName|escape:'html'%}-idcard-wrapper" data-hid="{%$h.hospitalid|escape:'html'%}"> 
                  <div class="{%$tplName|escape:'html'%}-idcard" id="{%$tplName|escape:'html'%}-idcard-{%$h.hospitalid|escape:'html'%}" >
                      <strong class="EC_tip_title">{%$h.name|escape:'html'%}：</strong>
                    <div class="EC_tip_content">
                        <ul>
                            {%if $h.idcard.alicense eq 1%}
                            <li>
                                <img class="EC_safeguard_tip_logo" src="http://trust.baidu.com/vcard/img/medicallogo.gif" alt="商家权益保障" height="16" width="16">
                                具有医疗执业许可证
                            </li>
                            {%/if%}
                            <li class="EC_vshenfen">
                                <i class="icon icon-vshenfen{%$h.review.star|escape:'html'%}">&nbsp;</i>
                                已经通过<a target="_blank"  href="{%$h.idcard.url|escape:'html'%}">百度身份认证</a>
                                <span class="level level{%$h.review.star|escape:'html'%}">百度信誉星级</span>
                            </li>
                        </ul>
                    </div>
                    <i class="EC_tip_dir"></i>
                
                  </div>
                  <span class="{%$tplName|escape:'html'%}-idcard-icon OP_LOG_BTN" 
                   data-click="{'fm':'beha','btn-name':'icard', 'hid':'{%$h.hospitalid|escape:'html'%}'}" 
                  data-hid="{%$h.hospitalid|escape:'html'%}">
                  </span>
                 </li>
               {%/if%}
                  
                {%if $h.links.shangqiao%}
                    <li class="icon-qiao">
                           <a href='{%$h.links.shangqiao|escape:'html'%}'  data-click="{'btn-name':'shangqiao', 'hid':'{%$h.hospitalid|escape:'html'%}'}" target="_blank">咨询</a>
                     </li>
                {%/if%}
            
                {%if $h.links.guahao%}
                <li class="icon-guahao">
                    <a href='{%$h.links.guahao|escape:'html'%}'  data-click="{'btn-name':'guahao', 'hid':'{%$h.hospitalid|escape:'html'%}'}" target="_blank">挂号</a>
                </li>
                {%/if%}
                
            </ul>
        </div>

        
        {%if $tplData.noEscape%}
        <div class="pagelist-creative">{%$tplData.hospitals[$idx].creative%}</div>
        {%else%}
        <div class="pagelist-creative">{%$h.creative|escape:'html'|highlight:0%}</div>
        {%/if%}

        <div class="pagelist-bottom">
            <div class="pagelist-sublinks">
                <a href="{%$h.links.introLink|escape:'html'%}"  target="_blank">医院介绍</a> |
                <a href="{%$h.links.labLink|escape:'html'%}"  target="_blank">科室列表</a> |
                <a href="{%$h.links.expertLink|escape:'html'%}"  target="_blank">专家列表</a>
            </div>
        </div>
    </div>
</div>
{%/for%}
{%if $ismore%}
</div>
{%/if%}
</div>
{%*-end health-left-*%}
</div>

<script data-compress="off">
{%if $tplData.signTime%}
A.setup('signTime', {%$tplData.signTime%});
{%/if%}
</script>

<script type="text/javascript">
A.init(function() {
    var Anti=function(n){function e(e){var t=window.event||e;for(T=t.target||t.srcElement;T&&"A"!=T.tagName;)if(T=T.parentNode,T===n)return!1;E=(new Date).getTime(),f=9999,v=t.clientX,d=t.clientY,s=g?E-g:0,i()&&o()}function t(){l=(new Date).getTime(),f=l-E,i()&&o()}function r(n){var e=window.event||n;L+=1,w||(w=e.clientX),m||(m=e.clientY),g=(new Date).getTime()}function i(){if(u=0,h=/\?url\=([^\.]+)\./.exec(T.href)){for(var n=0;L*A%99+9>n;++n)u+=h[1].charCodeAt(f*n%h[1].length);return!0}return!1}function o(){var n="&ck="+[u,L,f,v,d,w,m,s].join(".");
if(T.href){var e=T.href;-1==e.indexOf("&ck=")?T.href+=n:T.href=e.replace(/&ck=[\w.]*/,n)}}function a(e,t){for(var r,i=0;r=e[i];i++)window.attachEvent?n.attachEvent("on"+r,t[i]):window.addEventListener?n.addEventListener(r,t[i],!1):n["on"+r]=t[i],k[r]=t[i]}function c(e){for(var t,r=0;t=e[r];r++)window.detachEvent?n.detachEvent("on"+t,k[t]):window.addEventListener?n.removeEventListener(t,k[t],!1):n["on"+t]=function(){}}var u,f,v,d,w,m,s,h,E,g,l,T,p="EC_ZHIXIN",A=0,L=0;f=v=d=w=m=s=h=E=g=l=T=0;var k={};return{getAntiTag:function(){return p
},setTimesign:function(n){A=n},bind:function(){a(["mouseover","mousedown","mouseup"],[r,e,t])},unbind:function(){c(["mouseover","mousedown","mouseup"])}}};
    function getCard(e){return baidu.G(prefix+"-idcard-"+e)}function getHID(e){var i=baidu.getAttr(e,"data-hid");return null==i||""===i?null:i}function showCard(){var e=getHID(this);if(null!=e){layer&&baidu.hide(layer);var i=getCard(e);i&&(i.style.display="block",layer=i),flag&&clearTimeout(flag)}}function hideCard(){var e=getHID(this);if(null!=e){var i=getCard(e),n=this.className;if(n==prefix+"-idcard")return baidu.hide(i),void 0;flag&&clearTimeout(flag),flag=setTimeout(function(){i&&baidu.hide(i)},100)}}function bindEvent(e){if(e){var i=getHID(e);
if(null!=i){var n=baidu.G(prefix+"-idcard-"+i);n&&(baidu.setAttr(n,"data-rid",i),baidu.on(e,"click",showCard),baidu.on(e,"mouseover",showCard),baidu.on(e,"mouseout",hideCard),baidu.on(n,"mouseover",showCard),baidu.on(n,"mouseout",hideCard))}}}function addAnti(e){var i=new Anti(health.qq(e));i.bind(),i.setTimesign(health.data.signTime)}var health=this,flag=!1,layer=null,prefix="ecl-health-ad",more=health.qq(prefix+"-pagelist-showall"),hlist=health.q(prefix+"-idcard-wrapper");more&&baidu.on(more,"click",function(){var e=health.qq(prefix+"-pagelist-more");
baidu.dom.show(e),baidu.dom.hide(more)});for(var i=0,l=hlist.length;l>i;i++)bindEvent(hlist[i]);addAnti("ecl-health-ad-pagelist-wrapper");
}); 
</script>
{%/if%}
{%/block%}