{%extends 'c_base.tpl'%} {%block name='content'%}<div class="c-border"> <div class="c-tabs op-cj-dinner-tabx op-dinner-tab2cho"> <ul class="c-tabs-nav c-tabs-nav-movetop op-dinner-tabul"></ul> </div></div> <p class="op-cj-dinner-tabx-more c-gap-top-small"></p><script >
    A.setup({
      'originQuery': '{%str_replace($extData.resourceid|cat:'_','',$extData.fetchkey)|escape:"javascript"%}',
        'resourceid': '{%$extData.resourceid|escape:"javascript"%}'
    });
</script>{%/block%}