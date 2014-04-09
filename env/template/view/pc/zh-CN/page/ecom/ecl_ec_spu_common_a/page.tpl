{%extends 'base_div.tpl'%}
{%block name='content'%}

{%if $tplData.StdStl == 4%}

{%function name=fn_weigou_args internal_name='name'%}
{%if $internal_name == 'xinpinshangshi'%}&sort_type=market_time_desc{%elseif $internal_name == 'jingxuantehui'%}&only_discount=1{%elseif $internal_name == 'renqirexiao'%}&sort_type=comment_num_desc{%elseif $internal_name == 'zuijiakoubei'%}&sort_type=rating_desc{%elseif $internal_name == 'dijiayouxuan'%}&sort_type=price_asc{%/if%}
{%/function%}

{%function name=custom_title internal_name='name' word='word'%}
{%if $internal_name == 'xinpinshangshi'%}
最新{%$word|escape:'none'%}
{%elseif $internal_name == 'jingxuantehui'%}
最优惠{%$word|escape:'none'%}
{%elseif $internal_name == 'renqirexiao'%}
最热{%$word|escape:'none'%}
{%elseif $internal_name == 'dijiayouxuan'%}
最便宜{%$word|escape:'none'%}
{%/if%}
{%/function%}

<!--重新排序-->
{%assign var="keys" value=['xinpinshangshi', 'renqirexiao', 'dijiayouxuan', 'jingxuantehui']%}
{%assign var="num_rate" value=['xinpinshangshi'=>0.3, 'renqirexiao'=>0.2, 'dijiayouxuan'=>0.1, 'jingxuantehui'=>0.4]%}
{%assign var="tabs" value=[]%}
{%foreach $keys as $key%}
    {%foreach from=$tplData.tabs key=index item=tab%}
		{%if $key==$tab.internal_name%}
			{%$tabs[$key]=$tab%}
			{%$tabs[$key]['desc']=round($tplData.totalCount*$num_rate[$key])|cat:"款商品"%}
		{%/if%}
    {%/foreach%}
{%/foreach%}

<!--图片-->
{%assign var="images" value=['xinpinshangshi'=>'http://bs.baidu.com/weigou-baidu-com/398d446c944ab5e67a74a1eac3122e48.png
', 'renqirexiao'=>'http://bs.baidu.com/weigou-baidu-com/39cb097249167b48bcb66da409079ccb.png', 'dijiayouxuan'=>'http://bs.baidu.com/weigou-baidu-com/16e3a74d752e1c858a0b256a21047226.png', 'jingxuantehui'=>'http://bs.baidu.com/weigou-baidu-com/04bc37839bd189f96214839649b6aece.png']%}
<style>
    .ecl-ec-spu-showurl{font-size:13px;margin-top:4px;}
    .ecl-ec-spu{font-size:12px;margin-top:6px;}    
    .ecl-ec-spu-item a{outline:none;}
    .ecl-ec-spu-items .ecl-ec-spu-item{float:left;height:auto;border:none;margin-right:11px;}.ecl-ec-spu-items .ecl-ec-spu-item.no-margin{margin:0;}
    .ecl-ec-spu-item .ecl-ec-spu-item-main{position:relative;display:block;width:121px;height:91px;}
    .ecl-ec-spu-item .ecl-ec-spu-main-img{width:121px;height:91px;float:left;}
    .ecl-ec-spu-item .ecl-ec-spu-item-main .ecl-ec-spu-desc{z-index:1;}
    .ecl-ec-spu-item .ecl-ec-spu-item-main .ecl-ec-spu-desc-bg,.ecl-ec-spu-item .ecl-ec-spu-item-main .ecl-ec-spu-desc{position:absolute;bottom:0;left:0;width:121px;height:16px;color:#FFF;text-align:center;}
    .ecl-ec-spu-item .ecl-ec-spu-item-main .ecl-ec-spu-desc-bg{background-color:#000;color:#000;opacity:0.6;filter:alpha(opacity=60);}
    .ecl-ec-spu-item .ecl-ec-spu-title{display:block;width:121px;margin:8px auto 0;text-align:center;height:16px;text-overflow:ellipsis;white-space:nowrap;overflow:hidden;float:left;}    
    .ecl-ec-spu-item .ecl-ec-spu-title span{color:#c00;}
</style>

<h3 class="t" id="ecl-ec-spu-common-title">
    {%assign var="weigou_title" value=($extData.OriginQuery|cat:"（共"|cat:$tplData.totalCount|cat:"款"|cat:$extData.OriginQuery|cat:"） 商家报价 参数 评论 百度微购") %}
    <a class="ecl-ec-spu-header" href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" title="{%$weigou_title|escape:'html'%}" target="_blank">{%$weigou_title|escape:'html'|limitlen:90|highlight:0%}</a>
</h3>
<div id="ecl-ec-spu-common">
    <div class="c-border ecl-ec-spu">
        {%if $tabs|@count > 0%}
        <!-- tabs -->
        <ul class="ecl-ec-spu-items c-clearfix">
            {%foreach from=$tabs key=index item=tab name=tab_list%}            
            {%assign var="param" value={%call name=fn_weigou_args internal_name=$index%}%}
            {%assign var="query_word" value="<span>"|cat:$extData.OriginQuery|cat:"</span>"%}
            {%assign var="tab_name" value={%call name=custom_title internal_name=$index word=$query_word%}%}
            {%assign var="tab_title" value={%call name=custom_title internal_name=$index word=$extData.OriginQuery%}%}
            {%assign var="target_url" value="http://weigou.baidu.com/search?q="|cat:$extData.OriginQuery|cat:$param|cat:"#comment-tab"%}
            
            <li class="ecl-ec-spu-item {%if $smarty.foreach.tab_list.last%}no-margin{%/if%}" data-name="{%$tab.internal_name|escape:'html'%}">
                <a href="{%$target_url|escape:'html'%}" target="_blank" class="ecl-ec-spu-item-main c-clearfix" title="{%$tab.desc|escape:'html'%}">
                    <img class="ecl-ec-spu-main-img" src="{%$images[$index]|escape:'html'%}" alt="{%$tab_title|escape:'html'%}"/>
                    <span class="ecl-ec-spu-desc">{%$tab.desc|escape:'html'%}</span>
					<b class="ecl-ec-spu-desc-bg">{%$tab.desc|escape:'html'%}</b>                    
                </a>
                <a class="ecl-ec-spu-title" href="{%$target_url|escape:'html'%}" title="{%$tab_title|escape:'html'%}" target="_blank">{%$tab_name|escape:'none'%}</a>
            </li>           
            {%/foreach%}           
        </ul>
        {%/if%}
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
    A.init(function(){
        var bds = window.bds = window.bds || {};
        bds.ecom = bds.ecom || {};
        bds.ecom.data = {
            'zhixin': {
                'tpl': 'ecl_ec_spu_common_a',
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

        $(document).ready(function() {
            loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/spu_common_test-1.2.js');  
        });
    });
</script>
{%/if%}
{%/block%}