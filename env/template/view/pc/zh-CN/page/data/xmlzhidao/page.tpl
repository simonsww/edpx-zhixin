{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}
{%$queryGBKEnc = $tplData.queryInfo.pQueryMap.ubs scope='global'%}
{%$dispNum = $tplData.asResult.asDataDispNum%}
{%$listNum = $tplData.asResult.asDataListNum%}
{%$pageNo = $tplData.queryInfo.pageNo scope='global'%}
{%$searchAction = 's' scope='global'%}
{%$rsNum = count($tplData.rsseResult.rsphrase)%}
{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}
{%$counter = ($pageNo-1)*$tplData.queryInfo.resNum+1 scope='global'%}
{%$resultNum = $tplData.asResult.adjResultNum + $tplData.asResult.spResultNum + $tplData.asResult.asResultNum%}
{%foreach $tplData.ecResult.ecResultItem as $ecom%}{%$adv[$ecom.id].content=$ecom.adContent scope='global'%}{%$adv[$ecom.id].num=$ecom.adNum scope='global'%}{%/foreach%}
<?xml version="1.0" encoding="GBK"?>
<psresults>
    <psstatus>OK</psstatus>
    <dispnum>{%$dispNum%}</dispnum>
    <listnum>{%$listNum%}</listnum>
    <maxretnum>10</maxretnum>
    <retnum>{%$resultNum%}</retnum>
    <curpage>{%$pageNo%}</curpage>
    <pword>{%$query|vui_escape:'html'%}</pword>
    <uword>{%$queryGBKEnc%}</uword>
    <hilight><![CDATA[{%$query|zhidaoXmlTrans%}]]></hilight>
    <queryform>
        <action>{%$searchAction%}</action>
        <word>{%$query|vui_escape:'html'%}</word>
        <cl>{%$urlPara.cl%}</cl>
        <ct>{%$urlPara.ct%}</ct>
        <tn>{%$urlPara.tn%}</tn>
    </queryform>

    <results>
    {%foreach $tplData.asResult.item as $res%}
    {%if $res.source == 2%}
    <result>
    <seqnum>{%if $counter <= $tplData.queryInfo.protectNum%}{%$counter%}{%else%}{%$counter + $adv[213].num%}{%/if%}</seqnum>
    <uri><![CDATA[{%$res.offsetInfo.url|encodeURI%}]]></uri>
    <title><![CDATA[{%$res.offsetInfo.title|highlight:2%}]]></title>
    <lastmod>{%$res.offsetInfo.lastModified%}</lastmod>
    <sizekb>{%$res.offsetInfo.size%}</sizekb>
    <abstract><![CDATA[{%$res.offsetInfo.summary|highlight:2%}]]></abstract>
    <shorturl><![CDATA[{%$res.offsetInfo.urlDisplay%}]]></shorturl>
    {%if $res.dispData.StdStg == 15%}
    <iknowres>
    <iknowurl><![CDATA[{%$res.dispData.ZhidaoUrl%}]]></iknowurl>
    <iknowtitle><![CDATA[{%$res.dispData.ZhidaoTitle%}]]></iknowtitle>
    <iknowabs><![CDATA[{%$res.offsetInfo.summary|vui_escape:'html'%}]]></iknowabs>
    <username><![CDATA[{%$res.dispData.ZhidaoQUserName%}]]></username>
    <ausername><![CDATA[{%$res.dispData.ZhidaoAUserName%}]]></ausername>
    <anonymous><![CDATA[{%$res.dispData.ZhidaoAnonymous%}]]></anonymous>
    <classid><![CDATA[{%$res.dispData.ZhidaoClassId%}]]></classid>
    <createtime><![CDATA[{%$res.dispData.ZhidaoCreateTimeInt%}]]></createtime>
    <replynum><![CDATA[{%$res.dispData.ZhidaoReplyNum%}]]></replynum>
    <lastreplytime><![CDATA[{%$res.dispData.ZhidaoFinishTimeInt%}]]></lastreplytime>
    <qid><![CDATA[{%$res.dispData.ZhidaoQId%}]]></qid>
    <qstatus><![CDATA[{%$res.dispData.ZhidaoQStatus%}]]></qstatus>
    <closestatus><![CDATA[{%$res.dispData.ZhidaoCloseStatus%}]]></closestatus>
    <weight><![CDATA[{%$res.urls.asUrls.weight & 0x0000FFFF%}]]></weight>
    {%if $res.dispData.ZhidaoOpenSiteId%}<openid><![CDATA[{%$res.dispData.ZhidaoOpenSiteId%}]]></openid>{%/if%}
    </iknowres>
    {%/if%} 
    </result>
    {%/if%} 
    {%$counter = $counter + 1 scope='global'%}
    {%/foreach%}
    </results>
</psresults>
