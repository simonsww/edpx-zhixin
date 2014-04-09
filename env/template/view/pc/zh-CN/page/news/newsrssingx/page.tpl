<?xml version="1.0" encoding="gb2312"?>
<results>
{%function name="result"%}
{%strip%}	
{%if $type == "newsrssingx"%}
	<table cellspacing=0 cellpadding=5 border=0><tr>{%if $data.dispData.ThumURL%}<td valign=top align=middle><div style="padding:2px"><a class=r href="{%$data.offsetInfo.url|escape:'html'%}" mon="ph" target=_blank><img src="{%$data.dispData.ThumURL|escape:'html'%}" border=1></a></div></td>{%/if%}<td valign=top><a href="{%$data.offsetInfo.url|escape:'html'%}" mon="ph" target=_blank><font style=font-size:14px><b>{%$data.offsetInfo.title|highlight:2%}</b></font></a><font color=#6f6f6f><nobr>{%$data.dispData.rtses|escape:'html'%} {%$data.dispData.rtset|escape:'html'|date_format:'%Y-%m-%d %T'%}</nobr></font><br><font size=-1>{%$data.offsetInfo.summary|highlight:2%}</font>&nbsp;&nbsp;{%if $data.dispData.contnum >0%}<a href="/ns?word={%$queryEnc|escape:'html'%}+cont:{%$data.dispData.contsign|escape:'html'%}&same={%$data.dispData.contnum|escape:'html'%}&cl=1&tn=news&rn=30" target=_blank><font color=#008000>{%$data.dispData.contnum|escape:'html'%}条相同新闻&gt;&gt;</a></font>{%/if%}</td></tr></table>
{%elseif $type == "newsrsstingx"%}
	<span>&#8226;&nbsp;<a href="{%$data.offsetInfo.url|escape:'html'%}" mon="ph" target=_blank>{%$data.offsetInfo.title|highlight:2%}</a>&nbsp;<font color=#6f6f6f size=1>{%$data.dispData.rtses|escape:'html'%} {%$data.dispData.rtset|escape:'html'|date_format:'%Y-%m-%d %T'%}</font>&nbsp;&nbsp;{%if $data.dispData.contnum >0%}<a href="/ns?word={%$queryEnc|escape:'html'%}+cont:{%$data.dispData.contsign|escape:'html'%}&same={%$data.dispData.contnum|escape:'html'%}&cl=1&tn=newstitle&rn=30" target=_blank><font color=#008000 style="font-size:12px">{%$data.dispData.contnum|escape:'html'%}条相同新闻&gt;&gt;</a></font>{%/if%}<br></span>{%if $index is div by 10%}<br>{%/if%}
  {%/if%}
{%strip%}
{%/function%}
{%$query = $tplData.queryInfo.wordNoSyntax%}
{%$inTitle = false%}
{%if preg_match("/^title:/i",$query) !=0%}
  {%$queryEnc = preg_replace("/^title:/i","",$query)%}
  {%$inTitle = true%}
  {%$jumpTn = "newstitle"%}
{%else%}
  {%$queryEnc = $query%}
  {%$jumpTn = "news"%}
{%/if%}
  <data><![CDATA[<div class="rescnt">{%foreach $tplData.asResult.item as $res%}{%result data=$res index=$res@iteration type=$tplData.queryInfo.pUrlConfig.tn%}{%/foreach%}<div align="right"><a href="/ns?word={%$queryEnc%}&tn={%$jumpTn%}&cl=2&rn=20&ct={%if $tplData.queryInfo.pUrlConfig.rtt == 6%}0{%else%}1{%/if%}" target=_blank><font color=#261cdc>更多{%$queryEnc%}新闻&gt;&gt;</font></a>&nbsp;</div></div>]]></data>
</results>
