{%extends 'base.tpl'%} {%block name="result_content"%}<h3 class="t">{%if $tplData.classicInfo.docType >= 0%}<font size=-1 color={%$style_link_color%}><b>{%$tplData.classicInfo.docTypeBrief%}</b></font>{%/if%}<a 
	{%if $tplData.FavURL%}class="favurl" style="background-image:url({%$tplData.FavURL%})" fav-url="{%$tplData.FavURL%}"{%/if%}
        data-click="{
			'F':'{%$tplData.classicInfo.strategyStr[0]%}',
			'F1':'{%$tplData.classicInfo.strategyStr[1]%}',
			'F2':'{%$tplData.classicInfo.strategyStr[2]%}',
			'F3':'{%$tplData.classicInfo.strategyStr[3]%}',
			'T':'{%$serverTime%}',
			{%if $tplData.ASURL%}
			'url':'{%rs_get_url token=$tplData.classicInfo.productType originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}',
			{%/if%}
			'y':'{%$tplData.classicInfo.identifyStr%}'
			{%if $tplData.ASRES && $tplData.ASRES == 1%}
				,'rsv_ism':'{%$tplData.ASRES%}'
			{%/if%} 
			{%if $tplData.extQuery%}
				,'rsv_sug9':'{%$tplData.extQuery|escape:'html'%}'
			{%/if%}
			}"
		{%if $tplData.ASURL%}
        href = "{%rs_enc_url url="http://www.baidu.com/cache/spam/spam_tip.html?`$tplData.classicInfo.url|vui_escape:'url'`"%}"
		{%else%}
		href="{%rs_get_url token=$tplData.classicInfo.productType originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}"
		{%/if%}

		{%if !($urlPara.ct & 0x40000)%}
            target="_blank"
        {%/if%}
		
		>{%$titleLen = 63%}{%*原收藏title截断逻辑*%}{%if $isFavoOn == 1%}{%if $tplData.FavURL%}{%if $isUserLogin == 1%}{%$titleLen = $titleLen - 7%}{%*$tplData.classicInfo.title|limitlen:56|highlight:2*%}{%else%}{%$titleLen = $titleLen - 3%}{%*$tplData.classicInfo.title|limitlen:60|highlight:2*%}{%/if%}{%else%}{%if $isUserLogin == 1%}{%$titleLen = $titleLen - 4%}{%*$tplData.classicInfo.title|limitlen:59|highlight:2*%}{%else%}{%$titleLen = $titleLen - 0%}{%*$tplData.classicInfo.title|limitlen:63|highlight:2*%}{%/if%}{%/if%}{%else%}{%if $tplData.FavURL%}{%$titleLen = $titleLen - 3%}{%*$tplData.classicInfo.title|limitlen:60|highlight:2*%}{%else%}{%$titleLen = $titleLen - 0%}{%*$tplData.classicInfo.title|limitlen:63|highlight:2*%}{%/if%}{%/if%}{%*官网标，占9字符位置*%}{%if $tplData.strategybits.OFFICIALPAGE_FLAG || $tplData.sublink.is_main%}{%$titleLen = $titleLen - 9%}{%/if%}{%*title右侧通用提示，目前只有风险标，占6字符位置*%}{%if isset($resHintData.hints.titleRight)%}{%$titleLen = $titleLen - 6%}{%/if%}{%$tplData.classicInfo.title|limitlen:"$titleLen"|highlight:2%}</a>{%block name="result_title_right"%}{%if $tplData.strategybits.OFFICIALPAGE_FLAG || $tplData.sublink.is_main%}<span class="icon-gw">官网</span>{%/if%}{%/block%}{%if isset($resHintData.hints.titleRight)%}{%*url级别通用提示*%}{%foreach $resHintData.hints.titleRight  as $resHint%}{%display_res_hint widgetName=$resHint.templateName%}{%*认证类提示聚合展示*%}{%if $resHint.templateName == "res_hint_certification"%}{%$resHitCluster = 1%}{%/if%}{%/foreach%}{%/if%}</h3><div class="c-abstract"><div class="software"><font style="color:#666666">大小:&nbsp;</font>{%$tplData.schema_software.fileSize|highlight:4%}&nbsp;&nbsp;<font style="color:#666666">更新时间:&nbsp;</font>{%$tplData.schema_software.dateModified|highlight:4%}&nbsp;&nbsp;{%$tplData.schema_software.inLanguage|highlight:4%}{%$tplData.schema_software.license|highlight:4%}</div><p>{%$tplData.classicInfo.summary|limitlen:78|highlight:6%}</p><div class="g">{%if $tplData.DispUrl%}{%$tplData.DispUrl|url_bold_html%}{%else%}{%$tplData.classicInfo.urlDisplay|url_limit:45:true%}{%/if%}&nbsp;{%rs_display_as_time FactorTimePrecision=$tplData.FactorTimePrecision FactorTime=$tplData.FactorTime LastModTime=$tplData.LastModTime LinkFoundTime=$tplData.LinkFoundTime timeShow=$tplData.classicInfo.timeShow lastModified=$tplData.classicInfo.lastModified serverTime=$serverTime%}{%$titleUrl = {%rs_get_url token=$tplData.classicInfo.productType originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}%}&nbsp;{%fis_widget_inline name="info_tools" url=$titleUrl title=$tplData.classicInfo.view.title%}{%if $title && $url%}<div class="c-tools" id="tools_{%$tplData.classicInfo.urlSign%}" data-tools='{"title":"{%$title|escape:javascript|escape%}","url":"{%$url|escape:javascript|escape%}"}'><a class="c-tip-icon"><i class="c-icon c-icon-triangle-down-g"></i></a></div>{%/if%}{%/fis_widget_inline%}&nbsp;{%if $isOldSnapshootOn%}{%if strlen($tplData.classicInfo.snapshootKey) > 0%}-&nbsp;<a href="{%$cache_domain%}/c?{%$tplData.classicInfo.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" {%if !($urlPara.ct & 0x40000)%} target="_blank" {%/if%} class="m">{%$lable_cache%}</a>{%/if%}{%/if%}{%fis_widget_inline%}{%if $showLike == 1%}<span data-nolog class="liketip" id="like_{%$tplData.classicInfo.urlSign%}"></span>{%/if%}{%/fis_widget_inline%}</div></div>{%/block%}