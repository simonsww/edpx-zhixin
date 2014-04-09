{%*
 * @fileOverview ecom新安全联盟模板
 * @author  郭勇
 * @version 1.0.1
 * @date 2014-01-20
 *%}{%fis_widget%}{%if $resHitCluster != 1%}{%$disUrl = ""%}{%capture assign="disUrl"%}{%*记录结果url统计日志用*%}{%if $tplData.DispUrl%}{%$tplData.DispUrl%}{%else%}{%$tplData.classicInfo.urlDisplay%}{%/if%}{%/capture%}<span class="c-vline"></span><span class="certification" certification_key="{%$tplData.classicInfo.siteSign%}" dis_url="{%$disUrl|escape%}"><a href="#" class="c-icon c-icon-v" onclick="return false"></a></span>{%/if%}<script>
bds.ready(function(){
  bds.se.certification = bds.se.certification || {};
  bds.se.certification.data = bds.se.certification.data||[];
  bds.se.certification.data["{%$tplData.classicInfo.siteSign%}"] = bds.se.certification.data["{%$tplData.classicInfo.siteSign%}"]||[];
  bds.se.certification.data["{%$tplData.classicInfo.siteSign%}"].push({%json_encode("40517")%});
});
</script>{%/fis_widget%}