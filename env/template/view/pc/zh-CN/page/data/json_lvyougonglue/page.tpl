{%extends file='json/page.tpl'%}
{%block name="data_ext"%}
    {%if $res.comeFrome=="SP"%}
    "aladdinHTML":{%json_encode($res.dispData|aladdin_render:$res.dispData.strategy.tempName:$res@index)%},
    {%/if%}
    "lvyouflag":1,
{%/block%} 
