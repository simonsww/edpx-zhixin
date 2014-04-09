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


</style><tr width="100%"><td class=f id="op_shopstore_td"> {%fe_fn_title_prefix%}<a href="{%fe_fn_title_url url="{%$tplData.url%}"%}" target="_blank"><font size="3">【{%$tplData.filteredQuery|limitlen:30|highlight:0%}】{%$tplData.TitleSuffix|highlight:0%}_百度商品搜索</font></a> {%fe_fn_title_suffix title="【{%$tplData.filteredQuery%}】{%$tplData.TitleSuffix|highlight:0%}_百度商品搜索" url="{%$tplData.url%}"%} <div class="op_mini_table01_content"><table cellspacing="0" id="op_shopstore" class="OP_TABLE_COMMON"><tr><th style="border-left:0;">优质商家</th><th>商品数量</th><th>服务保障</th></tr>{%$loop_maxcount=$tplData.resNum%}{%for $op_loop_count=0 to 4%}{%if $op_loop_count<$loop_maxcount%} {%if $tplData.result[$op_loop_count]['services']!=""%} {%if $tplData.result[$op_loop_count]['number']!=""%}<tr><td style="width:210"><a href="{%if $tplData.result[$op_loop_count]['loc']!=""%}{%$tplData.result[$op_loop_count]['loc']%}{%/if%}" target="_blank">{%if $tplData.seoInQuery!=""%}{%if $tplData.result[$op_loop_count]['store']!=""%}{%$tplData.result[$op_loop_count]['store']|limitlen:41|highlight:0%}{%/if%}{%if $tplData.result[$op_loop_count]['brand']!=""%}{%$tplData.result[$op_loop_count]['brand']|highlight:0%}{%/if%}{%$tplData.seoInQuery|highlight:0%}{%/if%}{%if $tplData.seoInQuery==""%}{%if $tplData.result[$op_loop_count]['store']!=""%}{%$tplData.result[$op_loop_count]['store']|limitlen:41|highlight:0%}{%/if%}{%if $tplData.result[$op_loop_count]['brand']!=""%}{%$tplData.result[$op_loop_count]['brand']|highlight:0%}{%/if%}{%if $tplData.result[$op_loop_count]['type']!=""%}{%$tplData.result[$op_loop_count]['type']|highlight:0%}{%/if%}{%if $tplData.result[$op_loop_count]['type']==""%}{%if $tplData.result[$op_loop_count]['attribute']!=""%}{%$tplData.result[$op_loop_count]['attribute']|highlight:0%}{%/if%}{%if $tplData.result[$op_loop_count]['attribute']==""%}{%if $tplData.result[$op_loop_count]['firsttype']!=""%}{%$tplData.result[$op_loop_count]['firsttype']|highlight:0%}{%/if%}{%/if%}{%/if%}{%/if%}专区</a></td><td width="90">{%if $tplData.result[$op_loop_count]['number']!=""%}{%$tplData.result[$op_loop_count]['number']|escape:'html'%}{%/if%}款</td><td>{%if $tplData.result[$op_loop_count]['services']!=""%}{%$tplData.result[$op_loop_count]['services']|limitlen:32|escape:'html'%}{%/if%}</td></tr>{%/if%}{%/if%}{%else%}{%break%}{%/if%}{%/for%}</table><div style="padding: 4px 0 2px;"><a style="color:#77C;font-size:12px;" href="{%$tplData.url%}" target="_blank">查看全部结果<span style="font-family:simsun">&gt;&gt;</span></a></div><div><font size=-1 color=#008000>open.baidu.com/</font> - <a target="_blank" href="http://open.baidu.com/" class="op_LAMP"></a></div></div></td></tr>{%/block%}