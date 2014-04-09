{%fis_widget%}{%if isset($res.dispData.resultData.extData) && (!$tplData.queryInfo.multiRenderFlag||$res.dispData.strategy.tempName=="naturalresult")%}{%$res.dispData.resultData.extData.feData=[
    'rsv_stl' => $res.dispData.StdStl,
    'y'=> $res.identifyStr,
    'mu' => $res.offsetInfo.url,
    'id' => $resIndex,
    'wrapByAladdin' => 'true',
    'isUserLogin' => $isUserLogin,
    'username' => $username,
    'userDisplayInfo' => $userDisplayInfo,
    'cssUI' => $cssUI,
    'query' => $query
]%}{%$res.dispData.resultData.extData['burstFlag'] = $res.burstFlag%}{%if $isSameSize==1%}{%$res.dispData.resultData.extData.feData.isSameSize=$isSameSize%}{%/if%}{%/if%}{%$useSmarty = $res.dispData.strategy && $res.dispData.strategy.ctplOrPhp%}{%$aladdinHTML = ''%}{%if $useSmarty%}{%$aladdinHTML = $res.dispData|common_render:"{%if $res.dispData.strategy.type%}{%$res.dispData.strategy.type%}{%else%}aladdin{%/if%}":$res.dispData.strategy.tempName:$res@index%}{%/if%}{%if $aladdinHTML eq ''%}{%if $test%}<small>render by gss | sourceid:{%$res.dispData.StdStg%}</small><p>{%/if%}<table class="result-op{%if $isSameSize==1%} c-res{%/if%}" cellpadding="0" cellspacing="0" {%if $res.dispData.SrcId%} srcid="{%$res.dispData.SrcId%}" fk="{%$res.dispData.resultData.extData.fetchkey|escape:'html'%}" {%/if%} id="{%$resIndex%}" mu="{%$res.offsetInfo.url%}" data-op="{'y':'{%$res.identifyStr%}'}"  data-click="{'rsv_bdr':'{%$res.burstFlag%}'}">{%$res.offsetInfo.title%}</table>{%else%}{%if $test%}<small>render by smarty :{%$res.dispData.strategy.tempName%}| sourceid:{%$res.dispData.resultData.extData.resourceid%}</small><p>{%/if%}{%pdc_tpl_start tpl=$res.dispData.strategy.tempName%}{%$aladdinHTML%}{%pdc_tpl_end tpl=$res.dispData.strategy.tempName%}{%/if%}{%/fis_widget%}