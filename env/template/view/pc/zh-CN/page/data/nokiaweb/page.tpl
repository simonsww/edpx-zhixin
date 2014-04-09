{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}
{%$dispNum = $tplData.asResult.asDataDispNum%}
{%$pageNo = $tplData.queryInfo.pageNo scope='global'%}
{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}
<?xml version="1.0" encoding="GBK"?>
<WebResults count="{%$urlPara.rn%}" offset="{%$pageNo%}" total="{%$tplData.asResult.asDataDispNum%}">

    {%foreach $tplData.asResult.item as $res%}
    {%if $res.source == 2 || $res.source == 4%}

    <result>
    <title><![CDATA[  {%$res.offsetInfo.title|vui_escape:'html'%}  ]]></title>
    <abstract><![CDATA[  {%$res.offsetInfo.summary|vui_escape:'html'%}  ]]></abstract>
    <url><![CDATA[  {%$res.offsetInfo.url|encodeURI%}  ]]></url>
    <snapurl><![CDATA[  http://cache.baidu.com/c?word={%$query|vui_escape:'url'%}&url={%$res.snapshootURL%}&user=nokiaweb  ]]></snapurl>
    </result>
    
    {%/if%}
    {%/foreach%}
</WebResults>
