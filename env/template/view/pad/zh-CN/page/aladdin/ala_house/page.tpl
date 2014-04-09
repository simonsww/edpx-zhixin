{%extends 'base.tpl'%} {%block name='content'%}<tr><td class="f">{%fe_fn_title_prefix%}<a target="_blank" href="{%$tplData.url%}" style="font-size:18px;">{%$tplData.title|highlight:0%}</a>{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<style >
.op_alahouse_auto {width:100%;}
    .op-alahouse-wrapper {margin-top:6px;overflow:hidden;}
    .op-alahouse-div-l {float:left;}
    .op-alahouse-div-r {width:500px;margin-top:-4px;padding-left:7px;font-size:15px;float:left;}
    .op-alahouse-div-r p {line-height:22px;}
    .op-alahouse-img {border:1px solid #dedede;width:108px;height:80px;}
    .op-alahouse-linkcontent {margin-right:16px;line-height:26px;white-space:nowrap;}
    .op-alahouse-link-p {height:26px;overflow:hidden;}
    
    .op-alahouse-div-more {padding-top:4px;float:left;font-size:15px;overflow:hidden;}
    .op-alahouse-moretitle {font-weight:bold;float:left;}
    .op-alahouse-morelist-ul {width:578px;_width:auto;}
    .op-alahouse-morelist-li {float:left;height:18px;margin-bottom:8px;padding-left:15px;border-left:1px solid #d8d8d8;}
    .op-alahouse-morelist-a {white-space:nowrap;_cursor:pointer;float:left;}
    .op-alahouse-morelist-a img {height:16px;width:16px;margin-top:2px;}
    .op-alahouse-morelist-span-in {margin:0 15px 0 4px;vertical-align:top;_vertical-align:middle;white-space:nowrap;}
    .op-alahouse-morelist-li:first-child,.op-alahouse-morelist-li-first {border:none;padding-left:0;}
    .op-alahouse-showurl {white-space:nowrap;}
</style><div class="op_alahouse_auto"><div class="op-alahouse-wrapper"> <div class="op-alahouse-div-l"> <a target="_blank" href="{%$tplData.img[0]['imgurl']%}"> <img class="op-alahouse-img" src="{%$tplData.img[0]['imgsrc']%}"> </a> </div> <div class="op-alahouse-div-r"> {%if $tplData.content1%} <p> {%if $tplData.content1[0]['title']%}<span>{%$tplData.content1[0]['title']|limitlen:12|escape:'html'%}</span>{%/if%}{%if $tplData.content1[0]['txt']%}<span>{%$tplData.content1[0]['txt']|limitlen:52|escape:'html'%}</span>{%/if%} </p> {%/if%} {%if $tplData.content2%} <p> {%if $tplData.content2[0]['title']%}<span>{%$tplData.content2[0]['title']|limitlen:12|escape:'html'%}</span>{%/if%}{%if $tplData.content2[0]['txt']%}<span>{%$tplData.content2[0]['txt']|limitlen:52|escape:'html'%}</span>{%/if%} </p> {%/if%} {%if $tplData.content3%} <p> {%if $tplData.content3[0]['title']%}<span>{%$tplData.content3[0]['title']|limitlen:12|escape:'html'%}</span>{%/if%}{%if $tplData.content3[0]['txt']%}<span>{%$tplData.content3[0]['txt']|limitlen:52|escape:'html'%}</span>{%/if%} </p> {%/if%} {%if $tplData.link%} <p class="op-alahouse-link-p"> {%$loop_maxcount=count($tplData.link)%}{%for $op_loop_count=0 to 4%}{%if $op_loop_count<$loop_maxcount%} {%if $tplData.link[$op_loop_count]['linkcontent']!=""%} <a class="op-alahouse-linkcontent" href="{%$tplData.link[$op_loop_count]['linkurl']%}" target="_blank">{%$tplData.link[$op_loop_count]['linkcontent']|limitlen:16|escape:'html'%}</a> {%/if%} {%else%}{%break%}{%/if%}{%/for%} </p> {%/if%} </div> {%if $tplData.moretitle||$tplData.morelist%} <div class="op-alahouse-div-more"> {%if $tplData.moretitle%} <span class="op-alahouse-moretitle">{%$tplData.moretitle|limitlen:16|escape:'html'%}</span> {%/if%} {%if $tplData.morelist%} <ul class="op-alahouse-morelist-ul"> {%$loop_maxcount=count($tplData.morelist)%}{%for $op_loop_count=0 to 4%}{%if $op_loop_count<$loop_maxcount%} {%if $tplData.morelist[$op_loop_count]['listcontent']!=""%} <li class="op-alahouse-morelist-li"> <a class="op-alahouse-morelist-a" href="{%$tplData.morelist[$op_loop_count]['listurl']%}" target="_blank"> {%if $tplData.morelist[$op_loop_count]['iconsrc']%}<img src="http://www.baidu.com/aladdin/img/ala_house/{%$tplData.morelist[$op_loop_count]['iconsrc']%}"/>{%/if%}<span class="op-alahouse-morelist-span-in">{%$tplData.morelist[$op_loop_count]['listcontent']|limitlen:12|escape:'html'%}</span> </a> </li> {%/if%} {%else%}{%break%}{%/if%}{%/for%} </ul> {%/if%} </div> {%/if%} </div> {%if $tplData.showurl%} <div class="op-alahouse-showurl">{%fe_fn_showurl showurl="{%$tplData.showurl|limitlen:40%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}</div> {%/if%}</div><script >
    A.setup('ala_house_data',{
        id:[{%$loop_maxcount=count($tplData.morelist)%}{%for $op_loop_count=0 to 4%}{%if $op_loop_count<$loop_maxcount%}{%$tplData.morelist[$op_loop_count]['id']%},{%else%}{%break%}{%/if%}{%/for%}''],
        rsv:'{%$extData.resourceid%}'
    });
</script><script>A.init(function(){var T=A.baidu,_this=this;var ala_house_data=_this.data.ala_house_data.id;if(ala_house_data!=''){ala_house_data.pop();var nameid=ala_house_data.join('_');var rsv=_this.data.ala_house_data.rsv;c({'fm':'inlo','rsv_ala_house':nameid,'rsv_srcid':rsv});}});</script></td></tr>{%/block%}