{%extends file='baidu/content.tpl'%} {%block name="content_style_ext"%}<style >.cr-offset{padding-left:17px}</style>{%/block%}{%block name="global_content_functions_ext"%}{%* 循环结果，用于上侧结果、右侧结果 *%}{%function name=loop_results2%}{%if $theResult%}<div id="con-{%$id|escape%}">{%foreach $theResult.item as $res%}{%if $res.dispData.resultData.extData && !$tplData.queryInfo.multiRenderFlag%}{%$res.dispData.resultData.extData.feData=[
                'cssUI'=>$cssUI,
                'hasOffset'=>1
            ]%}{%/if%}{%$aladdinHTML = ''%}{%$aladdinHTML = $res.dispData|common_render:"{%if $res.dispData.strategy.type%}{%$res.dispData.strategy.type%}{%else%}aladdin{%/if%}":$res.dispData.strategy.tempName:$res@index%}{%if $test%}<small>render by smarty :{%$res.dispData.strategy.tempName%}| SrcId:{%$res.dispData.SrcId%}</small><p>{%/if%}{%if $aladdinHTML != ''%}{%pdc_tpl_start tpl=$res.dispData.strategy.tempName%}<div class="result-op xpath-log" tpl="{%$res.dispData.strategy.tempName%}" data-click="{fm:'{%$fm|escape%}',p1:'{%$res@index + 1%}'{%if $res.dispData.SrcId%},rsv_srcid:'{%$res.dispData.SrcId%}'{%/if%},mu:'{%trim($res.itemUrl)%}'{%if isset($res.dispData.category_id)%},rsv_catid:'{%$res.dispData.category_id%}'{%/if%}{%if isset($res.dispData.card_id)%},rsv_cardid:'{%$res.dispData.card_id%}'{%/if%}{%if isset($res.dispData.entityname)&&trim($res.dispData.entityname)%},rsv_ename:'{%$res.dispData.entityname|escape:'javascript'|escape:'html'%}'{%/if%}{%if isset($res.dispData.uri)&&trim($res.dispData.uri)%},rsv_uri:'{%$res.dispData.uri|escape:'javascript'|escape:'html'%}'{%/if%},rsv_stl:'{%$res.dispData.StdStl|escape%}'}">{%$aladdinHTML%}</div>{%pdc_tpl_end tpl=$res.dispData.strategy.tempName%}{%/if%}{%/foreach%}</div>{%/if%}{%/function%}{%/block%}{%block name="content_right"%}{%if $advShow["right"]%}<div id="content_right" class="cr-offset"><table cellpadding="0" cellspacing="0"><tr><td align="left">{%block name="content_right_hint_top"%}{%/block%}{%$nocache_start%}<div>{%*pdc_tpl_start tpl="ecom_120"*%}{%$adv[120].content%}{%*pdc_tpl_end tpl="ecom_120"*%}{%*pdc_tpl_start tpl="ecom_542"*%}{%$adv[542].content%}{%*pdc_tpl_end tpl="ecom_542"*%}{%*pdc_tpl_start tpl="ecom_656"*%}{%$adv[656].content%}{%*pdc_tpl_end tpl="ecom_656"*%}</div>{%$nocache_end%}{%loop_results2 theResult=$tplData.rightResult id='ar' fm='alxr'%}{%$nocache_start%}<div>{%*pdc_tpl_start tpl="ecom_657"*%}{%$adv[657].content%}{%*pdc_tpl_end tpl="ecom_657"*%}</div>{%$nocache_end%}{%block name="content_right_hint_bottom"%}{%/block%}{%$nocache_start%}<div>{%*pdc_tpl_start tpl="ecom_1"*%}{%$adv[1].content%}{%*pdc_tpl_end tpl="ecom_1"*%}{%block name="ecom_right_hao"%}{%/block%}{%*pdc_tpl_start tpl="ecom_2"*%}{%$adv[2].content%}{%*pdc_tpl_end tpl="ecom_2"*%}{%*pdc_tpl_start tpl="ecom_14"*%}{%$adv[14].content%}{%*pdc_tpl_end tpl="ecom_14"*%}{%*pdc_tpl_start tpl="ecom_91"*%}{%$adv[91].content%}{%*pdc_tpl_end tpl="ecom_91"*%}{%block name="ecom_right_bottom"%}{%/block%}</div>{%$nocache_end%}</td></tr></table>{%pdc_mark tag="right"%}</div>{%/if%}{%/block%}