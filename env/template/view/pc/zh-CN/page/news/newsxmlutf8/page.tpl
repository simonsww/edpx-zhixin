<?xml version="1.0" encoding="UTF-8" ?>
<sinews>
{%foreach $tplData.asResult.item as $res%}
<news>
<title><![CDATA[{%$res.offsetInfo.title|highlight:2%}]]></title>
<abs><![CDATA[{%$res.offsetInfo.summary|highlight:2%}]]></abs>
<url><![CDATA[{%$res.offsetInfo.url|escape:'html'%}]]></url>
<time>{%$res.dispData.rtset|escape:'html'%}</time>
<author><![CDATA[{%$res.dispData.rtses|escape:'html'%}]]></author>
<imgUrl><![CDATA[$res.dispData.ThumURL|escape:'html'%}]]></imgUrl>
</news>
{%/foreach%}
</sinews>
