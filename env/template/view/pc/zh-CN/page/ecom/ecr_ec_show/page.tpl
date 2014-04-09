{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecr-ec-show{font-size:13px;overflow:hidden;*zoom:1}.container_s .ecr-ec-show{width:270px;overflow:hidden}.container_l .ecr-ec-show{width:440px}.ecr-ec-show .title{position:relative;font-size:14px;height:22px;line-height:22px}.ecr-ec-show .title h2{position:absolute;background:#fff;font-weight:bold;z-index:2;font-size:14px;margin:0;padding:0;padding-right:10px}.ecr-ec-show .title .line{position:absolute;top:11px;width:100%;height:0;font-size:0;border-top:1px solid #eaeaea;z-index:1}.ecr-ec-show .info div{float:left;margin:10px 8px 10px 0;width:102px}
.ecr-ec-show .info img{width:102px;height:131px}.ecr-ec-show .info p{text-align:center;word-wrap:break-word;overflow:hidden;padding:1px 0;font-size:12px}.ecr-ec-show .info p a{text-decoration:none}.ecr-ec-show .info p a:hover{text-decoration:underline}.ecr-ec-show .info p .price{color:#676767;margin-right:5px;font-size:14px}.ecr-ec-show .info p .number{color:#ff5303}.container_s .ecr-ec-show-info-div2{display:none}.container_s .ecr-ec-show-info-div3{display:none}
</style>

<div class="ecr-ec-show">
    <div class="title">
        <h2>{%$tplData.title|escape:'html'%}</h2>
        <div class="line"></div>
    </div>
    <div class="info">
        {%foreach $tplData.items as $ls%}
        {%if $ls@index > 3%}{%break%}{%/if%}
        <div class="ecr-ec-show-info-div{%$ls@index%}">
            <a target="_blank" href="{%if $ls.link%}{%$ls.link|escape:'html'%}{%else%}{%build_search_url params="wd={%$ls.name%}&f=2&rsv_dl=1_right_ec_{%$extData.resourceid%}"%}{%/if%}"><img src="{%$ls.logo%}"></a>
            <p>
                <a target="_blank" href="{%if $ls.link%}{%$ls.link|escape:'html'%}{%else%}{%build_search_url params="wd={%$ls.name%}&f=2&rsv_dl=1_right_ec_{%$extData.resourceid%}"%}{%/if%}">{%$ls.name|escape:'html'%}</a>
                <br/>
                <span class="price">￥<span class="number">{%$ls.min_price%}-{%$ls.max_price%}</span></span>
            </p>
        </div>
        {%/foreach%}
    </div>
</div>


<script type="text/javascript">
A.init(function(){var o=this.container,n="http://bzclk.baidu.com/weigou.php",e=function(o){var n=new Image,e="tangram_sio_log_"+Math.floor(2147483648*Math.random()).toString(36);window[e]=n,n.onload=n.onerror=n.onabort=function(){n.onload=n.onerror=n.onabort=null,window[e]=null,n=null},n.src=o};baidu.dom.ready(function(){o.onclick=function(o){var t=baidu.event.getTarget(o||window.event);t.tagName&&("img"==t.tagName.toLowerCase()?e(n+"?tpl=ecr_ec_show&item=image&wd="+encodeURIComponent(bdQuery)):"a"==t.tagName.toLowerCase()&&e(n+"?tpl=ecr_ec_show&item=link&wd="+encodeURIComponent(bdQuery)))
}})});
</script>
{%/block%}
