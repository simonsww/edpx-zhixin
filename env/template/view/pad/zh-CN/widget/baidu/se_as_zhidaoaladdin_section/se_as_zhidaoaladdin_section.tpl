{%function name="fis_widget_baidu_se_as_zhidaoaladdin_section"%}<li class="bds-list"><div class="bds-item-box"><table id="{%$resIndex%}" cellpadding="0" cellspacing="0" mu="{%get_mu originUrl=$res.offsetInfo.url encryptionUrl=$res.encryptionUrl%}" tpl="se_as_zhidaoaladdin_section"><style type="text/css">.as_zhidaoaladdin a{display:block}.as_zhidaoaladdin p a{padding:3px 0}.as_zhidaoaladdin font{color:#2d2d2d}</style><tr><td class="f as_zhidaoaladdin" style="padding-bottom:4px;"><a href="{%get_url token=$res.productType originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}" target="_blank" data-click="{'fm':'alzd'}"><h3 class="t">{%$res.offsetInfo.title|limitlen:63|highlight:2%}</h3>{%if $res.dispData.ZhidaoReplyNum && $res.dispData.ZhidaoUpdateTime%}<font class="m">{%$res.dispData.ZhidaoReplyNum%}个回答 - {%if $res.dispData.ZhidaoCreateTime%}提问时间: {%$res.dispData.ZhidaoCreateTime|date_format:'%Y年 %m月 %d日'|strip:''%}{%else%}最新回答: {%$res.dispData.ZhidaoUpdateTime%}{%/if%}</font><br><script>(function(){return ns_c({'fm':'alzd','tab':'zd','is_n_fld':'replynum_ala'});})();</script>{%/if%}{%if $res.dispData.ZhidaoQuestionDescription%}<font><span class="m">问题描述: </span>{%$res.dispData.ZhidaoQuestionDescription|limitlen:138|highlight:2%}</font><br><script>(function(){return ns_c({'fm':'alzd','tab':'zd','is_n_fld':'description_ala'});})();</script>{%/if%}<font>{%if $res.dispData.ZhidaoBestAnswer%}<span class="m">最佳答案: </span>{%$res.dispData.ZhidaoBestAnswer|limitlen:138|highlight:2%}<script>(function(){return ns_c({'fm':'alzd','tab':'zd','is_n_fld':'bestanswer_ala'});})();</script>{%else%}{%if $res.dispData.ZhidaoNormalAnswer%}{%$res.dispData.ZhidaoNormalAnswer|limitlen:138|highlight:2%}{%else%}{%$res.offsetInfo.summary|limitlen:231|highlight:6%}{%/if%}{%/if%}</font>{%if $res.dispData.ZhidaoBestAnswer%}{%if strlen($res.dispData.ZhidaoBestAnswer)>0%}<br>{%/if%}{%else%}{%if $res.dispData.ZhidaoNormalAnswer%}{%if strlen($res.dispData.ZhidaoNormalAnswer)>0%}<br>{%/if%}{%else%}{%if strlen($res.offsetInfo.summary)>0%}<br>{%/if%}{%/if%}{%/if%}</a><p class="g">{%if $res.dispData.DispUrl%}{%$res.dispData.DispUrl|url_bold_html%}{%else%}{%$res.offsetInfo.urlDisplay|url_limit:45:true%}{%/if%}&nbsp;&nbsp;{%$res.dispData.ZhidaoFinishTime%}</p></td></tr><tr><td class="f as_zhidaoaladdin"><p style="margin-left:1em"><font>{%if $res.dispData.ZhidaoTitle_1%}<a href="{%enc_url token=$res.productType url=$res.dispData.ZhidaoUrl_1%}" target="_blank" data-click="{'fm':'alzd'}">{%$res.dispData.ZhidaoTitle_1|limitlen:54|highlight:2%}&nbsp;<font color="#666666">{%$res.dispData.ZhidaoReplyNum_1%}个回答&nbsp;{%if $res.dispData.ZhidaoUpdateTimeSub_1%}{%$res.dispData.ZhidaoUpdateTimeSub_1%}{%else%}{%$res.dispData.ZhidaoFinishTime_1%}{%/if%}</font></a>{%/if%}{%if $res.dispData.ZhidaoTitle_2%}<a href="{%enc_url token=$res.productType url=$res.dispData.ZhidaoUrl_2%}" target="_blank" data-click="{'fm':'alzd'}">{%$res.dispData.ZhidaoTitle_2|limitlen:54|highlight:2%}&nbsp;<font color="#666666">{%$res.dispData.ZhidaoReplyNum_2%}个回答&nbsp;{%if $res.dispData.ZhidaoUpdateTimeSub_2%}{%$res.dispData.ZhidaoUpdateTimeSub_2%}{%else%}{%$res.dispData.ZhidaoFinishTime_2%}{%/if%}</font></a>{%/if%}{%if $res.dispData.ZhidaoTitle_3%}<a href="{%enc_url token=$res.productType url=$res.dispData.ZhidaoUrl_3%}" target="_blank" data-click="{'fm':'alzd'}">{%$res.dispData.ZhidaoTitle_3|limitlen:54|highlight:2%}&nbsp;<font color="#666666">{%$res.dispData.ZhidaoReplyNum_3%}个回答&nbsp;{%if $res.dispData.ZhidaoUpdateTimeSub_3%}{%$res.dispData.ZhidaoUpdateTimeSub_3%}{%else%}{%$res.dispData.ZhidaoFinishTime_3%}{%/if%}</font></a>{%/if%}{%$zhidaoSearchUrl = "http://zhidao.baidu.com/q?ct=17&pn=0&tn=ikaslist&rn=10&word=`$query|vui_escape:'url'`"%}{%if $res.dispData.ZhidaoTitle_1 && !$res.dispData.ZhidaoTitle_2%}<a href="{%enc_url token=$res.productType url=$zhidaoSearchUrl%}" data-click="{'fm':'alzd'}" target="_blank" style="color:#77C;">更多知道相关问题&gt;&gt;</a>{%/if%}{%if $res.dispData.ZhidaoTitle_1 && $res.dispData.ZhidaoTitle_2 && !$res.dispData.ZhidaoTitle_3%}<a href="{%enc_url token=$res.productType url=$zhidaoSearchUrl%}" data-click="{'fm':'alzd'}" target="_blank" style="color:#77C;">更多知道相关问题&gt;&gt;</a>{%/if%}{%if $res.dispData.ZhidaoTitle_1 && $res.dispData.ZhidaoTitle_2 && $res.dispData.ZhidaoTitle_3 %}<a href="{%enc_url token=$res.productType url=$zhidaoSearchUrl%}" data-click="{'fm':'alzd'}" target="_blank" style="color:#77C;">更多知道相关问题&gt;&gt;</a>{%/if%}</font></p></td></tr></table><script>bds.comm.tapHighlight($(".as_zhidaoaladdin a"));</script></div></li>{%/function%}