{%extends 'c_base.tpl'%} {%block name='content'%}<div class="op-futuresearch2"> <div class="op-futuresearch2-main"></div> <div class="op-futuresearch2-provider">{%$tplData.provider|escape:'html'%}</div></div><script >
    A.setup({
        'defaultTab': '{%$tplData.tabid|escape:'javascript'%}',
        'tab': {%json_encode($tplData.table)%},
        'childtab': {%json_encode($tplData.th)%},
        'thead': {%if $tplData.th1%}{%json_encode($tplData.th1[0])%}{%else%}null{%/if%},
        'list': {%json_encode($tplData.tr1)%}
    });
</script>{%/block%}