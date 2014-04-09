{%fis_widget%}<table cellpadding="0" cellspacing="0" class="result{%if $isSameSize==1%} c-res{%/if%}" id="{%$resIndex%}"><tr><td class=f><h3 class="t">{%if $res.docType >= 0%}<font size=-1 color={%$style_link_color%}><b>{%$res.docTypeBrief%}</b></font>{%/if%}<a 
	{%if $res.dispData.sublink.is_main%}
		class="icon-gw"
	{%else%}
		{%if $res.dispData.FavURL%}class="favurl" style="background-image:url({%$res.dispData.FavURL%})" fav-url="{%$res.dispData.FavURL%}"{%/if%}
	{%/if%}
        data-click="{
			'F':'{%$res.strategyStr[0]%}',
			'F1':'{%$res.strategyStr[1]%}',
			'F2':'{%$res.strategyStr[2]%}',
			'F3':'{%$res.strategyStr[3]%}',
			'T':'{%$serverTime%}',
			{%if $res.dispData.ASURL%}
			'url':'{%get_url token=$res.productType originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}',
			{%/if%}
			'y':'{%$res.identifyStr%}'
			{%if $res.dispData.ASRES && $res.dispData.ASRES == 1%}
				,'rsv_ism':'{%$res.dispData.ASRES%}'
			{%/if%} 
			}"
		{%if $res.dispData.ASURL%}
        href = "{%enc_url url="http://www.baidu.com/cache/spam/spam_tip.html?`$res.offsetInfo.url|vui_escape:'url'`"%}"
		{%else%}
		href="{%get_url token=$res.productType originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}"
		{%/if%}

		{%if !($urlPara.ct & 0x40000)%}
            target="_blank"
        {%/if%}
		
		>{%if $isFavoOn == 1%}{%if $res.dispData.sublink.is_main%}{%if $isUserLogin == 1%}{%$res.offsetInfo.title|limitlen:56|highlight:2%}{%else%}{%$res.offsetInfo.title|limitlen:60|highlight:2%}{%/if%}{%else%}{%if $res.dispData.FavURL%}{%if $isUserLogin == 1%}{%$res.offsetInfo.title|limitlen:56|highlight:2%}{%else%}{%$res.offsetInfo.title|limitlen:60|highlight:2%}{%/if%}{%else%}{%if $isUserLogin == 1%}{%$res.offsetInfo.title|limitlen:59|highlight:2%}{%else%}{%$res.offsetInfo.title|limitlen:63|highlight:2%}{%/if%}{%/if%}{%/if%}{%else%}{%if $res.dispData.FavURL%}{%$res.offsetInfo.title|limitlen:60|highlight:2%}{%else%}{%$res.offsetInfo.title|limitlen:63|highlight:2%}{%/if%}{%/if%}</a>{%fis_widget_inline%}{%if $isUserLogin == 1 && $isFavoOn == 1%}{%if $res.favoFlag == 1%}<span class="tsuf"><span class="fav fav_add" data-fav="1" data-id="{%$res.favoItemId%}" title="点击取消收藏" onmousedown="return c({'fm':'bfav','url':this.getAttribute('data-url'),'title':this.getAttribute('data-title'),'p1':bds.se.favo.favPos(this),'p2':0,'p3':1,tab:this.getAttribute('data-fav')});"></span></span>{%else%}<span class="tsuf"><span class="fav fav_nor" data-fav="0" data-id="0" title="点击收藏" onmousedown="return c({'fm':'bfav','url':this.getAttribute('data-url'),'title':this.getAttribute('data-title'),'p1':bds.se.favo.favPos(this),'p2':0,'p3':1,tab:this.getAttribute('data-fav')});"></span></span>{%/if%}{%/if%}{%/fis_widget_inline%}</h3><font size=-1><div>{%$res.offsetInfo.summary|highlight:6%}</div><style compress>.xunlei{display:none}.xunlei .xunlei_download{height:31px;color:#666}.xunlei .xunlei_download .xunlei_download_icon,.xunlei .xunlei_tip .xunlei_tip_icon{background:url({%$STATIC_DOMAIN_WWW0%}{%$IMG_WWW_XUNLEI%}) no-repeat;display:inline-block}.xunlei .xunlei_download .xunlei_download_icon{width:16px;height:16px;margin:7px 0 0 0;position:absolute}.xunlei .xunlei_download .xunlei_download_link{position:absolute;margin:6px 0 0 21px}.xunlei .xunlei_tip{width:536px;height:35px;border:1px solid #e6e6e6;color:#666;display:none}.xunlei .xunlei_tip .xunlei_tip_icon{height:10px;width:12px;margin:12px 0 0 8px;background-position:-16px 0;position:absolute}.xunlei .xunlei_tip .xunlei_tip_download{margin:8px 0 0 30{%*i*%}px;position:absolute}</style><div class="xunlei" id="xunlei_{%$resIndex%}"><div class="xunlei_download" id="xunlei_download_{%$resIndex%}"><span class="xunlei_download_icon"></span><span class="xunlei_download_link">迅雷下载：<a href="javascript:void(0)" class="xunlei_link_item" id="xunlei_link_item_{%$resIndex%}" data-thunder="{%$res.dispData.xunlei.resource_download_url%}" data-click="{'rsv_xunlei':1}">{%$res.dispData.xunlei.name|limitlen:58%}&nbsp;[{%$res.dispData.xunlei.size%}]</a></span><iframe width="0" height="0" src="about:blank" style="visiblity:hide" id="thunder_ifm" name="thunder_ifm"></iframe></div><div class="xunlei_tip" id="xunlei_tip_{%$resIndex%}" data-show="0"><span class="xunlei_tip_icon"></span><span class="xunlei_tip_download">提示：你需要安装迅雷7后进行加载！<a href="http://down.sandai.net/thunder7/Thunder7.2.10.3694_ce.exe" target="_blank" data-click="{'rsv_xunlei':2}"><b>立即下载</b></a></span></div></div><script type="text/javascript" compress>bds.ready(function(){bds.se.xunlei = function(id){var enableThunder = (/windows/i.test(navigator.userAgent) && (baidu.ie || baidu.browser.isWebkit || baidu.browser.isGecko)),domNode = baidu.g("xunlei_"+id),li{%*i*%}nkNode = baidu.g("xunlei_link_item_"+id),tipNode = baidu.g("xunlei_tip_"+id);var download = function(){var supportThunderPlugin = bds.se.extension.Thunder.support();url = linkNode.getAttribute("data-thunder");if (supportThunderPlugin) {if (!bds.se.extension.Thunder.download(url)){tip();}}else{tip();}};var tip = function(){var showCount = +tipNode.getAttribute("data-show"); if(showCount == 0){tipNode.style.display = "inline-block";c({'p1':id,'rsv_xunlei':3,'fm':'inlo'});}else if(showCount == 1){t{%*i*%}ipNode.style.borderColor = "#92b9d5";}else{tipNode.style.borderColor = "#E6E6E6";setTimeout(function(){tipNode.style.borderColor = "#92b9d5";},200);}tipNode.setAttribute("data-show",showCount+1);};if (enableThunder) {domNode.style.display = "block";setTimeout(function(){var s = document.createElement("script");s.charset="utf-8";s.src="{%$STATIC_DOMAIN_WWW0%}{%$JS_WWW_EXTENSION%}";document.getElementsByTagName("HEAD")[0].appendChild(s);},0);baidu.on(linkNode,"mousedown",download);}else {c({'p1':id,'rsv_xunlei':4,'fm':'inlo'});}};new bds.se.xunlei("{%$resIndex%}");});</script><span class="g">{%if $res.dispData.DispUrl%}{%$res.dispData.DispUrl|url_bold_html%}{%else%}{%$res.offsetInfo.urlDisplay|url_limit:45:true%}{%/if%}{%display_as_time FactorTimePrecision=$res.dispData.FactorTimePrecision FactorTime=$res.dispData.FactorTime LastModTime=$res.dispData.LastModTime LinkFoundTime=$res.dispData.LinkFoundTime timeShow=$res.timeShow lastModified=$res.offsetInfo.lastModified serverTime=$serverTime%}{%if $res.offsetInfo.code neq '简体'%}{%$res.offsetInfo.code%}{%/if%}</span>{%if $isOldSnapshootOn%}{%if strlen($res.snapshootKey) > 0%}{%if $res.docType < 0%}-<a data-nolog href="{%$cache_domain%}/c?{%$res.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" 
            {%if !($urlPara.ct & 0x40000)%}
            target="_blank" 
            {%/if%}
            class="m">{%$lable_cache%}</a>{%/if%}{%/if%}{%/if%}{%fis_widget_inline%}{%if $showLike == 1%}<span data-nolog class="liketip" id="like_{%$res.urlSign%}"></span>{%/if%}{%/fis_widget_inline%}{%fis_widget_inline%}{%foreach $res.dispData.addSubArr as $subArr%}{%if $subArr.typeID == '10004' && $resIndex == 1%}<script>bds.se.addToHome = true;</script>{%/if%}{%/foreach%}{%/fis_widget_inline%}{%fis_widget_inline snapshootType=1%}{%if $isOperationsOn %}<span class="operations" 
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
	></span>{%/if%}{%/fis_widget_inline%}<br></font></td></tr></table>{%/fis_widget%}