{%$dispNum = $tplData.asResult.asDataDispNum%}
{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}
{%block name="global_vars"%}{%$isWisePad = 0 scope='global'%}{%/block%}
<?xml version="1.0" encoding="gb2312"?>
<webwrapper>

<number><![CDATA[  {%$dispNum%}  ]]></number>
<usm><![CDATA[  {%$urlPara.usm%}  ]]></usm>

{%$resIndex = 1 scope='global'%}
{%foreach $tplData.asResult.item as $res%}

<result>

{%*特殊库结果*%}
{%if $res.source == 3%}
{%if $isWisePad%}
<sourceId>{%$res.dispData.SrcId%}</sourceId>
<htmlBody><![CDATA[
{%/if%}
{%$res.offsetInfo.title%}
{%if $isWisePad%}
]]></htmlBody>
{%/if%}
{%/if%}

{%if $res.source == 4 || $res.source == 2%}

{%if $res.dispData.StdStg == 17%}
<title><![CDATA[  {%$res.offsetInfo.title|highlight:2%} ]]></title>
<titleurl><![CDATA[  {%$res.offsetInfo.url|encodeURI%}?fr=ala0&fr2=wise ]]></titleurl>
<abstract><![CDATA[  {%$res.offsetInfo.summary|highlight:6%}  ]]></abstract>
<date><![CDATA[  {%$res.dispData.ZhidaoFinishTime%} ]]></date>

{%elseif $res.dispData.StdStg == 18%}
<title><![CDATA[  {%$res.offsetInfo.title|highlight:2%} ]]></title>
<titleurl><![CDATA[  {%$res.offsetInfo.url|encodeURI%}?fr=alawk&fr2=wise ]]></titleurl>
<abstract><![CDATA[  {%$res.offsetInfo.summary|highlight:6%}  ]]></abstract>
<date><![CDATA[  {%$res.dispData.WenkuPostTime%} ]]></date>

{%else%}
<title><![CDATA[  {%$res.offsetInfo.title|highlight:2%}  ]]></title>
<titleurl><![CDATA[  {%$res.offsetInfo.url|encodeURI%}  ]]></titleurl>
<abstract><![CDATA[  {%$res.offsetInfo.summary|highlight:6%}  ]]></abstract>
<size><![CDATA[  {%$res.offsetInfo.size%}  ]]></size>
<date><![CDATA[  {%$res.offsetInfo.lastModified%}  ]]></date>
{%if $res.docType < 0%}<cache><![CDATA[  {%if strlen($res.snapshootKey)%}http://cache.baidu.com/c?{%$res.snapshootKey%}&amp;user=baidu{%/if%}  ]]></cache>{%/if%}

{%/if%}

{%/if%}


</result>

{%$resIndex = $resIndex + 1 scope='global'%}
{%/foreach%}

</webwrapper>
