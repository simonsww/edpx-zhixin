{%extends 'base.tpl'%} {%block name='content'%}<style >
#op_sb02_content td
{
	font-size:13px;
	line-height:160%;
	white-space:nowrap;
	text-align:left;
}
.op_sb02_photo
{
	width:85px; 
	height:102px; 
	overflow:hidden;
	display:block;
	border:1px solid #7493E5; 
	background:url({%$tplData.img%}) no-repeat center;
}
</style>{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div id="op_sb02_content" style="margin-top:3px"><table cellspacing="0" cellpadding="0" width="100%"><tr><td style="width:86px;height:103px;vertical-align:top"><a href="{%$tplData.url%}" target="_blank" class="op_sb02_photo"></a></td><td style="padding:0 0 0 10px"><table id="op_sb02_table" cellspacing="0" cellpadding="0"><tr><td colspan="4">{%$tplData.field1[0]['name']%}{%$tplData.field1[0]['value']|highlight:0%}</td></tr><tr>{%if $tplData.field2[0]['name']!=""%}<td colspan="2" style="width:50%">{%$tplData.field2[0]['name']%}{%if $tplData.field2[0]['value']!=""%}{%$tplData.field2[0]['value']|limitlen:20|highlight:0%}{%/if%}</td>{%/if%}{%if $tplData.field3[0]['name']!=""%}<td colspan="2">{%$tplData.field3[0]['name']%}{%if $tplData.field3[0]['link']!=""%}<a href="{%$tplData.field3[0]['link']%}" target="_blank">{%/if%}{%if $tplData.field3[0]['value']!=""%}{%$tplData.field3[0]['value']|limitlen:22|highlight:0%}{%/if%}{%if $tplData.field3[0]['link']!=""%}</a>{%/if%}</td>{%/if%}<tr>{%if $tplData.field4[0]['name']!=""%}<tr><td colspan="4" style="white-space:normal">{%$tplData.field4[0]['name']%}{%$tplData.field4[0]['value']|limitlen:120|highlight:0%}</td></tr>{%/if%}<tr><td id="op_sb02_link" colspan="4">{%$loop_maxcount=count($tplData.link)%}{%for $op_loop_count=0 to 3%}{%if $op_loop_count<$loop_maxcount%}&nbsp;-&nbsp;<a href="{%$tplData.link[$op_loop_count]['url']%}" target="_blank">{%$tplData.link[$op_loop_count]['txt']|limitlen:12%}</a>{%else%}{%break%}{%/if%}{%/for%}</td></tr>{%$loop_maxcount=count($tplData.blog)%}{%for $op_loop_count=0 to 1%}{%if $op_loop_count<$loop_maxcount%}{%if $tplData.blog[$op_loop_count]['name']!=""%}<tr><td colspan="4">{%$tplData.blog[$op_loop_count]['name']%}<a href="{%$tplData.blog[$op_loop_count]['url']%}" target="_blank">{%$tplData.blog[$op_loop_count]['url']|limitlen:56%}</a></td></tr>{%/if%}{%else%}{%break%}{%/if%}{%/for%}<tr><td colspan="4"><font size="-1" color="#008000">{%$tplData.showurl|limitlen:60%}{%if $tplData.date!=""%}&nbsp;{%$tplData.date%}{%/if%}</font></td></tr></table></td></tr></table>{%$FE_GBVAR.wrapper_suffix%}<script >A.init(function(){var me=this,T=A.baidu,lk = T.G('op_sb02_link'),str = lk.innerHTML;str = str.replace('&nbsp;-&nbsp;', '');lk.innerHTML = str;});</script>{%/block%}