{%extends 'c_base.tpl'%}
{%block name='content'%}

{%if $tplData.StdStl == 54%}

{%function name=fn_weigou_args internal_name='name'%}
{%if $internal_name == 'xinpinshangshi'%}&sort_type=market_time_desc{%elseif $internal_name == 'jingxuantehui'%}&only_discount=1{%elseif $internal_name == 'renqirexiao'%}&sort_type=comment_num_desc{%elseif $internal_name == 'zuijiakoubei'%}&sort_type=rating_desc{%elseif $internal_name == 'dijiayouxuan'%}&sort_type=price_asc{%/if%}
{%/function%}

{%function name=fn_promo_mark promo_mark="promo_mark" tab_name="tab_name"%}
{%if $tab_name != 'dijiayouxuan'%}
{%if $promo_mark%}
{%assign var="first_promo_mark" value=$promo_mark[0]%}
{%if $first_promo_mark == 1%}<span class="ecl-ec-spu-promo-mark rexiao">热</span>{%elseif $first_promo_mark == 2%}<span class="ecl-ec-spu-promo-mark koubei">荐</span>{%elseif $first_promo_mark == 3%}<span class="ecl-ec-spu-promo-mark xinpin">新</span>{%elseif $first_promo_mark == 4%}<span class="ecl-ec-spu-promo-mark tehui">惠</span>{%/if%}
{%/if%}
{%/if%}
{%/function%}

<style>
.ecl-ec-spu-filters{margin-top:-6px;}.ecl-ec-spu-filter-wrapper{width:476px;float:left;}.ecl-ec-spu-filter-wrapper a{display:inline-block;cursor:pointer;text-decoration:none;color:#00c;padding:0 5px;}.ecl-ec-spu-filter-wrapper a:hover{text-decoration:underline;}.ecl-ec-spu-filter-wrapper span{display:inline-block;}.ecl-ec-spu-filter-wrapper .selected{background:#388bff;color:#fff;}.ecl-ec-spu-filter-wrapper a,.ecl-ec-spu-filter-wrapper span{height:18px;line-height:19px;_line-height:20px;margin:6px 0 0;float:left;white-space:nowrap;}.ecl-ec-spu-filter-first{margin-left:0;}.ecl-ec-spu-filter-name{width:65px;overflow:hidden;text-align:right;font-weight:bold;float:left;}.ecl-ec-spu-filter-more{float:right;width:42px;overflow:hidden;margin-top:9px;*display:inline;*zoom:1;cursor:pointer;}.ecl-ec-spu-filter-more span{float:left;}
.ecl-ec-spu-filter-more b{background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/maquillage_spu_common-1.0.png') no-repeat 0 -22px;float:left;width:7px;height:4px;overflow:hidden;margin:4px 0 0 3px;}.ecl-ec-spu-filter-more .ecl-ec-spu-collapse{display:none;}.ecl-ec-spu-filter-more-expanded .ecl-ec-spu-expand{display:none;}.ecl-ec-spu-filter-more-expanded .ecl-ec-spu-collapse{display:block;}.ecl-ec-spu-filter-more-expanded b{background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/maquillage_spu_common-1.0.png') no-repeat -8px -22px;}.ecl-ec-spu-filter-line{border-top:1px solid #ddd;position:relative;background:#f7f7f7;height:3px;overflow:hidden;}.ecl-ec-spu-filter-items-wrapper{overflow:hidden;height:26px;float:left;width:407px;}.ecl-ec-spu-filter-items{padding-bottom:6px;}.ecl-ec-spu-tabs{margin-top:15px;background:#fafafa;border-bottom:1px solid #d9d9d9;}.ecl-ec-spu-tabs-labels{background-color:#2c99ff;display:inline-block;height:27px;line-height:27px;font-size:0;*zoom:1;*display:inline;}
.ecl-ec-spu-tabs-labels li{position:relative;z-index:0;cursor:pointer;vertical-align:bottom;font-size:12px;background-color:#fafafa;border-left:1px solid #fafafa;border-right:1px solid #fafafa;display:inline-block;width:94px;text-align:center;*display:inline;*zoom:1;}.ecl-ec-spu-tabs-labels li a{color:#666;}.ecl-ec-spu-tabs-labels li i{content:'';position:absolute;top:5px;left:-2px;width:0;height:16px;font-size:0;line-height:0;border-left:1px solid #dedede;border-right:1px solid #FFF;}li.ecl-ec-spu-tabs-selected{z-index:1;height:26px;line-height:23px;margin-bottom:-1px;background-color:#FFF;border-left:1px solid #dedede;border-right:1px solid #e4e4e4;font-weight:bold;}li.ecl-ec-spu-tabs-selected a{color:#ff830f;}li.ecl-ec-spu-tabs-selected i{display:none;}.ecl-ec-spu-container{display:none;}
.ecl-ec-spu-container-selected{display:block;}.ecl-ec-spu-content{margin:10px 0 0 0;}.ecl-ec-spu-noresult{height:70px;padding-top:30px;text-align:center;}.ecl-ec-spu-more{border-top:1px solid #e3e3e3;text-align:center;padding-top:10px;}.ecl-ec-spu-item{border-bottom:1px solid #e3e3e3;height:35px;}.ecl-ec-spu-noline{border-bottom:0;}.ecl-ec-spu-number{float:left;width:11px;height:11px;border:1px solid #3aa0ff;background:#2c99ff;color:#fff;line-height:13px;text-align:center;margin-top:9px;}a.ecl-ec-spu-score{text-decoration:none;}a.ecl-ec-spu-score:hover{text-decoration:none;}.ecl-ec-spu-score{float:left;font-size:18px;font-family:"Microsoft yahei";color:#ff830f;line-height:1.2em;font-weight:bold;text-decoration:none!important;}.ecl-ec-spu-star{float:left;background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/maquillage_spu_common-1.0.png') no-repeat 0 0;height:10px;width:59px;overflow:hidden;position:relative;margin:10px 0 0;display:_inline;}
.ecl-ec-spu-star a{display:block;height:10px;width:59px;overflow:hidden;}.ecl-ec-spu-star-number{float:left;height:10px;background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/maquillage_spu_common-1.0.png') no-repeat 0 -11px;}.ecl-ec-spu-main-right{float:right;}.ecl-ec-spu-main-right .ecl-ec-spu-star{margin:7px 5px 0 0;}.ecl-ec-spu-title-wrapper{width:200px;overflow:hidden;float:left;margin-left:10px;line-height:32px;font-size:14px;}.ecl-ec-spu-item .ecl-ec-spu-title-wrapper{height:35px;}.ecl-ec-spu-main .ecl-ec-spu-title-wrapper{font-weight:bold;line-height:24px;width:380px;}.ecl-ec-spu-main .ecl-ec-spu-number{margin-top:6px;}.ecl-ec-spu-prices{float:left;line-height:32px;margin-left:15px;_display:inline;_zoom:1;}.ecl-ec-spu-prices strong{font-weight:normal;color:#ff830f;}.ecl-ec-spu-merchant{float:right;line-height:32px;}.ecl-ec-spu-main{height:auto;}
.ecl-ec-spu-left img{display:block;width:122px;height:122px;padding-bottom:10px;}.ecl-ec-spu-left{float:left;}.ecl-ec-spu-right{float:left;margin-left:10px;width:384px;line-height:22px;_display:inline;_zoom:1;}.ecl-ec-spu-main-prices{color:#ff830f;}.ecl-ec-spu-attr{float:left;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;width:190px;}.ecl-ec-spu-main-bottom{position:relative;height:42px;line-height:42px;_line-height:32px;}.ecl-ec-spu-zol{position:absolute;width:76px;}.ecl-ec-spu-zol b{width:16px;height:16px;display:block;background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/maquillage_spu_common-1.0.png') no-repeat 0 -27px;position:absolute;top:14px;}.ecl-ec-spu-zol a{position:absolute;left:20px;top:0;}.ecl-ec-spu-main-comment{position:absolute;left:82px;}.ecl-ec-spu-main-merchant{position:absolute;left:190px;}.ecl-ec-spu-main-nozol_link{left:0;}
.ecl-ec-spu-title{float:left;}.ecl-ec-spu-promo-mark{float:left;color:#fff;width:16px;height:16px;line-height:16px;_line-height:18px;overflow:hidden;font-size:12px;text-align:center;margin:8px 0 0 8px;font-weight:normal;}.ecl-ec-spu-main .ecl-ec-spu-promo-mark{margin:4px 0 0 8px;}span.rexiao{background:#f13f40;}span.koubei{background:#ff830f;}span.xinpin{background:#f13f40;}span.tehui{background:#ff830f;}.ecl-ec-spu-main-score-link{cursor:pointer;overflow:hidden;text-decoration:none;}#ecl-ec-spu-common-title{line-height:32px;height:32px;*line-height:24px;}.ecl-ec-spu-showurl{font-size:13px;margin-top:8px;}.ecl-ec-spu{margin-top:3px;font-size:12px;}.ecl-ec-spu a{text-decoration:none;}.ecl-ec-spu a:hover{text-decoration:underline;}.ecl-ec-songti{font-family:songti;}
</style>


{%function name=get_rank rank="rank"%}
{%if $rank <=30%}
第<span style="color:#FF830F;font-weight:bold;padding:3px;">{%$rank|escape:none%}</span>名
{%else%}
<span style="color:#FF830F;font-weight:bold;padding:3px;">30</span>名外
{%/if%}
{%/function%}

<h3 class="t" id="ecl-ec-spu-common-title">
    {%assign var="weigou_title" value=($extData.OriginQuery|cat:"（共"|cat:$tplData.totalCount|cat:"款"|cat:$extData.OriginQuery|cat:"）商品信息_使用方法_评价_正品_百度微购") %}
    <a class="ecl-ec-spu-header" href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" title="{%$weigou_title|escape:'html'%}" target="_blank">{%$weigou_title|escape:'html'|limitlen:80|highlight:0%}</a>
</h3>
<div id="ecl-ec-spu-common">
    <div class="c-border ecl-ec-spu">
        <!-- filters -->
        <div class="ecl-ec-spu-filters" style="{%if $tplData.options && $tplData.options|@count > 0%}{%else%}display:none{%/if%}">
            {%foreach from=$tplData.options key=index item=option%}
            {%if $option.items|@count <= 1%}{%continue%}{%/if%}
            {%if $index > 1%}
                {%break%}
            {%/if%}
            <div class="ecl-ec-spu-filter c-clearfix">
                <div class="ecl-ec-spu-filter-wrapper">
                    <span class="ecl-ec-spu-filter-name">{%$option.name|escape:'html'%}：</span>
                    <div class="ecl-ec-spu-filter-items-wrapper">
                        <div class="ecl-ec-spu-filter-items c-clearfix" data-id="{%$option.id|escape:'html'%}">
                            <a class="ecl-ec-spu-filter-link ecl-ec-spu-filter-first selected OP_LOG_BTN" data-click="{fm:'beha'}">全部</a>
                            {%foreach $option.items as $opt%}
                            <a data-click="{fm:'beha'}" class="ecl-ec-spu-filter-link OP_LOG_BTN" {%if $option.id==1000002%}data-max="{%$opt.max|escape:'html'%}" data-min="{%$opt.min|escape:'html'%}"{%else%}data-value="{%$opt.id|escape:'html'%}"{%/if%}>{%$opt.name|escape:'html'%}</a>
                            {%/foreach%}
                        </div>
                    </div>
                </div>
                <div class="ecl-ec-spu-filter-more OP_LOG_BTN" data-click="{fm:'beha'}" style="display:none">
                    <span class="ecl-ec-spu-expand">更多</span>
                    <span class="ecl-ec-spu-collapse">收起</span>
                    <b></b>
                </div>
            </div>
            {%/foreach%}
            <div class="ecl-ec-spu-filters-bottom"></div>
        </div>

        {%if $tplData.tabs|@count > 0%}
        <!-- tabs -->
        <div class="ecl-ec-spu-tabs">
            <ul class="ecl-ec-spu-tabs-labels">
                {%assign var="tab_count" value=($tplData.tabs|@count - 1)%}
                {%assign var="tab_index" value=2%}
                {%foreach from=$tplData.tabs key=index item=tab%}
                <li class="ecl-ec-spu-tab{%if $tab_index == $index%} ecl-ec-spu-tabs-selected{%/if%}" data-index="{%$index|escape:none%}" data-name="{%$tab.internal_name|escape:'html'%}"><a href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}{%fn_weigou_args internal_name=$tab.internal_name%}#comment-tab" target="_blank">{%$tab.name|escape:'html'%}</a>{%if $index!=0%}<i></i>{%/if%} </li>
                {%/foreach%}
            </ul>
        </div>

        <!-- tab-contents -->
        <div class="ecl-ec-spu-body">
            {%foreach from=$tplData.tabs key=index item=tab%}
            <div id="ecl-ec-spu-container-{%$tab.internal_name|escape:'html'%}" class="ecl-ec-spu-container{%if $tab_index == $index%} ecl-ec-spu-container-selected{%/if%}">
                <div class="ecl-ec-spu-content">
                    {%foreach from=$tab.goods key=good_index item=goods%}
                    {%if $good_index == 0%}
                    {%assign var="weigou_main" value=$tab.goods[0]%}
                    {%assign var="weigou_main_title" value=$weigou_main.name%}
                    <div class="ecl-ec-spu-main ecl-ec-spu-item c-row {%if $tab.goods|@count < 2%}ecl-ec-spu-noline{%/if%}">
                        <div class="c-row">
                            <span class="ecl-ec-spu-number">1</span>
                            <div class="ecl-ec-spu-title-wrapper">
                                <a href="http://weigou.baidu.com/items?id={%$weigou_main.id|escape:'html'%}" target="_blank" class="ecl-ec-spu-title" data-log="{pos:1}" title="{%$weigou_main_title|escape:'html'%}">{%$weigou_main.name|limitlen:46|escape:'html'%}</a>{%fn_promo_mark promo_mark=$weigou_main.promotion_mark tab_name=$tab.internal_name%}
                            </div>
                            <div class="ecl-ec-spu-main-right">
                                {%if $weigou_main.score_average%}
                                <a href="http://weigou.baidu.com/items?id={%$weigou_main.id|escape:'html'%}#comment-tab" target="_blank" class="ecl-ec-spu-main-score-link">
                                    <span class="ecl-ec-spu-star">
                                        <span class="ecl-ec-spu-star-number" data-layer="2" style="width:{%$weigou_main.score_average*11.8|escape:'none'%}px"></span>
                                    </span>
                                    <span class="ecl-ec-spu-score" data-layer="1">{%$weigou_main.score_average|escape:'html'%}分</span>
                                </a>
                                {%/if%}
                            </div>
                        </div>
                        <div class="c-row ecl-ec-spu-main-body">
                            <div class="ecl-ec-spu-left">
                                <a href="http://weigou.baidu.com/items?id={%$weigou_main.id|escape:'html'%}" target="_blank" class="ecl-ec-spu-main-image" data-log="{pos:1}" title="{%$weigou_main_title|escape:'html'%}">
                                    <img src="{%$weigou_main.imgUrl|escape:'html'%}" data-layer="1" />
                                </a>
                            </div>
                            <div class="ecl-ec-spu-right">
                                <div class="c-row">
                                    <span>参考价格：</span><strong class="ecl-ec-spu-main-prices">&yen;{%if $weigou_main.price_low == $weigou_main.price_high%}{%$weigou_main.price_low|escape:'html'%}{%else%}{%$weigou_main.price_low|escape:'html'%} - {%$weigou_main.price_high|escape:'html'%}{%/if%}</strong>
                                </div>
                                <div class="c-row ecl-ec-spu-attributes">
                                    {%foreach from=$weigou_main.parameter key=attr_index item=attr name=params%}
                                    <span class="ecl-ec-spu-attr" title="{%$attr.key|cat:'：'|cat:$attr.value|escape:'html'%}">{%$attr.key|cat:'：'|cat:$attr.value|escape:'html'%}</span>
                                    {%if $smarty.foreach.params.index>2%}
                                    {%break%}
                                    {%/if%}
                                    {%/foreach%} 
                                    {%assign var="leaf_cat_name" value=split('/',$weigou_main.leaf_cat_name)%}                                   
                                    <span class="ecl-ec-spu-attr">在<a class="ecl-ec-spu-attr-link" title="{%$weigou_main.leaf_cat_name|escape:'html'%}" href="http://weigou.baidu.com/category?id={%$weigou_main.leaf_cat|escape:none%}#parameter-tab" target="_blank" style="{%if $weigou_main.parameter|@count<3%}width:360px;{%/if%}">{%$leaf_cat_name[0]|escape:'html'|limitlen:10%}</a>类目销量排行{%get_rank rank=$weigou_main.leaf_cat_rank%}</span>
                                    <span class="ecl-ec-spu-attr">
                                        <a class="ecl-ec-spu-attr-link" href="http://weigou.baidu.com/category?id={%$weigou_main.leaf_cat|escape:'url'%}&sort_type=comment_num_desc" target="_blank">看看同类热销商品<span class="ecl-ec-songti">&gt;&gt;</span></a>
                                    </span>

                                </div>
                                <div class="c-row ecl-ec-spu-main-bottom">
                                    <div class="ecl-ec-spu-parameter-tab" style="position:absolute;width:76px;">
                                        <a class="ecl-ec-spu-parameter-tab" href="http://weigou.baidu.com/items?id={%$weigou_main.id|escape:none%}#parameter-tab" target="_blank">查看详情</a>
                                    </div>
                                    {%if $weigou_main.commentNum && $weigou_main.commentNum > 0%}<a class="ecl-ec-spu-main-comment" href="http://weigou.baidu.com/items?id={%$weigou_main.id|escape:none%}#comment-tab" target="_blank">用户评价({%$weigou_main.commentNum|escape:'html'%})</a>{%/if%}
                                    <a href="http://weigou.baidu.com/items?id={%$weigou_main.id|escape:none%}#sku-tab" class="ecl-ec-spu-main-merchant" target="_blank">在售商家({%$weigou_main.merchantNum|escape:'html'%})</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    {%else%}
                    <div class="ecl-ec-spu-item c-row {%if $good_index == $tab.goods|@count- 1%}ecl-ec-spu-noline{%/if%}">
                        <span class="ecl-ec-spu-number">{%($good_index + 1)|escape:'html'%}</span>
                        <div class="ecl-ec-spu-title-wrapper">
                            <a href="http://weigou.baidu.com/items?id={%$goods.id|escape:none%}" target="_blank" class="ecl-ec-spu-title" data-log="{pos:{%($good_index+1)|escape:'html'%}}" title="{%$goods.name|escape:'html'%}">{%$goods.name|limitlen:24|escape:'html'%}</a>{%fn_promo_mark promo_mark=$goods.promotion_mark tab_name=$tab.internal_name%}
                        </div>
                        <div class="ecl-ec-spu-star">
                            <a href="http://weigou.baidu.com/items?id={%$goods.id|escape:'html'%}#comment-tab" target="_blank">
                                <div class="ecl-ec-spu-star-number" style="width:{%$goods.score_average*11.8|escape:'html'%}px" data-layer="1"></div>
                            </a>
                        </div>
                        <a class="ecl-ec-spu-merchant" href="http://weigou.baidu.com/items?id={%$goods.id|escape:none%}#sku-tab" target="_blank" data-log="{pos:{%($good_index+1)|escape:'html'%}}">({%$goods.merchantNum|escape:'html'%}个商家在售)</a>
                        <span class="ecl-ec-spu-prices">
                            <span>参考价格：</span><strong>&yen;{%if $goods.price_low == $goods.price_high%}{%$goods.price_low|escape:'html'%}{%else%}{%$goods.price_low|escape:'html'%}-{%$goods.price_high|escape:'html'%}{%/if%}</strong>
                        </span>
                    </div>
                    {%/if%}
                    {%/foreach%}
                    <div class="ecl-ec-spu-more c-row">
                        <a class="ecl-ec-spu-more-link" href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}{%fn_weigou_args internal_name=$tab.internal_name%}" target="_blank">更多商品<span class="ecl-ec-songti">&gt;&gt;</span></a>
                    </div>
                </div>
            </div>
            {%/foreach%}
        </div>
        {%/if%}

    </div>
</div>
<div class="ecl-ec-spu-showurl">
    <span class="c-showurl">weigou.baidu.com</span>
    <a target="_blank" class="c-icon c-icon-bao" href="http://baozhang.baidu.com/guarantee/"></a>
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
                'tpl': 'ecl_ec_maquillage_spu_common',
                'weigou_domain': '{%$tplData.weigou_domain%}',
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
        function loadScript(url) {
            var script = document.createElement('script');
            script.charset = 'utf-8';
            var head = document.getElementsByTagName('head')[0];
            head.appendChild(script);
            script.src = url;
        };

        bds.ready(function() {
            loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/maquillage_spu_common-1.5.js');            
        });
    });
</script>
{%/if%}
{%/block%}