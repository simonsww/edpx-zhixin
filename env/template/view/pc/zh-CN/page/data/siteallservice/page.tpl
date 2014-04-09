{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}
{%$queryGBKEnc = $tplData.queryInfo.pQueryMap.ubs scope='global'%}
{%$dispNum = $tplData.asResult.asDataDispNum%}
{%$rsNum = count($tplData.rsseResult.rsphrase)%}
{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}
{%$pageNo = $tplData.queryInfo.pageNo scope='global'%}
{%$counter = ($pageNo-1)*$tplData.queryInfo.resNum+1 scope='global'%}
{%$searchAction = 's' scope='global'%}
{%foreach $tplData.ecResult.ecResultItem as $ecom%}{%$adv[$ecom.id].content=$ecom.adContent scope='global'%}{%$adv[$ecom.id].num=$ecom.adNum scope='global'%}{%/foreach%}
<?xml version="1.0" encoding="GBK"?>
<psresults>
<psstatus>OK</psstatus>
<num>{%$dispNum%}</num>
<bdListNum>{%if $dispNum > 760%}760{%else%}{%$dispNum%}{%/if%}</bdListNum>
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
<title><![CDATA[{%$res.offsetInfo.title|highlight:2%}]]></title>
<lastmod>{%$res.offsetInfo.lastModified%}</lastmod>
<sizekb>{%$res.offsetInfo.size%}</sizekb>
<abstract><![CDATA[{%$res.offsetInfo.summary|highlight:2%}]]></abstract>
<shorturl><![CDATA[{%$res.offsetInfo.urlDisplay|url_limit:45%} ]]></shorturl>
</result>
{%/if%}
{%if $res.source == 6%}{%$res.offsetInfo.title%}{%/if%}
{%if $res.source == 4 || $res.source == 2%}
<result>
<seqnum>{%if $counter <= $tplData.queryInfo.protectNum%}{%$counter%}{%else%}{%$counter + $adv[213].num%}{%/if%}</seqnum>
<uri><![CDATA[{%$res.offsetInfo.url|encodeURI%}]]></uri>
<title><![CDATA[{%$res.offsetInfo.title|highlight:2%}]]></title>
<lastmod>{%$res.offsetInfo.lastModified%}</lastmod>
<sizekb>{%$res.offsetInfo.size%}</sizekb>
<abstract><![CDATA[{%$res.offsetInfo.summary|highlight:2%}]]></abstract>
<shorturl><![CDATA[{%$res.offsetInfo.urlDisplay|url_limit:45%} ]]></shorturl>
{%if strlen($res.snapshootKey)%}
{%if $res.docType < 0%}

<cacheurl><![CDATA[http://cache.baidu.com/c?{%$res.snapshootKey%}&user=baidu]]></cacheurl>
{%/if%}
{%/if%}
</result>
{%/if%} 
{%$resIndex = $resIndex + 1 scope='global'%}
{%$counter = $counter + 1 scope='global'%}
{%/foreach%}
</resultlist>
<RssResults>
{%for $index=0 to 9%}
{%$rsWord = $tplData.rsseResult.rsphrase[$index]%}
<RelatedSearch><item><![CDATA[{%if $index < $rsNum%}{%$rsWord.phrase|vui_escape:'html'%}{%/if%}]]></item></RelatedSearch>
{%/for%}
</RssResults>
</psresults>
