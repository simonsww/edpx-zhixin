{%extends 'base.tpl'%} {%block name='content'%}<style type="text/css" >
.op_baike td{font-size:13px;vertical-align:top;padding:0;}
.op_baike_imgcon{
	width:85px;
	height:102px;
	overflow:hidden;
	border:1px solid #7493E5;
	display:inline-block;
}
</style>{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div class="op_baike"><table cellspacing="0"><tr><td style="padding-top:5px;padding-right:10px;"><a target="_blank" href="{%$tplData.icon[0]['iconlink']%}"><span class="op_baike_imgcon" style="background:url({%$tplData.icon[0]['iconaddress']%});background-position:center;background-repeat:no-repeat;"></span></a></td><td style="padding-top:5px;">{%$loop_maxcount=count($tplData.dl)%}{%for $op_loop_count=0 to 2%}{%if $op_loop_count<$loop_maxcount%} {%$tplData.dl[$op_loop_count]['dt']|highlight:4%}{%$tplData.dl[$op_loop_count]['dd']|highlight:4%}<br>{%else%}{%break%}{%/if%}{%/for%}<div>{%if $tplData.link[0]['linkurl']!=""%}<a target="_blank" href="{%$tplData.link[0]['linkurl']%}">{%$tplData.link[0]['linkcontent']|highlight:4%}</a>{%/if%}{%if $tplData.link[1]['linkurl']!=""%} - <a target="_blank" href="{%$tplData.link[1]['linkurl']%}">{%$tplData.link[1]['linkcontent']|highlight:4%}</a>{%/if%}{%if $tplData.link[2]['linkurl']!=""%} - <a target="_blank" href="{%$tplData.link[2]['linkurl']%}">{%$tplData.link[2]['linkcontent']|highlight:4%}</a>{%/if%}{%if $tplData.link[3]['linkurl']!=""%} - <a target="_blank" href="{%$tplData.link[3]['linkurl']%}">{%$tplData.link[3]['linkcontent']|highlight:4%}</a>{%/if%}</div><span style="color:#008000">{%$tplData.showurl%} {%$tplData.date%}</span></td></tr></table></div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}