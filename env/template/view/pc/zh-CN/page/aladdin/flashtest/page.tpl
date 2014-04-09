{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<div class='op_flashtest'><script >
            A.init(function(){
                var __this = this;
                var CF=window.CF = new (function(){var N=false;var E;var F;var G;var C;var A;var J=true;function L(){N=true;return N}function M(X,O,S,U,R,Z,W,V,Q){var P;var T=B();if(T!=undefined){T=T.split(".")[0];if(T==9){P=S}else{if(T>=10){P=U}}var Y="<font size='3'><a href='"+X+"' target=_blank onmousedown=\"return c({'fm':'alop','url':this.href,'p1':al_c(this)})\">"+O+"</a></font>";Y+="<div style='width:"+R+";height:"+Z+";margin-top:3px;'>";Y+="<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-{%*i*%}444553540000' width="+R+" height="+Z+" id='flashResult'>";Y+="<param name='movie' value="+P+">";Y+="<param name=FlashVars value="+W+">";Y+="<param name=base value="+Q+">";Y+="<param name='menu' value='false'>";Y+="<param name='wmode' value='opaque'>";Y+="<param name='allowfullscreen' value='false'>";Y+="<param name='allowscriptaccess' value='always'>";Y+="<embed FlashVars="+W+" src="+P+" quality='high' pluginspage='http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFla{%*i*%}sh' type='application/x-shockwave-flash' width="+R+" height="+Z+" menu='false' allowfullscreen='false' allowscriptaccess='always' name='flashResult' wmode='opaque' base="+Q+" />";Y+="</object></div>";Y+="<span ><font color=\"#008000\"  size='-1'>"+V+"</font>&nbsp;-&nbsp;";Y+="<a  class='op_LAMP' onmousedown=\"return c({'fm':'alop','title':this.innerHTML,'url':this.href,'p1':_aMC(this),'p2':1})\" target=\"_blank\" href=\"http://open.baidu.com/\"></a></span>";document.write(Y)}}function B(){var T={%*i*%}navigator;if(T.plugins&&T.mimeTypes.length){var P=T.plugins["Shockwave Flash"];if(P&&P.description){return P.description.replace(/([a-zA-Z]|\s)+/,"").replace(/(\s)+r/,".")+".0"}}else{if(window.ActiveXObject&&!window.opera){for(var Q=10;Q>=2;Q--){try{var S=new ActiveXObject("ShockwaveFlash.ShockwaveFlash."+Q);if(S){var O=S.GetVariable("$version");O=O.replace(/WIN/g,"");O=O.replace(/,/g,".");return O;break}}catch(R){return"1.0.0"}}}}return"1.0.0"}function I(){var O=document.getElementById("flash"){%*i*%};var P=al_c(O);var P=document.getElementById(P);P.style.display="none"}function H(){var P=B().split(".");var O=false;if(P[0]>9){O=true}if(P[0]==9&&P[1]>0){O=true}if(P[0]==9&&P[1]==0&&P[2]>=28){O=true}var Q=__this.qq("op_flashtest");var S=al_c(Q);var S=document.getElementById(S);var R=S.nextSibling;if(!O){R.style.display="none"}else{if(!J&&(!N)){R.style.display="none"}}J=false}function D(){var P=B().split(".");var O=false;if(P[0]>9){O=true}if(P[0]==9&&P[1]>0){O=true}if(P[0]==9&&P[1]==0&&P[2]>=28){%*i*%}{O=true}if(!O){I()}}function K(){if(N){return true}else{I();H()}}return{hidebr:function(){H()},hide:function(){I()},checkflash:function(){D()},check:function(){K()},creatFlash:function(V,O,R,S,Q,W,U,T,P){M(V,O,R,S,Q,W,U,T,P)},setFDF:function(){return L()}}})();
                setTimeout('CF.check()', 5000);
                function setFDF() {
                    var abc = CF.setFDF();
                    return abc;
                }
                function setFDF(res) {
                    var abc = CF.setFDF(res);
                    c({'fm': 'alop', 'url': '{%$tplData.url%}', 'p1': _aMC(this), 'tp': res});
                    return abc;
                }
                function trackFU(ac,level)
                {
                    c({'fm': 'alop', 'url': '{%$tplData.url%}', 'p1': _aMC(this), 'tp': ac + '#' + level});
                }
                (function() {
                    var fq = 'fq=' + encodeURI('{%$tplData.condition%}');
                    var fdf;
                    CF.checkflash();
                    CF.creatFlash('{%$tplData.url%}', '{%$tplData.title|highlight:0%}', '{%$tplData.swf9%}', '{%$tplData.swf10%}', '{%$tplData.flawidth%}', '{%$tplData.flalength%}', fq, '{%$tplData.showurl%}', '{%if $tplData.base!=""%}{%$tplData.base%}{%/if%}');
                })();
                //setTimeout('CF.hidebr()', 1);
            });

</script></div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}