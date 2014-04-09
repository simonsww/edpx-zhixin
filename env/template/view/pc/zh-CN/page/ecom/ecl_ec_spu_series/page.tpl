{%extends 'c_base.tpl'%}
{%block name='content'%}


{%if $tplData.StdStl == 3%}

{%function name="get_char_num" str="str"%}
{%strlen(preg_replace("/[\x{4e00}-\x{9fa5}]{1}/u", '**', $str))%}
{%/function%}

<style type="text/css">
.ecl-ec-spu-showurl{font-size:13px;margin-top:8px;}.ecl-ec-spu{margin-top:8px;font-size:12px;}.ecl-ec-spu a{text-decoration:none;}.ecl-ec-spu a:hover{text-decoration:underline;}.ecl-ec-simsun{font-family:simsun;}.ecl-ec-spu-more{border-top:1px solid #e3e3e3;text-align:center;padding-top:10px;}.ecl-ec-spu-item{border-bottom:1px solid #e3e3e3;height:32px;}.ecl-ec-spu-noline{border-bottom:0;}.ecl-ec-spu-number{float:left;width:11px;height:11px;border:1px solid #3aa0ff;background:#2c99ff;color:#fff;line-height:13px;text-align:center;margin-top:9px;}.ecl-ec-spu-score{float:left;font-size:18px;font-family:"Microsoft yahei";color:#ff830f;line-height:1.2em;font-weight:bold;text-decoration:none!important;}.ecl-ec-spu-star{float:left;background:url(http://www.baidu.com/cache/biz/ecom/weigou/spu_series.png) 0 -11px;height:10px;width:59px;overflow:hidden;position:relative;margin:10px 0 0;display:_inline;}
.ecl-ec-spu-star-number{height:10px;background:url(http://www.baidu.com/cache/biz/ecom/weigou/spu_series.png);float:left;}.ecl-ec-spu-main-score-link{text-decoration:none;overflow:hidden;cursor:pointer;}.ecl-ec-spu-main-right{float:right;}.ecl-ec-spu-main-right .ecl-ec-spu-star{margin:7px 5px 0 0;}.ecl-ec-spu-title-wrapper{width:200px;overflow:hidden;float:left;margin-left:10px;line-height:32px;font-size:14px;}.ecl-ec-spu-main .ecl-ec-spu-title-wrapper{font-weight:bold;line-height:24px;width:375px;}.ecl-ec-spu-main .ecl-ec-spu-number{margin-top:6px;}.ecl-ec-spu-prices{float:left;line-height:32px;margin-left:15px;_display:inline;_zoom:1;}.ecl-ec-spu-prices strong{font-weight:normal;color:#FF830F;}.ecl-ec-spu-merchant{float:right;line-height:32px;}.ecl-ec-spu-main{height:auto;}.ecl-ec-spu-main-body{margin:5px 0 10px;}
.ecl-ec-spu-left img{display:block;width:121px;height:121px;}.ecl-ec-spu-left{float:left;}.ecl-ec-spu-right{float:left;margin-left:10px;width:384px;line-height:22px;_display:inline;_zoom:1;}.ecl-ec-spu-main-prices{color:#FF830F;}.ecl-ec-spu-attr{float:left;overflow:hidden;white-space:nowrap;width:190px;}.ecl-ec-spu-main-bottom{margin-top:5px;position:relative;}.ecl-ec-spu-zol{position:absolute;top:4px;width:60px;}.ecl-ec-spu-main-comment{position:absolute;top:4px;left:80px;}.ecl-ec-spu-main-merchant{position:absolute;top:4px;left:190px;}
.ecl-ec-spu-main-nozol_link {left: 0;}
</style>
<h3 class="t">  
    {%assign var="query_length" value={%call name=get_char_num str=$extData.OriginQuery%}%}
    {%if $query_length > 12%}
    {%assign var="weigou_title" value=($extData.OriginQuery|cat:"（共"|cat:$tplData.totalCount|cat:"款商品"|cat:"）"|cat:"报价_参数_评论_百度微购") %}
    {%elseif $query_length <= 12 && $query_length > 8%}
    {%assign var="weigou_title" value=($extData.OriginQuery|cat:"（共"|cat:$tplData.totalCount|cat:"款商品"|cat:"）"|cat:$extData.OriginQuery|cat:"报价_参数_评论_百度微购") %}
    {%else%}
    {%assign var="weigou_title" value=($extData.OriginQuery|cat:"（共"|cat:$tplData.totalCount|cat:"款"|cat:$extData.OriginQuery|cat:"）"|cat:$extData.OriginQuery|cat:"报价_参数_评论_百度微购") %}
    {%/if%}
    <a id="ecl-ec-spu-header" class="ecl-ec-spu-header OP_LOG_LINK" href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" title="{%$weigou_title|escape:'html'%}" target="_blank">{%$weigou_title|escape:'html'|limitlen:70|highlight:0%}</a>
</h3>
<div id="ecl-ec-spu" class="ecl-ec-spu c-border">
    <div class="ecl-ec-spu-container">
        {%foreach from=$tplData.goods key=index item=item%}
        {%if $index == 0%}
        {%assign var="weigou_main" value=$tplData.goods[0]%}
		{%assign var="weigou_main_title" value=$weigou_main.name%}        
        <div class="ecl-ec-spu-main ecl-ec-spu-item c-row">
            <div class="c-row">
                <span class="ecl-ec-spu-number">{%($index + 1)|escape:html%}</span>
                <div class="ecl-ec-spu-title-wrapper">
                    <a href="http://weigou.baidu.com/items?id={%$weigou_main.id|escape:none%}" target="_blank" class="ecl-ec-spu-title" data-log="{pos:1}" title="{%$weigou_main_title|escape:'html'%}">{%$weigou_main.name|limitlen:50|escape:'html'%}</a>
                </div>
                {%if $weigou_main.score_average && $weigou_main.score_average>0%}
                <div class="ecl-ec-spu-main-right">
                    <a href="http://weigou.baidu.com/items?id={%$weigou_main.id|escape:'html'%}#comment-tab" target="_blank" class="ecl-ec-spu-main-score-link">
                        <span class="ecl-ec-spu-star" data-layer="1">
                            <span class="ecl-ec-spu-star-number" style="width:{%$weigou_main.score_average*11.8|escape:'html'%}px" data-layer="2"></span>
                        </span>
                        <span class="ecl-ec-spu-score" data-layer="1">{%$weigou_main.score_average|string_format:"%.1f"|escape:none%}分</span>
                    </a>
                </div>
                {%/if%}
            </div>
            <div class="c-row ecl-ec-spu-main-body">
                <div class="ecl-ec-spu-left">
                    <a href="http://weigou.baidu.com/items?id={%$weigou_main.id|escape:none%}" target="_blank" class="ecl-ec-spu-main-image" data-log="{pos:1}" title="{%$weigou_main_title|escape:'html'%}">
                        <img src="{%$weigou_main.imgUrl|escape:'html'%}" data-layer="1"/>
                    </a>
                </div>
                <div class="ecl-ec-spu-right">
                    <div class="c-row">
                        <span>参考价格：</span><strong class="ecl-ec-spu-main-prices">&yen;{%$weigou_main.price_low|string_format:"%.0f"|escape:'html'%} - {%$weigou_main.price_high|string_format:"%.0f"|escape:'html'%}</strong>
                    </div>
                    <div class="c-row ecl-ec-spu-attributes">
                        {%foreach from=$weigou_main.parameter key=attr_index item=attr%}
                        <span class="ecl-ec-spu-attr" title="{%$attr.key|cat:'：'|cat:$attr.value|escape:'html'%}">{%$attr.key|cat:'：'|cat:$attr.value|limitlen:28|escape:'html'%}</span>
                        {%if $attr_index == 4%}
                        <span class="ecl-ec-spu-attr">
                            <a class="ecl-ec-spu-attr-link" href="http://weigou.baidu.com/items?id={%$weigou_main.id|escape:none%}#parameter-tab" target="_blank">详细参数<span class="ecl-ec-simsun">&gt;&gt;</span></a>
                        </span>
                        {%break%}
                        {%/if%}
                        {%/foreach%}
                    </div>
                    <div class="c-row ecl-ec-spu-main-bottom">
                        {%if $weigou_main.zol_link%}
                        <div class="ecl-ec-spu-zol">                          
                            <a class="ecl-ec-spu-zol-link" href="{%$weigou_main.zol_link|escape:'html'%}" target="_blank">查看评测</a>
                        </div>
                        {%/if%}
                        {%if $weigou_main.commentNum && $weigou_main.commentNum > 0%}<a class="ecl-ec-spu-main-comment{%if !$weigou_main.zol_link%} ecl-ec-spu-main-nozol_link{%/if%}" href="http://weigou.baidu.com/items?id={%$weigou_main.id|escape:none%}#comment-tab" target="_blank">用户评价({%$weigou_main.commentNum|escape:'html'%})</a>{%/if%}
                        <a href="http://weigou.baidu.com/items?id={%$weigou_main.id|escape:none%}#sku-tab" class="ecl-ec-spu-main-merchant" target="_blank">在售商家({%$weigou_main.merchantNum|escape:'html'%})</a>
                    </div>
                </div>
            </div>
        </div>
        {%else%}
        <div class="ecl-ec-spu-item c-row {%if $index == $tplData.goods|@count- 1%}ecl-ec-spu-noline{%/if%}">
            <span class="ecl-ec-spu-number">{%($index + 1)|escape:'html'%}</span>
            <div class="ecl-ec-spu-title-wrapper">
                <a href="http://weigou.baidu.com/items?id={%$item.id|escape:none%}" target="_blank" class="ecl-ec-spu-title" data-log="{pos:{%($index+1)|escape:'html'%}}" title="{%$item.name|escape:'html'%}">{%$item.name|limitlen:24|escape:'html'%}</a>
            </div>
            <div class="ecl-ec-spu-star">
                <a href="http://weigou.baidu.com/items?id={%$item.id|escape:'html'%}#comment-tab" target="_blank">
                    <div class="ecl-ec-spu-star-number" style="width:{%$item.score_average*11.8%}px" data-layer="1"></div>
                </a>
            </div>
            <a class="ecl-ec-spu-merchant" href="http://weigou.baidu.com/items?id={%$item.id|escape:none%}#sku-tab" target="_blank" data-log="{pos:{%($index+1)|escape:'html'%}}">({%$item.merchantNum|escape:'html'%}个商家在售)</a>
            <span class="ecl-ec-spu-prices">
                <span>参考价格：</span><strong>&yen;{%$item.price_low|string_format:"%.0f"|escape:'html'%}-{%$item.price_high|string_format:"%.0f"|escape:'html'%}</strong>
            </span>
        </div>
        {%/if%}
        {%/foreach%}
        <div class="ecl-ec-spu-more c-row">
            <a class="ecl-ec-spu-more-link" href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" target="_blank">更多商品<span class="ecl-ec-simsun">&gt;&gt;</span></a>
        </div>
    </div>
</div>
<div class="ecl-ec-spu-showurl">
    <span class="c-showurl">weigou.baidu.com
    	<a target="_blank" class="c-icon c-icon-bao" href="http://baozhang.baidu.com/guarantee/"></a>
    </span>
</div>
    
{%assign var="cat_ids" value=array()%}
{%assign var="cat_names" value=array()%}
{%foreach $tplData.front_cat_path as $cat%}
{%array_push($cat_ids, $cat['cat_id'])|truncate:0:""%}
{%array_push($cat_names, $cat['cat_name'])|truncate:0:""%}
{%/foreach%}

<script>
    A.setup(function(){
        var bds = window.bds = window.bds || {};
        bds.ecom = bds.ecom || {};
        bds.ecom.data = {
            'zhixin': {
                'tpl': 'ps-zhixin-spu-series',
                'weigou_domain': '{%$tplData.weigou_domain%}',
                'logData': {
                    'cat_ids': '{%implode(',', $cat_ids)%}',
                    'cat_names': '{%implode(',', $cat_names)%}'
                }
            }
        };
        function loadScript(url) {
            var script = document.createElement('script');
            script.charset = 'utf-8';
            var head = document.getElementsByTagName('head')[0];
            head.appendChild(script);
            script.src = url;
        };

        bds.ready(function() {
            loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/spu_series-1.3.js');
        });
    });

</script>
{%/if%}
{%/block%}