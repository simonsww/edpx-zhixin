{%extends 'base_div.tpl'%}
{%block name='content'%}

{%if $tplData.StdStl==64%}
<style type="text/css">
    .ecl-ec-weigou{margin-top:8px;font-size:12px;width:540px;}.ecl-ec-weigou-nav-buy{font-size:12px;margin-top:8px;}.ecl-ec-weigou-nav-buy .query-word{color:#C00;}.ecl-ec-weigou-nav-buy div{margin-bottom:3px;}.ecl-weigou-view-container .ecl-weigou-filters{_margin-bottom:-3px;margin-top:-8px;}.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-wrapper{width:465px;float:left;}.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-wrapper a{display:inline-block;cursor:pointer;text-decoration:none;color:#00c;padding:0 5px;border:1px solid #fff;outline:none;}.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-wrapper a:hover{text-decoration:underline;}.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-wrapper span{display:inline-block;}.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-wrapper .selected{background:#388bff;color:#fff;}
.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-wrapper a,.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-wrapper span{height:18px;line-height:18px;_line-height:20px;margin:6px 0 0;float:left;white-space:nowrap;}.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-name{width:58px;overflow:hidden;text-align:left;float:left;font-weight:bold;}.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-more{float:right;width:42px;overflow:hidden;margin-top:9px;_display:inline;_zoom:1;cursor:pointer;}.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-more span{float:left;}.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-more b{background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/baby_spu_common.png') no-repeat 0 0;float:left;width:7px;height:4px;overflow:hidden;margin:4px 0 0 3px;}
.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-more .ecl-weigou-collapse{display:none;}.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-more-expanded .ecl-weigou-expand{display:none;}.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-more-expanded .ecl-weigou-collapse{display:block;}.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-more-expanded b{background: url('http://www.baidu.com/cache/biz/ecom/weigou/card/baby_spu_common.png') no-repeat 0 -5px;}.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-line{position:relative;background:#f7f7f7;overflow:hidden;visibility:hidden;}.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-items-wrapper{overflow:hidden;height:27px;float:left;width:395px;}.ecl-weigou-view-container .ecl-weigou-filters .ecl-weigou-filter-items{padding-bottom:6px;}
.ecl-weigou-view-container .ecl-ec-spu-items{margin-top:10px;}.ecl-weigou-view-container .ecl-ec-spu-items .ecl-ec-spu-item{float:left;height:auto;border:0;margin-right:11px;}.ecl-weigou-view-container .ecl-ec-spu-items .ecl-ec-spu-item a{outline:0;}.ecl-weigou-view-container .ecl-ec-spu-items .ecl-ec-spu-item.no-margin{margin:0;}.ecl-weigou-view-container .ecl-ec-spu-items .ecl-ec-spu-item .ecl-ec-spu-item-main{position:relative;display:block;width:121px;height:91px;}.ecl-weigou-view-container .ecl-ec-spu-items .ecl-ec-spu-item .ecl-ec-spu-item-main .ecl-ec-spu-main-img{width:121px;height:91px;float:left;}.ecl-weigou-view-container .ecl-ec-spu-items .ecl-ec-spu-item .ecl-ec-spu-item-main .ecl-ec-spu-desc,.ecl-weigou-view-container .ecl-ec-spu-items .ecl-ec-spu-item .ecl-ec-spu-item-main .ecl-ec-spu-desc-bg{position:absolute;bottom:0;left:0;width:121px;height:16px;color:#FFF;text-align:center;}
.ecl-weigou-view-container .ecl-ec-spu-items .ecl-ec-spu-item .ecl-ec-spu-item-main .ecl-ec-spu-desc{z-index:1;}.ecl-weigou-view-container .ecl-ec-spu-items .ecl-ec-spu-item .ecl-ec-spu-item-main .ecl-ec-spu-desc-bg{background-color:#000;color:#000;opacity:.6;filter:alpha(opacity=60);}.ecl-weigou-view-container .ecl-ec-spu-items .ecl-ec-spu-item .ecl-ec-spu-title{display:block;width:121px;margin:8px auto 0;text-align:center;height:16px;text-overflow:ellipsis;white-space:nowrap;overflow:hidden;float:left;text-decoration:none;}.ecl-weigou-view-container .ecl-ec-spu-items .ecl-ec-spu-item .ecl-ec-spu-title span{color:#C00;}
</style>
{%function name=get_filter_url id='id' option='option'%}http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}{%if $id==1000001%}&merchant_id={%$option.id|escape:'url'%}{%else%}{%if isset($option.min)%}&price_min={%$option.min|escape:'url'%}&price_max={%$option.max|escape:'url'%}{%else%}&option{%$id|escape:'url'%}={%$option.id|escape:'url'%}{%/if%}{%/if%}{%/function%}

{%assign var="tabs" value=[
'category1'=>['title'=>'低价也能买正品', 'img'=>'http://bs.baidu.com/weigou-baidu-com/9aac254fb16bac73c0163b57f2f1bf6a.png', 'target'=>'http://weigou.baidu.com/search?q='|cat:{%$extData.OriginQuery|escape:"url"%}|cat:'&sort_type=price_asc','desc'=>'低价精选'],
'category2'=>['title'=>'新手妈妈好选择', 'img'=>'http://bs.baidu.com/weigou-baidu-com/9e13750279b09ecfbde0297a324863f1.png', 'target'=>'http://weigou.baidu.com/search?q='|cat:{%$extData.OriginQuery|escape:"url"%}|cat:'&sort_type=rating_desc','desc'=>'最佳口碑'],
'category3'=>['title'=>'人气商品惊爆价', 'img'=>'http://bs.baidu.com/weigou-baidu-com/38b0d0d9e0f8cd90ba67b5daf025f9ca.png', 'target'=>'http://weigou.baidu.com/search?q='|cat:{%$extData.OriginQuery|escape:"url"%}|cat:'&sort_type=comment_num_desc','desc'=>'人气热销'],
'category4'=>['title'=>'更新更好更安心', 'img'=>'http://bs.baidu.com/weigou-baidu-com/c0a23c7f7cd64509cf3f5800458f9914.png', 'target'=>'http://weigou.baidu.com/search?q='|cat:{%$extData.OriginQuery|escape:"url"%}|cat:'&sort_type=market_time_desc','desc'=>'新品上市']
]%}
<h3 id="ecl-ec-title" class="t">
    {%assign var="weigou_title" value=($extData.OriginQuery|cat:"<共"|cat:$tplData.totalCount|cat:"款>正品低价有保障"|cat:$extData.OriginQuery|cat:"　尽在百度微购") %}
    <a href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" title="{%$weigou_title|escape:'html'%}" target="_blank">{%$weigou_title|escape:'html'|limitlen:70|highlight:0%}</a>
</h3>

<div id="ecl-weigou-view-container" class="ecl-weigou-pc ecl-ec-weigou">
    <div id="ecl-weigou-view-container-placeholder">
        <div class="ecl-weigou-view-container">
            <div class="ecl-weigou-view c-border" id="ecl-weigou-view-placeholder">
                <div class="ecl-weigou-list">
                    <div class="ecl-weigou-filters" style="{%if $tplData.options && $tplData.options|@count > 0%}{%else%}display:none{%/if%}">
                        {%assign var="filter_count" value=0%}
                        {%foreach from=$tplData.options key=index item=option%}
                        {%assign var="filter_count" value=($filter_count+1)%}
                        {%if $filter_count > 2%}
                        {%break%}
                        {%/if%}
                        {%if $option.items|@count <= 1%}{%continue%}{%/if%}
                        <div class="ecl-weigou-filter c-clearfix">
                            <div class="ecl-weigou-filter-wrapper">
                                <span class="ecl-weigou-filter-name">{%$option.name|escape:'html'%}：</span>
                                <div class="ecl-weigou-filter-items-wrapper">
                                    <div class="ecl-weigou-filter-items c-clearfix" data-id="{%$option.id|escape:'html'%}">                                    
                                        {%foreach $option.items as $opt%}                                       
                                        <a class="ecl-weigou-filter-link" target="_blank" href="{%get_filter_url id=$option.id option=$opt%}">{%$opt.name|escape:'html'%}</a>
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
                    </div>
					<!--content-->
					<ul class="ecl-ec-spu-items c-clearfix">
                        {%foreach from=$tabs key=index item=tab name=tab_list%}
                        <li class="ecl-ec-spu-item {%if $smarty.foreach.tab_list.last%}no-margin{%/if%} OP_LOG_LINK" data-name="{%$tab.title|escape:'html'%}">
                            <a href="{%$tab.target|escape:'html'%}" target="_blank" class="ecl-ec-spu-item-main c-clearfix" title="{%$tab.desc|escape:'html'%}">
                                <img class="ecl-ec-spu-main-img" src="{%$tab.img|escape:'html'%}" alt="{%$tab.title|escape:'html'%}"/>
                                <span class="ecl-ec-spu-desc">{%$tab.desc|escape:'html'%}</span>
                                <b class="ecl-ec-spu-desc-bg">{%$tab.desc|escape:'html'%}</b>                    
                            </a>
                            <a class="ecl-ec-spu-title" href="{%$tab.target|escape:'html'%}" title="{%$tab.title|escape:'html'%}" target="_blank">{%$tab.title|escape:'none'%}</a>
                        </li>           
                        {%/foreach%}           
                    </ul>                    
                </div>
            </div>
        </div>
    </div>
</div>    
  
<div class="ecl-ec-weigou-nav-buy OP_LOG_LINK" data-click="{fm:'beha'}">
    <div>
        <a id="ecl-weigou-nav-buy-transfer" href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" target="_blank">{%$tplData.totalCount|escape:'html'%}款与<span class="query-word">{%$extData.OriginQuery|escape:'html'%}</span>相关的商品</a>
    </div>
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
                'tpl': 'ecl_ec_baby_spu_common',                
                'weigou_domain': '{%$tplData.weigou_domain%}',               
                'logData': {
                    'cat_ids': '{%implode(',', $cat_ids)%}',
                    'cat_names': '{%implode(',', $cat_names)%}'
                }
            }
        };
                    
       
                    
        (function(){  
             $('.ecl-weigou-filter .ecl-weigou-filter-items').each(function(index, elem) {
                var $elem = $(elem);
                if(elem.offsetHeight>34) {
                     $('.ecl-weigou-filter-more', $elem.parents('.ecl-weigou-filter')).show();   
                }  
            }); 
                    
            var expanded = "ecl-weigou-filter-more-expanded";    
            $(".ecl-weigou-filter-more").bind('click', function(e) {            
                var $wrapper = $('.ecl-weigou-filter-items-wrapper', $(this).parent());
                if($(this).hasClass(expanded)) {
                    $(this).removeClass(expanded);
                    $wrapper[0].style.height="";
                    $wrapper[0].style.overflow="";
                } else {
                    $(this).addClass(expanded);
                    $wrapper[0].style.height="auto";
                    $wrapper[0].style.overflow="visible";
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
            loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/baby_spu_common-1.0.js');         	
        });
    });
</script>
{%/if%}
{%/block%}