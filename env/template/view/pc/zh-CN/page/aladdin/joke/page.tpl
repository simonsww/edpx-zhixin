{%extends 'c_base.tpl'%} {%block name="foot"%}<div class="c-gap-top-small">{%fe_fn_c_showurl%}{%if !$tplData.showlamp%} - {%/if%} <a href="{%$tplData.url%}" target="_blank">查看更多</a></div> {%/block%}{%block name='data_modifier'%}{%$extData.feData.hasBorder=true%}{%$extData.feData.hasShowURLGap=false%}{%/block%}{%block name='content'%}<div class="c-row op-joke-titlerow"><div class="op-joke-title">{%$tplData.data[0].title|limitlen:36|escape%}</div><span class="c-btn c-btn-primary op-joke-btn OP_LOG_BTN" data-click="{fm:'beha'}">换一个</span></div><div class="op-joke-content">{%$tplData.data[0].content|escape%}</div><script >
    A.setup({
        'originQuery': '{%str_replace($extData.resourceid|cat:'_','',$extData.fetchkey)|escape:"javascript"%}',
        'rn':'{%$tplData.rn%}',
        'pnMax':'{%ceil(count($tplData.data)/$tplData.rn)%}'
    });
</script>{%/block%}