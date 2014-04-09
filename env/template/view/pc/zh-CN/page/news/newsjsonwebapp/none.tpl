{%$callBack = $tplData.queryInfo.pUrlConfig.x%}{%if $callBack%}{%$callBack|escape:'javascript'|escape%}({%/if%}{
    "feed":{
        "requestUrl": "",
        "updated": "",
        "description": "百度新闻全文搜索_",
        "relateUrl": "http://news.baidu.com",
        "category": {"label": "百度新闻搜索", "value": ""},
        "author": {
            "name": "Baidu News Search", 
            "url": "http://news.baidu.com"
        },
        "all": 0,
        "resultnum": 0,
        "pn": 0,
        "rn": 0,
        "entry":[
            {}
        ]
    }
}
{%if $callBack%}){%/if%}