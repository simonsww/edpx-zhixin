{%extends 'c_right_base.tpl'%}

{%block name='content'%}

    <style type="text/css" data-merge>
        .container_l .ecr-game-hottools{width:351px}.container_s .ecr-game-hottools{width:259px}.ecr-game-hottools-title{height:18px;*height:17px;_height:16px;line-height:22px;font-size:14px;font-weight:bold;font-family:"宋体";padding-bottom:1px;position:relative}.ecr-game-hottools-subtitle{position:absolute;padding-right:8px;background:#fff;z-index:2}.ecr-game-hottools-subtitle-line{position:absolute;top:12px;width:100%;height:0;border-top:1px solid #eaeaea;z-index:1}.ecr-game-hottools-toollist{float:left;margin:6px 0}
.ecr-game-hottools-li{margin-right:50px;line-height:22px;font-size:13px}.ecr-game-hottools-li a{display:inline-block}.ecr-game-hottools-li-first a{position:relative}.container_s .ecr-game-hottools-li{margin-right:36px}.ecr-game-hottools-hot{display:block;width:19px;height:10px;background:url('http://www.baidu.com/aladdin/img/right_hottools/opr-hottools-icon.png') no-repeat;position:absolute;top:0;right:-20px;cursor:default}.container_s .ecr-game-hottools-toollist-r li{margin-right:0}.ecr-game-hottools-clear{zoom:1}.ecr-game-hottools-clear:after{content:'';display:block;clear:both}
    </style>

    {%strip%}
<div class="c-abstract ecr-game-hottools ecr-game-hottools-clear">
    <div class="ecr-game-hottools-title">
        <div class="ecr-game-hottools-subtitle">{%$tplData.subtitle|limitlen:24|escape:'html'%}</div>
    </div>

    {%if !empty($tplData.list)%}
        {%$count=count($tplData.list)%}
        {%if $count>6%}
            {%$list1=array_slice($tplData.list, 0, ($count+1)/2)%}
            {%$list2=array_slice($tplData.list, ($count+1)/2)%}
        {%elseif $count>3%}
            {%$list1=array_slice($tplData.list,0,3)%}
            {%$list2=array_slice($tplData.list,3)%}
        {%else%}
            {%$list1=$tplData.list%}
        {%/if%}
    {%/if%}

    {%if $list1%}
    <ul class="ecr-game-hottools-toollist">
        {%foreach $list1 as $item%}
        <li class="ecr-game-hottools-li{%if $item@first%} ecr-game-hottools-li-first{%/if%}">
            <a href="{%build_search_url params="`$item.params`"%}" target="_blank"{%$wm0=mb_strwidth($item.name)%}{%if $wm0>18%} title="{%$item.name%}"{%/if%}>
                {%$item.name|limitlen:18|escape:'html'%}
                {%if $item@first%}<span class="ecr-game-hottools-hot"></span>{%/if%}
            </a>
        </li>
        {%/foreach%}
    </ul>
    {%/if%}
    {%if $list2%}
    <ul class="ecr-game-hottools-toollist ecr-game-hottools-toollist-r">
        {%foreach $list2 as $item%}
        {%if $item%}
        <li class="ecr-game-hottools-li">
            <a href="{%build_search_url params="`$item.params`"%}" target="_blank"{%$wm0=mb_strwidth($item.name)%}{%if $wm0>18%} title="{%$item.name%}"{%/if%}>
                {%$item.name|limitlen:18|escape:'html'%}</a>
        </li>
        {%/if%}
        {%/foreach%}
    </ul>
    {%/if%}
</div>
{%/strip%}

{%/block%}