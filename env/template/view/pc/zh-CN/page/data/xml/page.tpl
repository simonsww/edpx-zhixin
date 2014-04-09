{%extends file='base_xml.tpl'%}


{%block name="xml_data"%}
<number><![CDATA[  {%$tplData.asResult.asDataDispNum%}  ]]></number>
<usm><![CDATA[  {%$tplData.queryInfo.pUrlConfig.usm%}  ]]></usm>

{%block name="top_result_data"%}
{%/block%}

{%$resIndex = 1 scope='global'%}
{%foreach $tplData.asResult.item as $res%}
<result>
{%block name="xml_config"%}{%/block%}
    <index><![CDATA[  {%$resIndex%}  ]]></index>
    <basicWeight><![CDATA[  {%$res.urls.asUrls.weight%}  ]]></basicWeight>
    <bdClickWeight><![CDATA[  {%$res.clickWeight%}  ]]></bdClickWeight>
    <bdAuthorWeight><![CDATA[  {%$res.authWeight%}  ]]></bdAuthorWeight>
    <titleurl><![CDATA[  {%$res.offsetInfo.urlEncoded%}  ]]></titleurl>
    <size><![CDATA[  {%$res.offsetInfo.size%}  ]]></size>
    <site><![CDATA[  {%$res.offsetInfo.url|limitlen:45%}  ]]></site>
	{%if $res.docType < 0%}
	<ressnapshootkey><![CDATA[  {%if strlen($res.snapshootKey)>0%}{%$res.snapshootKey%}{%/if%}  ]]></ressnapshootkey>
	{%else%}
		<doctype><![CDATA[  {%$res.docTypeBrief%}  ]]></doctype>
		<typedetail><![CDATA[  {%$res.docTypeDetail%}  ]]></typedetail>
	{%/if%}
    <abstract><![CDATA[  {%$res.offsetInfo.summary|highlight:6%}  ]]></abstract>
	<date><![CDATA[  {%$res.offsetInfo.lastModified%}  ]]></date>
    <resdispdata>
        {%$res.dispData|objToXml%}
    </resdispdata>
	{%block name="xml_ex"%}
	{%if $res.comeFrome=="SP"%}{%$res.offsetInfo.title%}{%else%}
	<title><![CDATA[ {%$res.offsetInfo.title|limitlen:100|highlight:2%}  ]]></title>    
	{%/if%}
	{%if $res.pageType%}<pagetype><![CDATA[  {%$res.pageType%}  ]]></pagetype>{%/if%}
	{%/block%} 
</result>
{%$resIndex = $resIndex + 1 scope='global'%}
{%/foreach%}
<pinyin>{%$tplData.rsseResult.seword|objToXml:seword%}</pinyin>
<relates>
	{%$tplData.rsseResult.rsphrase|objToXml:relate%}
</relates>
{%/block%}
