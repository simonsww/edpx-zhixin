{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}
{%$seNum = count($tplData.rsseResult.seword)%}
{%$rsNum = count($tplData.rsseResult.rsphrase)%}
<?xml version="1.0" encoding="gb2312"?>
<baiduxml>
    <query><![CDATA[{%$query|domain|vui_escape:'html'%}]]></query>
    <baiduresults>
        <adresults></adresults>
        <webresults>
            <totalResults><![CDATA[0]]></totalResults>
            <availableResults><![CDATA[0]]></availableResults>
        </webresults>
        <corrections>
            {%if ($topHint & 0x4) != 0%}
                {%for $index=0 to $seNum-1%}
                    {%$seWord = $tplData.rsseResult.seword[$index]%}
                    <correction><![CDATA[{%$seWord|vui_escape:'html'%}]]></correction>
                {%/for%}
            {%/if%}
        </corrections>
        <relates>
            {%if $rsNum > 0%}
                {%for $index=0 to 9%}
                {%$rsWord = $tplData.rsseResult.rsphrase[$index]%}
                {%if $rsWord%}<relate><![CDATA[{%$rsWord.phrase|vui_escape:'html'%}]]></relate>{%/if%}
                {%/for%}
            {%/if%}
        </relates>
    </baiduresults>
</baiduxml>
