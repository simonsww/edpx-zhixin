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
			}"
		{%if $tplData.ASURL%}
        href = "{%rs_enc_url url="http://www.baidu.com/cache/spam/spam_tip.html?`$tplData.classicInfo.url|vui_escape:'url'`"%}"
		{%else%}
		href="{%rs_get_url token=$tplData.classicInfo.productType originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}"
		{%/if%}

		{%if !($urlPara.ct & 0x40000)%}
            target="_blank"
        {%/if%}
		
		>{%if $isFavoOn == 1%}{%if $tplData.FavURL%}{%if $isUserLogin == 1%}{%$tplData.classicInfo.title|limitlen:56|highlight:2%}{%else%}{%$tplData.classicInfo.title|limitlen:60|highlight:2%}{%/if%}{%else%}{%if $isUserLogin == 1%}{%$tplData.classicInfo.title|limitlen:59|highlight:2%}{%else%}{%$tplData.classicInfo.title|limitlen:63|highlight:2%}{%/if%}{%/if%}{%else%}{%if $tplData.FavURL%}{%$tplData.classicInfo.title|limitlen:60|highlight:2%}{%else%}{%$tplData.classicInfo.title|limitlen:63|highlight:2%}{%/if%}{%/if%}</a></h3><font size=-1><div>{%$tplData.classicInfo.summary|highlight:6%}</div><style compress>.xunlei {display:none}
            .xunlei .xunlei_download{height:31px;color:#666666}
            .xunlei .xunlei_download .xunlei_download_icon,.xunlei .xunlei_tip .xunlei_tip_icon{background:url(http://s1.bdstatic.com/r/www/cache/res/static/extension/img/xunlei_a9e50960.png) no-repeat;display:inline-block;}
            .xunlei .xunlei_download .xunlei_download_icon{width:16px;height:16px;margin:7px 0 0 0;position:absolute;}
            .xunlei .xunlei_download .xunlei_download_link{position:absolute;margin:6px 0 0 21px;}
            .xunlei .xunlei_tip{width:536px;height:35px;border:1px solid #E6E6E6;color:#000;display:none;}
            .xunlei .xunlei_tip .xunlei_tip_icon{height:10px;width:12px;margin:12px 0 0 8px;background-position:-16px 0px;position:absolute;}
            .xunlei .xunlei_tip .xunlei_tip_download{margin:8px 0 0 30px;position:absolute;}</style><div class="xunlei" id="xunlei_{%$resIndex%}"><div class="xunlei_download" id="xunlei_download_{%$resIndex%}"><span class="xunlei_download_icon"></span><span class="xunlei_download_link"><a href="javascript:void(0)" class="xunlei_link_item" id="xunlei_link_item_{%$resIndex%}" data-thunder="{%$tplData.xunlei.resource_download_url%}" data-filename="{%$tplData.xunlei.name|vui_escape:'html'%}" data-click="{'rsv_xunlei':1}">迅雷极速下载：<strong>{%$tplData.xunlei.name|limitlen:46|highlight:4%}&nbsp;[{%$tplData.xunlei.size%}]</strong></a></span><iframe width="0" height="0" src="about:blank" style="visiblity:hide" id="thunder_ifm" name="thunder_ifm"></iframe></div><div class="xunlei_tip" id="xunlei_tip_{%$resIndex%}" data-show="0"><span class="xunlei_tip_icon"></span><span class="xunlei_tip_download">提示：你需要安装迅雷7后进行加载！<a href="http://down.sandai.net/thunder7/Thunder7.2.10.3694_ce.exe" target="_blank" data-click="{'rsv_xunlei':2}"><b>立即下载</b></a></span></div></div><script type="text/javascript" compress>
        bds.ready(function(){

            bds.se.xunlei = function(id){
                
                var enableThunder =  (/windows/i.test(navigator.userAgent) && (baidu.ie || baidu.browser.isWebkit ||  baidu.browser.isGecko)),
					domNode  = baidu.g("xunlei_"+id),
					linkNode  = baidu.g("xunlei_link_item_"+id),
					tipNode  = baidu.g("xunlei_tip_"+id);
			   

				var download = function(){
					var supportThunderPlugin = bds.se.extension.Thunder.support();
                    url = linkNode.getAttribute("data-thunder"),
                    filename = linkNode.getAttribute("data-filename")||"";
					if (supportThunderPlugin) {
                        if (!bds.se.extension.Thunder.download(url,filename,"","","","","")){
                            tip();
                        }
                    }else{tip();}
                    /*
                    else {
                        var notSupportProtocol = (baidu.ie && (!!window["performance"]));
                        if (!notSupportProtocol){
                                linkNode.href =  url;
						}
						if (!baidu.ie){
							linkNode.target="thunder_ifm";
						}
							tip();
                    }*/
				};

				var tip = function(){
					var showCount = +tipNode.getAttribute("data-show");	
					
					if(showCount == 0){
                        tipNode.style.display = "inline-block";
                        c({'p1':id,'rsv_xunlei':3,'fm':'inlo'});
                    }else if(showCount == 1){
                        tipNode.style.borderColor = "#92b9d5";
                    }else{
                        tipNode.style.borderColor = "#E6E6E6";
                        setTimeout(function(){
							tipNode.style.borderColor = "#92b9d5";
                        },200);
					}
					tipNode.setAttribute("data-show",showCount+1);
				};
				
				if (enableThunder) {
					domNode.style.display = "block";
                    setTimeout(function(){
                        var s = document.createElement("script");
                        s.charset="utf-8";
                        s.src="http://s1.bdstatic.com/r/www/cache/res/static/extension/js/extension_902c739f.js";
                        document.getElementsByTagName("HEAD")[0].appendChild(s);
                    },0);
					
					baidu.on(linkNode,"mousedown",download);

				}else {
                    c({'p1':id,'rsv_xunlei':4,'fm':'inlo'});
				}

			};

			new bds.se.xunlei("{%$resIndex%}");
        });
        </script><span class="g">{%if $tplData.DispUrl%}{%$tplData.DispUrl|url_bold_html%}{%else%}{%$tplData.classicInfo.urlDisplay|url_limit:45:true%}{%/if%}&nbsp;{%rs_display_as_time FactorTimePrecision=$tplData.FactorTimePrecision FactorTime=$tplData.FactorTime LastModTime=$tplData.LastModTime LinkFoundTime=$tplData.LinkFoundTime timeShow=$tplData.classicInfo.timeShow lastModified=$tplData.classicInfo.lastModified serverTime=$serverTime%}{%if $tplData.classicInfo.code neq '简体'%}{%$tplData.classicInfo.code%}{%/if%}</span>{%if $isOldSnapshootOn%}{%if strlen($tplData.classicInfo.snapshootKey) > 0%}{%if $tplData.classicInfo.docType < 0%}-&nbsp;<a data-nolog href="{%$cache_domain%}/c?{%$tplData.classicInfo.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" 
            {%if !($urlPara.ct & 0x40000)%}
            target="_blank" 
            {%/if%}
            class="m">{%$lable_cache%}</a>{%/if%}{%/if%}{%/if%}{%fis_widget_inline%}{%if $showLike == 1%}<span data-nolog class="liketip" id="like_{%$tplData.classicInfo.urlSign%}"></span>{%/if%}{%/fis_widget_inline%}{%fis_widget_inline%}{%foreach $tplData.addSubArr as $subArr%}{%if $subArr.typeID == '10004' && $resIndex == 1%}<script>bds.se.addToHome = true;</script>{%/if%}{%/foreach%}{%/fis_widget_inline%}<br></font>{%/block%}{%block name="__fis_page_header_block__"%}{%include file="widget/result/module_static_include/module_static_include.tpl" caching%}{%/block%}