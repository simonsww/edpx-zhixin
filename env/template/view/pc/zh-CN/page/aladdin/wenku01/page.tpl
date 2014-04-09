{%extends 'base.tpl'%} {%block name='content'%}<style >
.op_wenku01_content td
{
	font-size:13px;
	line-height:160%;
	white-space:nowrap;
	text-align:left;
}
.op_wenku01_photo
{
	width:85px; 
	height:102px; 
	overflow:hidden;
	display:block;
	border:1px solid #7493E5; 
	background:url({%$tplData.img%}) no-repeat center;
}
</style> <tr> <td class="f"><h3 class="t"> <font size="3"> <a href="{%$tplData.url%}" target="_blank">{%$tplData.title|highlight:0%}</a> </font><span class="tsuf tsuf-op" data="{title : '{%$tplData.title|escape:'javascript'%}', link : '{%$tplData.url|escape:'javascript'%}'}"></span></h3> <div class="op_wenku01_content" style="margin-top:3px"> <table cellspacing="0" cellpadding="0" width="100%"> <tr><td style="width:86px;height:103px;vertical-align:top"> <a href="{%$tplData.url%}" target="_blank" class="op_wenku01_photo"></a> </td><td style="padding:0 0 0 10px"> <table class="op_wenku01_table" cellspacing="0" cellpadding="0"> <tr><td colspan="4">{%$tplData.field1[0]['name']|highlight:0%}{%$tplData.field1[0]['value']%}</td></tr> <tr> <td colspan="2" style="width:50%">{%$tplData.field2[0]['name']%}{%if $tplData.field2[0]['value']!=""%}{%$tplData.field2[0]['value']|limitlen:20%}{%/if%}</td> <td colspan="2"> {%if $tplData.field3[0]['name']!=""%}{%$tplData.field3[0]['name']%}{%/if%} {%if $tplData.field3[0]['link']!=""%}<a href="{%$tplData.field3[0]['link']%}" target="_blank">{%/if%}{%if $tplData.field3[0]['value']!=""%}{%$tplData.field3[0]['value']|limitlen:22%}{%/if%}{%if $tplData.field3[0]['link']!=""%}</a>{%/if%} </td> <tr> {%if $tplData.field4[0]['name']!=""%}<tr><td colspan="4" style="white-space:normal">{%$tplData.field4[0]['name']%}{%$tplData.field4[0]['value']|limitlen:120|highlight:0%}</td></tr>{%/if%} <tr><td class="op_wenku01_link" colspan="4"> {%$loop_maxcount=count($tplData.link)%}{%for $op_loop_count=0 to 3%}{%if $op_loop_count<$loop_maxcount%}<a href="{%$tplData.link[$op_loop_count]['url']%}" target="_blank">{%$tplData.link[$op_loop_count]['txt']%}</a>{%else%}{%break%}{%/if%}{%/for%} </td></tr> {%$loop_maxcount=count($tplData.blog)%}{%for $op_loop_count=0 to 1%}{%if $op_loop_count<$loop_maxcount%} {%if $tplData.blog[$op_loop_count]['name']!=""%} <tr><td colspan="4">{%$tplData.blog[$op_loop_count]['name']%}<a href="{%$tplData.blog[$op_loop_count]['url']%}" target="_blank">{%$tplData.blog[$op_loop_count]['url']|limitlen:56%}</a></td></tr> {%/if%} {%else%}{%break%}{%/if%}{%/for%} <tr><td colspan="4"> <font size="-1" color="#008000">{%$tplData.showurl|limitlen:60%}{%if $tplData.date!=""%}&nbsp;{%$tplData.date%}{%/if%}</font> </td></tr> </table> </td></tr></table> </td> </tr> {%/block%}