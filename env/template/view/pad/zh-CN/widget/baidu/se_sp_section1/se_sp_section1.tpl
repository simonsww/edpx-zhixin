{%function name="fis_widget_baidu_se_sp_section1"%}{%if $res.dispData.strategy.tempName=="naturalresult"%}<li class="bds-list" id="{%$resIndex%}" tpl="se_as_default_section1"><div class="bds-item-box"><a data-click="{    'F':'{%$res.strategyStr[0]%}',    'F1':'{%$res.strategyStr[1]%}',    'F2':'{%$res.strategyStr[2]%}',    'F3':'{%$res.strategyStr[3]%}',    'T':'{%$serverTime%}',        'url':this.href,        'y':'{%$res.identifyStr%}'        }" href="{%enc_url url=$res.dispData.resultData.tplData.url%}" target="_blank"><h3>{%$res.dispData.resultData.tplData.title|limitlen:63|highlight:4%}</h3><p> {%$res.dispData.resultData.tplData.content|highlight:4%} </p></a></div> <p class="showurl"> <cite> {%$res.dispData.resultData.tplData.showurl%} </cite><time>{%$res.dispData.resultData.tplData.date%}</time> - <a data-nolog="" href="{%$cache_domain%}/c?{%$res.dispData.resultData.tplData.capture%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" target="_blank"> 百度快照</a></p> </li>{%else%}{%if isset($res.dispData.resultData.extData)%}{%$res.dispData.resultData.extData.feData=[
		'showAladdinOuter' => 1,
		'newGrid' => 1,
		'rsv_stl' => $res.dispData.StdStl,
		'y'=> $res.identifyStr,
		'mu' => $res.offsetInfo.url,
		'id' => $resIndex,
		'wrapByAladdin' => 'true',
		'isUserLogin' => $isUserLogin,
		'username' => $username,
		'userDisplayInfo' => $userDisplayInfo,
		'cssUI' => $cssUI,
		'isFavoOn' =>  $isFavoOn,
		'favoFlag' => $res.favoFlag,
		'favoItemId' => $res.favoItemId

	]%}{%$res.dispData.resultData.extData['burstFlag'] = $res.burstFlag%}{%if $isSameSize==1%}{%$res.dispData.resultData.extData.feData.isSameSize=$isSameSize%}{%/if%}{%/if%}{%$useSmarty = $res.dispData.strategy%}{%$aladdinHTML = ''%}{%if $useSmarty%} {%$aladdinHTML = $res.dispData|common_render:"{%if $res.dispData.strategy.type%}{%$res.dispData.strategy.type%}{%else%}aladdin{%/if%}":$res.dispData.strategy.tempName:$res@index%}{%/if%}{%if $aladdinHTML neq ''%}<li class="bds-list">{%$aladdinHTML%}</li>{%* 如果是自有产品阿拉丁（新闻、地图、视频、身边等） *%}{%elseif $res.dispData.SrcId && $res.dispData.SrcId <= 5999%}{%if $res.offsetInfo.title%}<li class="bds-list"><table class="result-op" cellpadding="0" cellspacing="0" {%if isset($res.dispData.resultData.extData.fetchkey)%} fk="{%$res.dispData.resultData.extData.fetchkey%}" {%/if%} {%if $res.dispData.SrcId%} srcid="{%$res.dispData.SrcId%}" {%/if%} id="{%$resIndex%}" mu="{%$res.offsetInfo.url%}" data-op="{'y':'{%$res.identifyStr%}'}" {%if $isFavoOn == 1 && $isUserLogin == 1%} data-favo="{'flag':'{%$res.favoFlag%}','id':'{%$res.favoItemId%}'}" {%/if%}>{%$res.offsetInfo.title%}</table></li> {%/if%}{%/if%}{%/if%}{%/function%}