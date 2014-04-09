{%extends 'base.tpl'%} {%block name='content'%}<style >

.op_mini_table01_content table{margin-top:4px;}
.op_mini_table01_content th{text-align:left;white-space:nowrap;background:url("http://www.baidu.com/aladdin/img/table/bg.gif") repeat-x 0 -37px;font-weight:normal;height:26px;line-height:26px;font-size:13px;padding:0 10px 0 8px;}
.op_mini_table01_content td{white-space:nowrap;font-size:14px;border-bottom:#eee 1px solid;}


.OP_TABLE_COMMON{
  width:100%;
}
.OP_TABLE_COMMON td{
  padding:7px 10px 7px 8px;
  font-size:14px;
}
.OP_TABLE_COMMON a,.OP_TABLE_COMMON a em{
  text-decoration:none;
}
.OP_TABLE_COMMON a:hover,.OP_TABLE_COMMON a:hover em{
  text-decoration:underline;
}


</style><tr><td class=f><h3 class="t"><a href="{%$tplData.url%}" target="_blank"><font size="3">{%$extData.OriginQuery|limitlen:30|highlight:0%}_{%$tplData.TitleSuffix|limitlen:100|highlight:0%}{%$tplData.dispNum%}条_百度软件搜索</font></a><span class="tsuf tsuf-op" data="{title : '{%$extData.OriginQuery|escape:'javascript'%}_{%$tplData.TitleSuffix|limitlen:100|highlight:0%}{%$tplData.dispNum%}条_百度软件搜索', link : '{%$tplData.url|escape:'javascript'%}'}"></span></h3><div class="op_mini_table01_content op_software"> <table cellspacing="0" class="OP_TABLE_COMMON"><tr><th style="border-left:0;">软件名称</th><th>软件大小</th><th>来源</th></tr>{%$loop_maxcount=$tplData.resNum%}{%for $op_loop_count=0 to 5%}{%if $op_loop_count<$loop_maxcount%} <tr><td> {%if $tplData.result[$op_loop_count]['title']!=""%}{%if $tplData.result[$op_loop_count]['loc']!=""%}<a target="_blank" href="{%$tplData.result[$op_loop_count]['loc']%}" >{%/if%}{%$tplData.result[$op_loop_count]['title']|limitlen:41|highlight:0%}{%if $tplData.result[$op_loop_count]['loc']!=""%}</a>{%/if%}{%/if%}</td><td width="120px;"> {%if $tplData.result[$op_loop_count]['size']!=""%}{%if $tplData.result[$op_loop_count]['col1link']!=""%}<a target="_blank" href="{%$tplData.result[$op_loop_count]['col1link']%}">{%/if%}{%$tplData.result[$op_loop_count]['size']%}{%if $tplData.result[$op_loop_count]['col1link']!=""%}</a>{%/if%}{%/if%} </td><td> {%if $tplData.result[$op_loop_count]['source']!=""%}{%if $tplData.result[$op_loop_count]['col3link']!=""%}<a target="_blank" href="{%$tplData.result[$op_loop_count]['col3link']%}">{%/if%}{%$tplData.result[$op_loop_count]['source']%}{%if $tplData.result[$op_loop_count]['col3link']!=""%}</a>{%/if%}{%/if%} </td></tr> {%else%}{%break%}{%/if%}{%/for%} </table> {%if $tplData.MoreResult!=""%}<div style="padding:4px 0 2px;"><a style="color:#7777CC;font-size:12px;" href="{%$tplData.url%}" target="_blank">查看全部{%$tplData.dispNum%}条结果<span style="font-family:simsun">&gt;&gt;</span></a></div>{%/if%}<div><span style="color:#008000;font-size:13px">open.baidu.com/</span> - <a target="_blank" href="http://open.baidu.com/" class="op_LAMP"></a></div></div></td></tr>{%/block%}