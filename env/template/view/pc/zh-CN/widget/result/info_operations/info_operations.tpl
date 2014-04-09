{%fis_widget snapshootType=0%}{%if $isOperationsOn %}<span class="operations" 
	{%if $snapshootType == 1%}
		{%if strlen($tplData.classicInfo.snapshootKey) > 0%}
			{%if $tplData.classicInfo.docType < 0%}
			data-kuaizhao="{%$cache_domain%}/c?{%$tplData.classicInfo.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}"
			{%/if%}
		{%/if%}
	{%elseif $snapshootType == 2%}
		{%if strlen($tplData.classicInfo.snapshootKey) > 0%}
			data-kuaizhao="{%$cache_domain%}/c?{%$tplData.classicInfo.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}"
		{%/if%}
	{%/if%}
	></span>{%/if%}{%/fis_widget%}