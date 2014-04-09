<?xml version="1.0" encoding="gb2312"?>
<rss version="2.0">
<channel>
{%$query = $tplData.queryInfo.wordNoSyntax%}
{%$inTitle = false%}
{%if preg_match("/^title:/i",$query) !=0%}
	{%$queryEnc = preg_replace("/^title:/i","",$query)%}
	{%$inTitle = true%}
{%else%}
	{%$queryEnc = $query%}
{%/if%}
  <title>百度新闻{%if $inTitle%}标题搜索_{%$queryEnc|escape:'html'%}{%else%}全文搜索_{%$queryEnc|escape:'html'%}{%/if%}
  </title>
  <image>
    <title>news.baidu.com</title>
    <link>http://news.baidu.com</link>
    <url>http://img.baidu.com/img/logo-news.gif</url>
  </image>
  <description></description>
  <link>http://news.baidu.com</link>
  <language>zh-cn</language>
  <docs></docs>
  <generator>www.baidu.com</generator>
  <ttl>5</ttl>
  {%foreach $tplData.asResult.item as $res%}
		<item>
			<title><![CDATA[{%$res.offsetInfo.title|highlight:2%}]]></title>
			<link><![CDATA[{%$res.offsetInfo.url|escape:'html'%}]]></link>
			<description><![CDATA[{%if $res.dispData.ThumURL%}<a href={%$res.offsetInfo.url|escape:'html'%} target=_blank><img src={%$res.dispData.ThumURL|escape:'html'%} border=0></a><br>{%/if%}{%$res.offsetInfo.summary|highlight:2%}]]></description>
			<pubDate><![CDATA[{%$res.dispData.rtset|escape:'html'|date_format:"%a, %d %b %Y %T"%}]]></pubDate>
			<source><![CDATA[{%$res.dispData.rtses|escape:'html'%}]]></source>
			<author><![CDATA[{%$res.dispData.rtses|escape:'html'%}]]></author>
		</item>
  {%/foreach%}
</channel>
</rss>