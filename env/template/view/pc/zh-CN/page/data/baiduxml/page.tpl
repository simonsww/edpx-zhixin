{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}
{%$dispNum = $tplData.asResult.asDataDispNum%}
{%$topHint = $tplData.asResult.topHint scope='global'%}
{%$seNum = count($tplData.rsseResult.seword)%}
{%$rsNum = count($tplData.rsseResult.rsphrase)%}
{%foreach $tplData.ecResult.ecResultItem as $ecom%}{%$adv[$ecom.id].content=$ecom.adContent scope='global'%}{%$adv[$ecom.id].num=$ecom.adNum scope='global'%}{%/foreach%}
<?xml version="1.0" encoding="GBK"?>
<baiduxml>
<query><![CDATA[{%$query|domain|vui_escape:'html'%}]]></query>
<baiduresults>
    <adresults>
        {%if $tplData.templateConfig.baiduxml_ppim == 1%}
            {%$adv[213].content%}
        {%/if%}
        {%if $tplData.templateConfig.baiduxml_pp == 1%}
            {%$adv[204].content%}
        {%/if%}
        {%if $tplData.templateConfig.baiduxml_im == 1%}
            {%$adv[1].content%}
        {%/if%}
    </adresults>
    {%if $tplData.templateConfig.baiduxml_as == 1%}
        <webresults>
            <totalResults><![CDATA[{%$dispNum%}]]></totalResults>
            <availableResults><![CDATA[{%if $tplData.asResult.asDataDispNum> 760%}760{%else%}{%$dispNum%}{%/if%}]]></availableResults>
            {%if $tplData.templateConfig.showlistnum == 1%}<listResults><![CDATA[{%$tplData.asResult.asDataListNum%}]]></listResults>{%/if%}
            <resultset>
                {%foreach $tplData.asResult.item as $res%}
                {%if $res.source == 4 || $res.source == 2%}
                    <result>
                        <title><![CDATA[{%$res.offsetInfo.title|highlight:2%}]]></title>
                        <url><![CDATA[{%$res.offsetInfo.urlEncoded%}]]></url>
                        <abstract><![CDATA[{%$res.offsetInfo.summary|highlight:2%}]]></abstract>
                        <date><![CDATA[{%$res.offsetInfo.lastModified%}]]></date>
                        <site><![CDATA[{%$res.offsetInfo.url|limitlen:45%}]]></site>
                        <cache><![CDATA[{%$tplData.templateConfig.cache_domain%}/c?{%$res.snapshootKey%}&user=baidu]]></cache>
                    </result>
                {%/if%}
                {%/foreach%}
            </resultset>
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
    {%/if%}
</baiduresults>
</baiduxml>
