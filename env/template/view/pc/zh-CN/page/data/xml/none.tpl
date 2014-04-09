{%extends file='base_xml.tpl'%}
{%block name="xml_data"%}
	{%block name="xml_new"%}{%/block%}
	{%block name="xml_ex"%}{%/block%}
	<pinyin>{%$tplData.rsseResult.seword|objToXml:seword%}</pinyin>
	<relates>
	{%$tplData.rsseResult.rsphrase|objToXml:relate%}
	</relates>
{%/block%} 
