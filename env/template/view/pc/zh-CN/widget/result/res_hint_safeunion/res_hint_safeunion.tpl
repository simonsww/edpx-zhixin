{%*
 * @fileOverview 认证类提示动态提示模版
 * @author  郭勇、杨帆
 * @version 1.0.1
 * @date 2013-02-04
 *%}{%fis_widget%}{%if $resHitCluster != 1%}{%$disUrl = ""%}{%capture assign="disUrl"%}{%*记录结果url统计日志用*%}{%if $tplData.DispUrl%}{%$tplData.DispUrl%}{%else%}{%$tplData.classicInfo.urlDisplay%}{%/if%}{%/capture%}<span class="c-vline"></span><span class="certification" certification_key="{%$resIndex%}" dis_url="{%$disUrl|escape%}"><a href="#" class="c-icon c-icon-v" onclick="return false"></a></span>{%/if%}{%$hintLabel = $tplData.safeUnion.company|escape|cat:"："%}{%$hintURL = $tplData.safeUnion.auth_url|escape%}{%$hintText = "由<a href='$hintURL' target='_blank'>安全联盟</a>认证的安全可信网站"%}<script>
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
</script>{%/fis_widget%}