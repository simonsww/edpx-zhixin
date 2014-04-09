{%*
 * @fileOverview 安全联盟资质认证模版
 * @author  郭勇
 * @version 1.0.0
 * @date 2013-01-17
 *%}{%fis_widget%}{%$data = $tplData.security_union%}{%if isset($data)%}{%*因数据有可能和现有安全风险提示冲突，当存在安全风险提示时，直接以现有安全风险提示为准，短期方案，长期方案提供统一数据*%}{%*安全提示ID更改时需要同步修改*%}{%$safetips['10040'] = "bd-1"%}{%$safetips['10041'] = "bd-2"%}{%$safetips['10042'] = "bd-3"%}{%$safetips['10043'] = "bd-4"%}{%$safetips['10050'] = "sc-1"%}{%$safetips['10051'] = "sc-2"%}{%$safetips['10052'] = "sc-3"%}{%$safetips['10053'] = "sc-4"%}{%$safetips['10060'] = "qq-1"%}{%$safetips['10061'] = "qq-2"%}{%$safetips['10062'] = "qq-3"%}{%$safetips['10063'] = "qq-4"%}{%$safetips['10070'] = "js-1"%}{%$safetips['10071'] = "js-2"%}{%$safetips['10072'] = "js-3"%}{%$safetips['10073'] = "js-4"%}{%$safetips['10080'] = "hs-1"%}{%$safetips['10081'] = "hs-2"%}{%$safetips['10082'] = "hs-3"%}{%$safetips['10083'] = "hs-4"%}{%$unsafe_flag = false%}{%foreach $tplData.addSubArr as $subArr%}{%if $safetips[$subArr.typeID]%}{%$unsafe_flag = true%}{%/if%}{%/foreach%}{%$key = rand(1,1000)%}<span class="safe_union safe_union_S{%if $unsafe_flag%}-1{%else%}{%$data.level|vui_escape:'html'%}{%/if%}" safe_union_key="{%$key%}" 
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
  </script>{%/if%}{%/fis_widget%}