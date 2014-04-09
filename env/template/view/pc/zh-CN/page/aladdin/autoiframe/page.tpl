{%extends 'c_base.tpl'%} {%block name="title"%}{%/block%}{%block name="foot"%}{%/block%}{%block name='content'%}<style >
.op-autoframe-i{width:{%$tplData.pagewidth%}px;height:{%$tplData.pageheight%}px;border:0}
.op-autoframe-wrap{position:relative;}
.op-autoframe-close{position:absolute;top:0;right:2px;cursor:pointer;width:40px;height:40px;background:url(http://wwww.baidu.com/aladdin/img/autoiframe/close.png) no-repeat;}
</style><div class="op-autoframe-wrap"> <div class="op-autoframe-close"></div><iframe class="op-autoframe-i" src="{%$tplData.pageurl%}" frameborder='no' marginwidth="0" marginheight="0" scrolling="no"></iframe></div><script >
    A.setup({'height':{%$tplData.pageheight|escape:javascript%}});
</script>{%/block%}