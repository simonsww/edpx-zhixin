{%*
* @fileOverview 联盟模板
* @author       刘悦
* @version      1.0
* @date         2013/03/18
*%}{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}{%$query = $tplData.queryInfo.wordNoSyntax%}<!--STATUS OK--><html><head><meta http-equiv="content-type" content="text/html;charset=utf-8"><meta http-equiv="refresh" content="0;URL=/s?tn={%if $urlPara.tn|endwith:'_src'%}{%$urlPara.tn|firstpart:'_src'|vui_escape:'url'%}_if{%/if%}zd&wd={%$query|vui_escape:'url'%}"><title>百度搜索_{%$query|vui_escape:'html'%}</title></head><body></body></html>