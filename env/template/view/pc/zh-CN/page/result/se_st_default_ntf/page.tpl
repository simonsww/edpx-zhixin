{%extends 'se_st_default/page.tpl'%} {%block name="result_info"%}<div class="f13">{%block name="result_attach_address_before"%}{%/block%}<span class="g">{%if $tplData.DispUrl%}{%$tplData.DispUrl|url_bold_html%}{%else%}{%$tplData.classicInfo.urlDisplay|url_limit:45:true%}{%/if%}&nbsp;{%*showurl后时间显示逻辑*%}{%if $tplData.newTimeFactor%}{%date("Y-n-j",$tplData.newTimeFactor)%}&nbsp;{%/if%}{%if $tplData.classicInfo.code eq '繁体'%}&nbsp;{%$tplData.classicInfo.code%}&nbsp;{%/if%}{%*
 * @fileOverview 安全联盟资质认证模版
 * @author  郭勇
 * @version 1.0.0
 * @date 2013-01-17
 *%}{%fis_widget_inline%}{%$data = $tplData.security_union%}{%if isset($data)%}{%*因数据有可能和现有安全风险提示冲突，当存在安全风险提示时，直接以现有安全风险提示为准，短期方案，长期方案提供统一数据*%}{%*安全提示ID更改时需要同步修改*%}{%$safetips['10040'] = "bd-1"%}{%$safetips['10041'] = "bd-2"%}{%$safetips['10042'] = "bd-3"%}{%$safetips['10043'] = "bd-4"%}{%$safetips['10050'] = "sc-1"%}{%$safetips['10051'] = "sc-2"%}{%$safetips['10052'] = "sc-3"%}{%$safetips['10053'] = "sc-4"%}{%$safetips['10060'] = "qq-1"%}{%$safetips['10061'] = "qq-2"%}{%$safetips['10062'] = "qq-3"%}{%$safetips['10063'] = "qq-4"%}{%$safetips['10070'] = "js-1"%}{%$safetips['10071'] = "js-2"%}{%$safetips['10072'] = "js-3"%}{%$safetips['10073'] = "js-4"%}{%$safetips['10080'] = "hs-1"%}{%$safetips['10081'] = "hs-2"%}{%$safetips['10082'] = "hs-3"%}{%$safetips['10083'] = "hs-4"%}{%$unsafe_flag = false%}{%foreach $tplData.addSubArr as $subArr%}{%if $safetips[$subArr.typeID]%}{%$unsafe_flag = true%}{%/if%}{%/foreach%}{%$key = rand(1,1000)%}<span class="safe_union safe_union_S{%if $unsafe_flag%}-1{%else%}{%$data.level|vui_escape:'html'%}{%/if%}" safe_union_key="{%$key%}" 
    {%if $unsafe_flag%}
    {%*因数据有可能和现有安全风险提示冲突，当存在安全风险提示时，直接以现有安全风险提示为准*%}
    unsafe_flag ="true"
    {%/if%}></span><script type="text/javascript">
  bds.ready(function(){
      bds.se.safeUnion = bds.se.safeUnion || {};//安全联盟认证
      bds.se.safeUnion.data = bds.se.safeUnion.data||[];
      bds.se.safeUnion.data[{%$key%}] = {%json_encode($data)%}||{};
      c({'fm':'inlo','tab':'safe_union','rsv_safe':'{%$resIndex%}_{%$data.level|vui_escape:'javascript'%}'});
  });
  </script>{%/if%}{%/fis_widget_inline%}{%*安全联盟标识*%}</span>{%block name="result_showtime_right"%}{%/block%}{%*ecom认证提示*%}{%if $tplData.eVcard && $tplData.eVcard.company%}{%*
 * @fileOverview 认证类提示动态提示模版
 * @author  郭勇、杨帆
 * @version 1.0.1
 * @date 2013-02-04
 *%}{%fis_widget_inline%}{%if $resHitCluster != 1%}{%$disUrl = ""%}{%capture assign="disUrl"%}{%*记录结果url统计日志用*%}{%if $tplData.DispUrl%}{%$tplData.DispUrl%}{%else%}{%$tplData.classicInfo.urlDisplay%}{%/if%}{%/capture%}<span class="certification" certification_key="{%$resIndex%}" dis_url="{%$disUrl|escape%}"><a href="#" class="c-icon c-icon-v" onclick="return false"></a></span>&nbsp;{%/if%}{%$hintLabel = $tplData.eVcard.company|escape|cat:"："%}{%$hintURL = $tplData.eVcard.vcard_url|escape%}{%$hintStar = $tplData.eVcard.vcard_star|escape%}{%if in_array($hintStar,[1,2,3,4,5])%}{%$hintStarWidth = $hintStar * 20|cat:"%"%}{%else%}{%$hintStarWidth = "20%"%}{%/if%}<style>.hint_ecom_start{background:url(http://s1.bdstatic.com/r/www/cache/res/static/certification/img/hinticon_ecom_star_6b95c0d3.png) no-repeat; background-position:0px 2px;width:{%$hintStarWidth%};height:13px; vertical-align:text-top; display:inline-block;}</style>{%$hintText = "已通过<a href='$hintURL' target='_blank'>百度身份认证</a>&nbsp;百度信誉星级&nbsp;<i class='c-icon c-icon-star-gray'><i style='width:"|cat:$hintStarWidth|cat:";' class='c-icon c-icon-star'></i></i>"%}<script>
bds.ready(function(){
  var ecomVcardData = {
    "id":"40051",
    "templateName":"res_hint_certification",
    "hintData":{  
      "hintLabel":"{%$hintLabel%}",
      "hintText":"{%$hintText%}",
      "hintIcon":"http://s1.bdstatic.com/r/www/cache/res/static/certification/img/hinticon_ecom_v_8d9cc774.png"
    }
  };
  bds.se.certification = bds.se.certification || {};
  bds.se.certification.data = bds.se.certification.data||[];
  bds.se.certification.data[{%$resIndex%}] = bds.se.certification.data[{%$resIndex%}]||[];
  {%if $tplData.eVcard.vcard_add|escape == 1%}
    {%$hintAddText = "具有医疗执业许可证"%}
    var ecomAddData = {
      "id":"40052",
      "templateName":"res_hint_certification",
      "hintData":{
        "hintLabel":"{%$hintLabel%}",
        "hintText":"{%$hintAddText%}",
        "hintIcon":"http://s1.bdstatic.com/r/www/cache/res/static/certification/img/hinticon_ecom_add_33c7b5e6.png"
      }
    };
  bds.se.certification.data[{%$resIndex%}].push(ecomAddData);
  {%/if%}
  bds.se.certification.data[{%$resIndex%}].push(ecomVcardData);
});
</script>{%/fis_widget_inline%}{%$resHitCluster = 1%}{%/if%}{%*安全联盟认证提示*%}{%if $tplData.safeUnion && $tplData.safeUnion.company%}{%*
 * @fileOverview 认证类提示动态提示模版
 * @author  郭勇、杨帆
 * @version 1.0.1
 * @date 2013-02-04
 *%}{%fis_widget_inline%}{%if $resHitCluster != 1%}{%$disUrl = ""%}{%capture assign="disUrl"%}{%*记录结果url统计日志用*%}{%if $tplData.DispUrl%}{%$tplData.DispUrl%}{%else%}{%$tplData.classicInfo.urlDisplay%}{%/if%}{%/capture%}<span class="certification" certification_key="{%$resIndex%}" dis_url="{%$disUrl|escape%}"><a href="#" class="c-icon c-icon-v" onclick="return false"></a></span>&nbsp;{%/if%}{%$hintLabel = $tplData.safeUnion.company|escape|cat:"："%}{%$hintURL = $tplData.safeUnion.auth_url|escape%}{%$hintText = "由<a href='$hintURL' target='_blank'>安全联盟</a>认证的安全可信网站"%}<script>
bds.ready(function(){
  var safeunionData = {
    "id":"40050",
    "templateName":"res_hint_certification",
    "hintData":{
      "hintLabel":"{%$hintLabel%}",
      "hintText":"{%$hintText%}",
      "hintIcon":"http://s1.bdstatic.com/r/www/cache/res/static/certification/img/hinticon_safeunion_11a01cd4.png"
    }
  };
  bds.se.certification = bds.se.certification || {};
  bds.se.certification.data = bds.se.certification.data||[];
  bds.se.certification.data[{%$resIndex%}] = bds.se.certification.data[{%$resIndex%}]||[];
  bds.se.certification.data[{%$resIndex%}].push(safeunionData);
});
</script>{%/fis_widget_inline%}{%$resHitCluster = 1%}{%/if%}{%block name="__fis_page_header_block__"%}{%include file="widget/result/module_static_include/module_static_include.tpl" caching%}{%/block%}{%if isset($resHintData.hints.showTimeRight)%}{%*url级别通用提示*%}{%foreach $resHintData.hints.showTimeRight  as $resHint%}{%display_res_hint widgetName=$resHint.templateName%}{%*认证类提示聚合展示*%}{%if $resHint.templateName == "res_hint_certification"%}{%$resHitCluster = 1%}{%/if%}{%/foreach%}{%/if%}{%if $isOldSnapshootOn%}{%if strlen($tplData.classicInfo.snapshootKey) > 0%}{%if $tplData.classicInfo.docType < 0%}-&nbsp;<a data-nolog href="{%$cache_domain%}/c?{%$tplData.classicInfo.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" 
				{%if !($urlPara.ct & 0x40000)%}
						target="_blank" 
	            {%/if%}
		            class="m">{%$lable_cache%}</a>{%/if%}{%/if%}{%/if%}{%fis_widget_inline%}{%if $showLike == 1%}<span data-nolog class="liketip" id="like_{%$tplData.classicInfo.urlSign%}"></span>{%/if%}{%/fis_widget_inline%}{%fis_widget_inline%}{%foreach $tplData.addSubArr as $subArr%}{%if $subArr.typeID == '10004' && $resIndex == 1%}<script>bds.se.addToHome = true;</script>{%/if%}{%/foreach%}{%/fis_widget_inline%}{%fis_widget_inline snapshootType=1%}{%if $isOperationsOn %}<span class="operations" 
	{%if $snapshootType == 1%}
		{%if strlen($tplData.classicInfo.snapshootKey) > 0%}
			{%if $tplData.classicInfo.docType < 0%}
			data-kuaizhao="{%$cache_domain%}/c?{%$tplData.classicInfo.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}"
			{%/if%}
		{%/if%}
	{%elseif $snapshootType == 2%}
		{%if strlen($tplData.classicInfo.snapshootKey) > 0%}
			data-kuaizhao="{%$cache_domain%}/c?{%$tplData.classicInfo.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}"
		{%/if%}
	{%/if%}
	></span>{%/if%}{%/fis_widget_inline%}</div>{%/block%}{%block name="__fis_page_header_block__"%}{%include file="widget/result/module_static_include/module_static_include.tpl" caching%}{%/block%}