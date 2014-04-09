{%extends 'c_base.tpl'%} {%block name='content'%}<table class="c-table op_cee3_tb"> <thead> <tr> <th colspan="6">{%$tplData.info|escape:'html'%}<span class="op_cee3_local c-gap-left-small"></span></th> </tr> <tr class="c-table-nohihead"> {%for $index=1 to 6%} <th>{%$tplData.th[0]["col{%$index%}"]|escape:'html'%}</th> {%/for%} </tr> </thead></table>{%if $tplData.more[0]['txt']%}<div class="c-gap-top-small"><a href="{%$tplData.more[0]['moreUrlLink']|escape:'html'%}" target="_blank">{%$tplData.more[0]['txt']|escape:'html'%}</a></div>{%/if%}<script type="text/javascript" >
    A.setup({
        'selectedCity': '{%if $extData.AutoExtendedLocation%}{%$extData.AutoExtendedLocation|escape:'javascript'%}{%/if%}',
        'scoreline': {%json_encode($tplData.scoreline)%}
    });
</script>{%/block%}