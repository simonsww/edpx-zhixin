{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}
{%$queryGBKEnc = $tplData.queryInfo.pQueryMap.ubs scope='global'%}
{%$dispNum = $tplData.asResult.asDataDispNum%}
{%$rsNum = count($tplData.rsseResult.rsphrase)%}
{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}
{%$pageNo = $tplData.queryInfo.pageNo scope='global'%}
{%$counter = ($pageNo-1)*$tplData.queryInfo.resNum+1 scope='global'%}
{%$searchAction = 's' scope='global'%}
<?xml version="1.0" encoding="GBK"?>
<psresults>
<psstatus>OK</psstatus>
<num>{%$dispNum%}</num>
<maxretnum>10</maxretnum>
<curpage>{%$pageNo%}</curpage>
<pword>{%$query|vui_escape:'html'%}</pword>
<uword>{%$queryGBKEnc%}</uword>
<queryform>
<action>{%$searchAction%}</action>
<word>{%$query|vui_escape:'html'%}</word>
<cl>{%$urlPara.cl%}</cl>
<ct>{%$urlPara.ct%}</ct>
<tn>{%$urlPara.tn%}</tn>
</queryform>

<resultlist>
{%$resIndex = 1 scope='global'%}
{%foreach $tplData.asResult.item as $res%}
{%if $res.source == 1%}
<result>
<seqnum>{%$counter%}</seqnum>
<uri><![CDATA[http://www.baidu.com/baidu.php?url={%$res.offsetInfo.url|encodeURI%}]]></uri>
<title><![CDATA[{%$res.offsetInfo.title|real%}]]></title>
<lastmod>{%$res.offsetInfo.lastModified%}</lastmod>
<sizekb>{%$res.offsetInfo.size%}</sizekb>
<abstract><![CDATA[{%$res.offsetInfo.summary|vui_escape:'html'%}]]></abstract>
</result>
{%/if%}
{%if $res.source == 6%}{%$res.offsetInfo.title%}{%/if%}
{%if $res.source == 4 || $res.source == 2%}
<result>
<seqnum>{%$counter%}</seqnum>
<uri><![CDATA[{%$res.offsetInfo.url|encodeURI%}]]></uri>
<title><![CDATA[{%$res.offsetInfo.title|real%}]]></title>
<lastmod>{%$res.offsetInfo.lastModified%}</lastmod>
<sizekb>{%$res.offsetInfo.size%}</sizekb>
<abstract><![CDATA[{%$res.offsetInfo.summary|vui_escape:'html'%}]]></abstract>
</result>
{%/if%} 
{%$resIndex = $resIndex + 1 scope='global'%}
{%$counter = $counter + 1 scope='global'%}
{%/foreach%}
</resultlist>
</psresults>
