{%extends 'se_st_default/page.tpl'%} {%block name="result_title"%}<h3 class="t">{%if $tplData.classicInfo.docType >= 0%}<font size=-1 color={%$style_link_color%}><b>{%$tplData.classicInfo.docTypeBrief%}</b></font>{%/if%}<a 
	{%if $tplData.FavURL%}class="favurl" style="background-image:url({%$tplData.FavURL%})" fav-url="{%$tplData.FavURL%}"{%/if%}
        data-click="{
			'F':'{%$tplData.classicInfo.strategyStr[0]%}',
			'F1':'{%$tplData.classicInfo.strategyStr[1]%}',
			'F2':'{%$tplData.classicInfo.strategyStr[2]%}',
			'F3':'{%$tplData.classicInfo.strategyStr[3]%}',
			{%if $tplData.extQuery%}
			'rsv_sug9':1,
			{%/if%}
			'T':'{%$serverTime%}',
			{%if $tplData.ASURL%}
			'url':'{%rs_get_url token=$tplData.classicInfo.productType originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}',
			{%/if%}
			'y':'{%$tplData.classicInfo.identifyStr%}'
			{%if $tplData.ASRES && $tplData.ASRES == 1%}
				,'rsv_ism':'{%$tplData.ASRES%}'
			{%/if%} 
			}"
		{%if $tplData.ASURL%}
        href = "{%rs_enc_url url="http://www.baidu.com/cache/spam/spam_tip.html?`$tplData.classicInfo.url|vui_escape:'url'`"%}"
		{%else%}
		href="{%rs_get_url token=$tplData.classicInfo.productType originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}"
		{%/if%}

		{%if !($urlPara.ct & 0x40000)%}
            target="_blank"
        {%/if%}
		
		>{%if $isFavoOn == 1%}{%if $tplData.FavURL%}{%if $isUserLogin == 1%}{%$tplData.classicInfo.title|limitlen:56|highlight:2%}{%else%}{%$tplData.classicInfo.title|limitlen:60|highlight:2%}{%/if%}{%else%}{%if $isUserLogin == 1%}{%$tplData.classicInfo.title|limitlen:59|highlight:2%}{%else%}{%$tplData.classicInfo.title|limitlen:63|highlight:2%}{%/if%}{%/if%}{%else%}{%if $tplData.FavURL%}{%$tplData.classicInfo.title|limitlen:60|highlight:2%}{%else%}{%$tplData.classicInfo.title|limitlen:63|highlight:2%}{%/if%}{%/if%}</a></h3>{%/block%}{%block name="result_attach"%}{%* 子链结构化数据 *%}{%if  $tplData.templateName%}{%if $tplData.templateName == 'se_st_sublink'%}{%fis_widget_inline%}<style>.sub_link_tb {margin-left:18px}
	.sub_link_a {line-height:24px;font-size:14px}
	.sub_link_td_1{padding-left:145px}</style><table class="sub_link_tb" cellspacing=0 cellpadding=0>{%foreach $tplData.sublink.sub_link as $alink%}{%if $alink@index%2%}<td class="sub_link_td_1">{%else%}<tr><td class="sub_link_td_0">{%/if%}<a class="sub_link_a" target="_blank" href="{%$alink.link%}">{%$alink.title|limitlen:20|vui_escape:'html'%}</a>{%if $alink@index%2%}</td></tr>{%else%}</td>{%/if%}{%/foreach%}</table>{%/fis_widget_inline%}{%/if%}{%/if%}{%if $tplData.AsNormalSubTitle_1%}<p class="f13 c-offset c-gap-top-small"><span>{%if $tplData.AsNormalSubTitle_1%}<a href="{%rs_enc_url token=$tplData.classicInfo.productType url=$tplData.AsNormalSubUrl_1%}" target="_blank" >{%$tplData.AsNormalSubTitle_1|limitlen:58|highlight:2%}</a><br>{%/if%}{%if $tplData.AsNormalSubTitle_2%}<a href="{%rs_enc_url token=$tplData.classicInfo.productType url=$tplData.AsNormalSubUrl_2%}" target="_blank" >{%$tplData.AsNormalSubTitle_2|limitlen:58|highlight:2%}</a><br>{%/if%}{%if $tplData.AsNormalSubTitle_3%}<a href="{%rs_enc_url token=$tplData.classicInfo.productType url=$tplData.AsNormalSubUrl_3%}" target="_blank" >{%$tplData.AsNormalSubTitle_3|limitlen:58|highlight:2%}</a><br>{%/if%}{%if $tplData.AsNormalSubTitle_1 && !$tplData.AsNormalSubTitle_2%}<a href="http://www.baidu.com/s?wd={%$query|vui_escape:'url'%} site:{%$tplData.AsClusterSiteName|vui_escape:'url'%}" target="_blank" class="c">更多{%if $tplData.AsClusterRealName%}{%$tplData.AsClusterRealName%}{%else%}{%$tplData.AsClusterSiteName%}{%/if%}站内相关结果&gt;&gt;</a><br>{%/if%}{%if $tplData.AsNormalSubTitle_1 && $tplData.AsNormalSubTitle_2 && !$tplData.AsNormalSubTitle_3%}<a href="http://www.baidu.com/s?wd={%$query|vui_escape:'url'%} site:{%$tplData.AsClusterSiteName|vui_escape:'url'%}" target="_blank" class="c">更多{%if $tplData.AsClusterRealName%}{%$tplData.AsClusterRealName%}{%else%}{%$tplData.AsClusterSiteName%}{%/if%}站内相关结果&gt;&gt;</a><br>{%/if%}{%if $tplData.AsNormalSubTitle_1 && $tplData.AsNormalSubTitle_2 && $tplData.AsNormalSubTitle_3%}<a href="http://www.baidu.com/s?wd={%$query|vui_escape:'url'%} site:{%$tplData.AsClusterSiteName|vui_escape:'url'%}" target="_blank" class="c">更多{%if $tplData.AsClusterRealName%}{%$tplData.AsClusterRealName%}{%else%}{%$tplData.AsClusterSiteName%}{%/if%}站内相关结果&gt;&gt;</a><br>{%/if%}</span></p>{%/if%}{%block name="__fis_page_header_block__"%}{%include file="widget/result/module_static_include/module_static_include.tpl" caching%}{%/block%}{%if $tplData.extQuery%}<div style="display:none;padding:3px 0 0 0" class="extquery" data-extquery="{%$tplData.extQuery|vui_escape:'html'%}"><a href="http://www.baidu.com/s?rsv_crq=1&wd={%$tplData.extQuery|vui_escape:'url'%}" target="_blank" style="font-size:13px;font-weight:bold;">{%$tplData.disQuery|highlight:2%}</a></div><script>

if(!bds.se.rightRpFlag) {

bds.se.rightRpFlag = true;
bds.ready(function(){
	bds.se.rightRp = (function(){
        var asObj = baidu.Q('extquery');
        function init(){
            //在所有的as结果上进行绑定事件处理函数
            baidu.each(asObj, function(dom){
                var extquery = dom.getAttribute('data-extquery');
                if(baidu.string.trim(extquery).length==0) return;
                var extquery_id = dom.getAttribute('id')||dom.id;
                var partentTdNode, tmp = dom.parentNode;
                var i = 3;
                do {
                    partentTdNode = tmp;
                    tmp = tmp.parentNode;
                }
                while (partentTdNode.tagName.toLowerCase() != "td");

                var childrens = baidu.dom.children(partentTdNode);
                var titleNode, aNode, tmp;
                for (var i = 0; i < childrens.length; i++) {
                    tmp = childrens[i];
                    if (tmp.tagName.toLowerCase() == 'h3') {
                        titleNode = tmp;
                        break;
                    }
                }
                var titleChildrens = baidu.dom.children(titleNode);
                for (var i = 0; i < titleChildrens.length; i++) {
                    tmp = titleChildrens[i];
                    if (tmp.tagName.toLowerCase() == 'a') {
                        aNode = tmp;
                        break;
                    }
                }
                baidu.event.on(aNode, 'mousedown', function(){
                var tmpDom = dom;
                dom.style.display="";
                });

            });
        }
        init();
    })();
});

}
</script>{%/if%}{%/block%}{%block name="__fis_page_header_block__"%}{%include file="widget/result/module_static_include/module_static_include.tpl" caching%}{%/block%}