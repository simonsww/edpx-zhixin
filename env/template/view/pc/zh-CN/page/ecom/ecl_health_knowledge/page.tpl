{%extends 'base_div.tpl'%}
{%block name='content'%}
<style type="text/css">
.ecl-health-knowledge-left .knowledge-lines{margin-top:2px;font-size:13px}.ecl-health-knowledge-left .knowledge-line{line-height:23px}.ecl-health-knowledge-left .knowledge-line .knowledge-name,.ecl-health-knowledge-left .knowledge-line .item-link:link{color:#00C;text-decoration:underline}.ecl-health-knowledge-left .knowledge-line .knowledge-name{margin-left:10px}.ecl-health-knowledge-left .knowledge-line i{margin:0 10px 0 6px}.ecl-health-knowledge-left .knowledge-line .item-link{display:inline-block;width:144px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;vertical-align:top;*vertical-align:baseline}
.ecl-health-knowledge-left .c-showurl{margin-top:2px}
</style>
{%strip%}{%*医疗找知识卡片*%}
<div class="ecl-health-knowledge-left">
  <h3 class="t">
    <a data-click="{rsv_vspos:0}" target="_blank" href="{%$tplData.queryUrl%}">{%$tplData.queryTitle%}</a>
    {%if $tplData.showHomepage%}
      <span class="icon-gw">官网</span>
    {%/if%}
  </h3>
  <div class="knowledge-lines">
    {%foreach $tplData.lines as $line%}
    <div class="knowledge-line" data-click="{rsv_vspos:1}">

      {%if $line.url%}
      <a target="_blank" href="{%$line.url|escape:'html'%}" class="knowledge-name">{%$line.name|escape:'html'%}</a>
      {%else%}
      <em class="knowledge-name">{%$line.name|escape:'html'%}</em>
      {%/if%}：
      
      {%foreach $line.links as $item%}
      <a target="_blank" class="item-link" href="{%$item.url%}">{%$item.title|highlight:0%}</a>
      {%if !$item@last%}
      <i>|</i>
      {%/if%}
      {%/foreach%}
    </div>
    {%/foreach%}
  </div>
  <p class="c-showurl">{%$tplData.showUrl%}</p>

</div>
{%/strip%}
{%/block%}