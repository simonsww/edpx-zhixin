{%extends 'c_base.tpl'%}

{%block name='title'%}
    {%assign var="title_url" value=("http://weigou.baidu.com/items?id="|cat:$tplData.goods.spu.id)%}
    {%function name="get_char_num" str="str"%}
        {%strlen(preg_replace("/[\x{4e00}-\x{9fa5}]{1}/u", '**', $str))%}
    {%/function%}
    {%assign var="query_length" value={%call name=get_char_num str=$extData.OriginQuery%}%}
    
    {%assign var="weigou_title" value=($extData.OriginQuery|cat:"（共"|cat:$tplData.goods.sku.count|cat:"款商品"|cat:"）"|cat:"报价_参数_评论_百度微购") %}
    {%if $query_length > 12%}
        {%$weigou_title = ($extData.OriginQuery|cat:"（共"|cat:$tplData.goods.sku.count|cat:"款商品"|cat:"）"|cat:"报价_参数_评论_百度微购") %}
    {%elseif $query_length <= 12 && $query_length > 8%}
        {%$weigou_title = ($extData.OriginQuery|cat:"（共"|cat:$tplData.goods.sku.count|cat:"款商品"|cat:"）"|cat:$extData.OriginQuery|cat:"报价_参数_评论_百度微购") %}
    {%else%}
        {%$weigou_title=($extData.OriginQuery|cat:"（共"|cat:$tplData.goods.sku.count|cat:"款"|cat:$extData.OriginQuery|cat:"）"|cat:$extData.OriginQuery|cat:"报价_参数_评论_百度微购") %}
    {%/if%}

    {%strip%}
    <h3 class="t ecl-ec-title">
        <a href="{%$title_url%}" target="_blank" class="OP_LOG_LINK" id="ecl-ec-spu-type-title">{%$weigou_title|escape:'html'|limitlen:70|highlight:0%}</a>
    </h3>
    {%/strip%}
{%/block%}

{%block name="foot"%}
    {%strip%}
    <p class="c-showurl c-gap-top-small">
        weigou.baidu.com
        <a href="http://baozhang.baidu.com/guarantee/" class="c-icon c-icon-bao c-gap-icon-left-small" target="_blank"></a>
    </p>
    {%/strip%}
{%/block%}

{%block name="style"%}    
    <style type="text/css">
    {%fe_fn_c_css css='img'%}
    {%fe_fn_c_css css='btn'%}
    {%fe_fn_c_css css='table'%}
    .ecl-ec-spu-type{line-height:1.7;}.ecl-ec-spu-type b{color:#ff830f;}.ecl-ec-spu-type-detail-sales-volume b{color:#C00;}.ecl-ec-spu-type-detail-container a{text-decoration:none;}.ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail-image{color:#333;}.ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail-image span{text-align:center;background-color:#e4e4e4;}.ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail-name{font-weight:bold;overflow:hidden;height:1.69em;font-size:1.08em;}.ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail-evaluate{font-family:"Microsoft yahei";font-weight:bold;color:#ff7800;position:relative;}.ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail-evaluate-score{position:absolute;font-size:1.38em;line-height:1.38em;left:3.85em;width:5.38em;top:0;}
.ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail-price-abnormal{background-color:#CCC;}.ecl-ec-spu-type-attr{overflow:hidden;}.ecl-ec-spu-type-links{position:relative;}.ecl-ec-spu-type-list-no-result{text-align:center;padding:30px;}.ecl-ec-spu-type-more{text-align:center;border-top:1px solid #f3f3f3;}.ecl-ec-spu-type-more a{text-decoration:none;display:block;}.ecl-weigou-address{position:absolute;top:8px;right:1em;z-index:2;color:#666;}.ecl-weigou-address .ecl-weigou-address-text{float:left;line-height:16px;}.ecl-weigou-address-selector{left:100px;cursor:pointer;float:left;background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/spu_type-1.2.png') no-repeat 0 -21px;height:23px;width:75px;margin:0 0 0 5px;_display:inline;_overflow:hidden;position:relative;left:0;top:-5px;}.ecl-weigou-address-content{display:inline-block;height:23px;width:53px;line-height:23px;_line-height:25px;text-align:center;}
.ecl-weigou-address-picker-wrapper{width:450px;overflow:hidden;}#ecl-weigou-address-picker{display:none;position:absolute;top:18px;border:1px solid #dce2fa;padding:20px 12px;color:#806f66;background:#FFF;right:0;}.ecl-weigou-address-picker-inner{width:460px;font-size:0;*word-spacing:-1px;}.ecl-weigou-address-picker-inner div{margin:auto;width:480px;padding:3px 2px;zoom:1;border-bottom:1px dashed #ccc;}.ecl-weigou-address-picker-inner b{position:absolute;top:3px;right:3px;width:20px;height:20px;cursor:pointer;background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/spu_type-1.2.png') no-repeat 0 0;}.ecl-weigou-address-picker-inner a{display:inline-block;_zoom:1;width:60px;height:24px;line-height:24px;overflow:hidden;cursor:pointer;font-size:12px;}.ecl-weigou-address-picker-inner .ecl-weigou-address-noborder{border:0;}.ecl-ec-spu-type-merchant-list{position:relative;}
.ecl-ec-spu-type-merchant-list th{white-space:normal;}.ecl-ec-spu-type-merchant-list .ecl-ec-spu-type-merchant-name{width:15em;}.ecl-ec-spu-type-merchant-list .ecl-ec-spu-type-merchant-name a{vertical-align:middle;height:1.15em;line-height:1.15em;display:inline-block;width:11.54em;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;*display:inline;*zoom:1;}.ecl-ec-spu-type-merchant-list .ecl-ec-spu-type-merchant-vendor{width:7.69em;}.ecl-ec-spu-type-merchant-list .ecl-ec-spu-type-merchant-price{width:6.15em;}.ecl-ec-spu-type-merchant-list .ecl-ec-spu-type-merchant-price b{font-size:normal;}.ecl-ec-spu-type-merchant-list .ecl-ec-spu-type-merchant-buy{text-align:center;}.c-container .ecl-ec-title{line-height:2;}
    </style>
{%/block%}

{%block name="script"%}
    {%assign var="cat_ids" value=array()%}
    {%assign var="cat_names" value=array()%}
    {%foreach $tplData.front_cat_path as $cat%}
    {%array_push($cat_ids, $cat['cat_id'])|truncate:0:""%}
    {%array_push($cat_names, $cat['cat_name'])|truncate:0:""%}
    {%/foreach%}
    {%strip%}
    <script>
        {%*模板名，因为共用模板为统计需要区分*%}
        {%assign var="template_name" value="ecl_ec_spu_type"%}
        {%if $is_empty_spu%}
            {%$template_name = "ecl_ec_empty_spu_type"%}
        {%/if%}
        A.setup(function(){
            var bds = window.bds = window.bds || {};
            bds.ecom = bds.ecom || {};
            bds.ecom.data = {
                'zhixin': {
                    'tpl': '{%$template_name|escape:"javascript"%}',
                    'region': '{%$tplData.address%}',
                    'lo_region': '{%$tplData.lo_address%}',
                    'jd_region': '{%$tplData.jd_address%}',
                    'gb_region': '{%$tplData.gb_address%}',
                    'localcode': '{%$tplData.localcode%}',                
                    'logData': {
                        'cat_ids': '{%implode(',', $cat_ids)%}',
                        'cat_names': '{%implode(',', $cat_names)%}'
                    },
                    'weigou_domain': '{%$tplData.weigou_domain%}',
                    {%if $tplData.StdStl == 0%}
                    'totalCount': {%$tplData.totalCount%}
                    {%else%}
                    'data': {
                        {%if $tplData.StdStl == 2%}
                        'id': '{%$spu_data.id|escape:'javascript'%}'
                        {%/if%}
                    }
                    {%/if%}
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
               loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/spu_type-1.7.js');      
            });
        });
    </script>
    {%/strip%}
{%/block%}

{%block name="address"%}
    {%strip%}
    <div id="ecl-weigou-address" class="ecl-weigou-address c-clearfix">
        <div class="ecl-weigou-address-selector OP_LOG_BTN" data-click="{fm:'beha'}">
            <span class="ecl-weigou-address-content">{%if $tplData.lo_address%}{%$tplData.lo_address%}{%else%}{%if $tplData.address%}{%$tplData.address%}{%else%}请选择{%/if%}{%/if%}</span>
        </div>
        <div id="ecl-weigou-address-picker">
            <div class="ecl-weigou-address-picker-wrapper">
                <div class="ecl-weigou-address-picker-inner">
                    <b></b>
                    <div class="ecl-weigou-address-items">
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">全国</a>
                    </div>
                    <div class="ecl-weigou-address-items">
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">北京</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">上海</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">天津</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">重庆</a>
                    </div>
                    <div class="ecl-weigou-address-items ecl-weigou-address-noborder">
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">河北</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">山西</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">内蒙古</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">辽宁</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">吉林</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">黑龙江</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">江苏</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">浙江</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">安徽</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">福建</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">江西</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">山东</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">河南</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">湖北</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">湖南</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">广东</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">广西</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">海南</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">四川</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">贵州</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">云南</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">西藏</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">陕西</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">甘肃</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">青海</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">宁夏</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">新疆</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">台湾</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">香港</a>
                        <a class="ecl-region OP_LOG_BTN" data-click="{fm:'beha'}">澳门</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {%/strip%}
{%/block%}

{%block name="spu"%}
    
    {%function name="no_margin" index="" line_count=2%}
        {%if ($index+1)%$line_count == 0%}c-span-last{%/if%}
    {%/function%}
    <div class="ecl-ec-spu-type-detail-container c-span-last c-row c-gap-bottom">
        <a href="{%$spu_url%}" target="_blank" class="ecl-ec-spu-type-detail-image OP_LOG_IMAGE c-span6" title="{%$spu_title|escape:'html'%}">
            <img src="{%$spu_data.imgUrl|escape:'html'%}" class="c-img c-img6" alt="{%$spu_data.name|escape:'html'%}" data-layer="1"/>
            {%if !$is_empty_spu%}
            <span class="ecl-ec-spu-type-sales-volume c-span6 c-span-last" data-layer="1">
                周销量<b>{%$spu_data.salesVolume|escape:'html'%}</b>件
            </span>
            {%/if%}
        </a>
        {%*如果是空spu则会没有评分，即名字需要变长*%}
        {%assign var="name_width" value="c-span12"%}
        {%if $is_empty_spu%}
            {%$name_width="c-span18 c-span-last"%}
        {%/if%}
        <div class="ecl-ec-spu-type-detail c-span18 c-span-last">
            <div class="ecl-ec-spu-type-info c-span18 c-span-last">
                <div class="ecl-ec-spu-type-detail-name {%$name_width|escape:'html'%}">
                    <a href="{%$spu_url%}" target="_blank" class="OP_LOG_LINK" title="{%$spu_title|escape:'html'%}">{%$spu_data.name|escape:'html'%}</a>
                </div> 
                {%if ($spu_data.score_average>0 && !$is_empty_spu)%}
                <a href="{%$spu_url%}#comment-tab" target="_blank" class="ecl-ec-spu-type-detail-evaluate c-span6 c-span-last">
                    <div class="ecl-ec-spu-type-detail-evaluate-outer c-icon c-icon-star-gray">
                        <div class="ecl-ec-spu-type-detail-evaluate-inner c-icon c-icon-star" data-layer="2" style="width:{%60*$spu_data.score_average/5%}px">
                        </div>
                    </div>
                     <span class="ecl-ec-spu-type-detail-evaluate-score" data-layer="1">{%$spu_data.score_average|string_format:"%.1f"|escape:'html'%}分</span>
                </a>
                {%/if%}
            </div>

            <div class="ecl-ec-spu-type-attr  c-span18 c-span-last">
                <div class="ecl-ec-spu-type-detail-price">
                    {%*当前价格状态*%}
                    {%if $is_empty_spu%}
                        {%strip%}
                        {%if $spu_data.price_status == 1 && $spu_data.price_low > 0%}
                            {%if $spu_data.price_low == $spu_data.price_high%}
                                 <span>参考价格：<b>¥&nbsp;{%$spu_data.price_low|escape:'html'%}</b></span> 
                            {%else%}
                                 <span>参考价格：<b>¥&nbsp;{%$spu_data.price_low|escape:'html'%}&nbsp;-&nbsp;{%$spu_data.price_high|escape:'html'%}</b></span> 
                            {%/if%}
                        {%else%}
                            <span class="ecl-ec-spu-type-detail-price-abnormal">暂无商家销售</span>
                        {%/if%}
                        {%/strip%}
                    {%else%}
                       <span>参考价格：<b>¥&nbsp;{%$spu_data.price_low|escape:'html'%}&nbsp;-&nbsp;{%$spu_data.price_high|escape:'html'%}</b></span> 
                    {%/if%}
                </div>
                
                <ul class="c-row">
                    {%foreach $spu_data.parameter as $index=>$attr%} 
                    {%if $index < 5%}
                    <li title="{%$attr.value|escape:'html'%}" class="c-span9 {%no_margin index=$index%}">{%$attr.key|escape:'html'%}：{%$attr.value|limitlen:18|escape:'html'%}</li>
                    {%/if%}
                    {%/foreach%}
                    <li class="c-span9 c-span-last"><a class="OP_LOG_LINK ecl-ec-spu-type-more-parameter" href="{%$spu_url|cat:'#parameter-tab'%}" target="_blank">详细参数<span class="ecl-ec-songti">&gt;&gt;</span></a></li>
                </ul>
            </div>
            {%**如果是空spu则不显示**%}
            {%if !$is_empty_spu%}
            <ul class="ecl-ec-spu-type-links c-span18 c-span-last c-gap-top">
                {%if $spu_data.zol_link%}
                <li class="ecl-ec-spu-type-links-evaluate c-span4">
                    <a class="OP_LOG_LINK ecl-ec-spu-type-zol-link" href="{%$spu_data.zol_link|escape:'html'%}" target="_blank">查看评测</a>
                </li>
                {%/if%}
                <li class="{%if $spu_data.zol_link%}c-span5{%else%}c-span9{%/if%}">
                    <a  class="ecl-ec-spu-type-comment-link OP_LOG_LINK" href="{%$spu_url|cat:'#comment-tab'%}" target="_blank">用户评价({%$spu_data.commentNum|escape:'html'%})</a>
                </li>
                <li class="c-span-last c-span9">
                    <a class="ecl-ec-spu-type-detail-vendor-num OP_LOG_LINK" href="{%$spu_url|cat:'#sku-tab'%}" target="_blank">
                        在售商家({%$spu_data.merchantNum|escape:'html'%})
                    </a>
                </li>
            </ul>
            {%/if%}

        </div>
    </div>
{%/block%}

{%block name="sku"%}
    <div class="ecl-ec-spu-type-merchant-list">
    {%if $sku_data.count > 0%}
        <table class="c-table">
            <tr>
                <th>名称</th>
                <th>供货商家</th>
                <th>销售价</th>
                <th>{%block name="address"%}{%/block%}</th>
            </tr>
            {%foreach $sku_data.merchants as $index=>$merchant name=skus%}
                {%if $index < 3%}
                {%$skuUrl="http://weigou.baidu.com/item?id="|cat:$merchant.id%}
            <tr class="c-table-noborder">
                <td class="ecl-ec-spu-type-merchant-name"><a class="OP_LOG_LINK" href="{%$skuUrl%}" title="{%$merchant.title|escape:'html'%}" target="_blank">{%$merchant.title|escape:'html'%}</a>
                {%if $merchant.promotionId != 0 and $merchant.promotionType != -1%}
                    {%if $merchant.promotionType == 0%}
                        <span class="c-text c-text-warning c-text-mult">限时</span>
                    {%/if%}
                    {%if $merchant.promotionType == 1%} 
                        <span class="c-text c-text-prompt c-text-mult">特卖</span>
                    {%/if%}
                {%/if%}

                </td>
                <td class="ecl-ec-spu-type-merchant-vendor">{%$merchant.vendor|escape:'html'%}</td>
                <td class="ecl-ec-spu-type-merchant-price"><a class="OP_LOG_LINK" href="{%$skuUrl|escape:'html'%}" target="_blank"><b>¥ {%$merchant.price|string_format:"%.2f"|escape:'html'%}</b></a></td>
                <td class="ecl-ec-spu-type-merchant-buy"><a class="OP_LOG_BTN c-btn" href="{%$skuUrl|escape:'html'%}" target="_blank">去看看</a></td>
            </tr>
                {%/if%}
            {%/foreach%}
        </table>
    {%else%}
        <div class="ecl-ec-spu-type-list-no-result">
            <span>抱歉，该商品在您选择的区域已售空。</span>
        </div>
    {%/if%}
    </div>
{%/block%}

{%block name="more"%}
    {%assign var="more_url" value=$spu_url%}
    {%if $is_empty_spu%}
        {%$more_url="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}"%}
    {%/if%}
    <div class="ecl-ec-spu-type-more" {%if $sku_data.count <= 3 && !$is_empty_spu%}style="display: none;"{%/if%}>
        <a class="OP_LOG_LINK  c-gap-top-small" target="_blank" href="{%$more_url%}">更多商品<span class="ecl-ec-songti">&gt;&gt;</span></a>
    </div> 
{%/block%}

{%block name='content'%}
    {%****************************************
     **定义需要的公共变量
    *****************************************%}
    {%assign var="spu_url" value=("http://weigou.baidu.com/items?id="|cat:$tplData.goods.spu.id)%}
    {%assign var="sku_data" value=$tplData.goods.sku%}
    {%assign var="spu_data" value=$tplData.goods.spu%}
    {%assign var="is_empty_spu" value=empty($spu_data.skuids)%}

    {%if $tplData.StdStl == 2%}
    {%block name="style"%}{%/block%}

    <div id="ecl-weigou-view-container" class="ecl-weigou">
        <div id="ecl-weigou-view-container-placeholder">
            <div class="ecl-weigou-view-container c-border">
                {%assign var="spu_title" value=$spu_data.name%} 
                <div class="ecl-weigou-view" id="ecl-weigou-view-placeholder">
                    <div class="ecl-ec-spu-type c-clearfix">
                        {%block name="spu"%}{%/block%}
                        {%if !$is_empty_spu%}
                            {%block name="sku"%}{%/block%}
                        {%/if%}
                        {%block name="more"%}{%/block%}
                    </div>
                </div>
            </div>
        </div>
    </div>
    {%block name="script"%}{%/block%}
    {%/if%}
{%/block%}