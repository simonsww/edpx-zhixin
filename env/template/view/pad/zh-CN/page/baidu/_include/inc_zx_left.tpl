{%* 循环结果，用于左侧知心结果 *%}{%foreach $tplData.leftResult.item as $lres%}{%* 	若框未开启，且当前结果需要开启框	*%}{%if isset($lres.burstFlag)%}{%if $enableBorder && !$borderFlag && $lres.burstFlag==1%}<li class="bds-list"><div class="c-container c-frame"><ul class="c-border" style="padding-bottom:0;">{%$borderFlag = true%}{%/if%}{%/if%}{%*引入css组件*%}{%if isset($lres.dispData.resultData.extData) && !$tplData.queryInfo.multiRenderFlag%}{%$lres.dispData.resultData.extData.feData=[
	'showAladdinOuter' => 2,
	'newGrid' => 1,
	'rsv_stl' => $lres.dispData.StdStl,
	'y'=> $lres.identifyStr,
	'mu' => $lres.itemUrl,
	'id' => $lres@iteration,
	'wrapByAladdin' => 'true',
	'fm' => 'alxl',
	'catid' => $lres.dispData.category_id,
	'cardid' => $lres.dispData.card_id,
	'ename' => $lres.dispData.entityname,
	'uri' => $lres.dispData.uri,
	'cssUI' => $cssUI
]%}{%*结果是否进框的标示*%}{%$lres.dispData.resultData.extData['burstFlag'] = $lres.burstFlag%}{%/if%}{%$aladdinHTML = ''%}{%if $lres.dispData.strategy%}{%$aladdinHTML = $lres.dispData|common_render:"{%if $lres.dispData.strategy.type%}{%$lres.dispData.strategy.type%}{%else%}aladdin{%/if%}":$lres.dispData.strategy.tempName:$lres@index%}{%/if%}{%if $aladdinHTML neq ''%}<li class="bds-list">{%$aladdinHTML%}</li>{%/if%}{%* 	若框已经开启，且当前结果需要关闭框	*%}{%if isset($lres.burstFlag)%}{%if $enableBorder && $borderFlag && $lres.burstFlag==3%}</ul></div>{%$borderFlag = false%}{%/if%}{%/if%}{%/foreach%}