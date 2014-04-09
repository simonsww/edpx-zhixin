{%extends 'right_base.tpl'%}

{%extends 'base_div.tpl'%}
{%block name='content'%}

<style type="text/css">
.ecr-ec-accessories{font-size:12px;overflow:hidden;*zoom:1}
.container_s .ecr-ec-accessories{width:270px;overflow:hidden}
.container_l .ecr-ec-accessories{width:440px}
.ecr-ec-accessories .title {position: relative;font-size: 14px;height: 22px;line-height: 22px;}

.ecr-ec-accessories .title h2 {position: absolute;background: #fff;font-weight: bold;z-index: 2;font-size: 14px;margin: 0;padding: 0;padding-right: 10px;}
.ecr-ec-accessories .title .line {position: absolute;top: 11px;width: 100%;height: 0;font-size: 0;border-top: 1px solid #eaeaea;z-index: 1;}
.ecr-ec-accessories .info {height:92px;overflow:hidden;margin-right: -32px;overflow:hidden;}
.ecr-ec-accessories .info .info-div{float:left;margin:10px 32px 10px 0;width:204px;}
.ecr-ec-accessories .info .info-div .left {float:left;}
.ecr-ec-accessories .info .info-div .right {float:left;width:122px;margin-left:10px;}
.ecr-ec-accessories .info img{display:block;width:70px;height:70px;border:1px solid #d2d2d2}
.ecr-ec-accessories .info p{word-wrap:break-word;overflow:hidden;padding:1px 0}
.ecr-ec-accessories .info a:hover{text-decoration:underline}

.ecr-ec-accessories .info .price {color:#999;margin-top:5px}
.ecr-ec-accessories .info .price .num {color:#ff7800;margin-left:3px;font-weight:bold;}
.ecr-ec-accessories .info .name {word-break:break-all;height:40px;overflow:hidden;}
.ecr-ec-accessories .from {margin-top:10px;}
.ecr-ec-accessories .from a{color:#7a77c8;}
.ecr-ec-accessories .from a span{font-family:'宋体'}
</style>

<div id="ecr-ec-accessories" class="ecr-ec-accessories">
    <div class="title">
        <h2>相关配件</h2>
        <div class="line"></div>
    </div>
    <div class="info">
        {%foreach $tplData.goods as $ls%}
        {%if $ls@index > 3%}{%break%}{%/if%}
        <div class="info-div info-div{%$ls@index%}">
            <div class="left">
                <a target="_blank" title="{%$ls.name|escape:'html'%}"  href="http://weigou.baidu.com/item?id={%$ls.id|escape:'html'%}"><img src="{%$ls.logo|escape:'html'%}"></a>
            </div>
            <div class="right">
                <p class="name"><a target="_blank" href="http://weigou.baidu.com/item?id={%$ls.id|escape:'html'%}" title="{%$ls.name|escape:'html'%}">{%'['|cat:$ls.cat_name|cat:']'|cat:$ls.name|limitlen:36|escape:'html'%}</a></p>
                <p class="price">¥<span class="num">{%if $ls.promotion_data.id eq '0'%}{%$ls.price|string_format:'%.2f'|escape:'html'%}{%else%}{%$ls.promotion_data.price|string_format:'%.2f'|escape:'html'%}{%/if%}</span></p>
            </div>
        </div>
        {%/foreach%}
    </div>
    <div class="from">
        来自<a target="_blank" href="http://weigou.baidu.com">百度微购<span>&gt;&gt;</span></a>
    </div>
</div>
<script>
    A.init(function() {
        var fr = 'ps-zhixin-accessories';
        function replaceLink(event) {
            event = event || window.event;
            var target = event.srcElement || event.target;
            var layer = target.getAttribute('data-layer');
            if(layer) {
                var layer = parseInt(layer, 10);
                if(layer > 0) {
                    while(layer > 0 && target) {
                        target = target.parentNode;
                        layer--;
                    }
                }
            } else {
                if(target.nodeName !== 'A') {
                    var layer = 5;
                    while(layer && target) {
                        if(target.nodeName === 'A') {
                            break;
                        }   
                        target = target.parentNode;
                        layer--;
                    }   
                }
            }
            var weigouHrefRegex = /^(http|https):\/\/weigou.baidu.com.*$/;
            try {
                if(
                    target.nodeName === 'A'
                    && target.getAttribute('target') === '_blank'
                    && weigouHrefRegex.test(target.href)
                ) {
                    var href = target.href;
                    var index = href.indexOf('?');
                    var prefix = '';
                    var params = '';
                    var hash = '';
                    if(index === -1) {
                        prefix = href;
                    } else {
                        prefix = href.substring(0, index);
                        href = href.substring(index + 1);
                        index = href.indexOf('#');
                        if(index === -1) {
                            params = href;
                        } else {
                            params = href.substring(0, index);
                            hash = href.substring(index + 1);
                        }
                    }
                    if(params) {
                        params = baidu.url.queryToJson(params);
                        for(var key in params) {
                            params[key] = decodeURIComponent(params[key]);
                        }
                    } else {
                        params = {};
                    }
                    var sid = window['bdSid'] ? window['bdSid'] : '';
                    if(!params['fr']) {
                        params['fr'] = fr;
                    }
                    if(!params['psid'] && sid) {
                        params['psid'] = sid;
                    }
                    if(!params['qid']) {
                        params['qid'] = window['bdQid'];
                    }
                    if(!params['frq']) {
                        params['frq'] = window['bdQuery'];
                    }
                    var url = [];
                    for(var p in params) {
                        url.push(p + '=' + encodeURIComponent(params[p]));
                    }

                    href = prefix + '?' + url.join('&') + (hash ? ('#' + hash) : '');
                    target.href = href;
                }   
            } catch(e) { }
            return true;
        };

        T.on('ecr-ec-accessories', 'mousedown', replaceLink);
    });
</script>
{%/block%}
