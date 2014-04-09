{%* 循环结果，用于左侧知心结果 *%}{%foreach $tplData.leftResult.item as $lres%}{%if isset($lres.dispData.resultData.extData)%}{%$lres.dispData.resultData.extData.feData=[
    'y'=> $lres.identifyStr,
    'mu' => $lres.offsetInfo.url,
    'id' => $lres@iteration,
    'wrapByAladdin' => 'true',
    'fm' => 'alxl'
]%}{%/if%}{%$useSmarty = $lres.dispData.strategy && $lres.dispData.strategy.ctplOrPhp%}{%$aladdinHTML = ''%}{%if $useSmarty%} {%$aladdinHTML = $lres.dispData|aladdin_render:$lres.dispData.strategy.tempName:$lres@index%} {%if $test%}<small>need Smarty | </small>{%/if%}{%/if%} {%if $test%}<small>render by smarty : {%$lres.dispData.strategy.tempName%} | sourceid:{%$lres.dispData.resultData.extData.resourceid%}</small><p>{%/if%} {%pdc_tpl_start tpl=$lres.dispData.strategy.tempName%} {%$aladdinHTML%} {%pdc_tpl_end tpl=$lres.dispData.strategy.tempName%}{%/foreach%}{%if $tplData.leftResult&&count($tplData.leftResult.item)>0%}<div class="op-zx-copyright"><i>&nbsp;</i>以上信息由百度根据您的搜索词自动产生</div>{%/if%}