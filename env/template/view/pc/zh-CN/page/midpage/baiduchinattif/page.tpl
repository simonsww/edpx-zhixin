{%*
* @fileOverview 联盟模板
* @author       刘悦
* @version      1.0
* @date         2013/03/18
*%}{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}{%$query = $tplData.queryInfo.wordNoSyntax%}<!--STATUS OK-->{%if $urlPara.tn|endwith:'src'%}<script>location.href="s?wd={%$query|vui_escape:'url'%}&tn={%$urlPara.tn|firstpart:'_src'|vui_escape:'url'%}_zd"</script>{%/if%}