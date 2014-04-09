{%extends 'base.tpl'%} {%block name='content'%}<tr><td class="f"> <style >
        #op_autoframe_i{width:{%$tplData.pagewidth%}px;height:{%$tplData.pageheight%}px;border:0}
    </style> <div class="op-microblog"></div> <script >
        A.setup(function(){
           this.find(".op-microblog")[0].innerHTML = '<iframe id="op_autoframe_i" src="{%$tplData.pageurl%}{%if $tplData.wd!=""%}#wd=' + encodeURIComponent('{%$extData.OriginQuery|escape:'javascript'%}') + '{%/if%}" frameborder="no" marginwidth="0" marginheight="0" scrolling="no"></iframe>'; 
        });
    </script> {%if $tplData.showurl!=""%}<div><span style="font-size:13px;color:#008000;">{%$tplData.showurl%}</span><span style="font-size:13px;">{%if $tplData.showlamp!=""%} - </span><a target="_blank" href="http://open.baidu.com/"  class="op_LAMP" ></a>{%/if%}</div>{%/if%}</td></tr>{%/block%}