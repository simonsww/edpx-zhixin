{%extends 'right_base.tpl'%}

{%block name='content'%}
<style type="text/css">
.ecr-right_hotellist-main{padding:5px 10px;width:250px;font-size:12px;background:#fafafa;margin-bottom:5px}.ecr-right_hotellist-main em{display:block;font-weight:normal;color:#ff6c00}.ecr-right_hotellist-main h4{margin:0;padding:0;font-weight:normal;font-size:14px;line-height:25px}.ecr-right_hotellist-main li{height:60px;margin:0 0 10px;overflow:hidden;color:#666}.ecr-right_hotellist-main li a{text-decoration:none}.ecr-right_hotellist-main li a:hover{text-decoration:underline}.ecr-right_hotellist-hide{display:none}
.ecr-right_hotellist-img{width:60px;height:60px;float:left}.ecr-right_hotellist-img img{width:60px;height:60px}.ecr-right_hotellist-cont{margin-left:70px}
</style>

{%*点击统计*%} 
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}

{%function name=fe_fn_vs_hotel_clicklog id=""%}
    data-click='{"vs_hotel_subqid":"{%$subqid|escape:"html"%}","vs_hotel_sid":"{%$sid|escape:"html"%}","vs_hotel_pssid":"{%$pssid|escape:"html"%}","vs_hotel_data":"id:{%$id|escape:"html"%}"}'
{%/function%}
{%$loop_maxcount=count($tplData.right_hotel)%}
<div class="ecr-right_hotellist-main{%if $loop_maxcount==0%} ecr-right_hotellist-hide{%/if%}">
    <h4>酒店推广</h4>
    <ul>
        {%for $loop_count=0 to 99%}{%if $loop_count<$loop_maxcount%}{%$id=$tplData.right_hotel[$loop_count]['id']%}
        <li>
            <a class="ecr-right_hotellist-img" target="_blank" href="{%$tplData.right_hotel[$loop_count]['viewurl']|escape:'html'%}" {%fe_fn_vs_hotel_clicklog id=$id%}><img width="60" height="60" src="{%$tplData.right_hotel[$loop_count]['imgsrc']|escape:'html'%}" /></a>
            <div class="ecr-right_hotellist-cont">
                <a target="_blank" href="{%$tplData.right_hotel[$loop_count]['viewurl']|escape:'html'%}" {%fe_fn_vs_hotel_clicklog id=$id%}>{%$tplData.right_hotel[$loop_count]['title']|escape:'html'%}</a>
                <em>{%if $tplData.right_hotel[$loop_count]['price']%}￥{%$tplData.right_hotel[$loop_count]['price']|escape:'html'%}起{%else%}暂无报价{%/if%}</em>
                <p>{%$tplData.right_hotel[$loop_count]['district']|escape:'html'%}</p>
            </div>
        </li>
        {%else%}{%break%}{%/if%}{%/for%}
    </ul>
</div>

<script type="text/javascript">
A.init(function(){function t(t){return t=t||"",r+"-"+t}function i(t){var i={};for(var e in t)i["vs_hotel_"+e]=t[e];var r=a.json.stringify(i).replace(/"/g,"'");return'data-click="'+r+'"'}var e=this,a=A.baidu,r="ecr-right_hotellist",s=e.q(t("main"))[0],n=s.getElementsByTagName("UL")[0],l=["<li>",'<a class="'+r+'-img" target="_blank" href="#{viewurl}" #{stats}>','<img width="60" height="60" src="#{imgsrc}" />',"</a>",'<div class="'+r+'-cont">','<a target="_blank" href="#{viewurl}" #{stats}>#{title}</a>',"<em>#{price}</span></em>","<p>#{district}</p>","</div>","</li>"].join("");
bds.event&&bds.event.on("ec.zhixin_refresh_right_hotel_list",function(e){for(var r=e.data.list,d=[],c=e.data.stats||{},o=0,h=r.length;h>o;o++){r[o].price=r[o].price?"￥"+r[o].price+"起":"暂无报价";var v=a.extend({},c);v.data="id:"+r[o].id,r[o].stats=i(v)||"",d.push(a.format(l,r[o]))}d=d.join(""),n.innerHTML=d,d?a.dom.removeClass(s,t("hide")):a.dom.addClass(s,t("hide"))})});
</script>

{%/block%}
