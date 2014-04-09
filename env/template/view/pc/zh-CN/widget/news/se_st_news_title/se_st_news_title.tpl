{%fis_widget%}<li class="result title{%if $resIndex % 10 == 0%} titlelast{%/if%}" id="{%$resIndex|escape:'html'%}">&#8226;&nbsp;<h3 class="c-title"><a href="{%$res.offsetInfo.urlEncoded|domain_advance|escape:'html'%}"
    data-click="{
      'f0':'{%$res.strategyStr[0]%}',
      'f1':'{%$res.strategyStr[1]%}',
      'f2':'{%$res.strategyStr[2]%}',
      'f3':'{%$res.strategyStr[3]%}',
      't':'{%$serverTime%}'
      }"

    {%if !($urlPara.ct & 0x40000)%}
            target="_blank"
        {%/if%}
    
    >{%$res.offsetInfo.title|limitlen:63|highlight:2%}</a></h3><span class="c-author">&nbsp;{%$res.dispData.rtses|escape:'html'%}&nbsp;{%$res.dispData.rtset|escape:'html'|date_format:'%Y-%m-%d %T'%}</span>{%if $res.dispData.multicontnum > 1 && !$BySame%}&nbsp;<a href="/ns?word={%$query|escape:'url'%}+cont:{%$res.dispData.multicontsign|escape:'url'%}&same={%$res.dispData.multicontnum|escape:'url'%}&cl=1&tn={%$urlPara.tn|escape%}&rn=30&fm=sd" class="c-more_link" data-click="{'fm':'sd'}">{%$res.dispData.multicontnum|escape%}条相同新闻>></a>{%/if%}</li>{%/fis_widget%}