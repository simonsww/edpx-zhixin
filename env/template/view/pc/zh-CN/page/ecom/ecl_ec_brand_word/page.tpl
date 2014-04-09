{%extends 'c_base.tpl'%}

{%block name="title"%}
    {%strip%}
    {%assign var="total_count" value="{%rand(1000, 2000)%}"%}
    {%if !empty($tplData.totalCount)%}
        {%$total_count=$tplData.totalCount%}
    {%/if%}
    <h3 id="ecl-ec-title" class="t">
        {%assign var="weigou_title" value=($extData.OriginQuery|cat:" 大全(共"|cat:$total_count|cat:"款商品) 最热"|cat:$extData.OriginQuery|cat:"_最全"|cat:$extData.OriginQuery)%}
        <a href="{%$tplData.target|escape:'html'%}" title="{%$weigou_title|escape:'html'%}" target="_blank">{%$weigou_title|escape:'html'|limitlen:66|highlight:0%}</a>
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

{%*用来产生对于brand list,包括左边的图片及右边的详情说明内容*%}
{%block name="brand"%}
    {%assign var="brand" value= $tplData.brand%}
    {%assign var="brand_prefix" value="ecl-ec-brand"%}
    {%assign var="img_container_width" value="c-span6"%}
    {%assign var="img_width" value="c-img6"%}
    {%assign var="content_width" value="c-span18"%}
    {%assign var="detail_width" value="c-span15"%}
    {%****************************************
      * 用来计算当是大图片时的相应的内容宽度
    *****************************************%}
    {%if $brand.size == 1%}
        {%assign var="img_container_width" value="c-span12"%}
        {%assign var="img_width" value="c-img12"%}
        {%assign var="content_width" value="c-span12"%}
        {%assign var="detail_width" value="c-span9"%}
    {%/if%}
    
    {%****************************************
      * @name gen_brand_class
      * @desc 用来产生所有的brand的前缀class
      * @param {string} postfix,后缀的内容
    ******************************************%}
    {%function name="gen_brand_class" postfix=''%}{%strip%}
        {%$brand_prefix|cat:"-"|cat:$postfix|escape:'html'%}
        {%/strip%}
    {%/function%}
    {%strip%}
    <div class="{%$brand_prefix|escape:'html'%} c-row c-gap-bottom">
        <a href="{%$brand.target|escape:'html'%}" target="_blank" class="{%gen_brand_class postfix="img"%} {%$img_container_width|escape:'html'%} c-gap-right">
            <img class="c-img {%$img_width|escape:'html'%}" src="{%$brand.img|escape:'html'%}"/>
        </a>
        <dl class="{%gen_brand_class postfix="list"%} {%$content_width|escape:'html'%} c-row c-span-last">
            {%foreach from=$brand.desc key=index item=desc_item name=brand_desc_list%}
                <dt class="{%gen_brand_class postfix="list-item-title"%} c-span3">{%$desc_item.key|escape:'html'%}: </dt>
            <dd class="{%gen_brand_class postfix="list-item-detail"%} {%$detail_width|escape:'html'%} c-span-last c-row">
                    {%foreach from=$desc_item.values key=index item=desc_value name=desc_detail%}
                        {%if !empty($desc_value.target)%}
                    <a class="c-gap-right" href="{%$desc_value.target|escape:'html'%}" target="_blank">{%$desc_value.value|escape:'html'%}</a>
                        {%else%}
                            {%$desc_value.value|escape:'html'%}
                        {%/if%}
                    {%/foreach%}
                </dd>
            {%/foreach%}
        </dl>
    </div>
    {%/strip%}
{%/block%}

{%*用来产生spu list,包括下边的图片及标题内容*%}
{%block name="spu_list"%}
    {%assign var="tabs" value=$tplData.tabs%}
    {%strip%}
    <div class="ecl-ec-list c-gap-top-small">
        <ul class="ecl-ec-spu-items c-row">
            {%foreach from=$tabs key=index item=tab name=tab_list%}
            <li class="ecl-ec-spu-item c-span6 {%if $smarty.foreach.tab_list.last%}c-span-last{%/if%} OP_LOG_LINK" data-name="{%$tab.title|escape:'html'%}">
                <a href="{%$tab.target|escape:'html'%}" target="_blank" class="ecl-ec-spu-item-main c-span6 c-span-last" title="{%$tab.desc|escape:'html'%}">
                    <img class="ecl-ec-spu-main-img c-img c-img6" src="{%$tab.img|escape:'html'%}" alt="{%$tab.title|escape:'html'%}"/>
                    <span class="ecl-ec-spu-desc c-span6 c-span-last">{%$tab.desc|escape:'html'%}</span>
                    <b class="ecl-ec-spu-desc-bg c-span-last">{%$tab.desc|escape:'html'%}</b> 
                </a>
                <a class="ecl-ec-spu-title c-gap-top-small c-span6 c-span-last" href="{%$tab.target|escape:'html'%}" title="{%$tab.title|escape:'html'%}" target="_blank">{%$tab.title|escape:'none'%}</a>
            </li>
            {%/foreach%}
        </ul>
    </div>
    {%/strip%}
{%/block%}

{*css放在这里*}
{%block name="style"%}
    {%strip%}
    <style type="text/css">
    {%fe_fn_c_css css='btn'%}
    {%fe_fn_c_css css='img'%}
    #ecl-ec-title{line-height:2;}
    .ecl-ec-spu-items a{outline:0;}.ecl-ec-spu-item-main{position:relative;}.ecl-ec-spu-desc,.ecl-ec-spu-desc-bg{position:absolute;bottom:0;left:0;height:1.23em;color:#FFF;text-align:center;}.ecl-ec-spu-desc{z-index:1;}.ecl-ec-spu-desc-bg{background-color:#000;width:9.23em;color:#000;opacity:.6;filter:alpha(opacity=60);}.ecl-ec-spu-title{text-align:center;height:1.38em;text-overflow:ellipsis;white-space:nowrap;overflow:hidden;}.ecl-ec-spu-title span{color:#c00;}.ecl-ec-brand{overflow:auto;zoom:1;}.ecl-ec-brand-img img{height:121px;}.ecl-ec-brand-list-item-detail a{display:inline-block;*display:inline;zoom:1;}
    </style>
    {%/strip%}
{%/block%}

{%javascript放在这里%}
{%block name="script"%}
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
                    'tpl': 'ecl_ec_brand_word',
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
            loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/brand_word-1.0.js');
            });
        });
    </script>
{%/block%}

{%block name='content'%}
    {%if $tplData.StdStl==7%}
    {%strip%}
    {%block name="style"%}{%/block%}
    <div id="ecl-ec-view-container" class="c-container">    
        <div class="ecl-ec-view c-border" id="ecl-ec-view-placeholder">
            {%if !empty($tplData.brand)%}
            {%block name="brand"%}{%/block%}
            {%/if%}
            {%block name="spu_list"%}{%/block%}         
        </div>
    </div>

    {%block name="script"%}{%/block%}

    {%/strip%}
    {%/if%}
{%/block%}