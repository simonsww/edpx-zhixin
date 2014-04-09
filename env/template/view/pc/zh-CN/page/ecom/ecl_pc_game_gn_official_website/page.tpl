{%extends 'base_div.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecl-pc-game-gn-official-website .f13{font-size:13px}.ecl-pc-game-gn-official-website .icon-gw{background:url("http://s1.bdstatic.com/r/www/cache/static/global/img/commonHintIcon_f6c958f5.png") no-repeat scroll -17px 0 transparent;display:inline-block;height:16px;margin-left:3px;overflow:hidden;vertical-align:text-bottom;width:30px;padding-left:0}
</style>

<table cellspacing="0" cellpadding="0" id="1" class="ecl-pc-game-gn-official-website">
    <tbody>
        <tr>
            <td class="f">
                <h3 class="t">
                    {%if $tplData.favicon == 'http://' || $tplData.favicon == '' %}
                    <a target="_blank" href="{%$tplData.url%}">{%$tplData.title%}</a>
                    {%else%}
                    <a target="_blank" href="{%$tplData.url%}" style="background-image:url({%$tplData.favicon%})" class="favurl">{%$tplData.title%}</a>
                    {%/if%}
                </h3>
                <div class="c-abstract">{%$tplData.describe%}</div>
                <div class="f13">
                    <span class="g">{%$tplData.showurl%} {%$tplData.date%}</span> <span class="icon-gw"> </span> - <a class="m" target="_blank" href="{%$tplData.cache|escape:'html'%}"> 百度快照</a>
                </div>
            </td>
        </tr>
    </tbody>
</table>


{%/block%}
