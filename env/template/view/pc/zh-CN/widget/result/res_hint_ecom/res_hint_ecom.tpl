{%*
 * @fileOverview 认证类提示动态提示模版
 * @author  郭勇、杨帆
 * @version 1.0.1
 * @date 2013-02-04
 *%}{%fis_widget%}{%if $resHitCluster != 1%}{%$disUrl = ""%}{%capture assign="disUrl"%}{%*记录结果url统计日志用*%}{%if $tplData.DispUrl%}{%$tplData.DispUrl%}{%else%}{%$tplData.classicInfo.urlDisplay%}{%/if%}{%/capture%}<span class="c-vline"></span><span class="certification" certification_key="{%$resIndex%}" dis_url="{%$disUrl|escape%}"><a href="#" class="c-icon c-icon-v" onclick="return false"></a></span>{%/if%}{%$hintLabel = $tplData.eVcard.company|escape|cat:"："%}{%$hintURL = $tplData.eVcard.vcard_url|escape%}{%$hintStar = $tplData.eVcard.vcard_star|escape%}{%if in_array($hintStar,[1,2,3,4,5])%}{%$hintStarWidth = $hintStar * 20|cat:"%"%}{%/if%}{%$hintText = "已通过<a href='$hintURL' target='_blank'>百度身份认证</a>"%}<script>
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

  {%if $hintStar%}
    {%$hintStartText = "百度信誉星级&nbsp;<i class='c-icon c-icon-star-gray'><i style='width:"|cat:$hintStarWidth|cat:";' class='c-icon c-icon-star'></i></i>"%}
    var ecomStartData = {
      "id":"40051",
      "templateName":"res_hint_certification",
      "hintData":{
        "hintLabel":"{%$hintLabel%}",
        "hintText":"{%$hintStartText%}"
      }
    };
  bds.se.certification.data[{%$resIndex%}].push(ecomStartData);
  {%/if%}
});
</script>{%/fis_widget%}