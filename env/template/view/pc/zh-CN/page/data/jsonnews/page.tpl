{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}
{%$queryGBKEnc = $tplData.queryInfo.pQueryMap.ubs scope='global'%}
{%$dispNum = $tplData.asResult.asDataDispNum%}
{%$listNum = $tplData.asResult.asDataListNum%}
{%$topHint = $tplData.asResult.topHint scope='global'%}
{%$rsNum = count($tplData.rsseResult.rsphrase)%}
{%$resultNum = $tplData.asResult.adjResultNum + $tplData.asResult.spResultNum + $tplData.asResult.asResultNum%}
{%$cache_domain = 'http://cache.baidu.com' scope='global'%}
{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}
{%$pageNo = $tplData.queryInfo.pageNo scope='global'%}
{%$counter = ($pageNo-1)*$tplData.queryInfo.resNum+1 scope='global'%}
{
    "psstatus":"OK",
    "dispnum":"{%$dispNum%}",
    "listnum":"{%$listNum%}",
    "maxretnum":"{%$urlPara.rn%}",
    "resultnum":"{%$resultNum%}",
    "curpage":"{%$pageNo%}",
    "query":{
        "word":"{%$query|vui_escape:javacript%}",
        "uword":"{%$queryGBKEnc%}",
        "cl":"{%$urlPara.cl%}",
        "ct":"{%$urlPara.ct%}",
        "tn":"{%$urlPara.tn%}"
    },
    "results":[
		{%$resIndex = 1 scope='global'%}
        {%foreach $tplData.asResult.item as $res%}
        {%if $res.source == 2%}
        {%if $resIndex > 1%},{%/if%}
        {
        "seqnum":"{%$counter%}",
            "uri":"{%$res.offsetInfo.url|domain_advance|vui_escape:'javascript'|encodeURI%}",
            "title":"{%$res.offsetInfo.title|highlight:2|vui_escape:'javascript'%}",
            "lastmod":"{%$res.offsetInfo.lastModified%}",
            "sizekb":"{%$res.offsetInfo.size|vui_escape:'javascript'%}",
            "abstract":"{%$res.offsetInfo.summary|highlight:2|vui_escape:'javascript'%}",
            "shorturl":"{%$res.offsetInfo.urlDisplay|domain_advance|vui_escape:'javascript'%}",
            "newsExtData":{
                "imgUrl":"{%if $res.dispData.ThumURL%}{%$res.dispData.ThumURL|vui_escape:'javascript'%}{%/if%}",
                "source":"{%$res.dispData.rtses|vui_escape:'javascript'%}",
                "pubDate":"{%$res.dispData.rtset|vui_escape:'javascript'%}",
                "same":"{%$res.dispData.contnum|vui_escape:'javascript'%}",
                "multicontsign":"{%$res.dispData.multicontsign|vui_escape:'javascript'%}",
                "multicontnum":"{%$res.dispData.multicontnum|vui_escape:'javascript'%}",
                "contsign":"{%$res.dispData.contsign|vui_escape:'javascript'%}",
                "snapUrl":"{%if strlen($res.snapshootKey)%}{%$cache_domain%}/c?{%$res.snapshootKey%}&user=baidu{%/if%}"
            }
        }
        {%/if%} 
        {%$resIndex = $resIndex + 1 scope='global'%}
        {%$counter = $counter + 1 scope='global'%}
        {%/foreach%}
    ],
    "relates":[
        {%if $rsNum > 0%}
        {%for $index=0 to 9%}
        {%$rsWord = $tplData.rsseResult.rsphrase[$index]%}
        {%if $index < $rsNum%}{%if $index > 0%},{%/if%}"{%$rsWord.phrase|vui_escape:'javacript'%}"{%/if%}
        {%/for%}
        {%/if%}
    ]
}
