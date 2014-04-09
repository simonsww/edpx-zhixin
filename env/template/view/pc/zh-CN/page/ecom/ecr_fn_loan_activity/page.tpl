{%extends 'c_right_base.tpl'%}
{%block name="title"%}
    
{%/block%}
{%block name='content'%}
<style type="text/css">ecr-fn-loan-activity p{color:#333}ecr-fn-loan-activity span{font-size:12px}</style>{%strip%}
    <div class="ecr-fn-loan-activity">
        <h4 class="cr-title c-gap-bottom">{%$tplData.title|escape:'html'%}</h4>
        <a href="{%$tplData.mainUrl|escape:'html'%}" target="blank">
            <img src="{%$tplData.imgSrc|escape:'html'%}" alt="{%$tplData.title|escape:'html'%}" width="260" height="75"/>
        </a>
        <p>活动时间：4月10日－5月9日</p>
        <span class="c-gap-right-small">■</span><a href="{%$tplData.mainUrl|escape:'html'%}" target="blank">已有<em>{%$tplData.joinNum|escape:'html'%}</em>人参加活动</a>
    </div>
{%/strip%}
<script>
A.setup(function () {
    var card = this;
    var tpl = 'ecr-fn-loan-activity';var Anti=function(e){var n="EC_ZHIXIN";var t=0;var i=0,r,a,f,o,v,c,u,s,d,l,w,m;a=f=o=v=c=u=s=d=l=w=m=0;function h(n){var t=window.event||n;m=t.target||t.srcElement;while(m&&m.tagName!="A"){m=m.parentNode;if(m===e){return false}}d=(new Date).getTime();a=9999;f=t.clientX;o=t.clientY;if(!l){u=0}else{u=d-l}if(L()){N()}}function E(){w=(new Date).getTime();a=w-d;if(L()){N()}}function g(e){var n=window.event||e;i+=1;if(!v){v=n.clientX}if(!c){c=n.clientY}l=(new Date).getTime()}function L(){r=0;s=/\?url\=([^\.]+)\./.exec(m.href);if(s){for(var e=0;e<i*t%99+9;++e){r+=s[1].charCodeAt(a*e%s[1].length)}return true}return false}function N(){var e="&ck="+[r,i,a,f,o,v,c,u].join(".");if(m.href){var n=m.href;if(n.indexOf("&ck=")==-1){m.href+=e}else{m.href=n.replace(/&ck=[\w.]*/,e)}}}var T=0;var p={};function A(e,t,i){for(var r in t){p[++T]=i[r];e[n+r]=T;if(window.attachEvent){e.attachEvent("on"+t[r],i[r])}else{e.addEventListener(t[r],i[r],false)}}}var k={};function x(n,t){for(var i=0,r;r=n[i];i++){if(window.attachEvent){e.attachEvent("on"+r,t[i])}else if(window.addEventListener){e.addEventListener(r,t[i],false)}else{e["on"+r]=t[i]}k[r]=t[i]}}function D(n){for(var t=0,i;i=n[t];t++){if(window.detachEvent){e.detachEvent("on"+i,k[i])}else if(window.addEventListener){e.removeEventListener(i,k[i],false)}else{e["on"+i]=function(){}}}}function X(e,t){for(var i in t){var r=e[n+i];var a=p[r];if(a){if(window.detachEvent){e.detachEvent("on"+t[i],a)}else{e.removeEventListener(t[i],a)}}p[r]=null}}function b(e,n){var t=[];var i=n.getElementsByTagName("A");var r=" "+e+" ";for(var a=0,f;f=i[a];a++){if(f.className&&(" "+f.className+" ").indexOf(r)>=0){t.push(f)}}return t}return{getAntiTag:function(){return n},setTimesign:function(e){t=e},bind:function(){x(["mouseover","mousedown","mouseup"],[g,h,E])},unbind:function(){D(["mouseover","mousedown","mouseup"])}}};var cardAnti = new Anti(card.qq('ecr-fn-loan-activity'));
    cardAnti.bind();
    cardAnti.setTimesign("{%$tplData.signTime|escape:'javascript'%}");

});
</script>
{%/block%}