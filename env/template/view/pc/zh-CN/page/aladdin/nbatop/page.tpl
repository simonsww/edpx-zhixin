{%extends 'c_base.tpl'%} {%block name='content'%}<div class="c-tabs{%if isset($tplData.title) && trim($tplData.title)%} c-gap-top-small{%/if%} op-nbatop-tabs op-nbatop-tab2cho"> <ul class="c-tabs-nav op-nbatop-tabul"></ul></div><script >
    A.setup({query:"{%str_replace($extData.resourceid|cat:'_','',$extData.fetchkey)%}"});
</script>{%/block%}