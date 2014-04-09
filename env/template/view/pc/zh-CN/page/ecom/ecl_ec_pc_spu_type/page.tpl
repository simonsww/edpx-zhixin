{%extends 'base_div.tpl'%}
{%block name='content'%}

{%if $tplData.StdStl == 32%}
<style type="text/css">
.ecl-weigou{margin-top:5px;width:540px;position:relative;}.ecl-ec-spu-type{font-size:12px;}.ecl-ec-spu-type a{text-decoration:none;color:#00C;}.ecl-ec-spu-type b{color:#C00;}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container{padding-bottom:10px;border-bottom:1px solid #e4e4e4;}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail-image{float:left;color:#333;border:1px solid #e4e4e4;}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail-image img{width:110px;height:110px;padding:5px;display:block;}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail-image span{display:block;padding:8px 0;text-align:center;background-color:#e4e4e4;}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail{margin-left:8px;float:left;width:385px;*display:inline;}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail .ecl-ec-spu-type-info{line-height:20px;padding:5px 0;border-bottom:1px dotted #e4e4e4;}
.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail .ecl-ec-spu-type-detail-name{font-size:14px;font-weight:bold;padding-bottom:5px;line-height:16px;float:left;}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail .ecl-ec-spu-type-detail-name a{width:275px;height:16px;overflow:hidden;display:block;}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail .ecl-ec-spu-type-detail-evaluate{float:left;font-family:"Microsoft yahei";line-height:16px;font-weight:bold;color:#ff7800;position:relative;}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail .ecl-ec-spu-type-detail-evaluate .ecl-ec-spu-type-detail-evaluate-outer{width:59px;height:10px;background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/pc_spu_type.png') no-repeat 0 0;display:inline-block;*display:inline;*zoom:1;}
.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail .ecl-ec-spu-type-detail-evaluate .ecl-ec-spu-type-detail-evaluate-inner{background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/pc_spu_type.png') no-repeat -60px -24px;height:10px;font-size:0;}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail .ecl-ec-spu-type-detail-evaluate .ecl-ec-spu-type-detail-evaluate-score{position:absolute;font-size:18px;line-height:18px;left:70px;width:50px;top:0;}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail .ecl-ec-spu-type-attr{padding-bottom:5px;overflow:hidden;border-bottom:1px dotted #e4e4e4;}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail .ecl-ec-spu-type-attr .ecl-ec-spu-type-detail-price{line-height:22px;}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail .ecl-ec-spu-type-attr ul{margin-right:-60px;}
.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail .ecl-ec-spu-type-attr li{float:left;line-height:22px;width:220px;height:22px;overflow:hidden}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail .ecl-ec-spu-type-links{padding:8px 0 0;position:relative;}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail .ecl-ec-spu-type-links li{float:left;margin-right:35px;line-height:16px;}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail .ecl-ec-spu-type-links li .ecl-ec-spu-type-detail-vendor-num{position:absolute;left:220px;width:100px;}.ecl-ec-spu-type .ecl-ec-spu-type-detail-container .ecl-ec-spu-type-detail .ecl-ec-spu-type-links li.ecl-ec-spu-type-links-evaluate span{background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/pc_spu_type.png') no-repeat -21px -11px;display:inline-block;width:16px;height:16px;margin-right:2px;vertical-align:text-bottom;}
.ecl-ec-spu-type .ecl-ec-spu-type-filter{padding:15px 0 8px;border-bottom:1px solid #e4e4e4;}.ecl-ec-spu-type .ecl-ec-spu-type-filter dl{float:left;margin-left:25px;}.ecl-ec-spu-type .ecl-ec-spu-type-filter .ecl-ec-spu-type-filter-color{margin-left:0;}.ecl-ec-spu-type .ecl-ec-spu-type-filter dd,.ecl-ec-spu-type .ecl-ec-spu-type-filter dt{float:left;*display:inline;*line-height:24px;}.ecl-ec-spu-type .ecl-ec-spu-type-filter dd{margin-right:8px;cursor:pointer;position:relative;}.ecl-ec-spu-type .ecl-ec-spu-type-filter dd.disabled{background-color:#ccc;cursor:default;}.ecl-ec-spu-type .ecl-ec-spu-type-filter dd span{padding:0 8px;display:block;border:1px solid #e4e4e4;}.ecl-ec-spu-type .ecl-ec-spu-type-filter dd.selected b{width:8px;height:8px;background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/pc_spu_type.png') no-repeat 0 -32px;position:absolute;top:0;right:1px;}
.ecl-ec-spu-type .ecl-ec-spu-type-filter dd.selected span{border:1px solid #C00;}.ecl-ec-spu-type .ecl-ec-spu-type-merchant-list table{width:100%;border-collapse:collapse;}.ecl-ec-spu-type .ecl-ec-spu-type-merchant-list th{text-align:left;background-color:#fafafa;padding:10px;font-weight:normal;}.ecl-ec-spu-type .ecl-ec-spu-type-merchant-list .ecl-ec-spu-type-merchant-list-no-border td{border:0;}.ecl-ec-spu-type .ecl-ec-spu-type-merchant-list td{padding:8px 10px;border-bottom:1px solid #e4e4e4;}.ecl-ec-spu-type .ecl-ec-spu-type-merchant-list .ecl-ec-spu-type-merchant-name{width:195px;}.ecl-ec-spu-type .ecl-ec-spu-type-merchant-list .ecl-ec-spu-type-merchant-name a{vertical-align:middle;height:15px;display:inline-block;width:150px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;*display:inline;*zoom:1;}
.ecl-ec-spu-type .ecl-ec-spu-type-merchant-list .ecl-ec-spu-type-merchant-name span{color:#FFF;background-color:#f5c537;line-height:15px;padding:1px 7px;}.ecl-ec-spu-type .ecl-ec-spu-type-merchant-list .ecl-ec-spu-type-merchant-name .flash-promo{background-color:#ff830f;}.ecl-ec-spu-type .ecl-ec-spu-type-merchant-list .ecl-ec-spu-type-merchant-vendor{width:100px;}.ecl-ec-spu-type .ecl-ec-spu-type-merchant-list .ecl-ec-spu-type-merchant-price{width:80px;}.ecl-ec-spu-type .ecl-ec-spu-type-merchant-list .ecl-ec-spu-type-merchant-buy a{display:block;text-align:center;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/gradient.png);color:#444;border:1px solid #e4e4e4;}.ecl-ec-spu-type .ecl-ec-spu-type-merchant-list .ecl-ec-spu-type-merchant-buy a:hover{border:1px solid #6894d1;color:#C00;}
.ecl-ec-spu-type .ecl-ec-spu-type-more{text-align:center;padding-top:10px;}.ecl-ec-spu-type .ecl-ec-spu-type-list-no-result{text-align:center;padding:30px;}.ecl-ec-spu-type .ecl-weigou-address{position:absolute;left:445px;top:185px;float:right;z-index:2;color:#666;}.ecl-ec-spu-type .ecl-weigou-address .ecl-weigou-address-text{float:left;line-height:16px;}.ecl-ec-spu-type .ecl-weigou-address-selector{left:100px;cursor:pointer;float:left;background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/pc_spu_type.png') no-repeat -60px 0;height:23px;width:75px;margin:0 0 0 5px;_display:inline;position:relative;left:0;top:-5px;}.ecl-ec-spu-type .ecl-weigou-address-content{display:inline-block;height:23px;width:53px;line-height:23px;_line-height:24px;text-align:center;}.ecl-ec-spu-type .ecl-weigou-address-picker-wrapper{width:450px;overflow:hidden;}
.ecl-ec-spu-type #ecl-weigou-address-picker{display:none;position:absolute;top:18px;border:1px solid #dce2fa;padding:20px 12px;color:#806f66;background:#FFF;right:0;}.ecl-ec-spu-type .ecl-weigou-address-picker-inner{width:460px;font-size:0;*word-spacing:-1px;}.ecl-ec-spu-type .ecl-weigou-address-picker-inner div{margin:auto;width:480px;padding:3px 2px;zoom:1;border-bottom:1px dashed #ccc;}.ecl-ec-spu-type .ecl-weigou-address-picker-inner b{position:absolute;top:3px;right:3px;width:20px;height:20px;cursor:pointer;background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/pc_spu_type.png') no-repeat 0 -11px;}.ecl-ec-spu-type .ecl-weigou-address-picker-inner a{display:inline-block;_zoom:1;width:60px;height:24px;line-height:24px;overflow:hidden;cursor:pointer;font-size:12px;}.ecl-ec-spu-type .ecl-weigou-address-picker-inner .ecl-weigou-address-noborder{border:0;}.ecl-ec-spu-showurl{margin-top:8px;}
</style>

{%$spuUrl = "http://weigou.baidu.com/items?id="|cat:$tplData.goods.spu.id%}

<h3 class="t">
    <a href="{%$spuUrl%}" target="_blank" class="OP_LOG_LINK" id="ecl-ec-spu-type-title"><em>{%$extData.OriginQuery|escape:'html'%}</em><共{%$tplData.goods.sku.count%}款商品>热卖&nbsp;特惠&nbsp;正品&nbsp;尽在百度微购</a>
</h3>
<div id="ecl-weigou-view-container" class="ecl-weigou-pc ecl-weigou">
    <div id="ecl-weigou-view-container-placeholder">
        <div class="ecl-weigou-view-container c-border">
        {%$spuData = $tplData.goods.spu%}
        <div class="ecl-weigou-view" id="ecl-weigou-view-placeholder">
            <div class="ecl-ec-spu-type c-clearfix">
                <div class="ecl-ec-spu-type-detail-container c-clearfix">
                    <a href="{%$spuUrl%}" target="_blank" class="ecl-ec-spu-type-detail-image OP_LOG_IMAGE">
                        <img src="{%$spuData.imgUrl|escape:'html'%}" alt="{%$spuData.name|escape:'html'%}" data-layer="1"/>
                        <span class="ecl-ec-spu-type-sales-volume" data-layer="1">
                            周销量<b>{%$spuData.salesVolume|escape:'html'%}</b>件
                        </span>
                    </a>

                    <div class="ecl-ec-spu-type-detail">
                        <div class="ecl-ec-spu-type-info c-clearfix">
                            <div class="ecl-ec-spu-type-detail-name">
                                <a href="{%$spuUrl%}" target="_blank" class="OP_LOG_LINK" title="{%$spuData.name|escape:'html'%}">{%$spuData.name|limitlen:40|escape:'html'%}</a>
                            </div> 
                            <a href="{%$spuUrl%}#comment-tab" target="_blank" class="OP_LOG_LINK ecl-ec-spu-type-detail-evaluate">
                                <div class="ecl-ec-spu-type-detail-evaluate-outer">
                                    <div class="ecl-ec-spu-type-detail-evaluate-inner" data-layer="2" style="width:{%59*$spuData.score_average/5%}px">
                                    </div>
                                </div>
                                 <span class="ecl-ec-spu-type-detail-evaluate-score" data-layer="1">{%$spuData.score_average|string_format:"%.1f"|escape:'html'%}分</span>
                            </a>
                        </div>

                        <div class="ecl-ec-spu-type-attr"> 

                            <div class="ecl-ec-spu-type-detail-price">
                                <span>参考价格：<b>¥&nbsp;{%$spuData.price_low|escape:'html'%}&nbsp;-&nbsp;{%$spuData.price_high|escape:'html'%}</b></span>
                            </div> 
                                
                            
                            <ul class="c-clearfix">
                                {%foreach $spuData.parameter as $index=>$attr%} 
                                {%if $index < 5%}
                                <li title="{%$attr.value|escape:'html'%}">{%$attr.key|escape:'html'%}：{%$attr.value|limitlen:20|escape:'html'%}</li>
                                {%/if%}
                                {%/foreach%}
                                <li><a class="OP_LOG_LINK ecl-ec-spu-type-more-parameter" href="{%$spuUrl|cat:'#parameter-tab'%}" target="_blank">详细参数&gt;&gt;</a></li>
                            </ul>
                        </div>
                        <!--外链-->
                        <ul class="ecl-ec-spu-type-links c-clearfix">
                            {%if $spuData.zol_link%}
                            <li class="ecl-ec-spu-type-links-evaluate">
                                <span></span>
                                <a class="OP_LOG_LINK ecl-ec-spu-type-zol-link" href="{%$spuData.zol_link|escape:'html'%}" target="_blank">查看评测</a>
                            </li>
                            {%/if%}
                            <li>
                                <a  class="ecl-ec-spu-type-comment-link OP_LOG_LINK" href="{%$spuUrl|cat:'#comment-tab'%}" target="_blank">用户评价({%$spuData.commentNum|escape:'html'%})</a>
                            </li>
                            <li>
                                <a class="ecl-ec-spu-type-detail-vendor-num OP_LOG_LINK" href="{%$spuUrl|cat:'#sku-tab'%}" target="_blank">
                                    在售商家({%$spuData.merchantNum|escape:'html'%})
                                </a>
                            </li>

                        </ul>
                    </div>
                </div>


    <!--筛选条件-->
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

    <!--商家列表-->
    {%$skuData = $tplData.goods.sku%}
    <div class="ecl-ec-spu-type-merchant-list">
    {%if $skuData.count > 0%}
        <table>
            <tr>
                <th>名称</th>
                <th>供货商家</th>
                <th>销售价</th>
                <th></th>
            </tr>
            {%foreach $skuData.merchants as $index=>$merchant name=skus%}
                {%if $index < 3%}
                {%$skuUrl="http://weigou.baidu.com/item?id="|cat:$merchant.id%}
            <tr {%if $smarty.foreach.skus.last and $skuData.count<=3%} class="ecl-ec-spu-type-merchant-list-no-border"{%/if%}>
                <td class="ecl-ec-spu-type-merchant-name"><a class="OP_LOG_LINK" href="{%$skuUrl%}" title="{%$merchant.title|escape:'html'%}" target="_blank">{%$merchant.title|escape:'html'%}</a>
                {%if $merchant.promotionId != 0 and $merchant.promotionType != -1%}
                    {%if $merchant.promotionType == 0%}
                        <span class="flash-promo">限时</span>
                    {%/if%}              
                    {%if $merchant.promotionType == 1%} 
                        <span class="brand-promo">特卖</span>
                    {%/if%}
                {%/if%}

                </td>
                <td class="ecl-ec-spu-type-merchant-vendor">{%$merchant.vendor|escape:'html'%}</td>
                <td class="ecl-ec-spu-type-merchant-price"><a class="OP_LOG_LINK" href="{%$skuUrl%}" target="_blank"><b>¥ {%$merchant.price|escape:'html'%}</b></a></td>
                <td class="ecl-ec-spu-type-merchant-buy"><a class="OP_LOG_BTN" href="{%$skuUrl%}" target="_blank">去看看</a></td>
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
    

     <div class="ecl-ec-spu-type-more" {%if $skuData.count <= 3%}style="display: none;"{%/if%}>
        <a class="OP_LOG_LINK" target="_blank" href="{%$spuUrl%}">更多商品&gt;&gt;</a>
    </div> 
            
            
            </div>
        </div>

        </div>
    </div>
</div>
<div class="ecl-ec-spu-showurl">
    <span class="c-showurl">weigou.baidu.com</span>
</div>

<script>
    A.init(function(){
        var bds = window.bds = window.bds || {};
        bds.ecom = bds.ecom || {};
        bds.ecom.data = {
            'zhixin': {
                'tpl': 'ecl_ec_pc_spu_type',
                'region': '{%$tplData.address%}',
                'lo_region': '{%$tplData.lo_address%}',
                'jd_region': '{%$tplData.jd_address%}',
                'gb_region': '{%$tplData.gb_address%}',
                'localcode': '{%$tplData.localcode%}',
                'weigou_domain': '{%$tplData.weigou_domain%}',
                {%if $tplData.StdStl == 0%}
                'totalCount': {%$tplData.totalCount%}
                {%else%}
                'data': {
                    {%if $tplData.StdStl == 2%}
                    'id': '{%$spuData.id|escape:'javascript'%}',
                    'salesIdArr': '{%json_encode($spuData.sales)%}'
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

        baidu.dom.ready(function() {
            loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/pc_spu_type-1.2.js');
        });
    });
</script>

{%/if%}
{%/block%}