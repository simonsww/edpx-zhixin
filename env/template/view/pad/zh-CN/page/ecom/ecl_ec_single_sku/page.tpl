{%extends 'c_base.tpl'%}
{%block name='content'%}


{%if $tplData.StdStl == 1%}

<style type="text/css">

/*引入btn控件*/
    {%fe_fn_c_css css='btn'%} {%fe_fn_c_css css='img'%}   #ecl-ec-title{line-height:2;}.ecl-ec-gallery-list{width:198px;overflow:hidden;height:38px;float:left;position:relative;}.ecl-ec-gallery-left-btn{cursor:pointer;position:absolute;top:0;width:10px;height:38px;left:0;background: url('http://bs.baidu.com/weigou-baidu-com/7afa55cffef75b5ebeeee8af866527ab.png') no-repeat 0 0;}.ecl-ec-gallery-left-btn.disabled{cursor:default;background: url('http://bs.baidu.com/weigou-baidu-com/7afa55cffef75b5ebeeee8af866527ab.png') no-repeat -22px 0;}.ecl-ec-gallery-right-btn{cursor:pointer;position:absolute;top:0;width:10px;height:38px;right:0;background: url('http://bs.baidu.com/weigou-baidu-com/7afa55cffef75b5ebeeee8af866527ab.png') no-repeat -33px 0;}.ecl-ec-gallery-right-btn.disabled{curosr:default;background: url('http://bs.baidu.com/weigou-baidu-com/7afa55cffef75b5ebeeee8af866527ab.png') no-repeat -11px 0;}.ecl-ec-gallery-icon-wrapper{position:absolute;left:16px;width:5000px;overflow:hidden;_display:inline;height:38px;}.ecl-ec-gallery-icon-wrapper ul{height:38px;position:absolute;left:0;}
.ecl-ec-gallery-icon-wrapper ul li{float:left;cursor:pointer;width:36px;height:36px;border:1px solid #e1e1e1;overflow:hidden;}.ecl-ec-gallery-icon-wrapper ul li img{width:36px;height:36px;}.ecl-ec-gallery-icon-wrapper ul li.selected{border:1px solid #ff6767;}.ecl-ec-title{line-height:2;}.ecl-ec-detail{line-height:1.7;}.ecl-ec-detail-title{font-weight:bold;}.ecl-ec-detail-title-elli{overflow:hidden;height:3.4em;}.ecl-ec-detail-vendor-name{font-weight:bold;}.ecl-ec-detail-old-price{color:#666;}.ecl-ec-detail-price{font-weight:bold;color:#ff380f;}.ecl-ec-detail-image-container{margin-left:1.7em;}.ecl-ec-detail-attr{height:1.7em;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;}

</style>

{%function name="get_char_num" str=""%}
    {%strlen(preg_replace("/[\x{4e00}-\x{9fa5}]{1}/u", '**', $str))%}
{%/function%}

{%assign var="target" value=("http://weigou.baidu.com/item?id={%$tplData.id|escape:'html'%}")%}


<h3 id="ecl-ec-title" class="t">
    {%assign var="weigou_desc" value="报价_参数_评论_百度微购"%}
    {%assign var="query_word" value=$extData.OriginQuery%}
    {%assign var="query_chars" value={%call name=get_char_num str=$query_word%}%}
    {%assign var="total_count" value="1"%}
    
    {%if $query_chars <= 8%}
        {%assign var="weigou_title" value=($query_word|cat:"（共"|cat:$total_count|cat:"款"|cat:$query_word|cat:"）"|cat:$query_word|cat:$weigou_desc) %}
    {%elseif $query_chars > 8 and $query_chars < 14%}
        {%assign var="weigou_title" value=($query_word|cat:"（共"|cat:$total_count|cat:"款商品）"|cat:$query_word|cat:$weigou_desc) %}    
    {%else%}
        {%assign var="weigou_title" value=($query_word|cat:"（共"|cat:$total_count|cat:"款商品）"|cat:$weigou_desc) %}
    {%/if%}
    
    <a class="OP_LOG_LINK" href="{%$target|escape:'html'%}" title="{%$weigou_title|escape:'html'%}" target="_blank">{%$weigou_title|escape:'html'|limitlen:65|highlight:0%}</a>   
</h3>


<div id="ecl-ec-view-container" class="c-border">
    <!--是否是促销-->
    {%assign var="is_promo" value=($tplData.promotion_data.id != 0&&$tplData.promotion_data.type!=-1)%}
    {%assign var="product_name" value=(($is_promo && $tplData.promotion_data.title) ? $tplData.promotion_data.title : $tplData.name)%}
    <div class="c-row">
        <!--Gallery-->
        <div class="ecl-ec-gallery-container c-span10" id="ecl-ec-gallery-container">
            <div class="c-row c-gap-top ecl-ec-detail-image-container OP_LOG_IMG">
                <a href="{%$target|escape:'html'%}" title="{%$product_name|escape:'html'%}" target="_blank">
                    <img src="{%if $tplData.gallery%}{%$tplData.gallery[0]|escape:'html'%}{%/if%}" class="ecl-ec-detail-image c-img c-span8 c-span-last" alt="{%$product_name|escape:'html'%}"/>
                </a>
            </div>
            <!--Gallery list-->
            {%if $tplData.gallery|@count>1%}
            <div class="row c-gap-top">
                <div class="ecl-ec-gallery-list c-gap-top">
                    <div class="ecl-ec-gallery-icon-wrapper">
                        <ul>
                            {%foreach from=$tplData.icons key=index item=icon%}
                            <li class="c-gap-right-small {%if $index==0%} selected{%/if%}" data-src="{%$tplData.gallery[$index]|escape:'html'%}">
                                <img src="{%$icon|escape:'html'%}"/>
                            </li>
                            {%/foreach%}
                        </ul>
                    </div>
                    <div class="ecl-ec-gallery-left-btn disabled OP_LOG_BTN" data-click="{fm:'beha'}"></div>
                    <div class="ecl-ec-gallery-right-btn OP_LOG_BTN {%if $tplData.gallery|@count<5%}disabled{%/if%}" data-click="{fm:'beha'}"></div>
                </div>
            </div>
            {%/if%}
        </div>
        
        <!--右侧的detail-->
        <div class="ecl-ec-detail c-span14 c-span-last">
            <!--判断字符的个数-->
            {%assign var="title_num" value={%call name=get_char_num str=$product_name%}%}
            {%if $title_num > 37%}
                {%assign var="need_elli" value="ecl-ec-detail-title-elli"%}
            {%/if%}
            <div class="ecl-ec-detail-title {%$need_elli|escape:'html'%}">
                <a class="OP_LOG_LINK" href="{%$target|escape:'html'%}" target="_blank" title="{%$product_name|escape:'html'%}">{%$product_name|escape:'html'%}</a>
            </div>
            <div class="c-gap-top-small">
                {%if $is_promo%}
                    {%if $tplData.price >= $tplData.promotion_data.price%}
                <span>销&nbsp;售&nbsp;价：</span>
                <span class="ecl-ec-detail-price">&yen;{%$tplData.promotion_data.price|string_format:"%.2f"%}</span>
                    {%else%}
                        {%assign var="noPrice" value=1%}
                    {%/if%}
                {%else%}
                <span>销&nbsp;售&nbsp;价：</span>
                <span class="ecl-ec-detail-price">&yen;{%$tplData.price|string_format:"%.2f"%}</span>
                {%/if%}
                
                {%if $tplData.original_price && $tplData.original_price != 0 && $tplData.original_price > $tplData.price%}
                    {%if $noPrice == 1%}
                <span class="ecl-ec-detail-price">市&nbsp;场&nbsp;价：&yen;{%$tplData.original_price|string_format:"%.2f"%}</span>                
                    {%else%}
                <s class="c-gap-left-small ecl-ec-detail-old-price">市场价：&yen;{%$tplData.original_price|string_format:"%.2f"%}</s>
                    {%/if%}                
                {%/if%}
            </div>
            <!--特色服务-->
            <div class="ecl-ec-detail-pay-method">
                <span>特色服务：</span>
                {%if array_search(105, $tplData.payMethod)!==FALSE && array_search(106, $tplData.payMethod)!==FALSE%}
                <span class="ecl-ec-detail-pay-method c-text c-text-important">在线支付</span> 
                <span class="ecl-ec-detail-pay-method c-text c-text-important">货到付款</span>
                {%elseif array_search(105, $tplData.payMethod)!==FALSE%}
                <span class="ecl-ec-detail-pay-method c-text c-text-important">货到付款</span>
                {%elseif array_search(106, $tplData.payMethod)!==FALSE%}
                <span class="ecl-ec-detail-pay-method c-text c-text-important">在线支付</span>
                {%else%}<span class="ecl-ec-detail-pay-method c-text c-text-important">货到付款</span>
                {%/if%}
            </div>
            
            <!--发货商家-->
            <div class="ecl-ec-detail-vendor">
                <span>发货商家：</span><span class="ecl-ec-detail-vendor-name">{%$tplData.vendor|escape:'html'%}</span> 
            </div>
            
            <!--详细参数-->
            {%assign var="attr_count" value=($tplData.attributes|@count)%}
            {%if $attr_count > 0%}
            <ul class="ecl-ec-detail-attrs c-gap-top-small c-row">
                {%function name="no_margin" index=""%}
                    {%if $index%2 != 0%}c-span-last{%/if%}
                {%/function%}
                {%foreach from=$tplData.attributes item=attr name=getAttr%}
                    {%assign var="index" value=($smarty.foreach.getAttr.index)%}
                <li class="ecl-ec-detail-attr c-span7 {%call name=no_margin index=$index%}" title="{%$attr.value|escape:'html'%}">
                    <span>{%$attr.key|escape:'html'%}：</span><span>{%$attr.value|escape:'html'%}</span>
                </li>
                    {%if $index == 2%}
                        {%break%}
                    {%/if%}
                {%/foreach%}
                
                {%if $attr_count > 3%}
                <li class="c-span7 c-span-last">
                    <a class="OP_LOG_LINK ecl-ec-detail-attr-more" href="{%$target|escape:'html'%}#parameter-tab" target="_blank" 
                    title="详细参数">详细参数&gt;&gt;</a>
                </li>
                {%/if%}
            </ul>
            {%/if%}
            
            <!--评价-->
            <div class="c-row">
                {%if $tplData.comment_num > 0%}
                <a class="c-span7 OP_LOG_LINK ecl-ec-detail-comment" target="_blank" href="{%$target|escape:'html'%}#comment-tab" 
                title="用户评价">用户评价({%$tplData.comment_num%})</a>
                {%/if%}
                <a class="c-span7 c-span-last OP_LOG_LINK ecl-ec-detail-desc" target="_blank" 
                href="{%$target|escape:'html'%}#description-tab" title="商品详情">商品详情&gt;&gt;</a>
            </div>
            
            <!--购买按钮-->
            <div class="c-gap-top c-row">
                <a class="c-btn c-btn-large c-btn-primary OP_LOG_LINK ecl-ec-detail-buy" href="{%$target|escape:'html'%}" target="_blank">我要购买</a>
            </div>
        </div>
    </div>
</div>

<div class="ecl-ec-nav-buy c-gap-top-small">
    <span class="c-showurl">weigou.baidu.com</span>
    <a href="http://baozhang.baidu.com/guarantee/" class="c-icon c-icon-bao OP-LOG-LINK" target="_blank"></a>
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
                'tpl': 'ecl_ec_single_sku',
                'region': '{%$tplData.address%}',
                'lo_region': '{%$tplData.lo_address%}',
                'jd_region': '{%$tplData.jd_address%}',
                'gb_region': '{%$tplData.gb_address%}',
                'localcode': '{%$tplData.localcode%}',
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
        	loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/single_sku-1.1.js');
        });
    });
</script>
{%/if%}
{%/block%}