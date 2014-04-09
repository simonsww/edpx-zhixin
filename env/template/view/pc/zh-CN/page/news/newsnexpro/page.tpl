num={%$tplData.asResult.asDataDispNum|escape:'html'%}
{%foreach $tplData.asResult.item as $res%}
title={%$res.offsetInfo.title|highlight:2%}
title_url={%$res.offsetInfo.url|escape:'html'%}
source={%$res.dispData.rtses|escape:'html'%} {%$res.dispData.rtset|escape:'html'|date_format:'%Y-%m-%d %T'%}
samenews={%$res.dispData.contnum|escape:'html'%}
samenews_url=http://news.baidu.com/ns?word={%$tplData.queryInfo.wordNoSyntaxEncoded%}+cont:{%$res.dispData.contsign|escape:'html'%}&same={%$res.dispData.contnum|escape:'html'%}&cl=1&tn=news&rn=30
{%/foreach%}