{%*
 * @fileOverview ecom新认证类提示动态提示模版
 * @author  郭勇
 * @version 1.0.1
 * @date 2014-01-17
 *%}{%fis_widget%}{%if $resHitCluster != 1%}{%$disUrl = ""%}{%capture assign="disUrl"%}{%*记录结果url统计日志用*%}{%if $res.dispData.DispUrl%}{%$res.dispData.DispUrl%}{%else%}{%$res.offsetInfo.urlDisplay%}{%/if%}{%/capture%}<span class="certification" certification_key="{%$res.siteSign%}" dis_url="{%$disUrl|escape%}"><i class="c-icon c-icon-v c-icon-v1" target="_blank" style="visibility:hidden;"></i></span>{%/if%}<script type="text/javascript">bds.ready(function(){bds.se.certification = bds.se.certification || {};bds.se.certification.data = bds.se.certification.data||[];bds.se.certification.data["{%$res.siteSign%}"] = bds.se.certification.data["{%$res.siteSign%}"]||[];bds.se.certification.data["{%$res.siteSign%}"].push({%json_encode($resHint.id)%});});</script>{%/fis_widget%}