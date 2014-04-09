{%fis_widget%}{%if isset($res.dispData.resultData.extData)%}{%$res.dispData.resultData.extData.feData=[
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

	]%}{%$res.dispData.resultData.extData['burstFlag'] = $res.burstFlag%}{%if $isSameSize==1%}{%$res.dispData.resultData.extData.feData.isSameSize=$isSameSize%}{%/if%}{%/if%}{%$useSmarty = $res.dispData.strategy%}{%$aladdinHTML = ''%}{%if $useSmarty%}{%$aladdinHTML = $res.dispData|common_render:"{%if $res.dispData.strategy.type%}{%$res.dispData.strategy.type%}{%else%}aladdin{%/if%}":$res.dispData.strategy.tempName:$res@index%}{%/if%}{%if $aladdinHTML neq ''%}<li class="bds-list">{%$aladdinHTML%}</li>{%* 如果是自有产品阿拉丁（新闻、地图、视频、身边等） *%}{%elseif $res.dispData.SrcId && $res.dispData.SrcId <= 5999%}{%if $res.offsetInfo.title%}<li class="bds-list"><table class="result-op" cellpadding="0" cellspacing="0" {%if isset($res.dispData.resultData.extData.fetchkey)%} fk="{%$res.dispData.resultData.extData.fetchkey%}" {%/if%}{%if $res.dispData.SrcId%}  srcid="{%$res.dispData.SrcId%}" {%/if%} id="{%$resIndex%}" mu="{%$res.offsetInfo.url%}" data-op="{'y':'{%$res.identifyStr%}'}" {%if $isFavoOn == 1 && $isUserLogin == 1%}data-favo="{'flag':'{%$res.favoFlag%}','id':'{%$res.favoItemId%}'}"{%/if%}>{%$res.offsetInfo.title%}</table></li>{%/if%}{%/if%}{%/fis_widget%}