{%extends 'c_base.tpl'%} {%block name="data_modifier"%} {%if !$tplData.showurl%} {%$tplData.showurl = 'open.baidu.com/'%} {%/if%} {%if !$tplData.daylight%}{%$tplData.daylight = [ ['start' => '8:00:00','end' => '20:00:00' ] ]%} {%/if%} {%if !$tplData.timezone%}{%$tplData.timezone = 8%} {%/if%}{%/block%}{%block name='content'%}<div class="op-beijingtime"></div><script >
    A.setup({
        {%if $tplData.dst%}
        dst: {%json_encode($tplData.dst[0])%},
        {%/if%}
        timeZone: '{%$tplData.timezone|escape:'javascript'%}',
        dayLight: {%json_encode($tplData.daylight[0])%}
    });
</script>{%/block%}