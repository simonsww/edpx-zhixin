{%extends 'base_div.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecl-web-game-gn-official-website{padding-bottom:4px}.ecl-web-game-gn-official-website .f13{font-size:13px}.ecl-web-game-gn-official-website .icon-gw{background:url("http://s1.bdstatic.com/r/www/cache/static/global/img/commonHintIcon_f6c958f5.png") no-repeat scroll -17px 0 transparent;display:inline-block;height:16px;margin-left:3px;overflow:hidden;vertical-align:text-bottom;width:30px;padding-left:0}.ecl-web-game-gn-official-website .more-container{margin-top:10px;height:22px;line-height:22px}.ecl-web-game-gn-official-website .more{position:relative;display:inline-block;height:20px;padding-left:26px;padding-right:5px;margin-right:6px;line-height:20px;border:1px solid #ddd;font-size:12px;font-family:SimSun;color:#666;text-decoration:none;vertical-align:top;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/game/ecl-more-btn-bg-1.png")}
.ecl-web-game-gn-official-website .more:hover{border:1px solid #a7bdd2;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/game/ecl-more-btn-bg-1.png") 0 20px}.ecl-web-game-gn-official-website .more-trigger{padding:0;width:60px;overflow:hidden;background-color:#fff}.ecl-web-game-gn-official-website .more-trigger:hover{z-index:100;height:auto;overflow:visible;background:0}.ecl-web-game-gn-official-website .more-trigger span i{position:absolute;top:8px;right:9px;border-top:5px solid #cdcdcd;border-left:5px solid transparent;border-right:5px solid transparent;border-bottom:5px solid transparent;filter:chroma(color=#ff0000);_border-left:5px solid #f00;_border-right:5px solid #f00;_border-bottom:5px solid #f00}
.ecl-web-game-gn-official-website .more-trigger span em{position:absolute;top:6px;right:9px;border-top:5px solid #fff;border-left:5px solid transparent;border-right:5px solid transparent;border-bottom:5px solid transparent;filter:chroma(color=#ff0000);_border-left:5px solid #f00;_border-right:5px solid #f00;_border-bottom:5px solid #f00}.ecl-web-game-gn-official-website .more-text{padding-left:5px}.ecl-web-game-gn-official-website .more-hidden{display:inline-block;width:50px;padding:0 5px;text-decoration:none;color:#666;background:#fff}
.ecl-web-game-gn-official-website .more-hidden:hover{background-color:#f5f5f5}.ecl-web-game-gn-official-website .more img{position:absolute;top:2px;left:5px}.ecl-web-game-gn-official-website .label{display:inline-block;vertical-align:top}.ecl-web-game-gn-official-website .label em{_vertical-align:top}
</style>

<table cellspacing="0" cellpadding="0" id="1" class="ecl-web-game-gn-official-website">
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
                    <span class="g">{%$tplData.showurl%} {%$tplData.date%}</span> - <a class="m" target="_blank" href="{%$tplData.cache|escape:'html'%}"> 百度快照</a>
                </div>
                <div class="f13 more-container">
                    <span class="label">更多<em>{%$tplData.word%}</em>优质站点：</span>
                    {%if strlen($tplData.word) > 15%}
                    {%assign var="minus" value="1"%}
                    {%else%}
                    {%assign var="minus" value="0"%}
                    {%/if%}
                    {%foreach $tplData.more as $item%}
                        {%if $item@index < 4 - $minus%}
                        <a class="more" href="{%$item.url%}" target="_blank"><img src="{%$item.icon%}" width="16" height="16">{%$item.text%}</a>
                        {%/if%}
                    {%/foreach%}
                    {%if count($tplData.more) > 4 - $minus%}
                        <span id="ecl-web-game-more-trigger" class="more more-trigger">
                            <span class="more-text">更多<i></i><em></em></span>
                            {%foreach $tplData.more as $item%}
                                {%if $item@index > 6 - $minus%}
                                {%break%}
                                {%/if%}
                                {%if $item@index > 3 - $minus%}
                                <a class="more-hidden" href="{%$item.url%}" target="_blank">{%$item.text%}</a>
                                {%/if%}
                            {%/foreach%}
                        </span>
                    {%/if%}
                </div>
            </td>
        </tr>
    </tbody>
</table>

<script>
if (/MSIE 6/.test(navigator.userAgent)) {
    document.getElementById('ecl-web-game-more-trigger').attachEvent('onmouseenter', function (e) {
        e.srcElement.style.cssText = 'overflow:visible;position:absolute;border:1px solid #a7bdd2;background: none;z-index: 100;';
    });
    document.getElementById('ecl-web-game-more-trigger').attachEvent('onmouseleave', function (e) {
        e.srcElement.style.cssText = '';
    });
}
</script>


{%/block%}
