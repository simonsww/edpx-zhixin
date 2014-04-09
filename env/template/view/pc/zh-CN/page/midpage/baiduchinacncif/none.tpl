{%*
* @fileOverview 联盟模板
* @author       刘悦
* @version      1.0
* @date         2013/03/18
*%}{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}{%if $urlPara.cu%}{%if $urlPara.tn|endwith:'src'%}<script>location.href="s?tn={%$urlPara.tn|firstpart:'_src'|vui_escape:'url'%}_if&wd={%$tplData.queryInfo.wordNoSyntax|vui_escape:'url'%}&cu={%$urlPara.cu|vui_escape:'html'%}";</script>{%else%}{%if $urlPara.tn|endwith:'if'%}<script>location.href="{%$urlPara.cu|vui_escape:'html'%}?UserUrl={%$tplData.queryInfo.wordNoSyntax|vui_escape:'url'%}";</script>{%/if%}{%/if%}{%/if%}