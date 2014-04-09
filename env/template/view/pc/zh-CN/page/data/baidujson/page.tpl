{%$dispNum = $tplData.asResult.asDataDispNum%}
var res = {
    count:{%if $dispNum > 760%}760{%else%}{%$dispNum%}{%/if%},
    list:[
        {%foreach $tplData.asResult.item as $res%}
        {%if $res.source == 1%}
        {
            uri:"http://www.baidu.com/baidu.php?url={%$res.offsetInfo.url|encodeURI%}",
            title:"{%$res.offsetInfo.title|real|vui_escape:'javascript'%}",
            lastmod:"{%$res.offsetInfo.lastModified%}",
            sizekb:"{%$res.offsetInfo.size%}",
            comment:"{%$res.offsetInfo.summary%}",
            shorturl:"{%$res.offsetInfo.urlDisplay|url_limit:45%}"
        },
        {%/if%}
        {%if $res.source == 4 || $res.source == 2%}
        {
            uri:"{%$res.offsetInfo.url|encodeURI%}",
            title:"{%$res.offsetInfo.title|real|vui_escape:'javascript'%}",
            lastmod:"{%$res.offsetInfo.lastModified%}",
            sizekb:"{%$res.offsetInfo.size%}",
            comment:"{%$res.offsetInfo.summary%}",
            shorturl:"{%$res.offsetInfo.urlDisplay|url_limit:45%}"
        },
        {%/if%}
        {%/foreach%}
    ]
};
showResult(res);
