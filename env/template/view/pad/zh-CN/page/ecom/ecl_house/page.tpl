{%extends 'c_base.tpl'%}
{%block name="data_modifier"%}
{%$resources=$tplData.resources%}
{%if $resources[0]%}
{%$data=$resources[0]%}
{%else%}
{%$data=$resources%}
{%/if%}
{%if $data.trend%}
    {%$trend=$data.trend[0]%}
    {%$trend_dir=strtolower($trend.dir)%}
    {%if $trend_dir == 'up'%}
        {%$trend_sign='↑'%}
    {%elseif $trend_dir == 'down'%}
        {%$trend_sign='↓'%}
    {%else%}
        {%$trend_sign='→'%}
    {%/if%}
{%/if%}
{%$is_multi=$resources[0] && count($resources) > 1%}
{%/block%}
{%block name="title"%}
    {%fe_fn_c_title_prefix%}<a class="ecl-house-anti" href="{%$data.url%}" target="_blank">{%$data.title|limitlen:62|escape:'html'|highlight:0%}</a>{%fe_fn_c_title_suffix title=$data.title url=$data.url%}
{%/block%}
{%block name="foot"%}{%/block%}

{%block name='content'%}
<style>
.ecl-house-detail{line-height:1.47}.ecl-house-content{overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.ecl-house-trend-up{color:#c00}.ecl-house-trend-down{color:#0c0}.ecl-house-site-link{padding-left:20px}
</style>
<div class="ecl-house c-row">
    <div class="ecl-house-img c-span6">
        <a class="ecl-house-img ecl-house-anti" target="_blank" href="{%$data.img[0]['href']|escape:'html'%}"><img class="c-img" src="{%$data.img[0]['src']|escape:'html'%}" width="121" height="91" /></a>
    </div>
    <div class="ecl-house-detail c-span18 c-span-last">
        <div class="c-row">
            <div class="c-row">
                <div{%if count($data.content) > 3%} class="c-span10"{%/if%}>
                    <div class="ecl-house-content">{%$data.content[0]|escape:'html'|highlight:0%}</div>
                    <div class="ecl-house-content">{%$data.content[1]|escape:'html'|highlight:0%}</div>
                </div>
                {%if count($data.content) > 3%}<div class="c-span8 c-span-last">
                <div class="ecl-house-content">{%$data.content[3]|escape:'html'|highlight:0%}{%if $trend%}<span class="ecl-house-trend-{%$trend_dir|escape:'html'%}">{%$trend_sign|escape:'html'%}{%$trend.text|escape:'html'%}</span>{%/if%}</div>
                    {%if $data.content[4]%}<div class="ecl-house-content">{%$data.content[4]|escape:'html'|highlight:0%}</div>{%/if%}
                </div>{%/if%}
            </div>
            {%if !$is_multi%}<div class="ecl-house-content c-row">{%$data.content[2]|escape:'html'|highlight:0%}</div>{%/if%}
        </div>
        <div class="ecl-house-links c-row">
            {%foreach $data.link as $link%}
            <a class="c-gap-right-small ecl-house-anti" target="_blank" href="{%$link['href']|escape:'html'%}">{%$link.text|limitlen:25|escape:'html'|highlight:0%}</a>
            {%/foreach%}
        </div>
        {%if $is_multi%}
        <div class="ecl-house-site-links">
            <b>更多资源：</b>
            {%foreach $resources as $site%}
            {%if $site@index!=0 && is_int($site@key)%}
            <a class="ecl-house-site-link ecl-house-anti c-gap-right-small" target="_blank" href="{%$site.url|escape:'html'%}" style="background:url({%$site.icon|escape:'html'%}) no-repeat 0 50%">{%$site.name|limitlen:8|escape:'html'%}</a>
            {%/if%}
            {%/foreach%}
        </div>
        {%/if%}
        <div>{%fe_fn_c_showurl showurl=$data.showurl date=$data.date showlamp=$data.showlamp%}</div>
    </div>
</div>
<script>
A.init(function() {
    this.ready(function() {
        !function(){function e(e){var n=window.event||e;for(g=n.target||n.srcElement;g&&"A"!=g.tagName;)g=g.parentNode;w=(new Date).getTime(),i=9999,f=n.clientX,u=n.clientY,m=d?w-d:0,r()&&a()}function n(){s=(new Date).getTime(),i=s-w,r()&&a()}function t(e){var n=window.event||e;E=0,v||(v=n.clientX),d=(new Date).getTime()}function r(){if(c=0,l=/\?url\=([^\.]+)\./.exec(g.href)){for(var e=0;9>e;e++)c+=l[1].charCodeAt(i*e%l[1].length);return!0}return!1}function a(){var e="&ck="+[c,E,i,f,u,v,h,m].join(".");if(g.href){var n=g.href;
-1==n.indexOf("&ck=")?g.href+=e:g.href=n.replace(/&ck=[\w.]*/,e)}}function o(e,n,t){for(var r in n)window.attachEvent?e.attachEvent("on"+n[r],t[r]):e.addEventListener(n[r],t[r],!1)}var c,i,f,u,v,h,m,l,w,d,s,g,E=1;i=f=u=v=h=m=l=w=d=s=g=0;for(var N=document.getElementsByTagName("a"),T=0;T<N.length;T++)-1!=N[T].className.search(/\becl-house-anti\b/)&&o(N[T],["mouseover","mousedown","mouseup"],[function(e){t(e)},function(n){e(n)},function(){n()}])}();
    });
});
</script>
{%/block%}