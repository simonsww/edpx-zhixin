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
<script data-compress="off">
A.setup('timeSign', '{%$tplData.timesign%}');
A.setup('Anti', (function() {
    /**
     * @author mengke
     * @date 2013-5-19
     * 反作弊校验程序
     *
     */
    
    /**
     * 构造器函数
     * @constructor Anti
     * @param {dom} container需要侦听的容器
     */
    var Anti = function(container) {
        var ANTI_TAG = 'ecl-house-anti';/*classtag*/
        var $bdImTimeSign$ = 0;
        var binded = 0; /*是否已经绑定,没有绑定则不需要解绑*/
        
        var b = 0,
            c, a, q, p, o, l, k, d, r, g, j, u;
        a = q = p = o = l = k = d = r = g = j = u = 0;
    
        function s(w) {
            var i = window.event || w;
            u = i.target || i.srcElement;
            while (u && u.tagName != 'A') {
                u = u.parentNode;
            }
            r = new Date().getTime();
            a = 9999;
            q = i.clientX;
            p = i.clientY;
            if (!g) {
                k = 0;
            } 
            else {
                k = r - g;
            }
            if (v()) {
                n();
            }
        }
        function e() {
            j = new Date().getTime();
            a = j - r;
            if (v()) {
                n();
            }
        }
        function h(w) {
            var i = window.event || w;
            b += 1;
            if (!o) {
                o = i.clientX;
            }
    
            if (!l) {
                l = i.clientY;
            }
            g = new Date().getTime();
        }
        function v() {
            c = 0;
            d = /\?url\=([^\.]+)\./.exec(u.href);
            if (d) {
                for (
                    var x = 0; 
                    x < (((b * $bdImTimeSign$) % 99) + 9);
                     ++x
                     ) {
                    c += d[1].charCodeAt((a * x) % d[1].length);
                }
                return true;
            }
    
            return false;
        }
        function n() {
            var w = '&ck=' + [c, b, a, q, p, o, l, k].join('.');
            if (u.href) {
                var i = u.href;
                if (i.indexOf('&ck=') == -1) {
                    u.href += w;
                } else {
                    u.href = i.replace(/&ck=[\w.]*/, w);
                }
            }
        }
    
        var cachedEventIdx = 0; /*缓存事件ID*/
        var cachedEvent = {};/*缓存容器*/
    
        function m(z, y, x) {
            for (var w in y) {
                cachedEvent[++cachedEventIdx] = x[w];
                z[ANTI_TAG + w] = cachedEventIdx;
    
                if (window.attachEvent) {
                    z.attachEvent('on' + y[w], x[w]);
                } 
                else {
                    z.addEventListener(y[w], x[w], false);
                }
            }
        }
    
        function unbind(z, y) {
            for (var w in y) {
                var idx =  z[ANTI_TAG + w];
                var fn = cachedEvent[idx];
                if(fn) {
                    if (window.detachEvent) {
                        z.detachEvent('on' + y[w], fn);
                    } else {
                        z.removeEventListener(y[w], fn);
                    }
                }
                cachedEvent[ idx ] = null;
            }
        }
    
        function ga(classTag, container) {
            var arr = [];
            var list = container.getElementsByTagName('A');
            var tag = ' ' + classTag + ' ';
            for(var i=0,a; (a = list[i]); i++) {
                if(a.className && (' '+a.className+' ').indexOf(tag) >=0) {
                    arr.push(a);
                }
            }
            return arr;
        }
    
        /*接口函数*/
        return {
            getAntiTag : function() {
                return ANTI_TAG;
            },
    
            /*设置校验时间戳*/
            setTimesign: function(timeSign) {
                $bdImTimeSign$ = timeSign;
            },
    
            /*绑定反作弊事件*/
            bind : function() {
                var f = ga( ANTI_TAG ,container);
                for (var t = 0, l = f.length; t < l; t++) {
                    m(f[t], ['mouseover', 'mousedown', 'mouseup'], [h, s, e]);
                }
                f.length && (binded = 1);
            },
            /*解绑反作弊事件*/
            unbind : function() {
                if(!binded) {
                    return;
                }
                var f = ga( ANTI_TAG ,container);
                for (var t = 0, l = f.length; t < l; t++) {
                    unbind(f[t], ['mouseover', 'mousedown', 'mouseup']);
                }
                binded = 0;
            }
        };
    };
    
    return Anti;
})());
</script>
<script>
A.init(function() {
    var me = this;
    var data = me.data;
    var timeSign = data.timeSign;
    var Anti = data.Anti;
    me.ready(function() {
        var anti = new Anti(me.container);
        anti.setTimesign(timeSign);
        anti.bind();
    });
});
</script>
{%/block%}