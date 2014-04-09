{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}
{%$dispNum = $tplData.asResult.asDataDispNum%}
{%$topHint = $tplData.asResult.topHint scope='global'%}
{%$seNum = count($tplData.rsseResult.seword)%}
{%$rsNum = count($tplData.rsseResult.rsphrase)%}
<?xml version="1.0" encoding="gb2312"?>
<webwrapper>
    <query>
        <![CDATA[{%$query|vui_escape:'html'%}]]>
    </query>
    <news>
        {%foreach $tplData.asResult.item as $res%}
        {%if $res.source == 2%}
            <subnews>
            <title><![CDATA[{%$res.offsetInfo.title|highlight:2%}]]></title>
                <sitename><![CDATA[{%if $res.dispData.rtses%}{%$res.dispData.rtses%}{%/if%}]]></sitename>
                <posttime><![CDATA[{%if $res.dispData.rtset%}{%$res.dispData.rtset%}{%/if%}]]></posttime>
                <abstract><![CDATA[{%$res.offsetInfo.summary|highlight:2%}]]></abstract>
                <url><![CDATA[{%$res.offsetInfo.url|encodeURI%}]]></url>
                {%if $res.dispData.ThumURL%}<imgurl><![CDATA[{%$res.dispData.ThumURL%}]]></imgurl>{%/if%}
            </subnews>
        {%/if%}
        {%/foreach%}
    </news>
</webwrapper>

