{%*
 * @fileOverview 航协模版
 * @author  郭勇
 * @version 1.0.1
 * @date 2014-03-17
 *%}{%fis_widget%}{%$disUrl = ""%}{%capture assign="disUrl"%}{%*记录结果url统计日志用*%}{%if $tplData.DispUrl%}{%$tplData.DispUrl%}{%else%}{%$tplData.classicInfo.urlDisplay%}{%/if%}{%/capture%}<span class="c-vline"></span><span class="certification cata" certification_key="{%$tplData.classicInfo.siteSign%}" dis_url="{%$disUrl|escape%}"><a href="#" class="c-icon c-icon-air" onclick="return false" target="_blank" ></a></span><script>
  bds.ready(function(){
    bds.se.certification = bds.se.certification || {};
    bds.se.certification.data = bds.se.certification.data||[];
    bds.se.certification.data["{%$tplData.classicInfo.siteSign%}"] = bds.se.certification.data["{%$tplData.classicInfo.siteSign%}"]||[];
    if($.inArray({%json_encode($resHint.id)%},bds.se.certification.data["{%$tplData.classicInfo.siteSign%}"])==-1){
        bds.se.certification.data["{%$tplData.classicInfo.siteSign%}"].push({%json_encode($resHint.id)%});
    }
  });
  </script>{%/fis_widget%}