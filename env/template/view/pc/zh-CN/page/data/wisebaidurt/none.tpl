{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}
{%$seNum = count($tplData.rsseResult.seword)%}
{%$rsNum = count($tplData.rsseResult.rsphrase)%}
<?xml version="1.0" encoding="gb2312"?>
<webwrapper>

{%if $rsNum > 0%}
{%for $index=0 to 9%}
{%$rsWord = $tplData.rsseResult.rsphrase[$index]%}
<relate><![CDATA[  {%if $rsWord%}<a href="baidu?w={%$rsWord.phrase|vui_escape:'url'%}&rsp={%$index%}&oq={%$query|vui_escape:'url'%}&f=1{%if $urlPara.cl != 3%}&cl={%$urlPara.cl%}{%/if%}{%if $urlPara.ct != 0%}&ct={%$urlPara.ct%}{%/if%}{%if $urlPara.tn != baidu%}&tn={%$urlPara.tn%}{%/if%}{%if $urlPara.rn != 10%}&rn={%$urlPara.rn%}{%/if%}{%if $urlPara.ie != utf-8%}&ie={%$urlPara.ie%}{%/if%}{%if $urlPara.lm != 0%}&lm={%$urlPara.lm%}{%/if%}{%if strlen($urlPara.si)%}&si={%$urlPara.si%}{%/if%}{%if $urlPara.ch != 0%}&ch={%$urlPara.ch%}{%/if%}{%if strlen($urlPara.sts)%}&sts={%$urlPara.sts|vui_escape:'url'%}{%/if%}{%if $urlPara.z_type == 3%}&z={%$urlPara.z|vui_escape:'url'%}{%/if%}">{%$rsWord.phrase|vui_escape:'html'%}</a>{%/if%}  ]]></relate>
{%/for%}
{%/if%}

{%if ($topHint & 0x4) != 0%}
<pinyin><![CDATA[  {%for $index=0 to $seNum-1%}{%$seWord = $tplData.rsseResult.seword[$index]%}<a href="s?wd={%$seWord|vui_escape:'url'%}&f=12&oq={%$query|vui_escape:'url'%}{%if $urlPara.cl != 3%}&cl={%$urlPara.cl%}{%/if%}{%if $urlPara.ct != 0%}&ct={%$urlPara.ct%}{%/if%}{%if $urlPara.tn != baidu%}&tn={%$urlPara.tn%}{%/if%}{%if $urlPara.rn != 10%}&rn={%$urlPara.rn%}{%/if%}{%if $urlPara.ie != utf-8%}&ie={%$urlPara.ie%}{%/if%}{%if $urlPara.lm != 0%}&lm={%$urlPara.lm%}{%/if%}{%if strlen($urlPara.si)%}&si={%$urlPara.si%}{%/if%}{%if $urlPara.z_type == 3%}&z={%$urlPara.z|vui_escape:'url'%}{%/if%}{%if $urlPara.ch != 0%}&ch={%$urlPara.ch%}{%/if%}{%if strlen($urlPara.sts)%}&sts={%$urlPara.sts|vui_escape:'url'%}{%/if%}">{%$seWord|vui_escape:'html'%}</a>&nbsp;{%/for%}  ]]></pinyin>
{%/if%}
</webwrapper>
