{%extends 'c_base.tpl'%}

{%block name="main_container"%}
{%$extData.feData.fm="alxr"%}
<div class="cr-content {%if $extData.feData.narrow%}cr-content-narrow{%/if%}">
    {%block name="title"%}{%/block%}
    {%block name="content"%}{%/block%}
    {%block name="foot"%}{%/block%}
</div>
{%/block%}