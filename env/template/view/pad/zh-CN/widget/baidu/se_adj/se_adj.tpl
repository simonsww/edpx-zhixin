{%fis_widget%}<li class="bds-list" id="{%$resIndex%}" tpl="se_adj"><h3 class="t"><a href="{%enc_url url=$res.offsetInfo.urlEncoded%}" 
        
		{%if !($urllPara.ct & 0x40000)%} target="_blank" {%/if%}
    >{%$res.offsetInfo.title|limitlen:63|highlight:4%}</a></h3><div>{%$res.offsetInfo.summary|highlight:5%}{%if strlen($res.offsetInfo.summary) > 0%}<br>{%/if%}<span class="g">{%$res.offsetInfo.urlDisplay|url_limit:45:true%}{%(strlen($res.timeShow)>0)?$res.timeShow:$res.offsetInfo.lastModified%}</span>{%if strlen($res.snapshootKey) > 0%}-<a data-nolog href="{%$cache_domain%}/c?{%$res.snapshootKey%}&user=baidu&fm=sc&query={%$query|vui_escape:'url'%}&qid={%$queryId%}&p1={%$resIndex%}" 
				{%if !($urlPara.ct & 0x40000)%}
					target="_blank" 
	            {%/if%} 
	            class="m">{%$lable_cache%}</a>{%/if%}<br></div></li>{%/fis_widget%}