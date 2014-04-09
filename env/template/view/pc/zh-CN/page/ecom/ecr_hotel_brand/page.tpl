{%extends 'right_base.tpl'%}

{%block name='content'%}
<style type="text/css">
.ecr-hotel-brand-main{font-size:12px}.container_s .ecr-hotel-brand-main{width:270px;overflow:hidden}.container_l .ecr-hotel-brand-main{width:440px}.ecr-hotel-brand-main .title{position:relative;font-size:14px;height:22px;line-height:22px}.ecr-hotel-brand-main .title h2{position:absolute;background:#fff;font-weight:bold;z-index:2;font-size:14px;margin:0;padding:0;padding-right:10px}.ecr-hotel-brand-main .title .line{position:absolute;top:11px;width:100%;height:0;font-size:0;border-top:1px solid #eaeaea;z-index:1}
.ecr-hotel-brand-main ul{margin-top:10px;height:100px}.ecr-hotel-brand-main li{float:left;padding-left:20px;_padding-left:12px;width:72px}.ecr-hotel-brand-main li.ecr-hotel-brand-first{padding-left:0}.ecr-hotel-brand-main li a{font-size:13px;display:block;text-align:center;text-decoration:underline}.ecr-hotel-brand-main li .ecr-hotel-brand-name{width:78px;position:relative;left:-4px}.ecr-hotel-brand-main li p{margin-bottom:8px}.ecr-hotel-brand-main li p a{width:70px;height:70px;position:relative}.ecr-hotel-brand-main li p a span{display:block;position:absolute;top:0;left:0;width:68px;height:68px;border:1px solid #000;opacity:.1;filter:alpha(opacity=10)}
.ecr-hotel-brand-main li img{width:70px;height:70px}.container_s .ecr-hotel-brand-li-3,.container_s .ecr-hotel-brand-li-4{display:none}
</style>

{%*点击统计*%} 
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}

<div class="ecr-hotel-brand-main" data-click='{"rsv_vshotel_subqid":"{%$subqid|escape:"html"%}","rsv_vshotel_sid":"{%$sid|escape:"html"%}","rsv_vshotel_pssid":"{%$pssid|escape:"html"%}"}'>
    <div class="title"><h2>酒店预订网站</h2><div class="line"></div></div>
    <ul>
        {%foreach $tplData.right_brand as $index=>$brand%}
        <li class="{%if $index==0%}ecr-hotel-brand-first{%/if%} ecr-hotel-brand-li-{%$index%}">
            <p>
                <a target="_blank" href="{%$brand['url']|escape:"html"%}" title="{%$brand['name']|escape:"html"%}"><img height="55" width="70" src="{%$brand['logo']|escape:"html"%}" />
                    <span></span>
                </a>
            </p>
        <a class="ecr-hotel-brand-name" target="_blank" href="{%$brand['url']|escape:"html"%}">{%$brand['name']|escape:"html"%}</a>
        </li>
        {%/foreach%}
    </ul>
</div>

<script type="text/javascript">
A.init(function(){function a(a){return a=a||"",r+"-"+a}function t(a){var t={};for(var e in a)t["vs_hotel_"+e]=a[e];var r=n.json.stringify(t).replace(/"/g,"'");return'data-click="'+r+'"'}var e=this,n=A.baidu,r="ecr-hotel-brand",s=e.q(a("main"))[0],i=s.getElementsByTagName("UL")[0],l='<li class="#{indexClass}"><p><a target="_blank" href="#{url}" title="#{name}" #{stats}><img height="55" width="70" src="#{logo}" /><span></span></a></p><a target="_blank" href="#{url}" #{stats}>#{name}</a></li>';bds.event&&bds.event.on("ec.zhixin_refresh_right_hotel_brand",function(e){for(var r=e.data.list,o=e.data.stats||{},d=[],h=0,c=r.length;c>h;h++){r[h].stats=t(o)||"";
var f="ecr-hotel-brand-li-"+h;f+=0===h?" ecr-hotel-brand-first":"",r[h].indexClass=f,d.push(n.format(l,r[h]))}d=d.join(""),i.innerHTML=d,d?n.dom.removeClass(s,a("hide")):n.dom.addClass(s,a("hide"))})});
</script>

{%/block%}
