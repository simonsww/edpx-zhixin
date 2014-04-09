{%extends 'right_base.tpl'%}
{%block name='content'%}
<style type="text/css">
.ecr_game_phone_recom{padding-left:7px;font-size:12px}.ecr_game_phone_recom a{*zoom:1}.ecr_game_phone_recom a:focus{outline:0}.ecr_game_phone_recom h6{font-size:15px;font-weight:bold;line-height:1;letter-spacing:-1px;padding:0;margin:0;color:#333;*vertical-align:0;*padding-bottom:3px;_padding-bottom:2px}.ecr_game_phone_recom .header{padding:11px 0 3px 2px;letter-spacing:1px;height:22px}.ecr_game_phone_recom .header .left{float:left}.ecr_game_phone_recom .header .left a.name{color:#0000d5;text-decoration:underline}
.ecr_game_phone_recom .header .left a.name:hover{text-decoration:underline}.ecr_game_phone_recom .header .left .star-bg{display:inline-block;*display:inline;*zoom:1;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.9.1.gif') no-repeat -20px -107px;height:12px;width:61px;margin-left:8px;vertical-align:-1px;*vertical-align:middle;_vertical-align:-1px}.ecr_game_phone_recom .header .left .star{display:block;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.9.1.gif') no-repeat -20px -90px;height:12px}.ecr_game_phone_recom .header .right{color:#333;float:right}
.ecr_game_phone_recom .header .right .size{padding-left:10px;font-size:13px;line-height:100%;vertical-align:-1px;_vertical-align:1px}.ecr_game_phone_recom .content{position:relative;height:75px}.ecr_game_phone_recom .content a{text-decoration:none}.ecr_game_phone_recom .content a:hover{text-decoration:none}.ecr_game_phone_recom .content a img{width:75px;height:75px;border:0;padding:0;margin:0}.ecr_game_phone_recom .content p{color:#333;position:absolute;left:85px;top:0;right:0;margin:0;margin:-2px 0 0 0;letter-spacing:1px;line-height:20px}
.ecr_game_phone_recom .content a.download{position:absolute;left:85px;bottom:0;text-decoration:none;background:#388bff;color:#FFF;width:90px;height:26px;text-align:center;line-height:26px;letter-spacing:1px}.ecr_game_phone_recom .content a.download:hover{text-decoration:none}.container_l .ecr_game_phone_recom{width:354px}.container_s .ecr_game_phone_recom{width:260px}
</style>
{%strip%}
{%function numTran%}
    {%if $num>=1024*1024 %}
        {%($num/(1024*1024))|string_format:"%.1f"|cat:'M'%}
    {%elseif $num>=1024%}
        {%($num/1024)|string_format:"%.1f"|cat:'K'%}
    {%else%}
        {%$num|cat:'B'%}
    {%/if%}
{%/function%}

<div class="ecr_game_phone_recom">
    <h6>{%$tplData.subtitle|escape:'html'%}</h6>
    {%foreach $tplData.list as $item%}
    <div class="header">
        <div class="left">
            <a target="_blank" hidefocus="true" class="name" href="{%$item.iwan%}"
            {%if $item.name|limitlen:10 != $item.name%} title="{%$item.name|escape:'html'%}"{%/if%}>{%$item.name|limitlen:10|escape:'html'%}</a><!--
         --><span class="star-bg" title="{%$item.score|escape:'html'%}"><span class="star" style="width:{%$item.score*20%}%"></span></span>
        </div>
        <div class="right">
            <span{%if $item.type|limitlen:10 != $item.type%} title="{%$item.type|escape:'html'%}"{%/if%}
            class="type">{%$item.type|limitlen:10|escape:'html'%}</span><!--
         --><span class="size">{%numTran num=$item.size%}</span>
        </div>
    </div>
    <div class="content">
        <a target="_blank" hidefocus="true" class="icon" href="{%$item.iwan%}"><img src="{%$item.icon%}" /></a>
        <p{%if $item.intro|limitlen:50 != $item.intro%} title="{%$item.intro|escape:'html'%}"{%/if%}
        >{%$item.intro|limitlen:50|escape:'html'%}</p>
        <a class="download" hidefocus="true" href="{%$item.linker%}">快速下载</a>
    </div>
    {%/foreach%}
</div>{%/strip%}
{%/block%}
