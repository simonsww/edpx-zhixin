{%extends file='base_json.tpl'%}

{%block name="data"%}
	"psstatus":"OK",
	"dispnum":"{%$tplData.asResult.asDataDispNum%}",
	"listnum":"{%$tplData.asResult.asDataListNum%}",
	"maxretnum":"{%$tplData.queryInfo.pUrlConfig.rn%}",
	"resultnum":"{%$tplData.asResult.asResultNum%}",
	"curpage":"{%$tplData.queryInfo.pageNo%}",
	"query":{
		"word":{%json_encode($tplData.queryInfo.wordNoSyntax)%},
		"uword":"{%$tplData.queryInfo.pQueryMap.ubs%}",
		{%block name="query_ext"%}{%/block%}
		"cl":"{%$tplData.queryInfo.pUrlConfig.cl%}",
		"ct":"{%$tplData.queryInfo.pUrlConfig.ct%}",
		"tn":"{%$tplData.queryInfo.pUrlConfig.tn%}"
	},
	"results":[
		{%$resIndex = 1 scope='global'%}
		{%foreach $tplData.asResult.item as $res%}
			{%if $res@index > 0%},{%/if%}
			{
				"index":"{%$resIndex%}",
				"type":"{%$res.comeFrome%}",
				"doctype":{%json_encode($res.docType)%},
				"docTypeBrief":{%json_encode($res.docTypeBrief)%},
				"url":"{%$res.offsetInfo.urlEncoded%}",
                "basicWeight":{%json_encode($res.urls.asUrls.weight)%},
				{%if $res.comeFrome=="SP"%}
				"title":{%json_encode($res.offsetInfo.title)%},
				{%else%}
				"title":{%json_encode($res.offsetInfo.title|highlight:2)%},
				{%/if%}
				"abstract":{%json_encode($res.offsetInfo.summary|highlight:6)%},
				"code":{%json_encode($res.offsetInfo.code)%},
				"timeShow":{%json_encode($res.timeShow)%},
				"lastModified":{%json_encode($res.offsetInfo.lastModified)%},
				"snapshootKey":"{%$res.snapshootKey%}",
				{%block name="data_ext"%}{%/block%}
				"data":{%json_encode($res.dispData)%}
			}
			{%$resIndex = $resIndex + 1 scope='global'%}
		{%/foreach%}
	],
    {%block name="top_result"%}{%/block%}    
    {%block name="left_result"%}{%/block%}    
    {%block name="right_result"%}{%/block%}
	"hints":{
		"se":{%json_encode($tplData.rsseResult.seword)%}
	},
	
	"relates":{%json_encode($tplData.rsseResult.rsphrase)%}
	
{%/block%}
