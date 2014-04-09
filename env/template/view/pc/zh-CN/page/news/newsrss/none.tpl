<?xml version="1.0" encoding="gb2312"?>
<rss version="2.0">
<channel>
{%$query = $tplData.queryInfo.wordNoSyntax%}
{%if preg_match("/^title:/i",$query) !=0%}
  {%$queryEnc = preg_replace("/^title:/i","",$query)%}
{%else%}
  {%$queryEnc = $query%}
{%/if%}
  <title>百度新闻搜索_{%$queryEnc%}</title>
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
</channel>
</rss>