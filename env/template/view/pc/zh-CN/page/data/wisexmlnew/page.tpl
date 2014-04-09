{%extends file='xml/page.tpl'%}

{%block name="xml_config"%}

{%if $res.docType >=0%}
{%$lable_doctype1 = '文件格式:' scope='global'%}
{%$lable_doctype2 = 'HTML版' scope='global'%}
{%$cache_domain = 'http://cache.baidu.com' scope='global'%}
<typetxt><![CDATA[  {%$lable_doctype1%}  ]]></typetxt>
<doctypeurl><![CDATA[  {%$cache_domain%}/c?{%$res.snapshootKey%}&user=baidu  ]]></doctypeurl>
<doctypeurltext><![CDATA[  {%$lable_doctype2%}  ]]></doctypeurltext>
{%/if%}

{%/block%}

{%block name="top_result_data"%}
{%if $tplData.topResult%}
<topResult>
{%foreach $tplData.topResult.item as $res%}
    <result>
        <index><![CDATA[  {%$res@iteration%}  ]]></index>
        <resdispdata>
            {%$res.dispData|objToXml%}
        </resdispdata>
        {%if $res.display%}
            {%$res.display%}
        {%/if%}
        <sourceId><![CDATA[  {%$res.dispData.SrcId%}  ]]></sourceId>
        <ressrcid><![CDATA[  {%if $res.dispData.StdStg%}{%$res.dispData.StdStg%}{%/if%}  ]]></ressrcid>
    </result>
{%/foreach%}
</topResult>
{%/if%}
{%/block%}

{%block name="xml_ex"%}
	<viewui><![CDATA[  1  ]]></viewui>
	<templateName><![CDATA[  {%$res.dispData.templateName%}  ]]></templateName>
    {%if $res.comeFrome=="SP"%}{%$res.offsetInfo.title%}{%else%}
    <title><![CDATA[ {%$res.offsetInfo.title|limitlen:100|highlight:2%}  ]]></title>    
    {%/if%}
	{%if $res.pageType%}<pagetype><![CDATA[  {%$res.pageType%}  ]]></pagetype>{%/if%}
    {%if $res.comeFrome=="SP"%}
    <sourceId><![CDATA[  {%$res.dispData.SrcId%}  ]]></sourceId>
    {%/if%}
	<ressrcid><![CDATA[  {%if $res.dispData.StdStg%}{%$res.dispData.StdStg%}{%/if%}  ]]></ressrcid>

{%/block%} 
