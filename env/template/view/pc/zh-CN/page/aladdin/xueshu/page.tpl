{%extends 'c_base.tpl'%} {%block name='data_modifier'%} {%$extData.feData.hasTitleGap=false%}{%/block%}{%block name='title'%}{%/block%}{%block name='content'%} {%fe_fn_c_title_prefix%}<a href="{%fe_fn_c_title_url url="{%$tplData.url%}"%}" target="_blank">{%$extData.OriginQuery|highlight:0%}_百度学术</a>{%fe_fn_c_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%} <div class="op_xueshu_wrap"> {%if $tplData.exactMatch!=""%} <div class="op_xueshu_exactMatch"> {%$loop_maxcount=$tplData.resNum%}{%for $op_loop_count=0 to 5%}{%if $op_loop_count<$loop_maxcount%} <div class="op_xueshu_site">{%$tplData.result[$op_loop_count]['firstauthor']|escape:'html'%}{%if $tplData.result[$op_loop_count]['source']!=""%}&nbsp;《{%$tplData.result[$op_loop_count]['source']|escape:'html'%}》{%else%}{%/if%}{%if $tplData.result[$op_loop_count]['date']!=""%}&nbsp;{%$tplData.result[$op_loop_count]['date']|escape:'html'%}年{%/if%}{%if $tplData.result[0]['volume']!=""%}&nbsp;第{%$tplData.result[0]['volume']|escape:'html'%}期{%/if%}</div> <div>{%if $tplData.result[0]['abstract']!=""%}{%$tplData.result[0]['abstract']|limitlen:156|highlight:0%}{%else%}{%/if%}</div> <div class="op_xueshu_sources c-offset"> <div class="op_xueshu_briefsource"></div> <div class="op_xueshu_moresource op_xueshu_hide op_xueshu_width"></div> </div> {%else%}{%break%}{%/if%}{%/for%} </div> <div class="op_xueshu_exactButtons c-offset">{%if $tplData.result[0]['clusterNum']==1%}{%else%}<span class="op_xueshu_open OP_LOG_BTN"><i class="c-icon c-icon-unfold"></i>&nbsp;查看全部{%$tplData.result[0]['clusterNum']%}条结果</span><span class="op_xueshu_close OP_LOG_BTN op_xueshu_hide"><i class="c-icon c-icon-fold"></i>&nbsp;收起</span>{%/if%}</div> {%else%} <ul class="c-offset"> {%$loop_maxcount=$tplData.resNum%}{%for $op_loop_count=0 to 5%}{%if $op_loop_count<$loop_maxcount%} <li> {%$lenMax = 68 - ($tplData.result[$op_loop_count]['firstauthor']|string_display_len) - (($tplData.result[$op_loop_count]['date'])?($tplData.result[$op_loop_count]['date']|string_display_len):0) - (($tplData.result[$op_loop_count]['source'])?($tplData.result[$op_loop_count]['source']|string_display_len):0) - ($tplData.result[$op_loop_count]['site']|string_display_len)%} <span class="op_xueshu_special">{%if $tplData.result[$op_loop_count]['authority']==1%}免费下载&nbsp;&nbsp;{%/if%}{%if $tplData.result[$op_loop_count]['authority']==2%}在线阅读&nbsp;&nbsp;{%/if%}{%if $tplData.result[$op_loop_count]['authority']==3%}付费下载&nbsp;&nbsp;{%/if%}</span>&nbsp;<span title="{%$tplData.result[$op_loop_count]['title']|escape:'html'%}；{%$tplData.result[$op_loop_count]['firstauthor']|escape:'html'%} {%if $tplData.result[$op_loop_count]['date']!=""%}{%$tplData.result[$op_loop_count]['date']|escape:'html'%}年{%/if%} {%if $tplData.result[$op_loop_count]['source']!=""%}《{%$tplData.result[$op_loop_count]['source']|escape:'html'%}》{%/if%}"><a href="{%$tplData.result[$op_loop_count]['loc']|escape:'html'%}" target="_blank" class="op_xueshu_dl op_xueshu_aTitle">{%$tplData.result[$op_loop_count]['title']|limitlen :"$lenMax"|highlight:0%}</a> {%$tplData.result[$op_loop_count]['firstauthor']|escape:'html'%} {%if $tplData.result[$op_loop_count]['date']!=""%}{%$tplData.result[$op_loop_count]['date']|escape:'html'%}{%/if%} {%if $tplData.result[$op_loop_count]['source']!=""%}{%$tplData.result[$op_loop_count]['source']|escape:'html'%}{%/if%} </span><span class="op_xueshu_site">{%$tplData.result[$op_loop_count]['site']|escape:'html'%}</span> </li> {%else%}{%break%}{%/if%}{%/for%} </ul> <div class="c-offset"><a target="_blank" href="{%$tplData.url%}" style="color: rgb(119, 119, 204); font-size: 12px;" class="op_xueshu_dl">查看全部{%$tplData.dispNum%}条结果<span style="font-family: simsun;">&gt;&gt;</span></a></div> {%/if%} <div class="c-offset"><span class="c-showurl">open.baidu.com/</span> - <a class="op_LAMP op_xueshu_dl" href="http://open.baidu.com/" target="_blank"></a></div> </div><script >
A.setup(function() {
window.op_xueshu_exactMatch_flag = false;
//精需求数据初始化
{%if $tplData.exactMatch!=""%};

var format = '';
var showcol3 = '';
{%if $tplData.result[0]['format']==1%};
format = 'PDF格式';
{%/if%};
{%if $tplData.result[0]['format']==2%};
format = 'CAJ格式';
{%/if%};
{%if $tplData.result[0]['format']==3%};
format = 'DOC格式';
{%/if%};
{%if $tplData.result[0]['format']==4%};
format = 'XLS格式';
{%/if%};
{%if $tplData.result[0]['format']==5%};
format = 'PPT格式';
{%/if%};
{%if $tplData.result[0]['format']==6%};
format = '其他格式';
{%/if%};

{%if $tplData.result[0]['authority']==3%};
var str = [format, '{%if $tplData.result[0]['method']!=""%}{%$tplData.result[0]['method']|escape:'html'%}{%/if%}'].join(' ');
var maxlen = 50;
if ($.getByteLength(str) > maxlen) {
    showcol3 = $.subByte(str, maxlen) + '...';
}else {
    showcol3 = str;
}
{%else%};
    showcol3 = format;
{%/if%};

window.op_xueshu_briefhtml = $.format('<div class="op_xueshu_sources_col1">#{0}</div><div class="op_xueshu_sources_col2"><a href="{%$tplData.result[0]['loc']|escape:'html'%}" class="op_xueshu_dl" title="该结果由{%$tplData.result[0]['sitelink']|escape:'html'%}提供" target="_blank">{%if $tplData.result[0]['authority']==1%}免费下载{%/if%}{%if $tplData.result[0]['authority']==2%}在线阅读{%/if%}{%if $tplData.result[0]['authority']==3%}付费下载{%/if%}</a></div><div class="op_xueshu_sources_col3">#{1}</div><div style="clear:both;"></div>',
    $.subByte('{%$tplData.result[0]['site']|escape:'html'%}', 12), showcol3);
window.op_xueshu_exactNum = '{%$tplData.result[0]['clusterNum']%}';
window.op_xueshu_url = '{%$tplData.url%}';
window.op_xueshu_query = '{%$tplData.result[0]['title']|escape:'html'%}';
window.op_xueshu_titlesign = '{%$tplData.result[0]['title']|escape:'html'%}' + '{%$tplData.result[0]['firstauthor']|escape:'html'%}';
window.op_xueshu_articleLoc = '{%$tplData.result[0]['loc']|escape:'html'%}';
window.op_xueshu_exactMatch_flag = true;
{%/if%};
});
</script>{%/block%}