{%fis_widget%}<li class="bds-list" id="{%$resIndex%}" {%if $res.dispData.ASURL%} mu="{%$res.offsetInfo.url%}" {%/if%} tpl="se_st_gallery"><style>{%fe_fn_ui_c_css css='img'%}.se_st_gallery_list{position:relative}.se_st_gallery_list .se_st_gallery_list_imgdes{position:absolute;bottom:0;left:0;width:100%;padding:1px 0;background:#000;filter:alpha(opacity:63);opacity:.63}.se_st_gallery_list span{display:block;text-align:center;color:#fff;position:absolute;bottom:0;left:0;width:100%;padding:1px 0}</style><div><h3>{%if $res.docType >= 0%}<span><strong style="color:{%$style_link_color%};font-weight:normal;">{%$res.docTypeBrief%}</strong></span>{%/if%}<a 
    {%if $res.dispData.FavURL%}class="bds-favurl" style="background-image:url({%$res.dispData.FavURL%})"
    {%/if%}{%*fave-icon*%}
        {%if $needubs == 1%}
        data-click="{
            'F':'{%$res.strategyStr[0]%}',
            'F1':'{%$res.strategyStr[1]%}',
            'F2':'{%$res.strategyStr[2]%}',
            'F3':'{%$res.strategyStr[3]%}',
            'T':'{%$serverTime%}',
            {%if $res.dispData.ASURL%}
            'url':'{%$res.offsetInfo.urlEncoded%}',
            {%else%}
            'url':this.href,
            {%/if%}
            'y':'{%$res.identifyStr%}'
            {%if $res.dispData.ASRES%}
            {%if $res.dispData.ASRES == 1%}
            {%if $needubs == 1%}
            ,'rsv_ism':'{%$res.dispData.ASRES%}'
            {%/if%} 
            {%/if%} 
            {%/if%}
            }"
        {%/if%} 

        {%if $res.dispData.ASURL%}
            href = "{%enc_url url="http://www.baidu.com/cache/spam/spam_tip.html?`$res.offsetInfo.url|vui_escape:'url'`"%}"
        {%else%}
            href="{%get_url token=$res.productType originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}"
        {%/if%}

        {%if !($urlPara.ct & 0x40000)%}
            target="_blank"
        {%/if%} 
        >{%*fave-icon，占3字符位置*%}{%*官网标，占6字符位置*%}{%*title右侧通用提示，目前只有风险标，占6字符位置*%}{%$curLen = (($res.dispData.FavURL)?3:0)+(($res.dispData.strategybits.OFFICIALPAGE_FLAG || $res.dispData.sublink.is_main)?6:0) + ((isset($resHintData.hints.titleRight))?6:0)%}{%$titleLen = 63 -$curLen%}{%$res.offsetInfo.title|limitlen:"$titleLen"|highlight:2%}</a>{%if $res.dispData.strategybits.OFFICIALPAGE_FLAG || $res.dispData.sublink.is_main%}<span class="icon-gw">官网</span>{%/if%}{%*url级别通用提示*%}{%foreach $resHintData.hints.titleRight  as $resHint%}{%display_res_hint widgetName=$resHint.templateName%}{%/foreach%}</h3>{%if $res.offsetInfo.summary != ""%}<p>{%$res.offsetInfo.summary|highlight:4%}</p>{%/if%}<div class="c-row c-gap-top">{%foreach $res.dispData.gallery.imglist.img as $item%}{%if $item@index < 4%}<div class="c-span6{%if $item@index == $res.gallery.imglist.img|count-1 || $item@index == 3%} c-span-last{%/if%} se_st_gallery_list"><a href="{%$item.imglink|escape:'html'%}" target="_blank"><img class="c-img c-img6" src="{%$item.imgsrc|escape:'html'%}"/></a><div class="se_st_gallery_list_imgdes">&nbsp;</div><span>第{%$item@index + 1%}页</span></div>{%/if%}{%/foreach%}</div><p class="c-gap-top-small"><a href="{%$res.offsetInfo.url|escape:'html'%}" target="_blank">查看全部详情</a></p><p class="showurl"><cite>jingyan.baidu.com/</cite>{%*url级别通用提示*%}{%if isset($resHintData.hints.showTimeRight)%}{%*url级别通用提示*%}{%foreach $resHintData.hints.showTimeRight  as $resHint%}{%display_res_hint widgetName=$resHint.templateName%}{%*认证类提示聚合展示*%}{%if $resHint.templateName == "res_hint_certification"%}{%$resHitCluster = 1%}{%/if%}{%/foreach%}{%/if%}{%if $res.offsetInfo.code neq '简体'%}{%$res.offsetInfo.code%}{%/if%}{%if strlen($res.snapshootKey) > 0%}{%if $res.docType < 0%}-&nbsp;<a data-nolog href="{%$cache_domain%}/c?{%$res.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" 
            {%if !($urlPara.ct & 0x40000)%}
                target="_blank" 
            {%/if%}
            >{%$lable_cache%}</a>{%/if%}{%/if%}{%*widget name="se_like"*%}</p></div></li>{%/fis_widget%}