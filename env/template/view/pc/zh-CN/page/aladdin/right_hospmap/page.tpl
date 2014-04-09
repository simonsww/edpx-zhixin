{%extends 'right_base.tpl'%} {%block name='content'%}<div class="opr-hospmap"> <h3 class="opr-hospmap-title">{%$tplData.name%}</h3> <div class="opr-hospmap-box OP_LOG_BTN" data-click="{fm:'beha'}"> </div> <ul class="opr-hospmap-list"> {%foreach $tplData.point as $item%} {%if $item@index > 2%}{%break%}{%/if%} <li class="opr-hospmap-list-li c-clearfix"> <div class="opr-hospmap-li-marker{%$item@index%}"></div> <p><a target="_blank" href="{%$item.url%}">{%$item.name|limitlen:40%}</a></p> <p>{%if $item.addr%}<b>地址：</b>{%$item.addr|limitlen:34%}{%/if%}</p> </li> {%/foreach%} </ul> {%if count($tplData.point) > 3 && $tplData.morelink%} <a class="opr-hospmap-morelink" target="_blank" href="{%$tplData.morelink%}">查看更多<span>&gt;&gt;</span></a> {%/if%}</div><script >
    //为阿拉丁单条结果实例创建数据
    A.setup({
        link: '{%$tplData.url%}',
        point: {%json_encode($tplData.point)%}
    });
</script>{%/block%}