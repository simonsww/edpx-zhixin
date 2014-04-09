{%extends 'base_div.tpl'%}

{%block name='content'%}

<style type="text/css">
	
    .ecl-tg{position:relative;width:600px;font-size:13px;font-family:Arial,"\5b8b\4f53"}.ecl-tg .ecl-tg-clear{zoom:1}.ecl-tg .ecl-tg-clear:after{display:block;content:"";visibility:hidden;font-size:0;clear:both}.ecl-tg .ecl-tg-hidden{display:none}.ecl-tg .ecl-tg-ml10{margin-left:10px}.ecl-tg .ecl-tg-title{margin:0;padding:0;font-size:16px;color:#00c;font-weight:normal;text-decoration:underline}.ecl-tg .ecl-tg-title em{color:#c00;font-style:normal;text-decoration:underline}
.ecl-tg .ecl-tg-content{position:relative;width:514px;border:1px solid #e3e3e3;padding:7px 10px 0;margin-top:10px;box-shadow:2px 2px 3px #ededed}.ecl-tg .ecl-tg-content a{text-decoration:none}.ecl-tg .ecl-tg-content .ecl-tg-link:hover{text-decoration:underline}.ecl-tg .ecl-tg-city-no-data{display:none;height:31px;width:534px;margin:0 0 26px 0;line-height:31px;text-align:center;background:#fff3c9;color:#666}.ecl-tg .ecl-tg-city-no-data a{color:#0909cc}.ecl-tg .ecl-tg-city-no-data a:hover{text-decoration:underline}
.ecl-tg .ecl-tg-filter-no-data{display:none;height:16px;line-height:16px;background:#fff3c9;color:#666;text-align:center;margin-top:11px;margin-bottom:15px}.ecl-tg .ecl-tg-content-city-no-data{padding:0;width:534px}.ecl-tg .ecl-tg-content-city-no-data .ecl-tg-city-no-data{display:block}.ecl-tg .ecl-tg-content-city-no-data .ecl-tg-list,.ecl-tg .ecl-tg-content-city-no-data .ecl-tg-link-more,.ecl-tg .ecl-tg-content-city-no-data .ecl-tg-filters{display:none}.ecl-tg .ecl-tg-content-filter-no-data .ecl-tg-filter-no-data{display:block}
.ecl-tg .ecl-tg-content-filter-no-data .ecl-tg-list,.ecl-tg .ecl-tg-content-filter-no-data .ecl-tg-link-more{display:none}.ecl-tg .ecl-tg-city-btn{position:absolute;right:10px;top:5px;height:22px;padding-right:23px;border:1px solid #999;border-right-color:#d9d9d9;border-bottom-color:#d9d9d9;background:#fff;z-index:10}.ecl-tg .ecl-tg-city-btn .ecl-tg-city-label{padding:0 8px;line-height:22px;color:#000;cursor:pointer}.ecl-tg .ecl-tg-city-btn .ecl-tg-city-arrow{position:absolute;right:0;top:0;width:22px;height:22px;border-left:1px solid #d9d9d9;cursor:pointer;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -282px 0}
.ecl-tg .ecl-tg-city-overlay{position:absolute;top:28px;right:10px;width:345px;padding:4px 9px;border:1px solid #e6e6e6;background-color:#fff;z-index:20}.ecl-tg .ecl-tg-city-overlay li{float:left;height:20px;padding:0 10px;cursor:pointer}.ecl-tg .ecl-tg-city-overlay .ecl-tg-city-tabs{line-height:20px;border-bottom:1px solid #7eb7fc;font-family:"\5b8b\4f53"}.ecl-tg .ecl-tg-city-overlay .ecl-tg-city-tabs .ecl-tg-city-tab-active{background:#7eb7fc}.ecl-tg .ecl-tg-city-overlay .ecl-tg-city-tabs .ecl-tg-city-tab-rm{margin-bottom:10px}
.ecl-tg .ecl-tg-city-overlay .ecl-tg-city-items{line-height:20px}.ecl-tg .ecl-tg-city-overlay .ecl-tg-city-items li{margin-top:10px;white-space:nowrap}.ecl-tg .ecl-tg-city-overlay .ecl-tg-city-items .ecl-tg-city-item-active{background:#f5f5f5}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-label{float:left;color:#000;font-weight:bold;width:50px;height:28px;line-height:28px}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-container{float:left;line-height:28px;color:#d8d8d8;height:28px;overflow:hidden;_width:408px}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-more{float:right;height:19px;line-height:19px;width:41px;padding-left:6px;margin-top:5px;text-align:left;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -112px;cursor:pointer}
.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-more:hover{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -72px}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-collapse-wrap{display:none}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-line .ecl-tg-filter-wrap{float:left;padding-right:18px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat right 6px}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-line .ecl-tg-filter-wrap span,.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-line .ecl-tg-filter-wrap a{padding:4px 5px}
.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-line .ecl-tg-filter-wrap span{color:#ccc}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-line .ecl-tg-filter-wrap a{text-decoration:none;background:#fff;color:#00c}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-line .ecl-tg-filter-wrap .ecl-tg-filter-link-active{background:#3b8bff;color:#fff}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-line .ecl-tg-filter-wrap-line-last{background:0;padding-right:8px}.ecl-tg .ecl-tg-filter-area-expand .ecl-tg-filter-container{height:auto}.ecl-tg .ecl-tg-filter-area-expand .ecl-tg-filter-more{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -132px}
.ecl-tg .ecl-tg-filter-area-expand .ecl-tg-filter-more:hover{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -92px}.ecl-tg .ecl-tg-filter-area-expand .ecl-tg-filter-expand-wrap{display:none}.ecl-tg .ecl-tg-filter-area-expand .ecl-tg-filter-collapse-wrap{display:inline}.ecl-tg .ecl-tg-filter-area-first{width:420px}.ecl-tg .ecl-tg-filter-area-first .ecl-tg-filter-container{_width:320px}.ecl-tg .ecl-tg-list{padding-top:11px}.ecl-tg .ecl-tg-link-more{padding:10px 0;text-align:center;font-family:"\5b8b\4f53";border-top:1px solid #e3e3e3}
.ecl-tg .ecl-tg-link-more a{color:#0909cc}.ecl-tg .ecl-tg-link-more a:hover{text-decoration:underline}.ecl-tg .ecl-tg-link-promotion{padding-top:10px}.ecl-tg .ecl-tg-link-promotion a{color:#0909cc;text-decoration:none}.ecl-tg .ecl-tg-link-promotion a:hover{text-decoration:underline}.ecl-tg .ecl-tg-link-tuan{padding-top:10px}.ecl-tg .ecl-tg-link-tuan a{text-decoration:none;color:#008000}.ecl-tg-detail-list .ecl-tg-item-num{padding:1px 0;width:14px;color:#fff;line-height:100%;font-size:12px;text-align:center;background:#8cb9f5;font-family:"\5b8b\4f53"}
.ecl-tg-detail-list .ecl-tg-item-num-first{background:#f54545}.ecl-tg-detail-list .ecl-tg-item-num-second{background:#ff8547}.ecl-tg-detail-list .ecl-tg-item-num-third{background:#ffac38}.ecl-tg-detail-list .ecl-tg-item-expand{padding-bottom:15px;padding-top:15px}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-img{position:relative;float:left;height:80px;width:121px}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-img .ecl-tg-item-num{display:none;position:absolute;left:0;top:0;cursor:pointer}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-img .ecl-tg-item-provider{position:absolute;left:0;bottom:0;width:121px;height:17px;line-height:17px;text-align:center;color:#fff;cursor:pointer;background:rgba(0,0,0,0.65);filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr='#a5000000',EndColorStr='#a5000000')}
.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content{position:relative;float:left;margin-left:10px;height:80px}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-title{width:210px;overflow:hidden;height:16px}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-title a{font-size:14px;color:#000;font-weight:bold;text-decoration:none}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-title a:hover{text-decoration:underline}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-desc{line-height:18px;height:36px;padding:6px 0 0;width:210px;overflow:hidden}
.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-desc a{color:#666;text-decoration:none}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-desc a:hover{text-decoration:underline}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-price{position:absolute;bottom:-1px;line-height:1}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-price-wrap{color:#ff7b13;font-weight:bold}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-oriprice-wrap{color:#666;text-decoration:line-through}
.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-gosee{float:right;position:relative;height:80px;width:90px}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-gosee .ecl-tg-item-gosee-link{position:absolute;right:0;bottom:26px;display:block;width:81px;height:28px;line-height:28px;text-align:center;background:#ff7b14;color:#fff;border:1px solid #ff7b14;border-bottom-color:#e67117;text-decoration:none;font-size:14px;font-family:"\5fae\8f6f\96c5\9ed1"}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-gosee .ecl-tg-item-gosee-link:hover{border-color:#e56400;box-shadow:1px 1px 2px #c5c5c5,0px 1px 0 #ff9547 inset}
.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-gosee .ecl-tg-item-gosee-link:active{border-color:#e56400;box-shadow:1px 1px 2px #d26510 inset}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-gosee .ecl-tg-item-purchased-wrap{position:absolute;right:0;bottom:-1px;color:#666;line-height:1}.ecl-tg-detail-list .ecl-tg-item-collapse{padding:15px 0;cursor:pointer}.ecl-tg-detail-list .ecl-tg-item-collapse .ecl-tg-item-num{float:left;margin-right:10px}.ecl-tg-detail-list .ecl-tg-item-collapse .ecl-tg-item-title{float:left;width:317px;height:16px;overflow:hidden}
.ecl-tg-detail-list .ecl-tg-item-collapse .ecl-tg-item-title a{text-decoration:none;color:#0909cc;line-height:16px}.ecl-tg-detail-list .ecl-tg-item-collapse .ecl-tg-item-price{float:right}.ecl-tg-detail-list .ecl-tg-item-collapse .ecl-tg-item-price .ecl-tg-item-price-wrap{color:#ff7b13;font-weight:bold}.ecl-tg-detail-list .ecl-tg-item-collapse .ecl-tg-item-price .ecl-tg-item-oriprice-wrap{color:#666;text-decoration:line-through;margin-left:12px}.ecl-tg-detail-list .ecl-tg-item-no-num .ecl-tg-item-num{display:none}
.ecl-tg-detail-list .ecl-tg-item-no-num .ecl-tg-item-collapse .ecl-tg-item-title{width:341px}.ecl-tg-detail-list .ecl-tg-item{border-bottom:1px solid #ecedec}.ecl-tg-detail-list .ecl-tg-item .ecl-tg-item-expand{display:none}.ecl-tg-detail-list .ecl-tg-item-active .ecl-tg-item-expand{display:block}.ecl-tg-detail-list .ecl-tg-item-active .ecl-tg-item-collapse{display:none}.ecl-tg-detail-list .ecl-tg-item-first .ecl-tg-item-collapse{padding-top:0}.ecl-tg-detail-list .ecl-tg-item-first .ecl-tg-item-expand{padding-top:0}
.ecl-tg-detail-list .ecl-tg-item-last{border-bottom:0}.ecl-tg-img-list .ecl-tg-item{position:relative;float:left;width:121px;height:140px;padding:0 0 15px 10px}.ecl-tg-img-list .ecl-tg-item-line-begin{padding-left:0}.ecl-tg-img-list .ecl-tg-item-img{position:relative;width:121px;height:80px;overflow:hidden}.ecl-tg-img-list .ecl-tg-item-img-mask{display:block;position:absolute;z-index:5;top:64px;left:0;width:121px;height:80px;background:rgba(0,0,0,0.65);filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr='#a5000000',EndColorStr='#a5000000')}
.ecl-tg-img-list .ecl-tg-item-img-mask-link{display:block;position:absolute;width:121px;height:80px;top:0;left:0;z-index:10;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat 0 -220px}.ecl-tg-img-list .ecl-tg-item-purchased{padding-left:2px;color:#fff;line-height:16px}.ecl-tg-img-list .ecl-tg-item-purchased i{font-style:normal;color:#fff}.ecl-tg-img-list .ecl-tg-item-area{width:119px;padding:0 0 3px 2px;line-height:16px;height:30px;overflow:hidden;color:#fff}.ecl-tg-img-list .ecl-tg-item-gosee{position:absolute;width:113px;height:26px;left:4px;bottom:4px;z-index:15;text-align:center;color:#fff;text-decoration:none;line-height:26px;background:#00baff url('http://tuan.baidu.com/event/zhixin/ecl_tg.gif') no-repeat -2px 0}
.ecl-tg-img-list .ecl-tg-item-gosee:hover{background:url('http://tuan.baidu.com/event/zhixin/ecl_tg.gif') no-repeat -2px -27px}.ecl-tg-img-list .ecl-tg-item-gosee:active{background:url('http://tuan.baidu.com/event/zhixin/ecl_tg.gif') no-repeat -2px -54px}.ecl-tg-img-list .ecl-tg-item-desc{padding-top:6px;line-height:19px;*line-height:18px;height:35px;overflow:hidden;color:#333}.ecl-tg-img-list .ecl-tg-item-desc a{color:#666;text-decoration:none}.ecl-tg-img-list .ecl-tg-item-desc a:hover{color:#666;text-decoration:underline}.ecl-tg-img-list .ecl-tg-item-price{padding-top:5px}
.ecl-tg-img-list .ecl-tg-item-price .ecl-tg-item-price-wrap{color:#ff7b13;font-weight:bold}.ecl-tg-img-list .ecl-tg-item-price .ecl-tg-item-oriprice-wrap{text-decoration:line-through;color:#666}.ecl-tg-img-list .ecl-tg-item-mask-link{position:absolute;bottom:3px;left:0;width:121px;height:22px;cursor:pointer;z-index:1;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat 0 -220px}:root .ecl-tg-item-provider{filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr='#00000000',EndColorStr='#00000000')!important}
:root .ecl-tg-item-img-mask{filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr='#00000000',EndColorStr='#00000000')!important}
</style>

{%function tg_zx_fn_truncate string="" length=5 etc="..."%}
    {%strip%}
    {%if $length > 0%}        
        {%if $string|count_characters > $length%}
            {%$string|escape:"html"|truncate:($length-1):""%}{%$etc|escape:html%}
        {%else%}
            {%$string|escape:'html'%}
        {%/if%}
    {%/if%}
    {%/strip%}
{%/function%}
{%function tg_zx_fn_city data=[]%}
    {%strip%}
    <div class="ecl-tg-city-no-data" id="TgZxCityNoData">
        没有相应团单，欢迎查看{%$data.current.text|escape:'html'%}的其他团购
    </div>
    <div class="ecl-tg-city-btn OP_LOG_BTN" id="TgZxCityBtn"
        data-click="{fm:'beha',rsv_click_type:'city_btn'}">
        <div class="ecl-tg-city-label" id="TgZxCityLabel">{%$data.current.text|escape:'html'%}</div>
        <div class="ecl-tg-city-arrow"></div>
    </div>
    <div class="ecl-tg-city-overlay" id="TgZxCityOverlay" style="display:none;"
        data-click="{fm:'beha',rsv_click_type:'city_picker'}">
        <ul class="ecl-tg-city-tabs ecl-tg-clear" id="TgZxCityTabs">
            <li class="ecl-tg-city-tab-active ecl-tg-city-tab-rm" 
                data-click="{rsv_click_value:'rm'}">热门</li>
            {%foreach $data.all as $item%}
                <li data-click="{rsv_click_value:'{%$item.text[0]|lower|escape:html%}'}">{%$item.text|escape:'html'%}</li>
            {%/foreach%}
        </ul>
        <div class="ecl-tg-city-items ecl-tg-clear" id="TgZxCityItems">
            
        </div>
    </div>
    {%/strip%}
{%/function%}
{%function tg_zx_fn_filter items=[] count_per_line=5 max_line_count=3 label="" type="" first=false need_truncate=false %}
    {%$item_count = $items|count%}
    {%$max_item_count = $count_per_line * $max_line_count%}
    {%if $item_count > 0%}
        {%if $item_count > $max_item_count%}
            {%$items = array_slice($items, 0, $max_item_count)%}
            {%$item_count = $max_item_count%}
        {%/if%}
        {%strip%}
        <div class="ecl-tg-filter-area {%if $first%}ecl-tg-filter-area-first{%/if%} ecl-tg-clear"
            data-type="{%$type|escape:html%}"
            data-click="{fm:'beha'}">
            <div class="ecl-tg-filter-label">{%$label|escape:html%}：</div>
            <div class="ecl-tg-filter-container"
                data-click="{rsv_click_type:'{%$type|escape:html%}'}">
            {%foreach $items as $item%}
                {%$line_begin = $item@index%$count_per_line == 0%}
                {%$line_end = $item@index%$count_per_line == $count_per_line - 1%}

                {%if $line_begin%}
                <div class="ecl-tg-filter-line ecl-tg-clear">
                {%/if%}
                    <div class="ecl-tg-filter-wrap {%if $line_end || $item@last%}ecl-tg-filter-wrap-line-last{%/if%}">
                    {%$text = $item.text%}
                    {%if $item.disable%}
                        <span>
                            {%if $need_truncate%}
                                {%tg_zx_fn_truncate string=$text length=5%}
                            {%else%}
                                {%$text|escape:'html'%}
                            {%/if%}
                        </span>
                    {%else%}
                        <a href="javascript:void(0)"
                            data-id="{%$item.id|escape:html%}"
                            title="{%if $need_truncate && ($text|count_characters > 5)%}{%$text|escape:'html'%}{%/if%}"
                            data-click="{rsv_click_value:'{%$item.id|escape:'html'%}'}"
                            class="ecl-tg-filter-link {%if $item.checked%}ecl-tg-filter-link-active{%/if%}">
                            {%if $need_truncate%}
                                {%tg_zx_fn_truncate string=$text length=5%}
                            {%else%}
                                {%$text|escape:'html'%}
                            {%/if%}
                        </a>
                    {%/if%}                        
                    </div>
                {%if $line_end || $item@last%}
                </div>
                {%/if%}                
            {%/foreach%}
            </div>
            {%if $item_count > $count_per_line%}
            <div class="ecl-tg-filter-more"
                data-click="{rsv_click_type:'{%$type|escape:html%}_more'}">
                <span class="ecl-tg-filter-expand-wrap">更多</span>
                <span class="ecl-tg-filter-collapse-wrap">收起</span>                
            </div>
            {%/if%}
        </div>
        {%/strip%}
    {%/if%}
{%/function%}

{%function tg_zx_fn_filters items=[]%}
    {%$filter_arr = [
        "category" => [
            "label" => "分类",
            "type" => "catg",
            "need_truncate" => true
        ],
        "district" => [
            "label" => "区域",
            "type" => "dist",
            "need_truncate" => true
        ],
        "price" => [
            "label" => "价格",
            "type" => "price",
            "need_truncate" => false
        ]
    ]%}
    {%$is_empty = true%}
    {%$iter = 0%}
    {%if $items|count > 0%}
        
        {%foreach $items as $key => $value%}
            {%$meta = $filter_arr[$key]%}

            {%if $meta|count == 0%}
                {%continue%}
            {%/if%}
            {%if empty($value) || count($value) == 0%}
                {%continue%}
            {%/if%}

            {%$is_empty = false%}
            {%$iter = $iter + 1%}

            {%$label = $meta["label"]%}
            {%$type = $meta["type"]%}
            {%$need_truncate = $meta["need_truncate"]%}
            {%$first = ($iter == 1)%}
            
            {%$count_per_line = ($first) ? 4 : 5%}

            {%tg_zx_fn_filter items=$value label=$label type=$type count_per_line=$count_per_line first=$first need_truncate=$need_truncate%}
        {%/foreach%}
    {%/if%}
    {%if $is_empty%}
        {%strip%}
        <div class="ecl-tg-filter-empty">
            为您找到以下团购：
        </div>
        {%/strip%}
    {%/if%}
{%/function%}

{%function tg_zx_fn_detail_list items=[] max_item_count=8 all_active_count=3 has_num=true%}
    {%$item_count = $items|count%}
    {%if $item_count > 0%}
        {%if $item_count > $max_item_count%}
            {%$items = array_slice($items, 0, $max_item_count)%}
            {%$item_count = $max_item_count%}
        {%/if%}
        {%if $item_count <= $all_active_count%}
            {%$all_active = true%}
        {%/if%}
        {%foreach $items as $item%}
            {%$index = $item@index%}
            {%$iter = $item@iteration%}
            {%$num_hot_cls = ""%}
            {%if $iter == 1%}
                {%$num_hot_cls = "ecl-tg-item-num-first"%}
            {%elseif $iter == 2%}
                {%$num_hot_cls = "ecl-tg-item-num-second"%}
            {%elseif $iter == 3%}
                {%$num_hot_cls = "ecl-tg-item-num-third"%}
            {%/if%}
            {%strip%}
            <div class="ecl-tg-item {%if $item@first%}ecl-tg-item-first{%/if%} {%if $item@first || $all_active%}ecl-tg-item-active{%/if%} {%if !$has_num%}ecl-tg-item-no-num{%/if%} {%if $item@last%}ecl-tg-item-last{%/if%}">
                <div class="ecl-tg-item-expand ecl-tg-clear">
                    <div class="ecl-tg-item-img">
                        <a href="{%$item.url%}&pos=img" target="_blank"
                            title="{%$item.desc|escape:'html'%}"
                            data-click="{rsv_click_value:'{%$index|escape:html%}'}">
                            <img src="{%$item.img%}" width="121" height="80">
                            <span class="ecl-tg-item-num {%$num_hot_cls%}">{%$iter|escape:html%}</span>
                            <span class="ecl-tg-item-provider">{%$item.provider|escape:'html'%}</span>
                        </a>
                    </div>
                    <div class="ecl-tg-item-content">
                        <div class="ecl-tg-item-title">
                            <a href="{%$item.url%}&pos=brand" target="_blank"
                                title="{%$item.title|escape:'html'%}"
                                data-click="{rsv_click_value:'{%$index|escape:html%}'}">
                                {%$item.title|escape:'html'%}
                            </a>
                        </div>
                        <div class="ecl-tg-item-desc">
                            <a href="{%$item.url%}&pos=title" target="_blank"
                                title="{%$item.desc|escape:'html'%}"
                                data-click="{rsv_click_value:'{%$index|escape:html%}'}">
                                {%$item.desc|escape:'html'%}
                            </a>
                        </div>
                        <div class="ecl-tg-item-price">
                            <span class="ecl-tg-item-price-wrap">￥{%$item.price|escape:html%}</span><span class="ecl-tg-item-price-wrap ecl-tg-ml10">{%$item.discount|string_format:"%.1f"|escape:html%}折</span><span class="ecl-tg-item-oriprice-wrap ecl-tg-ml10">原价：￥{%$item.ori_price|escape:html%}</span>
                        </div>
                    </div>
                    <div class="ecl-tg-item-gosee">
                        <a href="{%$item.url%}&pos=gosee" target="_blank"
                            class="ecl-tg-item-gosee-link"
                            data-click="{rsv_click_value:'{%$index|escape:html%}'}">去看看</a>
                        <div class="ecl-tg-item-purchased-wrap">{%$item.purchased|escape:'html'%}人已购</div>
                    </div>
                </div>
                <div class="ecl-tg-item-collapse ecl-tg-clear"
                    title="{%$item.desc|escape:html%}"
                    data-click="{fm:'beha'}">

                    <div class="ecl-tg-item-num  {%$num_hot_cls|escape:html%}">{%$iter|escape:html%}</div>
                    <div class="ecl-tg-item-title">
                        {%$title = "【`$item.title`】`$item.desc`"%}
                        <a href="javascript:void(0)">
                            {%$title|escape:'html'%}
                        </a>
                    </div>
                    <div class="ecl-tg-item-price">
                        <span class="ecl-tg-item-price-wrap">￥{%$item.price|escape:'html'%}</span>
                        <span class="ecl-tg-item-oriprice-wrap">￥{%$item.ori_price|escape:'html'%}</span>
                    </div>
                </div>
            </div>
            {%/strip%}
        {%/foreach%}
    {%/if%}
{%/function%}

{%function tg_zx_fn_bottom data=[]%}
    {%strip%}
    {%if $data.other_label%}
    <div class="ecl-tg-link-promotion">
        {%$data.other_label|escape:'html'%}？
        <a href="{%$data.other_url%}&pos=more" target="_blank">查看更多</a>
    </div>
    {%/if%}
    {%if $data.promotion_label%}
    <div class="ecl-tg-link-promotion">
        {%$data.promotion_label|escape:'html'%}：
        <a href="{%$data.promotion_url%}&pos=activity" target="_blank">{%$data.promotion_text|escape:'html'%}</a>
    </div>
    {%/if%}
    {%if $data.tuan_url%}
    <div class="ecl-tg-link-tuan">
        <a href="{%$data.tuan_url%}&pos=foot">tuan.baidu.com</a>
    </div>
    {%/if%}
    {%/strip%}
{%/function%}

<script data-compress="off">
    A.setup({
        "_tuanCityData" : {%json_encode($tplData.city)%},
        "_tuanAjaxUrl" : "{%$tplData['info']['ajax_url']%}",
        "_type" : "{%$tplData.info.type%}", // 卡片类型
        "_query" : "{%$tplData.info.query%}" // 搜索词
    });
</script>

{%* 知心泛需求卡片 *%}
{%strip%}
<div class="ecl-tg ecl-tg-general">
    {%$info = $tplData.info%}
    <h4 class="ecl-tg-title" id="TgZxTitle">
        <a href="{%$info.title_url%}&pos=head" 
            class="ecl-tg-title-link"
            target="_blank"
            data-click="{rsv_click_type:'title'}">

            {%$info.title|escape:none%}
        </a>
    </h4>
    <div class="ecl-tg-content" id="TgZxContent">
        {%* 城市 *%}
        {%tg_zx_fn_city data=$tplData.city%}
        {%* 筛选区 *%}
        <div class="ecl-tg-filters" id="TgZxFilters">
            {%tg_zx_fn_filters items=$tplData.filter%}
        </div>
        <div class="ecl-tg-filter-no-data">
            对不起，没有找到相关团购
        </div>
        {%* 商品列表 *%}
        <div class="ecl-tg-list ecl-tg-detail-list" id="TgZxDetailList"
            data-click="{rsv_click_type:'list'}">
            {%tg_zx_fn_detail_list items=$tplData.data.list max_item_count=8 has_num=true%}
        
        </div>
        <div class="ecl-tg-link-more {%if $tplData.data.total <= 8%}ecl-tg-hidden{%/if%}" id="TgZxLinkMore">
            <a href="{%$info.more_url%}&pos=all" target="_blank">
                {%$info.more_text|escape:'html'%}
            </a>
        </div>
    </div>
    <div class="ecl-tg-bottom" id="TgZxBottom">
        {%tg_zx_fn_bottom data=$info%}
    </div>
</div>
{%/strip%}

<script type="text/javascript">
    A.init(function(){var t=this.data._tuanCityData,e=this.data._tuanAjaxUrl,a=this.data._type,i=this.data._query,l=t.current.id,n=t.current.text,r=baidu.g("TgZxCityBtn"),c=baidu.g("TgZxCityOverlay"),s=!0;this.dispose=function(){baidu.un(document,"click",o.documentClickHandler),s||(s=!0,o.successHandler=null)};var d=function(){baidu.on(r,"click",function(t){new baidu.event.EventArg(t).stopPropagation(),baidu.dom.toggle(c)}),baidu.on(document,"click",o.documentClickHandler);var t=baidu.dom.children(baidu.g("TgZxCityTabs")),e=baidu.dom.children(baidu.g("TgZxCityItems"));
baidu.each(t,function(a,i){baidu.event.on(a,"click",function(){baidu.each(t,function(t){baidu.removeClass(t,"ecl-tg-city-tab-active")}),baidu.addClass(this,"ecl-tg-city-tab-active"),baidu.each(e,function(t){baidu.hide(t)}),baidu.show(e[i])})});var a=baidu.g("TgZxDetailList");baidu.on(a,"click",function(t){for(var e=baidu.event.getTarget(t),i=null;e!=a;){if(baidu.dom.hasClass(e,"ecl-tg-item-collapse")){i=e;break}e=e.parentNode}if(i){var l=i.parentNode,n=baidu.dom.children(a),r="ecl-tg-item-active";baidu.each(n,function(t){baidu.removeClass(t,r)
}),baidu.addClass(l,r)}}),baidu.on("TgZxContent","click",function(t){var e=baidu.event.getTarget(t);if(baidu.dom.hasClass(e,"ecl-tg-filter-link")){new baidu.event.EventArg(t).preventDefault();var a=e.parentNode.parentNode.parentNode,i=baidu.q("ecl-tg-filter-link",a);baidu.each(i,function(t){baidu.removeClass(t,"ecl-tg-filter-link-active")}),baidu.addClass(e,"ecl-tg-filter-link-active"),o.sendRequest(a.parentNode.getAttribute("data-type"))}else if(baidu.dom.hasClass(e,"ecl-tg-city-item")){var r=baidu.q("ecl-tg-city-item",e.parentNode.parentNode);
baidu.each(r,function(t){baidu.removeClass(t,"ecl-tg-city-item-active")}),baidu.addClass(e,"ecl-tg-city-item-active"),l=e.getAttribute("data-id"),n=e.innerHTML,o.sendRequest("city"),baidu.hide(c),baidu.g("TgZxCityLabel").innerHTML=e.innerHTML}else if(baidu.dom.hasClass(e,"ecl-tg-filter-more")||baidu.dom.hasClass(e=e.parentNode,"ecl-tg-filter-more")){var s=e.parentNode,d="ecl-tg-filter-area-expand";baidu.dom.hasClass(s,d)?baidu.removeClass(s,d):baidu.addClass(s,d)}})},u=['<div class="ecl-tg-item #{item_active_cls} #{item_first_cls} #{item_last_cls} #{item_no_num_cls}">','<div class="ecl-tg-item-expand ecl-tg-clear">','<div class="ecl-tg-item-img">','<a href="#{url}&pos=img" target="_blank" title="#{desc}">','<img src="#{img}" width="121" height="80">','<span class="ecl-tg-item-num #{num_hot_cls}">#{iter}</span>','<span class="ecl-tg-item-provider">#{provider}</span>',"</a>","</div>",'<div class="ecl-tg-item-content">','<div class="ecl-tg-item-title">','<a href="#{url}&pos=brand" target="_blank"title="#{title}">',"#{title}","</a>","</div>",'<div class="ecl-tg-item-desc">','<a href="#{url}&pos=title" target="_blank"','title="#{desc}">',"#{desc}","</a>","</div>",'<div class="ecl-tg-item-price">','<span class="ecl-tg-item-price-wrap">￥#{price}</span>','<span class="ecl-tg-item-price-wrap ecl-tg-ml10">#{discount}折</span>','<span class="ecl-tg-item-oriprice-wrap ecl-tg-ml10">原价：￥#{ori_price}</span>',"</div>","</div>",'<div class="ecl-tg-item-gosee">','<a href="#{url}&pos=gosee" target="_blank" class="ecl-tg-item-gosee-link">去看看</a>','<div class="ecl-tg-item-purchased-wrap">#{purchased}人已购</div>',"</div>","</div>",'<div class="ecl-tg-item-collapse ecl-tg-clear" title="#{desc}">','<div class="ecl-tg-item-num  #{num_hot_cls}">#{iter}</div>','<div class="ecl-tg-item-title">','<a href="javascript:void(0)">',"#{title_desc}","</a>","</div>",'<div class="ecl-tg-item-price">','<span class="ecl-tg-item-price-wrap">￥#{price}</span>','<span class="ecl-tg-item-oriprice-wrap">￥#{ori_price}</span>',"</div>","</div>","</div>"].join(""),o={genCityItems:function(t){var e=[],a=t.hot,i=t.all,l='<li class="OP_LOG_BTN ecl-tg-city-item" data-id="#{id}" data-click="{rsv_click_value:\'#{id}\'}">#{text}</li>';
e.push("<ul>");for(var n=0,r=a.length;r>n;n++)e.push(baidu.format(l,a[n]));for(e.push("</ul>"),n=0,r=i.length;r>n;n++){var c=(i[n].text,i[n].subcity);e.push('<ul style="display:none;">');for(var s=0,d=c.length;d>s;s++)e.push(baidu.format(l,c[s]));e.push("</ul>")}baidu.g("TgZxCityItems").innerHTML=e.join("")},getParams:function(t){var e={};if("city"!=t){var n=baidu.dom.q("ecl-tg-filter-area",TgZxFilters);baidu.each(n,function(t){var a=t.getAttribute("data-type")+"_id",i=baidu.dom.q("ecl-tg-filter-link-active",t)[0];
if(i){var l=i.getAttribute("data-id");e[a]=l}})}return e.pos=t,e.city_id=l,e.type=a,e.query=i,e.time_stamp=(new Date).valueOf(),e},getAjaxUrl:function(t){var a=o.getParams(t),i=o.jsonToQuery(a),l=e.indexOf("?")>-1?"&":"?",n=e+l+i;return n},sendRequest:function(t){s=!1,baidu.sio.callByServer(o.getAjaxUrl(t),o.getSuccessHandler(t),{queryField:"cb",charset:"utf-8",timeOut:6e3})},reload:function(t,e){if(baidu.removeClass("TgZxContent","ecl-tg-content-city-no-data"),baidu.removeClass("TgZxContent","ecl-tg-content-filter-no-data"),0==t.data.total){"city"!=e?(o.renderFilters(t.filter),baidu.addClass("TgZxContent","ecl-tg-content-filter-no-data")):baidu.addClass("TgZxContent","ecl-tg-content-city-no-data")
}else o.renderList(t.data.list,{has_num:!0}),o.renderFilters(t.filter);o.renderLinks(baidu.extend(t.info,{total:t.data.total}))},renderList:function(t,e){if(!(t instanceof Array&&t.length>0))return baidu.g("TgZxDetailList").innerHTML="",void 0;e=e||{},e=baidu.extend({max_item_count:8,all_active_count:3,has_num:!0},e||{});var a=e.max_item_count,i=e.has_num,l=e.all_active_count,n=t.length;n>a&&(t=t.slice(0,a),n=a);var r=!1;l>=n&&(r=!0);for(var c=i?"":"ecl-tg-item-no-num",s=[],d=["ecl-tg-item-num-first","ecl-tg-item-num-second","ecl-tg-item-num-third"],o=0,p=n;p>o;o++){var g=t[o],m=o+1,v=d[o]||"",b="",h="",_="";
0==o&&(h="ecl-tg-item-first"),o==p-1&&(_="ecl-tg-item-last"),(0==o||r)&&(b="ecl-tg-item-active");var f="【"+g.title+"】"+g.desc;s.push(baidu.format(u,baidu.extend(g,{discount:Number(g.discount).toFixed(1),iter:m,num_hot_cls:v,item_active_cls:b,item_first_cls:h,title_desc:f,item_no_num_cls:c,item_last_cls:_})))}baidu.g("TgZxDetailList").innerHTML=s.join("")},renderFilters:function(t){var e=[];t=t||{};var a=!0,i=0,l={category:{label:"分类",type:"catg",need_truncate:!0},district:{label:"区域",type:"dist",need_truncate:!0},price:{label:"价格",type:"price",need_truncate:!1}};
for(var n in t){var r=l[n];if(r){var c=t[n];if(c&&!(c instanceof Array&&0==c.length)){a=!1,i++;var s={label:r.label,type:r.type,first:1==i,count_per_line:1==i?4:5,need_truncate:r.need_truncate};e.push(o.getFilterHtml(c,s))}}}a&&e.push('<div class="ecl-tg-filter-empty">为您找到以下团购：</div>'),baidu.g("TgZxFilters").innerHTML=e.join("")},getFilterHtml:function(t,e){var a=[];if(!(t instanceof Array&&t.length>0))return"";e=baidu.extend({count_per_line:5,max_line_count:3,label:"",type:"",first:!1,need_truncate:!1},e||{});
var i=e.count_per_line,l=e.max_line_count,n=e.label,r=e.type,c=e.first,s=e.need_truncate,d=t.length,u=i*l,o="",p="";d>u&&(t=t.slice(0,u),d=u),c&&(p="ecl-tg-filter-area-first"),a.push('<div class="ecl-tg-filter-area #{first_cls} ecl-tg-clear #{expand_cls}" data-click="{fm:\'beha\'}" data-type="#{type}">'),a.push(' <div class="ecl-tg-filter-label">#{label}：</div>'),a.push(' <div class="ecl-tg-filter-container" data-click="{rsv_click_type:\'#{type}\'}">');for(var g=0;d>g;g++){var m=[],v=t[g],b=g%i==0,h=g%i==i-1,_=g==d-1;
b&&m.push('<div class="ecl-tg-filter-line ecl-tg-clear">'),m.push('<div class="ecl-tg-filter-wrap'),(h||_)&&m.push(" ecl-tg-filter-wrap-line-last"),m.push('">');var f=v.text;v.truncated_text=f;var y=!1;s&&f.length>5&&(f=f.substr(0,4)+"...",v.truncated_text=f,y=!0),v.disable?m.push("<span>#{truncated_text}</span>"):(m.push('<a href="javascript:void(0)" data-id="#{id}" data-click="{rsv_click_value:\'#{id}\'}" class="ecl-tg-filter-link'),v.checked&&(m.push(" ecl-tg-filter-link-active"),g>=i&&(o="ecl-tg-filter-area-expand")),y?m.push('" title="#{text}"'):m.push('"'),m.push(">#{truncated_text}"),m.push("</a>")),m.push("</div>"),(h||_)&&m.push("</div>"),a.push(baidu.format(m.join(""),v))
}return a.push(" </div>"),d>i&&(a.push('<div class="ecl-tg-filter-more" data-click="{rsv_click_type:\'#{type}_more\'}">'),a.push(' <span class="ecl-tg-filter-expand-wrap">更多</span>'),a.push(' <span class="ecl-tg-filter-collapse-wrap">收起</span>'),a.push("</div>")),a.push("</div>"),baidu.format(a.join(""),{label:n,type:r,expand_cls:o,first_cls:p})},renderLinks:function(t){var e=[];e.push(" 没有相应团单，欢迎查看#{current_city}的"),e.push(' <a href="#{city_no_data_url}&pos=citynodata" target="_blank">其他团购</a>'),baidu.g("TgZxCityNoData").innerHTML=baidu.format(e.join(""),{current_city:n,city_no_data_url:t.city_no_data_url}),e=[],e.push('<a href="#{title_url}&pos=head" class="ecl-tg-title-link" target="_blank" data-click="{rsv_click_type:\'title\'}">'),e.push("#{title}"),e.push("</a>"),baidu.g("TgZxTitle").innerHTML=baidu.format(e.join(""),t),e=[],e.push('<a href="#{more_url}&pos=all" target="_blank" data-click="{rsv_click_type:\'see_more\'}">'),e.push("#{more_text}"),e.push("</a>"),t.total<=8?baidu.dom.addClass("TgZxLinkMore","ecl-tg-hidden"):baidu.dom.removeClass("TgZxLinkMore","ecl-tg-hidden"),baidu.g("TgZxLinkMore").innerHTML=baidu.format(e.join(""),t),e=[],t.other_label&&(e.push('<div class="ecl-tg-link-promotion">'),e.push("#{other_label}？"),e.push('<a href="#{other_url}&pos=more" target="_blank">查看更多</a>'),e.push("</div>")),t.promotion_label&&(e.push('<div class="ecl-tg-link-promotion">'),e.push("#{promotion_label}："),e.push('<a href="#{promotion_url}&pos=activity" target="_blank">#{promotion_text}</a>'),e.push("</div>")),t.tuan_url&&(e.push('<div class="ecl-tg-link-tuan">'),e.push('<a href="#{tuan_url}&pos=foot" target="_blank">tuan.baidu.com</a>'),e.push("</div>")),baidu.g("TgZxBottom").innerHTML=baidu.format(e.join(""),t)
},documentClickHandler:function(t){var e=baidu.event.getTarget(t);baidu.dom.contains(c,e)||baidu.hide(c)},jsonToQuery:function(t){var e=[];for(var a in t)t.hasOwnProperty(a)&&e.push(a+"="+encodeURIComponent(t[a]));return e.join("&")},getSuccessHandler:function(t){return function(e){s=!0;var a=e;o.reload(a,t)}}};o.genCityItems(t),d()});
</script>

{%/block%}