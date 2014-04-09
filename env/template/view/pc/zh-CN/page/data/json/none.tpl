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
		"cl":"{%$tplData.queryInfo.pUrlConfig.cl%}",
		"ct":"{%$tplData.queryInfo.pUrlConfig.ct%}",
		"tn":"{%$tplData.queryInfo.pUrlConfig.tn%}"
	},
	"results":[],
	
	"hints":{
		"se":{%json_encode($tplData.rsseResult.seword)%}
	},
	
	"relates":{%json_encode($tplData.rsseResult.rsphrase)%}
	
{%/block%}
