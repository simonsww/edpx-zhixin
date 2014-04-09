{%extends 'base_div.tpl'%}
{%block name='content'%}
{%function name=get_promo_type p1='promo_data'%}
{%if $p1.id != 0 && $p1.type != -1%}
{%if $p1.type == 0%}flash-sale{%elseif $p1.type == 1%}brand-sale{%elseif $p1.type == 2%}tuan{%/if%}
{%/if%}
{%/function%}

{%function name=get_filter_url id='id' option='option'%}http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}{%if $id==1000001%}&merchant_id={%$option.id|escape:'url'%}{%else%}{%if isset($option.min)%}&price_min={%$option.min|escape:'url'%}&price_max={%$option.max|escape:'url'%}{%else%}&option{%$id|escape:'url'%}={%$option.id|escape:'url'%}{%/if%}{%/if%}{%/function%}
{%function name=get_filter_more_url%}http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}{%/function%}


{%if $tplData.StdStl==5%}
<style type="text/css">
.ecl-weigou-simsun{font-family:simsun;}.ecl-weigou{margin-top:8px;font-size:12px;overflow:hidden;}.ecl-weigou-list{overflow:hidden;margin-top:5px;_margin-top:8px;}.ecl-weigou-product{width:121px;height:188px;float:left;margin:0 11px 0 0;position:relative;_display:inline;_zoom:1;}.ecl-weigou-list-inner{width:540px;overflow:hidden;margin-top:8px;}.ecl-weigou-product-vendor{position:absolute;top:105px;right:2px;height:16px;}.ecl-weigou-product-vendor em{width:16px;height:16px;line-height:16px;position:absolute;top:-105px;right:103px;color:#fff;background:#f13f40;overflow:hidden;_zoom:1;_line-height:18px;text-align:center;}.ecl-weigou-product-vendor span{float:left;height:16px;line-height:16px;_line-height:18px;overflow:hidden;background:#000;color:#fff;padding:0 3px;opacity:.6;filter:alpha(opacity=60);}
.ecl-weigou-product-link{position:absolute;left:0;top:0;width:129px;height:186px;background:#000;opacity:0;filter:alpha(opacity=0);}.ecl-weigou-product img{width:121px;height:121px;}.ecl-weigou-product-center{margin:0 5px;line-height:19px;height:38px;overflow:hidden;}.ecl-weigou-product-bottom{margin:0 5px;line-height:19px;height:19px;overflow:hidden;}.ecl-weigou-product-price{font-size:12px;font-weight:bold;}.ecl-weigou-product-price strong{color:#ff7800;}.ecl-weigou-product-original-price{color:#999;margin-left:1px;height:19px;overflow:hidden;white-space:nowrap;}.ecl-weigou-product-image{cursor:pointer;}.ecl-weigou-product-name{color:#00c;word-break:break-all;word-wrap:break-word;}.ecl-weigou-showurl{font-size:13px;margin-top:8px;}.ecl-weigou-filters{margin:-5px 0 0 0;_margin-bottom:-3px;}.ecl-weigou-filter-wrapper{width:465px;float:left;}
.ecl-weigou-filter-wrapper a{display:inline-block;cursor:pointer;text-decoration:underline;color:#00c;padding:0 5px;border:1px solid #fff;}.ecl-weigou-filter-wrapper a,.ecl-weigou-filter-wrapper span{height:18px;line-height:19px;_line-height:20px;margin:4px 0 0;float:left;white-space:nowrap;}.ecl-weigou-filter-first{margin-left:0;}.ecl-weigou-filter-name{width:65px;overflow:hidden;font-weight:bold;float:left;}.ecl-weigou-filter-more{float:right;width:42px;overflow:hidden;margin-top:7px;_display:inline;_zoom:1;cursor:pointer;}.ecl-weigou-filter-more a {text-decoration:none;}.ecl-weigou-filter-items-wrapper{overflow:hidden;height:27px;float:left;width:400px;}.ecl-weigou-filter-items{padding-bottom:6px;}.ecl-weigou-bottom{border-top:1px solid #e3e3e3;text-align:center;padding-top:7px;}.ecl-weigou-hot-sell{font-weight:bold;line-height:16px;}.ecl-weigou-bottom a{text-decoration:none;}
</style>


<h3 class="t">
    {%assign var="weigou_title" value=($extData.OriginQuery|cat:"<共"|cat:$tplData.totalCount|cat:"款> 热卖 特惠 正品 尽在百度微购")%}
    <a class="ecl-weigou-header" href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" title="{%$weigou_title|escape:'html'%}" target="_blank">{%$weigou_title|escape:'html'|highlight:0|limitlen:70%}</a>
</h3>
<div class="ecl-weigou c-border" id="ecl-weigou-static-filter">
    <div class="ecl-weigou-filters" style="{%if $tplData.options && $tplData.options|@count > 0 && $tplData.totalCount > 8%}{%else%}display:none{%/if%}">
        {%assign var="filter_count" value=0%}
        {%foreach from=$tplData.options key=index item=option%}
        {%if $option.items|@count <= 1%}{%continue%}{%/if%}
        {%assign var="filter_count" value=($filter_count+1)%}
        {%if $filter_count > 3%}
        {%break%} 
        {%/if%}
        <div class="ecl-weigou-filter c-clearfix">
            <div class="ecl-weigou-filter-wrapper">
                <span class="ecl-weigou-filter-name">{%$option.name|escape:'html'%}：</span>
                <div class="ecl-weigou-filter-items-wrapper">
                    <div class="ecl-weigou-filter-items c-clearfix" data-id="{%$option.id|escape:'html'%}">
                        {%foreach $option.items as $opt%}
                        <a target="_blank" class="ecl-weigou-filter-link" href="{%get_filter_url id=$option.id option=$opt%}">{%$opt.name|escape:'html'%}</a>
                        {%/foreach%}
                    </div>
                </div>
            </div>
            <div class="ecl-weigou-filter-more" style="display:none">
                <a href="{%get_filter_more_url%}" target="_blank">更多<span class="ecl-weigou-simsun">&gt;&gt;</span></a>
            </div>
        </div>
        {%/foreach%}
    </div>
    <div class="ecl-weigou-list">
        <div class="ecl-weigou-hot-sell">畅销商品：</div>
        <div class="ecl-weigou-list-inner">
            {%foreach from=$tplData.goods key=index item=item%}
            {%if $index >= 4%}
            {%break%}
            {%/if%}
            {%assign var="product_name" value=(($item.promotion_data.id != 0 && $item.promotion_data.type != -1 && $item.promotion_data.title) ? $item.promotion_data.title : $item.name)%}
            <div class="ecl-weigou-product" data-id="{%$item.id%}">
                <div class="ecl-weigou-product-inner">
                    <div class="ecl-weigou-product-top">
                        <img class="ecl-weigou-product-image OP_LOG_IMAGE" data-click="{fm:'beha'}" src="{%$item.logo%}" />
                        <b class="ecl-promo-{%get_promo_type p1=$item.promotion_data%}-tag"></b>
                    </div>
                    <div class="ecl-weigou-product-center">
                        <a class="ecl-weigou-product-name OP_LOG_LINK" data-click="{fm:'beha'}" href="javascript:;" title="{%$product_name|escape:'html'%}">{%$product_name|limitlen:30|escape:'html'%}</a>
                    </div>
                    <div class="ecl-weigou-product-bottom c-clearfix">
                        <span class="ecl-weigou-product-price">
                            <strong>¥{%if $item.promotion_data && $item.promotion_data.id != 0%}{%$item.promotion_data.price|string_format:"%.1f"%}{%else%}{%$item.price|string_format:"%.1f"%}{%/if%}</strong>
                        </span>
                        {%if $item.original_price && $item.original_price != 0 && $item.original_price > $item.price%}
                        <span class="ecl-weigou-product-original-price">
                            <s>原价{%$item.original_price|string_format:"%.1f"%}</s>
                        </span>
                        {%/if%}
                    </div>
                </div>
                <div class="ecl-weigou-product-vendor">
                    {%$protectionItems = array(101, 103, 104)%}
                    {%if count($item.specialTags) > 0 && count(array_intersect($protectionItems, $item.specialTags))>0%}
                    <em class="ecl-weigou-product-protection-icon">保</em>
                    {%/if%}
                    <span>{%$item.vendor%}</span>
                </div>
                <a href="http://weigou.baidu.com/item?id={%$item.id|escape:'url'%}" target="_blank" class="ecl-weigou-product-link" title="{%$product_name|escape:'html'%}"></a>
            </div>
            {%/foreach%}
        </div>
    </div>
    {%if $tplData.totalCount > 4%}
    <div class="ecl-weigou-bottom">
        <a class="ecl-weigou-product-more" href="{%get_filter_more_url%}" target="_blank">更多商品<span class="ecl-weigou-simsun">&gt;&gt;</span></a>
    </div>
    {%/if%}
</div>
<div class="ecl-weigou-showurl">
    <span class="c-showurl">weigou.baidu.com</span>
</div>
    
{%assign var="cat_ids" value=array()%}
{%assign var="cat_names" value=array()%}
{%foreach $tplData.front_cat_path as $cat%}
{%array_push($cat_ids, $cat['cat_id'])|truncate:0:""%}
{%array_push($cat_names, $cat['cat_name'])|truncate:0:""%}
{%/foreach%}
<script>
    A.init(function() {
        var bds = window.bds = window.bds || {};
        bds.ecom = bds.ecom || {};
        bds.ecom.data = {
            'zhixin': {
                'tpl': 'ecl_ec_spu_common',
                'weigou_domain': '{%$tplData.weigou_domain%}',
                'logData': {
                    'cat_ids': '{%implode(',', $cat_ids)%}',
                    'cat_names': '{%implode(',', $cat_names)%}'
                }
            }
        };
        var filters = baidu.q('ecl-weigou-filter');
        baidu.each(filters, function(filter, index) {
            var items = baidu.q('ecl-weigou-filter-items', filter)[0];
            if(items.offsetHeight > 34) {
                var more = baidu.q('ecl-weigou-filter-more', filter)[0];
                if(more) {
                    baidu.dom.show(more);
                }
            }
        });
        function loadScript(url) {
            var script = document.createElement('script');
            script.charset = 'utf-8';
            var head = document.getElementsByTagName('head')[0];
            head.appendChild(script);
            script.src = url;
        };

        baidu.dom.ready(function() {
            loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/static_filter-1.2.js');
        });
    });
</script>
{%/if%}
{%/block%}