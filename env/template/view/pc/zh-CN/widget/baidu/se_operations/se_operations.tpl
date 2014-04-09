{%fis_widget snapshootType=0%}{%if $isOperationsOn %}<span class="operations" 
	{%if $snapshootType == 1%}
		{%if strlen($res.snapshootKey) > 0%}
			{%if $res.docType < 0%}
			data-kuaizhao="{%$cache_domain%}/c?{%$res.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}"
			{%/if%}
		{%/if%}
	{%elseif $snapshootType == 2%}
		{%if strlen($res.snapshootKey) > 0%}
			data-kuaizhao="{%$cache_domain%}/c?{%$res.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}"
		{%/if%}
	{%/if%}
	></span>{%/if%}{%/fis_widget%}