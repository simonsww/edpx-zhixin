{%extends file='json/page.tpl'%}
{%block name="query_ext"%}
"hilightWord":{%json_encode($tplData.queryInfo.hilightWord)%},
{%/block%}
