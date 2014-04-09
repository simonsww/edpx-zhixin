{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}
{%$queryGBKEnc = $tplData.queryInfo.pQueryMap.ubs scope='global'%}
{%$dispNum = $tplData.asResult.asDataDispNum%}
{%$listNum = $tplData.asResult.asDataListNum%}
{%$rsNum = count($tplData.rsseResult.rsphrase)%}
{%$resultNum = $tplData.asResult.adjResultNum + $tplData.asResult.spResultNum + $tplData.asResult.asResultNum%}
{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}
{%$pageNo = $tplData.queryInfo.pageNo scope='global'%}
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
    "results":[],
    "relates":[
        {%if $rsNum > 0%}
        {%for $index=0 to 9%}
        {%$rsWord = $tplData.rsseResult.rsphrase[$index]%}
        {%if $index < $rsNum%}{%if $index > 0%},{%/if%}"{%$rsWord.phrase|vui_escape:'javacript'%}"{%/if%}
        {%/for%}
        {%/if%}
    ]
}
