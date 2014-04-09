{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}
{%$cache_domain = 'http://cache.baidu.com' scope='global'%}
{%$pageNo = $tplData.queryInfo.pageNo scope='global'%}
{%$counter = ($pageNo-1)*$tplData.queryInfo.resNum+1 scope='global'%}
{"results":[
    
    {%$resIndex = 1 scope='global'%}
    {%foreach $tplData.asResult.item as $res%}
    
    {%if $res.source == 2 || $res.source == 4%}
    {%if $resIndex > 1%},{%/if%}{
        "id":"httpget_2_{%url_md5_64($res.offsetInfo.url)%}",
        "pdate":"{%$res.offsetInfo.lastModified%}",
        "rnum ":"0",
        "vnum":"0",
        "surl":"{%$res.offsetInfo.url|encodeURI%}",
        "curl":"",
        "title":"{%$res.offsetInfo.title|highlight:2%}",
        "content":"{%$res.offsetInfo.summary|highlight:2%}",
        "author":" ",
        "sitename":"",
        "chanl":" ",
        "tag":"",
        "ext3":"0",
        "ext4":"0",
        "ext12":"{%$cache_domain%}/c?{%$res.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs|vui_escape:'html'%}&qid={%$urlPara.qid|vui_escape:'html'%}&p1={%$counter%}",
        "domain":"{%$res.offsetInfo.urlDisplay|host%}",
        "flag":"",
        "hotdegree":""
    }
    {%/if%}
    {%$resIndex = $resIndex + 1 scope='global'%}
    {%$counter = $counter + 1 scope='global'%}
    {%/foreach%}

]}

