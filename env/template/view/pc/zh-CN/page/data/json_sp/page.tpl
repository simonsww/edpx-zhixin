{%extends file='json/page.tpl'%}
{%block name="top_result"%}
{%if $tplData.topResult%}
"topResult":{%json_encode($tplData.topResult.item)%},
{%/if%}
{%/block%}    
{%block name="left_result"%}
{%if $tplData.leftResult%}
"leftResult":{%json_encode($tplData.leftResult.item)%},
{%/if%}
{%/block%}
{%block name="right_result"%}
{%if $tplData.rightResult%}
"rightResult":{%json_encode($tplData.rightResult.item)%},
{%/if%}
{%/block%}
