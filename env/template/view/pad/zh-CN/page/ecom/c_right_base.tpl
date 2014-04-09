{%extends 'c_base.tpl'%}

{%block name="main_container"%}
<div class="cr-content">
    {%block name="title"%}{%/block%}
    {%block name="content"%}{%/block%}
    {%block name="foot"%}{%/block%}
    {%block name="script_init"%}
    <script>A.init();</script>
    {%/block%}
</div>
{%/block%}