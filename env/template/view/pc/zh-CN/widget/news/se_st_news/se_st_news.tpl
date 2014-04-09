{%fis_widget%}<li class="result" id="{%$resIndex|escape:'html'%}"><h3 class="c-title"><a href="{%$res.offsetInfo.urlEncoded|domain_advance|escape:'html'%}"
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
    
    >{%$res.offsetInfo.title|limitlen:63|highlight:2%}</a></h3><span class="c-author">&nbsp;{%$res.dispData.rtses|escape:'html'%}&nbsp;{%$res.dispData.rtset|escape:'html'|date_format:'%Y-%m-%d %T'%}</span><div class="c-summary">{%if isset($res.dispData.ThumURL)%}{%if isset($res.dispData.ThumTime)%}<a class="c_video"  href="{%$res.offsetInfo.urlEncoded|domain_advance|escape:'html'%}" target="_blank" ><img src="{%$res.dispData.ThumURL|escape:'html'%}" alt="" /><span></span><b>{%if $res.dispData.ThumTime > 0%}{%$res.dispData.ThumTime|escape:'html'%}{%/if%}</b></a>{%else%}<a class="c_photo" href="{%$res.offsetInfo.urlEncoded|domain_advance|escape:'html'%}" target="_blank" ><img src="{%$res.dispData.ThumURL|escape:'html'%}" alt="" /></a>{%/if%}{%/if%}{%$res.offsetInfo.summary|highlight:2%}{%if $res.dispData.multicontnum > 1 && !$BySame%}&nbsp;<a href="/ns?word={%$query|escape:'url'%}+cont:{%$res.dispData.multicontsign|escape:'url'%}&same={%$res.dispData.multicontnum|escape:'url'%}&cl=1&tn=news&rn=30&fm=sd" class="c-more_link" data-click="{'fm':'sd'}" >{%$res.dispData.multicontnum|escape%}条相同新闻</a>&nbsp;-{%/if%}{%if strlen($res.snapshootKey) > 0%}{%if $res.docType < 0%}&nbsp;<a href="{%$cache_domain%}/c?{%$res.snapshootKey|escape:'html'%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex|escape:'html'%}" 
      data-click="{'fm':'sc'}"
        {%if !($urlPara.ct & 0x40000)%}target="_blank" {%/if%} class="c-cache">百度快照</a>{%/if%}{%/if%}</div></li>{%/fis_widget%}