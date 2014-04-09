{%extends 'c_base.tpl'%}

{%block name="title"%}
	{%strip%}
    <h3 id="ecl-ec-title" class="t">
        {%assign var="weigou_title" value=($extData.OriginQuery|cat:"（共"|cat:$tplData.totalCount|cat:"款商品）无需注册_货到付款_私密购物_百度微购") %}
        <a href="{%$tplData.target|escape:'html'%}" title="{%$weigou_title|escape:'html'%}" target="_blank">{%$weigou_title|escape:'html'|limitlen:66|highlight:0%}</a>
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

{%if $tplData.StdStl==87%}
<style type="text/css">
{%fe_fn_c_css css='img'%}
{%fe_fn_c_css css='btn'%}
.ecl-ec-spu-items a{outline:0;}.ecl-ec-spu-item-main{position:relative;}.ecl-ec-spu-desc,.ecl-ec-spu-desc-bg{position:absolute;bottom:0;left:0;height:1.23em;color:#FFF;text-align:center;}.ecl-ec-spu-desc{z-index:1;}.ecl-ec-spu-desc-bg{background-color:#000;width:9.23em;color:#000;opacity:.6;filter:alpha(opacity=60);}.ecl-ec-spu-title{text-align:center;height:1.38em;text-overflow:ellipsis;white-space:nowrap;overflow:hidden;}.ecl-ec-spu-title span{color:#c00;}#ecl-ec-title{line-height:2;}
</style>

{%strip%}
{%assign var="tabs" value=$tplData.tabs%}
<div id="ecl-ec-view-container" class="c-container">    
    <div class="ecl-ec-view c-border" id="ecl-ec-view-placeholder">
        <div class="ecl-ec-list">
            <!--content-->
            <ul class="ecl-ec-spu-items c-row">
                {%foreach from=$tabs key=index item=tab name=tab_list%}
                <li class="ecl-ec-spu-item c-span6 {%if $smarty.foreach.tab_list.last%}c-span-last{%/if%} OP_LOG_LINK" data-name="{%$tab.title|escape:'html'%}">
                    <a href="{%$tab.target|escape:'html'%}" target="_blank" class="ecl-ec-spu-item-main c-span6" title="{%$tab.desc|escape:'html'%}">
                        <img class="ecl-ec-spu-main-img c-img c-img6" src="{%$tab.img|escape:'html'%}" alt="{%$tab.title|escape:'html'%}"/>
                        <span class="ecl-ec-spu-desc c-span6 c-span-last">{%$tab.desc|escape:'html'%}</span>
                        <b class="ecl-ec-spu-desc-bg c-span-last">{%$tab.desc|escape:'html'%}</b>                    
                    </a>
                    <a class="ecl-ec-spu-title c-gap-top-small c-span6 c-span-last" href="{%$tab.target|escape:'html'%}" title="{%$tab.title|escape:'html'%}" target="_blank">{%$tab.title|escape:'none'%}</a>
                </li>
                {%/foreach%}
            </ul>
        </div>            
    </div>
   {%if !empty($tplData.promo)%} 
   <div class="ecl-ec-nav-buy c-gap-top-small OP_LOG_LINK">        
        <a id="ecl-ec-nav-buy-transfer" href=" {%$tplData.promo.target|escape:'html'%}" target="_blank">
            {%$tplData.promo.title|escape:'html'%}
        </a> 
    </div> 
    {%/if%}
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
                'tpl': 'ecl_ec_adult_spu_common',                
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
           loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/adult_spu_common-1.1.js');
       });
    });
</script>
{%/if%}
{%/block%}