{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}
<?xml version="1.0" encoding="gb2312"?>
<webwrapper>
    {%foreach $tplData.asResult.item as $res%}
    {%if $res.source == 3%}
    {%if $res.dispData.StdStg == 19%}
    <query><![CDATA[{%$query|limitlen:58|vui_escape:'html'%}]]></query>
    <queryurl><![CDATA[  {%$res.offsetInfo.url|encodeURI%}  ]]></queryurl>
    {%/if%}
    {%/if%}
    {%/foreach%}
</webwrapper>
