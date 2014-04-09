{%extends 'base.tpl'%} {%block name='content'%}<style >
.op_sb02_content td
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
	background:url({%$tplData.pic%}) no-repeat center;
}

.op_baikeperson2_other{border-top:2px solid #E8E8E8;}
.op_baikeperson2_other td{vertical-align:top; padding:3px 0;}
.op_baikeperson2_other_link{margin:0 5px;}
.op_baikeperson2_other_list{width:450px;}
.op_baikeperson2_other_list a, .op_baikeperson2_other_list span{*white-space:pre;float:left}
</style><tr> <td class="f"><h3 class="t"><a href="{%$tplData.url%}" target="_blank" >{%$tplData.title|highlight:0%}</a><span class="tsuf tsuf-op" data="{title : '{%$tplData.title|escape:'javascript'%}', link : '{%$tplData.url|escape:'javascript'%}'}"></span></h3> <div class="op_sb02_content" style="margin-top:3px"> <table cellspacing="0" cellpadding="0" width="100%"> <tr> <td style="width:86px;height:103px;vertical-align:top; padding-bottom:10px"><a href="{%$tplData.url%}" target="_blank" class="op_sb02_photo"></a></td> <td style="padding:0 0 10px 10px"><table class="op_sb02_table" cellspacing="0" cellpadding="0"> <tr> <td colspan="4">{%$tplData.field1[0]['name']%}{%$tplData.field1[0]['value']%}</td> </tr> <tr> <td colspan="2" style="width:50%">{%$tplData.field2[0]['name']%}{%if $tplData.field2[0]['value']!=""%}{%$tplData.field2[0]['value']|limitlen:20%}{%/if%}</td> <td colspan="2"> {%if $tplData.field3[0]['name']!=""%}{%$tplData.field3[0]['name']%}{%/if%} {%if $tplData.field3[0]['link']!=""%}<a href="{%$tplData.field3[0]['link']%}" target="_blank">{%/if%}{%if $tplData.field3[0]['value']!=""%}{%$tplData.field3[0]['value']|limitlen:22%}{%/if%}{%if $tplData.field3[0]['link']!=""%}</a>{%/if%} </td> <tr> {%if $tplData.field4[0]['name']!=""%} <tr> <td colspan="4" style="white-space:normal">{%$tplData.field4[0]['name']%}{%$tplData.field4[0]['value']|limitlen:120|highlight:0%}...</td> </tr> {%/if%} <tr> <td class="op_sb02_link" colspan="4"> {%$loop_maxcount=count($tplData.link)%}{%for $op_loop_count=0 to 3%}{%if $op_loop_count<$loop_maxcount%}<span>&nbsp;-&nbsp;</span><a href="{%$tplData.url%}{%$tplData.link[$op_loop_count]['url']%}" target="_blank">{%$tplData.link[$op_loop_count]['txt']|limitlen:12|highlight:0%}</a>{%else%}{%break%}{%/if%}{%/for%} </td> </tr> {%$loop_maxcount=count($tplData.blog)%}{%for $op_loop_count=0 to 1%}{%if $op_loop_count<$loop_maxcount%} {%if $tplData.blog[$op_loop_count]['name']!=""%} <tr> <td colspan="4">{%$tplData.blog[$op_loop_count]['name']%}<a href="{%$tplData.blog[$op_loop_count]['url']%}" target="_blank">{%$tplData.blog[$op_loop_count]['url']|limitlen:56%}</a></td> </tr> {%/if%} {%else%}{%break%}{%/if%}{%/for%} {%if $tplData.other[0]['txt']==""%} <tr> <td colspan="4"><a style="font-weight:bold;" href="{%$tplData.url%}" target="_blank">查看"<span style="color:#e00">{%$extData.OriginQuery%}</span>"其他含义&gt;&gt;</a></td> </tr> <tr> <td colspan="4"><font size="-1" color="#008000">{%$tplData.showurl|limitlen:60%}{%if $tplData.date!=""%}&nbsp;{%$tplData.date%}{%/if%}</font><span class="like_16 likenum"></span></td> </tr> {%/if%} </table></td> </tr> </table> {%if $tplData.other[0]['txt']!=""%}<table class="op_baikeperson2_other" cellspacing="0" cellpadding="0" width="100%"> <tr> <td style="width:70px; font-weight:bold;">其他含义：</td> <td><div class="op_baikeperson2_other_list"> <a href="{%$tplData.other[0]['url']%}" class="op_baikeperson2_other_link" target="_blank">{%$tplData.other[0]['txt']|limitlen:22|highlight:0%}</a> {%if $tplData.other[1]['txt']!=""%} <span>-</span><a href="{%$tplData.other[1]['url']%}" class="op_baikeperson2_other_link" target="_blank">{%$tplData.other[1]['txt']|limitlen:22|highlight:0%}</a> {%/if%} {%if $tplData.other[2]['txt']!=""%} <span>-</span> <a href="{%$tplData.other[2]['url']%}" class="op_baikeperson2_other_link" target="_blank">{%$tplData.other[2]['txt']|limitlen:22|highlight:0%}</a> {%/if%} {%if $tplData.other[3]['txt']!=""%} <span>-</span><a href="{%$tplData.other[3]['url']%}" class="op_baikeperson2_other_link" target="_blank">{%$tplData.other[3]['txt']|limitlen:22|highlight:0%}</a> {%/if%} {%if $tplData.other[4]['txt']!=""%} <span>-</span><a href="{%$tplData.other[4]['url']%}" class="op_baikeperson2_other_link" target="_blank">{%$tplData.other[4]['txt']|limitlen:22|highlight:0%}</a> {%/if%} {%if $tplData.other[5]['txt']!=""%} <span>-</span> <a href="{%$tplData.url%}" class="op_baikeperson2_other_link" target="_blank">查看全部含义&gt;&gt;</a> {%/if%} <br style="clear:both"> </div></td> </tr> <tr> <td colspan="2"><font size="-1" color="#008000">{%$tplData.showurl|limitlen:60%}{%if $tplData.date!=""%}&nbsp;{%$tplData.date%}{%/if%}</font><span class="like_16 likenum"></span> </td> </tr></table>{%/if%} </td></tr><script >
A.init(function() {
    var p = this.qq('op_sb02_link');
    p.removeChild(p.getElementsByTagName('span')[0]);
});
</script> {%/block%}