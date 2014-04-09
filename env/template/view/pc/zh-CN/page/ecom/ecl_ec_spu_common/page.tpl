{%extends 'c_base.tpl'%}

{%block name="title"%}
	{%strip%}
    <h3 class="t ecl-ec-title" id="ecl-ec-title">
        {%assign var="weigou_title" value=($extData.OriginQuery|cat:"（共"|cat:$tplData.totalCount|cat:"款"|cat:$extData.OriginQuery|cat:"） 商家报价 参数 评论 百度微购") %}
        <a class="ecl-ec-spu-header" href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" title="{%$weigou_title|escape:'html'%}" target="_blank">{%$weigou_title|escape:'html'|limitlen:90|highlight:0%}</a>
    </h3>
	{%/strip%}
{%/block%}

{%block name='foot'%}
    {%strip%}
    <p class="c-showurl c-gap-top-small">
        weigou.baidu.com
        <a href="http://baozhang.baidu.com/guarantee/" class="c-icon c-icon-bao c-gap-icon-left-small" target="_blank"></a>
    </p>
    {%/strip%}
{%/block%}

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
{%fe_fn_c_css css='btn'%}
{%fe_fn_c_css css='img'%}
.ecl-ec-spu-items a{outline:0;}.ecl-ec-spu-item-main{position:relative;}.ecl-ec-spu-desc,.ecl-ec-spu-desc-bg{position:absolute;bottom:0;left:0;height:1.23em;color:#FFF;text-align:center;}.ecl-ec-spu-desc{z-index:1;}.ecl-ec-spu-desc-bg{background-color:#000;width:9.23em;color:#000;opacity:.6;filter:alpha(opacity=60);}.ecl-ec-spu-title{text-align:center;height:1.38em;text-overflow:ellipsis;white-space:nowrap;overflow:hidden;}.ecl-ec-spu-title span{color:#c00;}#ecl-ec-title{line-height:2;}
</style>
{%strip%}
<div id="ecl-ec-spu-common" class="ecl-ec-spu-common c-container">
    <div class="c-border ecl-ec-spu">
        {%if $tabs|@count > 0%}
        <!-- tabs -->
        <ul class="ecl-ec-spu-items c-row">
            {%foreach from=$tabs key=index item=tab name=tab_list%}            
            {%assign var="param" value={%call name=fn_weigou_args internal_name=$index%}%}
            {%assign var="query_word" value="<span>"|cat:$extData.OriginQuery|cat:"</span>"%}
            {%assign var="tab_name" value={%call name=custom_title internal_name=$index word=$query_word%}%}
            {%assign var="tab_title" value={%call name=custom_title internal_name=$index word=$extData.OriginQuery%}%}
            {%assign var="target_url" value="http://weigou.baidu.com/search?q="|cat:$extData.OriginQuery|cat:$param|cat:"#comment-tab"%}
            
            <li class="ecl-ec-spu-item c-span6 {%if $smarty.foreach.tab_list.last%}c-span-last{%/if%}" data-name="{%$tab.internal_name|escape:'html'%}">
                <a href="{%$target_url|escape:'html'%}" target="_blank" class="ecl-ec-spu-item-main c-span6  c-span-last" title="{%$tab.desc|escape:'html'%}">
                    <img class="ecl-ec-spu-main-img c-img c-img6" src="{%$images[$index]|escape:'html'%}" alt="{%$tab_title|escape:'html'%}"/>
                    <span class="ecl-ec-spu-desc c-span6 c-span-last">{%$tab.desc|escape:'html'%}</span>
					<b class="ecl-ec-spu-desc-bg c-span-last">{%$tab.desc|escape:'html'%}</b>                    
                </a>
                <a class="ecl-ec-spu-title c-gap-top-small c-span6 c-span-last" href="{%$target_url|escape:'html'%}" title="{%$tab_title|escape:'html'%}" target="_blank">{%$tab_name|escape:'none'%}</a>
            </li>           
            {%/foreach%}           
        </ul>
        {%/if%}
    </div>
</div>
{%/strip%}
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
                'tpl': 'ecl_ec_spu_common',
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
        	loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/spu_common_test-1.5.js');
        });
    });
</script>
{%/if%}
{%/block%}