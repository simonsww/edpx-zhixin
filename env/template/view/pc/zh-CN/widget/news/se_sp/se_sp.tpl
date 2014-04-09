{%fis_widget%}{%if isset($res.dispData.resultData.extData)%}{%$res.dispData.resultData.extData.feData=[
        'y'=> $res.identifyStr,
        'mu' => $res.offsetInfo.url,
        'id' => $resIndex,
        'wrapByAladdin' => 'true',
        'isUserLogin' => $isUserLogin,
        'username' => $username,
        'userDisplayInfo' => $userDisplayInfo

    ]%}{%if $isSameSize==1%}{%$res.dispData.resultData.extData.feData.isSameSize=$isSameSize%}{%/if%}{%/if%}{%$useSmarty = $res.dispData.strategy && $res.dispData.strategy.ctplOrPhp%}{%$aladdinHTML = ''%}{%if $useSmarty%}{%$aladdinHTML = $res.dispData|common_render:"{%if $res.dispData.strategy.type%}{%$res.dispData.strategy.type%}{%else%}aladdin{%/if%}":$res.dispData.strategy.tempName:$res@index%}{%/if%}{%if $aladdinHTML eq ''%}{%if $test%}<small>render by gss | sourceid:{%$res.dispData.StdStg%}</small><p>{%/if%}<li class="result-op{%if $isSameSize==1%} c-res{%/if%}"  {%if $res.dispData.SrcId%} srcid="{%$res.dispData.SrcId%}" fk="{%$res.dispData.resultData.extData.fetchkey|escape:'html'%}" {%/if%} id="{%$resIndex%}" mu="{%$res.offsetInfo.url%}" data-op="{'y':'{%$res.identifyStr%}'}">{%$res.offsetInfo.title%}</li>{%else%}{%if $test%}<small>render by smarty :{%$res.dispData.strategy.tempName%}| sourceid:{%$res.dispData.resultData.extData.resourceid%}</small><p>{%/if%}{%$aladdinHTML%}{%/if%}{%/fis_widget%}