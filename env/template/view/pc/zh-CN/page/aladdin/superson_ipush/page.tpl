{%extends 'c_base.tpl'%} {%block name="foot"%}{%/block%}{%block name='data_modifier'%} {%$tplData.showgw=true%}{%/block%}{%block name='content'%}<div class="c-row op_superson_table"> <div class="c-span4"> <img class="c-img c-img4 op_superson_img" src="http://www.baidu.com/aladdin/img/superson/default.jpg" /> </div> <div class="c-span20 c-span-last"> <p><span class="c-gap-right op_superson_name">Hi,</span><span class="op_superson_summary">{%$tplData.summary|escape:'html'%}</span></p> <p class="op_superson_info_p"></p> <p class="c-gap-top-small"><a class="c-btn c-btn-primary op_superson_btn OP_LOG_BTN" href="{%$tplData.btnurl%}"  target="_blank">{%$tplData.btncont|escape:'html'%}</a></p> <p class="c-showurl">{%fe_fn_c_showurl%}</p> </div> </div><div class="op_superson_sumcont"> <p>{%$tplData.sumcont|limitlen:145|highlight:0%}</p> <p class="c-showurl">{%fe_fn_c_showurl%}</p></div><script >
    A.setup({
        'srcUrl': '["{%$tplData.srcurl|escape:'html'%}"]',
        'infoUrl':'{%$tplData.interfaceurl|escape:'html'%}?url=#{0}',
        'bind':'{%$tplData.bindURL|escape:'html'%}'
    });
</script>{%/block%}