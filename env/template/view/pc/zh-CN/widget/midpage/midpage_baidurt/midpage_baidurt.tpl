{%fis_widget%}<table cellpadding="0" cellspacing="0" class="result" id="{%$resIndex|vui_escape:'html'%}"><tr><td class=f><h3 class="t">{%if $res.docType >= 0%}<font size=-1 color="{%$style_link_color|vui_escape:'html'%}"><b>{%$res.docTypeBrief|vui_escape:'html'%}</b></font>{%/if%}<a 

	{%if $res.dispData.FavURL%}class="favurl" style="background-image:url({%$res.dispData.FavURL|vui_escape:'html'%})" fav-url="{%$res.dispData.FavURL|vui_escape:'html'%}"{%/if%}

        onmousedown="return ns_c({
			'fm':'baidurt',
			'F':'{%$res.strategyStr[0]|vui_escape:javascript%}',
			'F1':'{%$res.strategyStr[1]|vui_escape:javascript%}',
			'F2':'{%$res.strategyStr[2]|vui_escape:javascript%}',
			'F3':'{%$res.strategyStr[3]|vui_escape:javascript%}',
			'T':'{%$serverTime|vui_escape:javascript%}',
			'title':this.innerHTML,
			'url':'{%$res.offsetInfo.urlEncoded|domain_advance|vui_escape:'url'%}',
			'p1':{%$resIndex|vui_escape:javascript%},
			'y':'{%$res.identifyStr|vui_escape:javascript%}'})"
		
		href="{%$res.offsetInfo.urlEncoded|domain_advance|vui_escape:'html'%}"

		{%if !($urlPara.ct & 0x40000)%}
            target="_blank"
        {%/if%}
		
		>{%if $res.dispData.FavURL%}{%$res.offsetInfo.title|limitlen:60|highlight:2%}{%else%}{%$res.offsetInfo.title|limitlen:63|highlight:2%}{%/if%}</a></h3>{%if isset($res.dispData.ThumURL)%}{%if isset($res.dispData.ThumTime)%}<a href="{%$res.offsetInfo.urlEncoded|domain_advance|vui_escape:'html'%}" target="_blank" class="preBox" onmousedown="return ns_c({'fm':'baidurt','title':this.innerHTML,'url':this.href,'p1':{%$resIndex|vui_escape:'html'%},'vd':'1'})"><img src="{%$res.dispData.ThumURL|vui_escape:'html'%}" alt="" style="width:119px;height:79px;" /><span></span><b>{%if $res.dispData.ThumTime > 0%}{%$res.dispData.ThumTime|vui_escape:'html'%}{%/if%}</b></a><div class="rt_video_cont">{%else%}<a class="rt_photo" href="{%$res.offsetInfo.urlEncoded|domain_advance|vui_escape:'html'%}" target="_blank" style="background-image:url({%$res.dispData.ThumURL|vui_escape:'html'%})" onmousedown="return ns_c({'fm':'baidurt','title':this.innerHTML,'url':this.href,'p1':{%$resIndex|vui_escape:'html'%},'vd':'0'})"></a><div class="rt_photo_cont">{%/if%}{%/if%}<font size=-1>{%if $res.docType >= 0%}<font class=c>{%$lable_doctype1|vui_escape:'html'%}</font>{%$res.docTypeDetail|vui_escape:'html'%}&nbsp;-&nbsp;<a data-nolog href="{%$cache_domain%}/c?{%$res.snapshootKey|vui_escape:'html'%}&user=baidu" {%if !($urlPara.ct & 0x40000)%} target="_blank" {%/if%}>{%$lable_doctype2|vui_escape:'html'%}</a><br>{%/if%}{%if $res.dispData.notice_info%}<font size=-1>{%if $res.dispData.notice_info.notice1%}{%$res.dispData.notice_info.notice1|vui_escape:'html'%}{%/if%}{%if $res.dispData.notice_info.notice2%}<span style="color:#999">({%$res.dispData.notice_info.notice2|vui_escape:'html'%})</span>{%/if%}</font><br>{%/if%}{%if $res.dispData.rtset%}<div class="realtime">{%if $res.dispData.rtses%}{%$res.dispData.rtses|vui_escape:'html'%}&nbsp;-&nbsp;{%/if%}{%display_time serverTime=$serverTime second=$res.dispData.rtset%}</div>{%/if%}{%$res.offsetInfo.summary|highlight:2%}{%if strlen($res.offsetInfo.summary) > 0%}<br>{%/if%}<font color="#008000">{%if $res.dispData.DispUrl%}{%$res.dispData.DispUrl|escape:'html'|url_bold_html%}{%else%}{%$res.offsetInfo.urlDisplay|url_limit:45:true|vui_escape:'html'%}{%/if%}&nbsp;</font>{%if $tplData.classicInfo.code eq '繁体'%}&nbsp;{%$tplData.classicInfo.code%}&nbsp;{%/if%}{%if $isOldSnapshootOn%}{%if strlen($res.snapshootKey) > 0%}{%if $res.docType < 0%}-&nbsp;<a data-nolog href="{%$cache_domain%}/c?{%$res.snapshootKey|vui_escape:'html'%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex|vui_escape:'html'%}" 
				{%if !($urlPara.ct & 0x40000)%}
						target="_blank" 
	            {%/if%}
		            class="m">{%$lable_cache|vui_escape:'html'%}</a>{%/if%}{%/if%}{%/if%}<br></font>{%if $res.dispData.ThumURL%}</div>{%/if%}</td></tr></table><br>{%/fis_widget%}