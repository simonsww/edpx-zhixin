s='<div class="list"><ul>{%foreach $tplData.asResult.item as $res%}<li><a href="{%$res.offsetInfo.url|escape:'html'%}" target="_blank">{%$res.offsetInfo.title|highlight:2%}</a>&nbsp;<font class="g">{%$res.dispData.rtses|escape:'html'%}&nbsp;{%$res.dispData.rtset|escape:'html'|date_format:'%Y-%m-%d %T'%}</font></li>{%if $res@iteration is div by 10%}<br>{%/if%}{%/foreach%}</ul></div>';