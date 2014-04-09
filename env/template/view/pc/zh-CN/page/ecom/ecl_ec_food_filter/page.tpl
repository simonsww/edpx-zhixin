{%extends 'base_div.tpl'%}
{%block name='content'%}
{%function name=get_promo_type p1='promo_data'%}
{%if $p1.id != 0 && $p1.type != -1%}
{%if $p1.type == 0%}flash-sale{%elseif $p1.type == 1%}brand-sale{%elseif $p1.type == 2%}tuan{%/if%}
{%/if%}
{%/function%}

{%if $tplData.StdStl==45%}
<style type="text/css">
.ad-widget-weigou-pager{text-align:center;margin-top:10px;font-size:12px;}.ad-widget-weigou-pager a{display:inline-block;line-height:22px;text-align:center;height:22px;min-width:12px;border:1px solid #e1e1e1;margin:0 5px;text-decoration:none;padding:2px 6px;font-weight:bold;cursor:pointer;}.ad-widget-weigou-pager a.selected{border:1px solid #fafafa;font-weight:bold;color:#000;}.ad-widget-weigou-pager a.omit{border:0;margin:0;padding:0;color:#000;}.ecl-weigou-list-wrapper{line-height:1.3;overflow:hidden;width:540px;}.ecl-weigou-morebtn{font-size:12px;cursor:pointer;margin-top:13px;color:#666;padding-left:257px;zoom:1;height:15px;overflow:hidden;}.ecl-weigou-morebtn span{float:left;}.ecl-weigou-morebtn b{float:left;zoom:1;width:17px;height:9px;background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/food_filter-1.1.png') no-repeat -8px 0;overflow:hidden;margin:4px 0 0 5px;}
.ecl-weigou-list{padding:0;}.ecl-weigou-product-list{height:196px;width:555px;overflow:hidden;position:relative;}.ecl-weigou-product-link{position:absolute;left:0;top:0;width:129px;height:186px;background:#000;opacity:0;filter:alpha(opacity=0);}.ecl-weigou-product{float:left;width:124px;height:188px;overflow:hidden;_display:inline;_zoom:1;margin:0 8px 0 0;background:#FFF;position:relative;cursor:pointer;}.ecl-weigou-product .ecl-weigou-product-top{width:121x;margin:8px auto 0;}.ecl-weigou-product .ecl-weigou-product-top img{width:121px;height:121px;}.ecl-weigou-product .ecl-weigou-product-inner{border:1px solid #FFF;height:186px;overflow:hidden;}.ecl-weigou-product .ecl-weigou-product-center{margin:0 5px;line-height:19px;height:38px;overflow:hidden;}.ecl-weigou-product .ecl-weigou-product-bottom{margin:0 5px;line-height:19px;height:19px;overflow:hidden;}
.ecl-weigou-product .ecl-weigou-product-price{font-size:12px;font-weight:bold;}.ecl-weigou-product .ecl-weigou-product-price strong{color:#ff7800;}.ecl-weigou-product .ecl-weigou-product-original-price{color:#999;margin-left:1px;height:19px;overflow:hidden;white-space:nowrap;}.ecl-weigou-product .ecl-weigou-product-image{cursor:pointer;}.ecl-weigou-product .ecl-weigou-product-name{color:#00c;word-break:break-all;word-wrap:break-word;text-decoration:none;}.ecl-weigou-product-hover .ecl-weigou-product-inner,.ecl-weigou-product:hover .ecl-weigou-product-inner{border:1px solid #ff7900;}.ecl-weigou-product-vendor{position:absolute;top:113px;right:1px;height:17px;}.ecl-weigou-product-vendor .ecl-weigou-product-vendor-bg{float:left;height:17px;line-height:18px;_line-height:19px;overflow:hidden;padding:0 3px;background:#000;color:#000;opacity:.6;filter:alpha(opacity=60);}
.ecl-weigou-product-vendor span{position:absolute;color:#FFF;right:0;height:17px;line-height:17px;_line-height:18px;right:4px;top:0;z-index:1;}.ecl-weigou-list .ecl-weigou-product-list2{height:auto;}.ecl-weigou-product-list2 .ecl-weigou-product-link{width:255px;height:146px;}.ecl-weigou-product-list2 .ecl-weigou-product{width:255px;height:146px;overflow:hidden;margin:8px 8px 0 0;}.ecl-weigou-product-list2 .ecl-weigou-product-inner{height:144px;color:#666;}.ecl-weigou-product-list2 .ecl-weigou-product-left{float:left;height:110px;width:110px;margin:16px 0 0 4px;_display:inline;_zoom:1;position:relative;}.ecl-weigou-product-list2 .ecl-weigou-product-left .ecl-promo-brand-sale-tag,.ecl-weigou-product-list2 .ecl-weigou-product-left .ecl-promo-flash-sale-tag,.ecl-weigou-product-list2 .ecl-weigou-product-left .ecl-promo-tuan-tag{top:-13px;}
.ecl-weigou-product-list2 .ecl-weigou-product-right{float:left;margin-left:4px;width:130px;_display:inline;_zoom:1;}.ecl-weigou-product-list2 img{display:block;width:110px;height:110px;}.ecl-weigou-product-list2 .ecl-weigou-product-name-wrapper{font-size:12px;line-height:18px;margin-top:10px;word-wrap:break-word;word-break:break-all;}.ecl-weigou-product-list2 .ecl-weigou-product-src{margin:8px 0 8px 0;}.ecl-weigou-product-list2 .ecl-weigou-product-price{float:none;font-weight:normal;}.ecl-weigou-product-list2 .ecl-weigou-product-original-price{float:none;margin-left:0;}.ecl-weigou-product-list2 .ecl-weigou-product-detail{margin-top:8px;}.ecl-weigou-product-list2 .ecl-weigou-product-detail a{color:#00c;}.ecl-weigou-product-list2 .ecl-weigou-product-vendor{right:140px;top:110px;}.ecl-weigou-list-noresult{height:120px;padding-top:70px;text-align:center;}
.ecl-weigou-pager{display:none;}.ecl-weigou-filters{_margin-bottom:-3px;margin-top:-8px;}.ecl-weigou-filter-wrapper{width:465px;float:left;}.ecl-weigou-filter-wrapper a{display:inline-block;cursor:pointer;text-decoration:none;color:#00c;padding:0 5px;border:1px solid #fff;}.ecl-weigou-filter-wrapper a:hover{text-decoration:underline;}.ecl-weigou-filter-wrapper span{display:inline-block;}.ecl-weigou-filter-wrapper .selected{background:#388bff;color:#fff;}.ecl-weigou-filter-wrapper a,.ecl-weigou-filter-wrapper span{height:18px;line-height:18px;_line-height:20px;margin:6px 0 0;float:left;white-space:nowrap;}.ecl-weigou-filter-first{margin-left:0;}.ecl-weigou-filter{border-bottom:1px solid #ddd;}.ecl-weigou-filter-name{width:70px;overflow:hidden;text-align:left;float:left;font-weight:bold;}.ecl-weigou-filter-more{float:right;width:42px;overflow:hidden;margin-top:9px;_display:inline;_zoom:1;cursor:pointer;}
.ecl-weigou-filter-more span{float:left;}.ecl-weigou-filter-more b{background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/food_filter-1.1.png') no-repeat 0 0;float:left;width:7px;height:4px;overflow:hidden;margin:4px 0 0 3px;}.ecl-weigou-filter-more .ecl-weigou-collapse{display:none;}.ecl-weigou-filter-more-expanded .ecl-weigou-expand{display:none;}.ecl-weigou-filter-more-expanded .ecl-weigou-collapse{display:block;}.ecl-weigou-filter-more-expanded b{background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/food_filter-1.1.png') no-repeat 0 -5px;}.ecl-weigou-filter-line{position:relative;background:#f7f7f7;overflow:hidden;visibility:hidden;}.ecl-weigou-filter-items-wrapper{overflow:hidden;height:27px;float:left;width:395px;}.ecl-weigou-filter-items{padding-bottom:6px;}.ecl-ec-weigou{margin-top:8px;font-size:12px;width:540px;}.ecl-ec-spu a{text-decoration:none;}.ecl-ec-spu a:hover{text-decoration:underline;}
.ecl-ec-simsun{font-family:simsun;}.ecl-ec-songti,.ecl-weigou-font-songti{font-family:songti;}.ecl-ec-weigou-nav-buy{font-size:12px;margin-top:10px;}#ecl-ec-weigou-nav-buy-transfer{color:#00C;}#ecl-ec-weigou-nav-buy-transfer .query-word{color:#C00;}.ecl-ec-weigou-more{padding-top:8px;text-align:center;margin-top:3px;border-top:1px solid #ececec;}.ecl-ec-weigou-more a{color:#00C;text-decoration:none;}.ecl-ec-weigou .ecl-weigou-filter{border:0;}
</style>

<h3 id="ecl-ec-title" class="t">
    {%assign var="weigou_title" value=($extData.OriginQuery|cat:"<共"|cat:$tplData.totalCount|cat:"款>热卖 特惠 正品 尽在百度微购") %}
    <a href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" title="{%$weigou_title|escape:'html'%}" target="_blank">{%$weigou_title|escape:'html'|limitlen:70|highlight:0%}</a>
</h3>

<div id="ecl-weigou-view-container" class="ecl-weigou-pc ecl-ec-weigou">
    <div id="ecl-weigou-view-container-placeholder">
        <div class="ecl-weigou-view-container">
            <div class="ecl-weigou-view c-border" id="ecl-weigou-view-placeholder">
                <div class="ecl-weigou-list">
                    <div class="ecl-weigou-filters" style="{%if $tplData.options && $tplData.options|@count > 0 && $tplData.totalCount > 8%}{%else%}display:none{%/if%}">
                        {%assign var="filter_count" value=0%}
                        {%foreach from=$tplData.options key=index item=option%}
                        {%assign var="filter_count" value=($filter_count+1)%}
                        {%if $filter_count > 3%}
                        {%break%}
                        {%/if%}
                        {%if $option.items|@count <= 1%}{%continue%}{%/if%}
                        <div class="ecl-weigou-filter c-clearfix">
                            <div class="ecl-weigou-filter-wrapper">
                                <span class="ecl-weigou-filter-name">{%$option.name|escape:'html'%}：</span>
                                <div class="ecl-weigou-filter-items-wrapper">
                                    <div class="ecl-weigou-filter-items c-clearfix" data-id="{%$option.id|escape:'html'%}">
                                        <a class="ecl-weigou-filter-link ecl-weigou-filter-first selected OP_LOG_BTN" data-click="{fm:'beha'}">全部</a>
                                        {%foreach $option.items as $opt%}
                                        <a class="ecl-weigou-filter-link OP_LOG_BTN" data-click="{fm:'beha'}" {%if $option.id==1000002%}data-max="{%$opt.max|escape:'html'%}" data-min="{%$opt.min|escape:'html'%}"{%else%}data-value="{%$opt.id|escape:'html'%}"{%/if%}>{%$opt.name|escape:'html'%}</a>
                                        {%/foreach%}
                                    </div>
                                </div>
                            </div>
                            <div class="ecl-weigou-filter-more OP_LOG_BTN" data-click="{fm:'beha'}" style="display:none">
                                <span class="ecl-weigou-expand">更多</span>
                                <span class="ecl-weigou-collapse">收起</span>
                                <b></b>
                            </div>
                        </div>
                        {%/foreach%}
                        <div class="ecl-weigou-filters-bottom">
                            <div class="ecl-weigou-filter-line"></div>
                        </div>
                    </div>
                    <div class="ecl-weigou-list-wrapper">
                    {%if $tplData.totalCount == 2%}
                        <div class="ecl-weigou-product-list ecl-weigou-product-list2">
                        {%foreach $tplData.goods as $item%}
                            {%assign var="product_name" value=(($item.promotion_data.id != 0 && $item.promotion_data.type != -1 && $item.promotion_data.title) ? $item.promotion_data.title : $item.name)%}
                            <div class="ecl-weigou-product" data-id="{%$item.id%}">
                                <div class="ecl-weigou-product-inner">
                                    <div class="ecl-weigou-product-left">
                                        <img class="ecl-weigou-product-image OP_LOG_IMAGE" src="{%$item.logo|escape:'html'%}">
                                        <b class="ecl-promo-{%get_promo_type p1=$item.promotion_data%}-tag"></b>
                                    </div>
                                    <div class="ecl-weigou-product-right">
                                        <div class="c-clearfix ecl-weigou-product-name-wrapper">
                                            <a class="ecl-weigou-product-name OP_LOG_LINK" href="javascript:;" title="{%$product_name|escape:'html'%}">{%$product_name|limitlen:36|escape:'html'%}</a>
                                        </div>
                                        <div class="c-clearfix ecl-weigou-product-src">
                                            <span>商品来源：</span><span>{%$item.vendor|escape:'html'%}</span>
                                        </div>
                                        <div class="c-clearfix ecl-weigou-product-price">
                                            <span>现价：</span>
                                            <span><strong>¥{%if $item.promotion_data && $item.promotion_data.id != 0%}{%$item.promotion_data.price|string_format:"%.1f"%}{%else%}{%$item.price|string_format:"%.1f"%}{%/if%}</strong></span>
                                        </div>
                                        {%if $item.original_price && $item.original_price != 0 && $item.original_price > $item.price%}
                                        <div class="c-clearfix ecl-weigou-product-original-price">
                                            <s>原价：¥{%$item.original_price|string_format:"%.1f"%}</s>
                                        </div>
                                        {%/if%}
                                        <div class="c-clearfix ecl-weigou-product-detail">
                                            <a href="javascript:;" class="OP_LOG_LINK"><span class="ecl-weigou-product-detail-text">查看详情</span><span class="ecl-weigou-font-songti">&gt;&gt;</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="ecl-weigou-product-vendor">
                                    <span>{%$item.vendor|escape:'html'%}</span>
                                    <b class="ecl-weigou-product-vendor-bg">{%$item.vendor|escape:'html'%}</b>
                                </div>
                                <a href="http://weigou.baidu.com/item?id={%$item.id|escape:'url'%}" target="_blank" title="{%$product_name|escape:'html'%}" class="ecl-weigou-product-link OP_LOG_LINK"></a>
                            </div>
                            {%/foreach%}
                        </div>
                    {%else%}
                        <div class="ecl-weigou-product-list">
                            {%foreach $tplData.goods as $item%}
                            {%assign var="product_name" value=(($item.promotion_data.id != 0 && $item.promotion_data.type != -1 && $item.promotion_data.title) ? $item.promotion_data.title : $item.name)%}
                            <div class="ecl-weigou-product" data-id="{%$item.id%}">
                                <div class="ecl-weigou-product-inner">
                                    <div class="ecl-weigou-product-top">
                                        <img class="ecl-weigou-product-image OP_LOG_IMAGE" src="{%$item.logo%}" />
                                        <b class="ecl-promo-{%get_promo_type p1=$item.promotion_data%}-tag"></b>
                                    </div>
                                    <div class="ecl-weigou-product-center">
                                        <a class="ecl-weigou-product-name OP_LOG_LINK" href="javascript:;" title="{%$product_name|escape:'html'%}">{%$product_name|limitlen:30|escape:'html'%}</a>
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
                                    <span>{%$item.vendor|escape:'html'%}</span>
                                    <b class="ecl-weigou-product-vendor-bg">{%$item.vendor|escape:'html'%}</b>
                                </div>
                                <a href="http://weigou.baidu.com/item?id={%$item.id|escape:'url'%}" title="{%$product_name|escape:'html'%}"  target="_blank" class="ecl-weigou-product-link OP_LOG_LINK"></a>
                            </div>
                            {%/foreach%}
                        </div>
                        {%/if%}
                    </div>

                    <div class="ecl-weigou-pager c-clearfix"></div>
                    <div class="ecl-ec-weigou-more">
                        <a class="OP_LOG_LINK" target="_blank" href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}">更多商品<span class="ecl-ec-songti">&gt;&gt;</span></a>
                    </div> 

                </div>
            </div>
        </div>
    </div>
</div>
<div class="ecl-ec-weigou-nav-buy OP_LOG_LINK" data-click="{fm:'beha'}">
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
    A.init(function(){
        var bds = window.bds = window.bds || {};
        bds.ecom = bds.ecom || {};
        bds.ecom.data = {
            'zhixin': {
                'tpl': 'ecl_ec_food_filter',
                'region': '{%$tplData.address%}',
                'lo_region': '{%$tplData.lo_address%}',
                'jd_region': '{%$tplData.jd_address%}',
                'gb_region': '{%$tplData.gb_address%}',
                'localcode': '{%$tplData.localcode%}',
                'weigou_domain': '{%$tplData.weigou_domain%}',
                'totalCount': {%$tplData.totalCount%},
                'logData': {
                    'cat_ids': '{%implode(',', $cat_ids)%}',
                    'cat_names': '{%implode(',', $cat_names)%}'
                }
            }
        };
                    
        $('.ecl-weigou-filter .ecl-weigou-filter-items').each(function(index, elem) {
            var $elem = $(elem);
        	if(elem.offsetHeight>34) {
                 $('.ecl-weigou-filter-more', $elem.parents('.ecl-weigou-filter')).show();   
            }  
        }); 
                    
        (function(){        
        	$('.ecl-weigou-product-list').bind('click', function(event) {
            	var loop = 5;
                var target = event.target;
                while(loop-- > 0 && target) {
                    if($(target).hasClass('.ecl-weigou-product')) {
                		bds.ecom.data.zhixin.targetId = target.getAttribute('data-id');
                        break;
                	} else {
                		target = target.parentNode;
                	}
                }
           	 });
        })();        

        function loadScript(url) {
            var script = document.createElement('script');
            script.charset = 'utf-8';
            var head = document.getElementsByTagName('head')[0];
            head.appendChild(script);
            script.src = url;
        };

        $(document).ready(function() {
            loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/food_filter-1.7.js');         	
        });
    });
</script>
{%/if%}
{%/block%}