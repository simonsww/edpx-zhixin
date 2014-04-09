{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%if $tplData.headline%}{%$extData.feData.hasTitleGap=false%}{%/if%}{%if $tplData.provider%}{%$extData.feData.hasShowURLGap=false%}{%/if%}{%/block%}{%block name='content'%}<div class="op_sport_schedule_main"> {%if $tplData.headline%}<div class="op_sport_schedule_headline">{%$tplData.headline|highlight:0%}</div>{%/if%} <div class="op_sport_schedule_tabs"> <div class="op_sport_schedule_tabsa"> {%if $tplData.sponsor[0]['url1']%} <a target="_blank" href="{%$tplData.sponsor[0]['url1']|escape:'html'%}"><img class="c-img c-img3" src="{%$tplData.sponsor[0]['logoaddress']|escape:'html'%}" alt="logo" /></a> {%/if%} </div> <div class="c-tabs op_sport_schedule_tabnav"> <ul class="c-tabs-nav op_sport_schedule_tabulnav"></ul> </div> </div> {%if $tplData.provider%} <div style="color:#666;"> {%$tplData.provider|escape:'html'%} </div> {%/if%}</div><script >
    A.setup({tab: {%json_encode($tplData.tab)%},
             curtab:{%json_encode($tplData.curtab)%},
             tr: {%json_encode($tplData.tr)%},
             link:{%json_encode($tplData.link)%}
            });
</script>{%/block%}