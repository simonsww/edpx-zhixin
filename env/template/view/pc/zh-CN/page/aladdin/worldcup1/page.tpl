{%extends 'c_base.tpl'%} {%block name='content'%}<div class="c-tabs op_worldcup1_tabs op_worldcup1_tab2s"> <ul class="c-tabs-nav OP_LOG_BTN op-worldcup1-tabul"></ul></div><div style="color:#666;" class="c-gap-top-small op-worldcup1-provider" style="display:none;"></div><script >
    A.setup({query:"{%str_replace($extData.resourceid|cat:'_','',$extData.fetchkey)%}"});
</script>{%/block%}