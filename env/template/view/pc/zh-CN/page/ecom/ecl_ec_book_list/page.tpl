{%extends 'c_base.tpl'%}

{%block name="title"%}
    {%strip%}
    {%function name="get_char_num" str="str"%}
        {%strip%}
        {%strlen(preg_replace("/[\x{4e00}-\x{9fa5}]{1}/u", '**', $str))%}
        {%/strip%}
    {%/function%}
    <h3 id="ecl-ec-title" class="t">
        {%assign var="weigou_desc" value="简介_目录_书评_试读_百度微购"%}
        {%assign var="query_word" value=$extData.OriginQuery%}
        {%assign var="query_chars" value={%call name=get_char_num str=$query_word%}%}    
        {%if $query_chars <= 8%}
            {%assign var="weigou_title" value=("《"|cat:$query_word|cat:"》（共"|cat:$tplData.totalCount|cat:"本"|cat:$query_word|cat:"）"|cat:$query_word|cat:$weigou_desc) %}
        {%elseif $query_chars > 8 and $query_chars < 14%}
            {%assign var="weigou_title" value=("《"|cat:$query_word|cat:"》（共"|cat:$tplData.totalCount|cat:"本"|cat:$query_word|cat:"）"|cat:$weigou_desc) %}    
        {%else%}
            {%assign var="weigou_title" value=("《"|cat:$query_word|cat:"》（共"|cat:$tplData.totalCount|cat:"本图书）"|cat:$weigou_desc) %}
        {%/if%}
        <a href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" title="{%$weigou_title|escape:'html'%}" target="_blank">{%$weigou_title|escape:'html'|limitlen:70|highlight:0%}</a>   
    </h3>
    {%/strip%}
{%/block%}

{%block name='foot'%}
    {%strip%}
    <p class="c-showurl">
        weigou.baidu.com
        <a href="http://baozhang.baidu.com/guarantee/" class="c-icon c-icon-bao c-gap-icon-left-small" target="_blank"></a>
    </p>
    {%/strip%}
{%/block%}

{%block name='content'%}
{%function name=get_promo_type p1='promo_data'%}
{%if $p1.id != 0 && $p1.type != -1%}
{%if $p1.type == 0%}flash-sale{%elseif $p1.type == 1%}brand-sale{%elseif $p1.type == 2%}tuan{%/if%}
{%/if%}
{%/function%}

{%if $tplData.StdStl==70%}

{%function name="no_margin" index="" line_count=2%}
    {%if ($index+1)%$line_count == 0%}c-span-last{%/if%}
{%/function%}

<style type="text/css">
{%fe_fn_c_css css='btn'%}
.ad-widget-weigou-pager{text-align:center;margin-top:10px;font-size:12px;}.ad-widget-weigou-pager a{display:inline-block;line-height:22px;text-align:center;height:22px;min-width:12px;border:1px solid #e1e1e1;margin:0 5px;text-decoration:none;padding:2px 6px;font-weight:bold;cursor:pointer;}.ad-widget-weigou-pager a.selected{border:1px solid #fafafa;font-weight:bold;color:#000;}.ad-widget-weigou-pager a.omit{border:0;margin:0;padding:0;color:#000;}.ecl-weigou-list-wrapper{overflow:hidden;}.ecl-weigou-product{height:14.46em;overflow:hidden;background-color:#FFF;position:relative;}.ecl-weigou-product-list{position:relative;height:15.08em;overflow:hidden;}.ecl-weigou-product-link{position:absolute;left:0;top:0;width:10em;height:14.31em;background-color:#000;opacity:0;filter:alpha(opacity=0);}.ecl-weigou-product-inner{height:14.31em;}
.ecl-weigou-product-top{position:relative;}.ecl-weigou-product-protection-icon{position:absolute;top:0;left:0;}.ecl-weigou-product-center{line-height:1.46em;height:2.92em;overflow:hidden;}.ecl-weigou-product-bottom{line-height:1.46em;height:1.46em;overflow:hidden;}.ecl-weigou-product-price{font-weight:bold;}.ecl-weigou-product-price strong{color:#ff7800;}.ecl-weigou-product-original-price{color:#999;height:1.46em;overflow:hidden;white-space:nowrap;}.ecl-weigou-product-name{color:#00C;word-break:break-all;word-wrap:break-word;}.ecl-weigou-product-vendor{position:absolute;top:8em;right:0;height:1.31em;}.ecl-weigou-product-vendor span{height:1.31em;line-height:1.38em;overflow:hidden;color:#FFF;position:absolute;top:0;right:.30769231em;z-index:1;}.ecl-weigou-product-vendor-bg{background-color:#000;color:#000;float:left;height:1.31em;line-height:1.38em;opacity:.6;padding:0 3px;overflow:hidden;filter:alpha(opacity=60);}
.ecl-weigou-product-list2{height:auto;}.ecl-weigou-product-list2 .ecl-weigou-product{height:auto;}.ecl-weigou-product-list2 .ecl-weigou-product-link{height:9.69em;}.ecl-weigou-product-list2 .ecl-weigou-product-inner{height:auto;}.ecl-weigou-product-list2 .ecl-weigou-product-left{position:relative;}.ecl-weigou-morebtn{text-align:center;cursor:pointer;color:#666;zoom:1;height:1.85em;line-height:2.54em;overflow:hidden;border-top:1px solid #ececec;}.ecl-weigou-morebtn span{color:#00C;zoom:1;}.ecl-weigou-pager{display:none;}.ecl-weigou-list-noresult{height:7.56em;padding-top:7.5em;padding-left:15em;}#ecl-ec-title{line-height:2;}#ecl-weigou-nav-buy-transfer .query-word{color:#C00;}
</style>

<div id="ecl-weigou-view-container" class="ecl-weigou-pc ecl-weigou c-container">
    <div id="ecl-weigou-view-container-placeholder">
        <div class="ecl-weigou-view-container c-border">
            <div class="ecl-weigou-view" id="ecl-weigou-view-placeholder">
                <div class="ecl-weigou-list c-row">
                    <div class="ecl-weigou-list-wrapper">
                    {%if $tplData.totalCount == 2%}
                        <div class="ecl-weigou-product-list ecl-weigou-product-list2 c-row">
                        {%foreach from=$tplData.goods item=good name=getGoods%}
                            {%assign var="index" value=($smarty.foreach.getGoods.index)%}
                            {%assign var="product_name" value=(($good.promotion_data.id != 0 && $good.promotion_data.type != -1 && $good.promotion_data.title) ? $good.promotion_data.title : $good.name)%}
                            <div class="ecl-weigou-product c-span12 c-gap-top {%call name=no_margin index=$index line_count=2%}" data-id="{%$good.id|escape:'html'%}">
                                <div class="ecl-weigou-product-inner c-row">
                                    <div class="ecl-weigou-product-left c-gap-top-small c-span6">
                                        <img class="ecl-weigou-product-image c-img c-img6 OP_LOG_IMAGE" src="{%$good.logo|escape:'html'%}">
                                        <!--消费者保障计划-->
                                        {%$protectionItems = array(101, 103, 104)%}
                                        {%if count($good.specialTags) > 0 && count(array_intersect($protectionItems, $good.specialTags))>0%}
                                         <b class="ecl-weigou-product-protection-icon c-text c-text-danger">保</b>
                                        {%/if%}
                                        <div class="ecl-weigou-product-vendor">
                                            <span>{%$good.vendor|escape:'html'%}</span>
                                            <b class="ecl-weigou-product-vendor-bg">{%$good.vendor|escape:'html'%}</b>
                                        </div>
                                    </div>
                                    <div class="ecl-weigou-product-right c-span6 c-span-last">
                                        <div class="c-clearfix ecl-weigou-product-name-wrapper">
                                            <a class="ecl-weigou-product-name OP_LOG_LINK" data-click="{fm:'beha'}" href="javascript:;" title="{%$product_name|escape:'html'%}">{%$product_name|limitlen:32|escape:'html'%}</a>
                                        </div>
                                        <div class="ecl-weigou-product-src">
                                            <span>商品来源：</span><span>{%$good.vendor|escape:'html'%}</span>
                                        </div>
                                        <div class="ecl-weigou-product-price">
                                            <span>现价：</span>
                                            <span><strong>{%if $good.promotion_data && $good.promotion_data.id != 0%}{%$good.promotion_data.price|string_format:"%.1f"%}{%else%}{%$good.price|string_format:"%.1f"%}{%/if%}</strong></span>
                                        </div>
                                        {%if $good.original_price && $good.original_price != 0 && $good.original_price > $good.price%}
                                        <div class="ecl-weigou-product-original-price">
                                            <s>原价：{%$good.original_price|string_format:"%.1f"%}</s>
                                        </div>
                                        {%/if%}
                                        <div class="ecl-weigou-product-detail">
                                            <a href="javascript:;" class="OP_LOG_LINK" data-click="{fm:'beha'}"><span class="ecl-weigou-product-detail-text">查看详情</span><span class="ecl-weigou-font-songti">&gt;&gt;</span></a>
                                        </div>
                                    </div>
                                </div>
                                {%if $tplData.need_transfer%}<a href="http://weigou.baidu.com/item?id={%$good.id|escape:'url'%}" target="_blank" title="{%$product_name|escape:'html'%}" class="ecl-weigou-product-link c-span12"></a>{%/if%}
                            </div>
                            {%/foreach%}
                        </div>
                    {%else%}
                        <div class="ecl-weigou-product-list c-row">
                            {%foreach from=$tplData.goods item=good name=getGoods%}
                            {%assign var="index" value=($smarty.foreach.getGoods.index)%}
                            {%assign var="product_name" value=(($good.promotion_data.id != 0 && $good.promotion_data.type != -1 && $good.promotion_data.title) ? $good.promotion_data.title : $good.name)%}
                            <div class="ecl-weigou-product c-span6 c-gap-right c-gap-top {%call name=no_margin index=$index line_count=4%}" data-id="{%$good.id|escape:'html'%}">
                                <div class="ecl-weigou-product-inner">
                                    <div class="ecl-weigou-product-top">
                                        <!--消费者保障计划-->
                                        {%$protectionItems = array(101, 103, 104)%}
                                        {%if count($good.specialTags) > 0 && count(array_intersect($protectionItems, $good.specialTags))>0%}
                                         <b class="ecl-weigou-product-protection-icon c-text c-text-danger">保</b>
                                        {%/if%}
                                        <img class="ecl-weigou-product-image c-img c-img6 OP_LOG_IMAGE" src="{%$good.logo|escape:'html'%}" />
                                    </div>
                                    <div class="ecl-weigou-product-center c-gap-right-small c-gap-left-small">
                                        <a class="ecl-weigou-product-name" href="javascript:;" title="{%$product_name|escape:'html'%}">{%$product_name|limitlen:30|escape:'html'%}</a>
                                    </div>
                                    <div class="ecl-weigou-product-bottom c-clearfix">
                                        <span class="ecl-weigou-product-price">
                                            <strong>¥{%if $good.promotion_data && $good.promotion_data.id != 0%}{%$good.promotion_data.price|string_format:"%.1f"%}{%else%}{%$good.price|string_format:"%.1f"%}{%/if%}</strong>
                                        </span>
                                        {%if $good.original_price && $good.original_price != 0 && $good.original_price > $good.price%}
                                        <span class="ecl-weigou-product-original-price">
                                            <s>原价{%$good.original_price|string_format:"%.1f"%}</s>
                                        </span>
                                        {%/if%}
                                    </div>
                                </div>
                                <div class="ecl-weigou-product-vendor">
                                    <span>{%$good.vendor|escape:'html'%}</span>
                                    <b class="ecl-weigou-product-vendor-bg">{%$good.vendor|escape:'html'%}</b>
                                </div>
                                {%if $tplData.need_transfer%}<a href="http://weigou.baidu.com/item?id={%$good.id|escape:'url'%}" target="_blank" class="ecl-weigou-product-link" title="{%$product_name|escape:'html'%}"></a>{%/if%}
                            </div>
                            {%/foreach%}
                        </div>
                        {%/if%}
                    </div>

                    {%if $tplData.totalCount > 4%}
                    <div class="ecl-weigou-morebtn OP_LOG_BTN" data-click="{fm:'beha'}"><span class="ecl-weigou-morebtn-text">展开</span><b class="ecl-weigou-morebtn-icon c-icon c-icon-triangle-down"></b></div>
                    {%/if%}
                    <div class="ecl-weigou-pager ecl-weigou-backgroud c-clearfix"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="ecl-weigou-nav-buy OP_LOG_BTN c-gap-top-small" data-click="{fm:'beha'}">
        {%if $tplData.need_transfer%}
        <div>
            <a id="ecl-weigou-nav-buy-transfer" href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" target="_blank">查看更多关于"<span class="query-word">{%$extData.OriginQuery|escape:'html'%}</span>"的图书<span class="ecl-weigou-font-songti">&gt;&gt;</span></a>
        </div>
        {%/if%}        
    </div>
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
                'tpl': 'ps-zhixin-book-list',
                'region': '{%$tplData.address%}',
                'lo_region': '{%$tplData.lo_address%}',
                'jd_region': '{%$tplData.jd_address%}',
                'gb_region': '{%$tplData.gb_address%}',
                'localcode': '{%$tplData.localcode%}',
                'weigou_domain': '{%$tplData.weigou_domain%}',                
                'logData': {
                    'cat_ids': '{%implode(',', $cat_ids)%}',
                    'cat_names': '{%implode(',', $cat_names)%}'
                },
                'need_transfer': {%if $tplData.need_transfer == 1%}true{%else%}false{%/if%},                
                'totalCount': {%$tplData.totalCount%}             
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
            loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/book_list-1.3.js');
        });
    });
</script>
{%/if%}
{%/block%}