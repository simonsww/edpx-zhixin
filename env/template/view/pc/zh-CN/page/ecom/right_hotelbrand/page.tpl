{%extends 'base_div.tpl'%}

{%block name='content'%}
<style type="text/css">
.ecr-right_hotelbrand-main{padding:5px 10px;width:250px;font-size:12px;background:#fafafa;margin-bottom:5px}.ecr-right_hotelbrand-main h4{margin:0;padding:0;font-weight:normal;font-size:14px;margin-bottom:10px}.ecr-right_hotelbrand-main ul{height:92px}.ecr-right_hotelbrand-main li{float:left;padding-left:16px;width:72px}.ecr-right_hotelbrand-main li.ecr-right_hotelbrand-first{padding-left:0}.ecr-right_hotelbrand-main li a{display:block;text-align:center;text-decoration:none}.ecr-right_hotelbrand-main li a:hover{text-decoration:underline}
.ecr-right_hotelbrand-main li p a{border:1px solid #d2d2d2;width:70px;height:70px}.ecr-right_hotelbrand-main li img{width:70px;height:70px}.ecr-right_hotelbrand-hide{display:none}
</style>

{%*点击统计*%} 
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}

{%function name=fe_fn_vs_hotel_clicklog id=""%}
    data-click='{"vs_hotel_subqid":"{%$subqid|escape:"html"%}","vs_hotel_sid":"{%$sid|escape:"html"%}","vs_hotel_pssid":"{%$pssid|escape:"html"%}","vs_hotel_data":"id:{%$id|escape:"html"%}"}'
{%/function%}
<div class="ecr-right_hotelbrand-main">
    <h4>相关品牌推荐</h4>
    <ul>
        {%$loop_maxcount=count($tplData.right_brand)%}{%for $loop_count=0 to 8%}{%if $loop_count<$loop_maxcount%}
        <li class="{%if $loop_count==0%}ecr-right_hotelbrand-first{%/if%}">
            <p><a target="_blank" href="{%$tplData.right_brand[$loop_count]['url']%}" title="{%$tplData.right_brand[$loop_count]['name']%}" {%fe_fn_vs_hotel_clicklog%}><img height="55" width="70" src="{%$tplData.right_brand[$loop_count]['logo']%}" /></a></p>
        <a target="_blank" href="{%$tplData.right_brand[$loop_count]['url']%}" {%fe_fn_vs_hotel_clicklog%}>{%$tplData.right_brand[$loop_count]['name']%}</a>
        </li>
        {%else%}{%break%}{%/if%}{%/for%}
    </ul>
</div>

<script type="text/javascript">
A.init(function(){function t(t){return t=t||"",n+"-"+t}function a(t){var a={};for(var e in t)a["vs_hotel_"+e]=t[e];var n=i.json.stringify(a).replace(/"/g,"'");return'data-click="'+n+'"'}var e=this,i=A.baidu,n="ecr-right_hotelbrand",r=e.q(t("main"))[0],s=r.getElementsByTagName("UL")[0],o=["<li>",'<a target="_blank" href="#{url}" title="#{name}" #{stats}>','<img src="#{logo}" height="55" width="70" />',"</a>","</li>"].join("");bds.event&&bds.event.on("ec.zhixin_refresh_right_hotel_brand",function(e){for(var n=e.data.list,h=e.data.stats||{},l=[],d=0,g=n.length;g>d;d++)n[d].stats=a(h)||"",l.push(i.format(o,n[d]));
l=l.join(""),s.innerHTML=l,l?i.dom.removeClass(r,t("hide")):i.dom.addClass(r,t("hide"))})});
</script>

{%/block%}
