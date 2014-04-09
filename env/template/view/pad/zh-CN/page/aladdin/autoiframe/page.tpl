{%extends 'base.tpl'%} {%block name='content'%}<style >
#op_autoframe_i{width:{%$tplData.pagewidth%}px;height:{%$tplData.pageheight%}px;border:0}
</style>{%$FE_GBVAR.wrapper_prefix%}<iframe id="op_autoframe_i" src="{%$tplData.pageurl%}" frameborder='no' marginwidth="0" marginheight="0" scrolling="no"></iframe>{%$FE_GBVAR.wrapper_suffix%}{%/block%}