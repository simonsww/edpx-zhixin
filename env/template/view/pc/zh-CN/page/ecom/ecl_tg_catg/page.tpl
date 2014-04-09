{%extends 'c_base.tpl'%}

{%block name='title'%}{%/block%}
{%block name='content'%}

<style type="text/css">
    .ecl-tg-float-left{float:left}.ecl-tg-float-right{float:right}.ecl-tg{position:relative;width:600px;font-size:13px;font-family:Arial,"\5b8b\4f53"}.ecl-tg .ecl-tg-clear{zoom:1}.ecl-tg .ecl-tg-clear:after{display:block;content:"";visibility:hidden;font-size:0;clear:both}.ecl-tg .ecl-tg-hidden{display:none}.ecl-tg .ecl-tg-ml10{margin-left:10px}.ecl-tg .ecl-tg-title{margin:0;padding:0;font-size:16px;color:#00c;font-weight:normal;text-decoration:underline}.ecl-tg .ecl-tg-title em{color:#c00;font-style:normal;text-decoration:underline}
.ecl-tg .ecl-tg-content{position:relative;width:514px;border:1px solid #e3e3e3;padding:7px 10px 0;margin-top:10px;box-shadow:2px 2px 3px #ededed}.ecl-tg .ecl-tg-content a{text-decoration:none}.ecl-tg .ecl-tg-content .ecl-tg-link:hover{text-decoration:underline}.ecl-tg .ecl-tg-city-no-data{display:none;height:31px;width:534px;margin:0 0 26px 0;line-height:31px;text-align:center;background:#fff3c9;color:#666}.ecl-tg .ecl-tg-city-no-data a{color:#0909cc}.ecl-tg .ecl-tg-city-no-data a:hover{text-decoration:underline}
.ecl-tg .ecl-tg-filter-no-data{display:none;height:16px;line-height:16px;background:#fff3c9;color:#666;text-align:center;margin-top:11px;margin-bottom:15px}.ecl-tg .ecl-tg-content-city-no-data{padding:0;width:534px}.ecl-tg .ecl-tg-content-city-no-data .ecl-tg-city-no-data{display:block}.ecl-tg .ecl-tg-content-city-no-data .ecl-tg-list,.ecl-tg .ecl-tg-content-city-no-data .ecl-tg-link-more,.ecl-tg .ecl-tg-content-city-no-data .ecl-tg-filters{display:none}.ecl-tg .ecl-tg-content-filter-no-data .ecl-tg-filter-no-data{display:block}
.ecl-tg .ecl-tg-content-filter-no-data .ecl-tg-list,.ecl-tg .ecl-tg-content-filter-no-data .ecl-tg-link-more{display:none}.ecl-tg .ecl-tg-city-btn{position:absolute;right:10px;top:5px;height:22px;padding-right:23px;border:1px solid #999;border-right-color:#d9d9d9;border-bottom-color:#d9d9d9;background:#fff;z-index:10}.ecl-tg .ecl-tg-city-btn .ecl-tg-city-label{padding:0 8px;line-height:22px;color:#000;cursor:pointer}.ecl-tg .ecl-tg-city-btn .ecl-tg-city-arrow{position:absolute;right:0;top:0;width:22px;height:22px;border-left:1px solid #d9d9d9;cursor:pointer;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -282px 0}
.ecl-tg .ecl-tg-city-overlay{position:absolute;top:28px;right:10px;width:345px;padding:4px 9px;border:1px solid #e6e6e6;background-color:#fff;z-index:20}.ecl-tg .ecl-tg-city-overlay li{float:left;height:20px;padding:0 10px;cursor:pointer}.ecl-tg .ecl-tg-city-overlay .ecl-tg-city-tabs{line-height:20px;border-bottom:1px solid #7eb7fc;font-family:"\5b8b\4f53"}.ecl-tg .ecl-tg-city-overlay .ecl-tg-city-tabs .ecl-tg-city-tab-active{background:#7eb7fc}.ecl-tg .ecl-tg-city-overlay .ecl-tg-city-tabs .ecl-tg-city-tab-rm{margin-bottom:10px}
.ecl-tg .ecl-tg-city-overlay .ecl-tg-city-items{line-height:20px}.ecl-tg .ecl-tg-city-overlay .ecl-tg-city-items li{margin-top:10px;white-space:nowrap}.ecl-tg .ecl-tg-city-overlay .ecl-tg-city-items .ecl-tg-city-item-active{background:#f5f5f5}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-label{float:left;color:#000;font-weight:bold;width:50px;height:28px;line-height:28px}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-container{float:left;line-height:28px;color:#d8d8d8;height:28px;overflow:hidden;_width:408px}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-more{float:right;height:19px;line-height:19px;width:41px;padding-left:6px;margin-top:5px;text-align:left;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -112px;cursor:pointer}
.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-more:hover{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -72px}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-collapse-wrap{display:none}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-line .ecl-tg-filter-wrap{float:left;padding-right:18px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat right 6px}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-line .ecl-tg-filter-wrap span,.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-line .ecl-tg-filter-wrap a{padding:4px 5px}
.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-line .ecl-tg-filter-wrap span{color:#ccc}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-line .ecl-tg-filter-wrap a{text-decoration:none;background:#fff;color:#00c}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-line .ecl-tg-filter-wrap .ecl-tg-filter-link-active{background:#3b8bff;color:#fff}.ecl-tg .ecl-tg-filter-area .ecl-tg-filter-line .ecl-tg-filter-wrap-line-last{background:0;padding-right:8px}.ecl-tg .ecl-tg-filter-area-expand .ecl-tg-filter-container{height:auto}.ecl-tg .ecl-tg-filter-area-expand .ecl-tg-filter-more{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -132px}
.ecl-tg .ecl-tg-filter-area-expand .ecl-tg-filter-more:hover{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -92px}.ecl-tg .ecl-tg-filter-area-expand .ecl-tg-filter-expand-wrap{display:none}.ecl-tg .ecl-tg-filter-area-expand .ecl-tg-filter-collapse-wrap{display:inline}.ecl-tg .ecl-tg-filter-area-first{width:420px}.ecl-tg .ecl-tg-filter-area-first .ecl-tg-filter-container{_width:320px}.ecl-tg .ecl-tg-list{padding-top:11px}.ecl-tg .ecl-tg-link-more{padding:10px 0;text-align:center;font-family:"\5b8b\4f53";border-top:1px solid #e3e3e3}
.ecl-tg .ecl-tg-link-more a{color:#0909cc}.ecl-tg .ecl-tg-link-more a:hover{text-decoration:underline}.ecl-tg .ecl-tg-link-promotion{padding-top:10px}.ecl-tg .ecl-tg-link-promotion a{color:#0909cc;text-decoration:none}.ecl-tg .ecl-tg-link-promotion a:hover{text-decoration:underline}.ecl-tg .ecl-tg-link-tuan{padding-top:10px}.ecl-tg .ecl-tg-link-tuan a{text-decoration:none;color:#008000}.ecl-tg-detail-list .ecl-tg-item-num{padding:1px 0;width:14px;color:#fff;line-height:100%;font-size:12px;text-align:center;background:#8cb9f5;font-family:"\5b8b\4f53"}
.ecl-tg-detail-list .ecl-tg-item-num-first{background:#f54545}.ecl-tg-detail-list .ecl-tg-item-num-second{background:#ff8547}.ecl-tg-detail-list .ecl-tg-item-num-third{background:#ffac38}.ecl-tg-detail-list .ecl-tg-item-expand{padding-bottom:15px;padding-top:15px}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-img{position:relative;float:left;height:80px;width:121px}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-img img{width:121px;height:80px}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-img .ecl-tg-item-num{display:none;position:absolute;left:0;top:0;cursor:pointer}
.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-img .ecl-tg-item-provider{position:absolute;left:0;bottom:0;width:121px;height:17px;line-height:17px;text-align:center;color:#fff;cursor:pointer;background:rgba(0,0,0,0.65);filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr='#a5000000',EndColorStr='#a5000000')}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-img .ecl-tg-item-provider-hide{display:none}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content{position:relative;float:left;margin-left:10px;height:80px}
.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-title{width:210px;overflow:hidden;height:16px;line-height:16px}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-title a{font-size:14px;color:#000;font-weight:bold;text-decoration:none}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-title a:hover{text-decoration:underline}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-desc{line-height:18px;height:36px;padding:6px 0 0;width:210px;overflow:hidden}
.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-desc a{color:#666;text-decoration:none}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-desc a:hover{text-decoration:underline}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-price{position:absolute;bottom:-1px;line-height:1}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-price-wrap{color:#ff7b13;font-weight:bold}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-content .ecl-tg-item-oriprice-wrap{color:#666;text-decoration:line-through}
.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-gosee{float:right;position:relative;height:80px;width:90px}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-gosee .ecl-tg-item-gosee-link{position:absolute;right:0;bottom:26px;display:block;width:81px;height:28px;line-height:28px;text-align:center;background:#ff7b14;color:#fff;border:1px solid #ff7b14;border-bottom-color:#e67117;text-decoration:none;font-size:14px;font-family:"\5fae\8f6f\96c5\9ed1"}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-gosee .ecl-tg-item-gosee-link:hover{border-color:#e56400;box-shadow:1px 1px 2px #c5c5c5,0px 1px 0 #ff9547 inset}
.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-gosee .ecl-tg-item-gosee-link:active{border-color:#e56400;box-shadow:1px 1px 2px #d26510 inset}.ecl-tg-detail-list .ecl-tg-item-expand .ecl-tg-item-gosee .ecl-tg-item-purchased-wrap{position:absolute;right:0;bottom:-1px;color:#666;line-height:1}.ecl-tg-detail-list .ecl-tg-item-collapse{padding:15px 0;cursor:pointer}.ecl-tg-detail-list .ecl-tg-item-collapse .ecl-tg-item-num{float:left;margin-right:10px}.ecl-tg-detail-list .ecl-tg-item-collapse .ecl-tg-item-title{float:left;width:317px;height:16px;overflow:hidden}
.ecl-tg-detail-list .ecl-tg-item-collapse .ecl-tg-item-title a{text-decoration:none;color:#0909cc;line-height:16px}.ecl-tg-detail-list .ecl-tg-item-collapse .ecl-tg-item-price{float:right}.ecl-tg-detail-list .ecl-tg-item-collapse .ecl-tg-item-price .ecl-tg-item-price-wrap{color:#ff7b13;font-weight:bold}.ecl-tg-detail-list .ecl-tg-item-collapse .ecl-tg-item-price .ecl-tg-item-oriprice-wrap{color:#666;text-decoration:line-through;margin-left:12px}.ecl-tg-detail-list .ecl-tg-item-no-num .ecl-tg-item-num{display:none}
.ecl-tg-detail-list .ecl-tg-item-no-num .ecl-tg-item-collapse .ecl-tg-item-title{width:341px}.ecl-tg-detail-list .ecl-tg-item{border-bottom:1px solid #ecedec}.ecl-tg-detail-list .ecl-tg-item .ecl-tg-item-expand{display:none}.ecl-tg-detail-list .ecl-tg-item-active .ecl-tg-item-expand{display:block}.ecl-tg-detail-list .ecl-tg-item-active .ecl-tg-item-collapse{display:none}.ecl-tg-detail-list .ecl-tg-item-first .ecl-tg-item-collapse{padding-top:0}.ecl-tg-detail-list .ecl-tg-item-first .ecl-tg-item-expand{padding-top:0}
.ecl-tg-detail-list .ecl-tg-item-last{border-bottom:0}.ecl-tg-img-list .ecl-tg-item{position:relative;float:left;width:121px;height:140px;padding:0 0 15px 10px}.ecl-tg-img-list .ecl-tg-item-line-begin{padding-left:0}.ecl-tg-img-list .ecl-tg-item-img{position:relative;width:121px;height:80px;overflow:hidden}.ecl-tg-img-list .ecl-tg-item-img img{width:121px;height:80px}.ecl-tg-img-list .ecl-tg-item-img-mask{display:block;position:absolute;z-index:5;top:64px;left:0;width:121px;height:80px;background:rgba(0,0,0,0.65);filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr='#a5000000',EndColorStr='#a5000000')}
.ecl-tg-img-list .ecl-tg-item-img-mask-link{display:block;position:absolute;width:121px;height:80px;top:0;left:0;z-index:10;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat 0 -220px}.ecl-tg-img-list .ecl-tg-item-purchased{padding-left:2px;color:#fff;line-height:16px}.ecl-tg-img-list .ecl-tg-item-purchased i{font-style:normal;color:#fff}.ecl-tg-img-list .ecl-tg-item-area{width:119px;padding:0 0 3px 2px;line-height:16px;height:30px;overflow:hidden;color:#fff}.ecl-tg-img-list .ecl-tg-item-gosee{position:absolute;width:113px;height:26px;left:4px;bottom:4px;z-index:15;text-align:center;color:#fff;text-decoration:none;line-height:26px;background:#00baff url('http://tuan.baidu.com/event/zhixin/ecl_tg.gif') no-repeat -2px 0}
.ecl-tg-img-list .ecl-tg-item-gosee:hover{background:url('http://tuan.baidu.com/event/zhixin/ecl_tg.gif') no-repeat -2px -27px}.ecl-tg-img-list .ecl-tg-item-gosee:active{background:url('http://tuan.baidu.com/event/zhixin/ecl_tg.gif') no-repeat -2px -54px}.ecl-tg-img-list .ecl-tg-item-desc{padding-top:6px;line-height:19px;*line-height:18px;height:35px;overflow:hidden;color:#333}.ecl-tg-img-list .ecl-tg-item-desc a{color:#666;text-decoration:none}.ecl-tg-img-list .ecl-tg-item-desc a:hover{color:#666;text-decoration:underline}.ecl-tg-img-list .ecl-tg-item-price{padding-top:5px}
.ecl-tg-img-list .ecl-tg-item-price .ecl-tg-item-price-wrap{color:#ff7b13;font-weight:bold}.ecl-tg-img-list .ecl-tg-item-price .ecl-tg-item-oriprice-wrap{text-decoration:line-through;color:#666}.ecl-tg-img-list .ecl-tg-item-mask-link{position:absolute;bottom:3px;left:0;width:121px;height:22px;cursor:pointer;z-index:1;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat 0 -220px}.ecl-tg-footer{margin-top:8px;font:13px Arial;color:#008000}.ecl-tg-footer .ecl-tg-baidu-verified-icon{display:inline-block;width:14px;height:14px;vertical-align:text-bottom;margin-left:5px;background:url(http://tuan.baidu.com/event/zhixin/baidu_verified.jpg) no-repeat}
.ecl-tg-footer .ecl-tg-baidu-verified-text{color:#4bad37;font-family:"宋体";font-weight:bold}:root .ecl-tg-item-provider{filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr='#00000000',EndColorStr='#00000000')!important}:root .ecl-tg-item-img-mask{filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr='#00000000',EndColorStr='#00000000')!important}
</style>

{%*限制字数*%}
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

{%function tg_zx_fn_filters items=[] count_per_line=0%}
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
            
			{%if !$count_per_line%}
				{%$count_per_line = ($first) ? 4 : 5%}
			{%/if%}

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

{%function tg_zx_fn_detail_list items=[] max_item_count=8 all_active_count=3 has_num=true show_provider=true need_truncate=false is_nuomi=true%}
    {%*show_provider 用于标记图片上站点名是否显示，默认true为显示*%}
    {%*need_truncate 用于限定描述文字的字数*%}
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

{%function tg_zx_fn_bottom data=[] is_nuomi=false%}
    {%strip%}
    {%if $data.other_label%}
    <div class="ecl-tg-link-promotion">
        {%$data.other_label|escape:'html'%}？
        <a href="{%$data.other_url%}{%if !$is_nuomi%}&pos=more{%/if%}" target="_blank">查看更多</a>
    </div>
    {%/if%}
    {%if $data.promotion_label%}
    <div class="ecl-tg-link-promotion">
        {%$data.promotion_label|escape:'html'%}：
        <a href="{%$data.promotion_url%}{%if !$is_nuomi%}&pos=activity{%/if%}" target="_blank">{%$data.promotion_text|escape:'html'%}</a>
    </div>
    {%/if%}
    <div class="ecl-tg-footer">
        {%if !$is_nuomi%}
            tuan.baidu.com
        {%else%}
		    www.nuomi.com
        {%/if%}
	</div>
    {%/strip%}
{%/function%}

<script data-compress="off">
    A.setup({
        "_tuanCityData" : {%json_encode($tplData.city)%},
        "_tuanAjaxUrl" : "{%$tplData['info']['ajax_url']%}"||"{%$tplData['ajax_url']%}",
        "_type" : "{%$tplData.info.type%}"||"{%$tplData['type']%}", // 卡片类型
        "_query" : "{%$tplData.info.query%}"||"{%$tplData['query']%}" // 搜索词
    });
</script>

{%* 知心分类需求卡片 *%}
{%function tg_zx_fn_img_list items=[] count_per_line=4 max_line_count=2%}
    {%$item_count = $items|count%}
    {%$max_item_count = $count_per_line * $max_line_count%}
    {%if $item_count > 0%}
        {%if $item_count > $max_item_count%}
            {%$items = array_slice($items, 0, $max_item_count)%}
            {%$item_count = $max_item_count%}
        {%/if%}
        
        {%foreach $items as $item%}
            {%$index = $item@index%}
            {%$iter = $item@iteration%}
            {%$line_begin = $index%$count_per_line == 0%}
            {%strip%}
            <div class="ecl-tg-item {%if $line_begin%}ecl-tg-item-line-begin{%/if%}">
                <div class="ecl-tg-item-img">

                    <a href="{%$item.url%}&pos=img" target="_blank" class="ecl-tg-item-img-link"
                        title="{%$item.desc|escape:'html'%}"
                        data-click="{rsv_click_value:'{%$index%}'}">
                        <img src="{%$item.img|escape:'html'%}" width="121" height="80">
                    </a>
                    <div class="ecl-tg-item-img-mask">
                        <a href="{%$item.url%}&pos=mask" target="_blank" 
                            data-click="{rsv_click_value:'{%$index%}'}"
                            class="ecl-tg-item-img-mask-link">
                        </a>
                        <div class="ecl-tg-item-purchased"><i>{%$item.purchased|escape:'html'%}</i>人已团</div>
                        <div class="ecl-tg-item-area">{%$item.area|escape:'html'%}</div>
                        <a href="{%$item.url%}&pos=gosee" target="_blank"  
                            data-click="{rsv_click_value:'{%$index%}'}"
                            class="ecl-tg-item-gosee">
                            去看看
                        </a>
                    </div>
                </div>
                <div class="ecl-tg-item-desc">
                    <a href="{%$item.url%}&pos=title" target="_blank"
                        class="ecl-tg-item-desc-link"
                        title="{%$item.desc|escape:'html'%}"
                        data-click="{rsv_click_value:'{%$index%}'}">
                        {%$item.desc|escape:'html'%}
                    </a>
                </div>
                <div class="ecl-tg-item-price">
                    <span class="ecl-tg-item-price-wrap">￥{%$item.price|escape:'html'%}</span>
                    <span class="ecl-tg-item-oriprice-wrap ecl-tg-ml10">￥{%$item.ori_price|escape:'html'%}</span>
                </div>
            </div>
            {%/strip%}
        {%/foreach%}
    {%/if%}
{%/function%}

<div class="ecl-tg ecl-tg-catg">
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
        <div class="ecl-tg-list ecl-tg-img-list ecl-tg-clear" id="TgZxList"
            data-click="{rsv_click_type:'list'}">
            {%tg_zx_fn_img_list items=$tplData.data.list count_per_line=4 max_line_count=2%}
        
        </div>
        <div class="ecl-tg-link-more {%if $tplData.data.total <= 8%}ecl-tg-hidden{%/if%}" id="TgZxLinkMore" data-total="{%$tplData.data.total%}">
            <a href="{%$info.more_url%}&pos=all" target="_blank">
                {%$info.more_text|escape:'html'%}
            </a>
        </div>
    </div>
    <div class="ecl-tg-bottom" id="TgZxBottom">
        {%tg_zx_fn_bottom data=$info%}
    </div>
</div>

<script type="text/javascript">
    A.init(function(){var t=jQuery;t.extend({format:function(t,e){var a=t,i=Array.prototype.slice.call(arguments,1),l=Object.prototype.toString;return i.length?(i=1==i.length?null!==e&&/\[object Array\]|\[object Object\]/.test(l.call(e))?e:i:i,a.replace(/#\{(.+?)\}/g,function(t,e){var a=i[e];return"[object Function]"==l.call(a)&&(a=a(e)),"undefined"==typeof a?"":a})):a}});var e,a,i=this.data._tuanCityData,l=this.data._tuanAjaxUrl,n=this.data._type,r=this.data._query,c=i.current.id,s=i.current.text,o=t("#TgZxList"),d=t("#TgZxCityBtn"),u=t("#TgZxCityOverlay"),p=!0;
this.dispose=function(){t(document).unbind("click",f.documentClickHandler),p||(p=!0,e=null),clearTimeout(a)};var g=function(){d.bind("click",function(t){t.stopPropagation(),u.toggle()}),t(document).bind("click",f.documentClickHandler);var e=t("#TgZxCityTabs").children(),a=t("#TgZxCityItems").children();e.each(function(i,l){t(l).bind("click",function(){e.removeClass("ecl-tg-city-tab-active"),t(l).addClass("ecl-tg-city-tab-active"),a.hide(),a.eq(i).show()})}),t("#TgZxContent").bind("click",function(e){var a=e.target,i=t(a);
if(t(a).hasClass("ecl-tg-filter-link")){e.preventDefault();var l=a.parentNode.parentNode.parentNode,n=t(l).find(".ecl-tg-filter-link");n.each(function(e,a){t(a).removeClass("ecl-tg-filter-link-active")}),n.removeClass("ecl-tg-filter-link-active"),i.addClass("ecl-tg-filter-link-active"),f.sendRequest(l.parentNode.getAttribute("data-type"))}else if(i.hasClass("ecl-tg-city-item")){var r=t(a.parentNode.parentNode).find(".ecl-tg-city-item");t(r).each(function(e,a){t(a).removeClass("ecl-tg-city-item-active")}),i.addClass("ecl-tg-city-item-active"),c=i.attr("data-id"),s=i.html(),f.sendRequest("city"),u.hide(),t("#TgZxCityLabel").html(i.html())
}else if(i.hasClass("ecl-tg-filter-more")||t(a=a.parentNode).hasClass("ecl-tg-filter-more")){var o=t(a.parentNode),d="ecl-tg-filter-area-expand";o.hasClass(d)?o.removeClass(d):o.addClass(d)}})},v=['<div class="ecl-tg-item #{cls_line_begin}">','<div class="ecl-tg-item-img">','<a href="#{url}&pos=img" target="_blank" class="ecl-tg-item-img-link" ','title="#{desc}" ',"data-click=\"{rsv_click_value:'#{index}'}\">",'<img src="#{img}" width="121" height="80">',"</a>",'<div class="ecl-tg-item-img-mask">','<a href="#{url}&pos=mask" target="_blank" ',"data-click=\"{rsv_click_value:'#{index}'}\" ",'class="ecl-tg-item-img-mask-link">',"</a>",'<div class="ecl-tg-item-purchased"><i>#{purchased}</i>人已团</div>','<div class="ecl-tg-item-area">#{area}</div>','<a href="#{url}&pos=gosee" target="_blank" class="ecl-tg-item-gosee">',"去看看","</a>","</div>","</div>",'<div class="ecl-tg-item-desc">','<a href="#{url}&pos=title" target="_blank" ','class="ecl-tg-item-desc-link" ','title="#{desc}" ',"data-click=\"{rsv_click_value:'#{index}'}\">","#{desc}","</a>","</div>",'<div class="ecl-tg-item-price">','<span class="ecl-tg-item-price-wrap">￥#{price}</span>','<span class="ecl-tg-item-oriprice-wrap ecl-tg-ml10">￥#{ori_price}</span>',"</div>","</div>"].join(""),f={bindItemHoverAnimate:function(){t(".ecl-tg-item-img").bind("mouseover",function(e){var a=t(e.currentTarget).find(".ecl-tg-item-img-mask");
a.stop().animate({top:0},500)}),t(".ecl-tg-item-img").bind("mouseout",function(e){var a=t(e.currentTarget).find(".ecl-tg-item-img-mask");a.stop().animate({top:"64px"},500)})},genCityItems:function(e){var a=[],i=e.hot,l=e.all,n='<li class="OP_LOG_BTN ecl-tg-city-item" data-id="#{id}" data-click="{rsv_click_value:\'#{id}\'}">#{text}</li>';a.push("<ul>");for(var r=0,c=i.length;c>r;r++)a.push(t.format(n,i[r]));for(a.push("</ul>"),r=0,c=l.length;c>r;r++){var s=(l[r].text,l[r].subcity);a.push('<ul style="display:none;">');
for(var o=0,d=s.length;d>o;o++)a.push(t.format(n,s[o]));a.push("</ul>")}t("#TgZxCityItems").html(a.join(""))},getParams:function(e){var a={};if("city"!=e){var i=t("#TgZxFilters").find(".ecl-tg-filter-area");i.each(function(e,i){var l=t(i).attr("data-type")+"_id",n=t(i).find(".ecl-tg-filter-link-active")[0];if(n){var r=t(n).attr("data-id");a[l]=r}})}return a.pos=e,a.city_id=c,a.type=n,a.query=r,a.time_stamp=(new Date).valueOf(),a},getAjaxUrl:function(t){var e=f.getParams(t),a=f.jsonToQuery(e),i=l.indexOf("?")>-1?"&":"?",n=l+i+a;
return n},sendRequest:function(a){p=!1,e=f.getSuccessHandler(a),t.ajax(f.getAjaxUrl(a),{dataType:"jsonp",jsonp:"cb",success:e,charset:"utf-8",timeOut:6e3}),e=void 0},reload:function(e,a){if(t("#TgZxContent").removeClass("ecl-tg-content-city-no-data"),t("#TgZxContent").removeClass("ecl-tg-content-filter-no-data"),0==e.data.total){"city"!=a?(f.renderFilters(e.filter),t("#TgZxContent").addClass("ecl-tg-content-filter-no-data")):t("#TgZxContent").addClass("ecl-tg-content-city-no-data")}else f.renderList(e.data.list,{has_num:!1}),f.renderFilters(e.filter);
f.renderLinks(t.extend(e.info,{total:e.data.total}))},renderList:function(e,a){if(!(e instanceof Array&&e.length>0))return List.innerHTML="",void 0;a=a||{},a=t.extend({count_per_line:4,max_line_count:2},a||{});var i=a.count_per_line,l=a.max_line_count,n=i*l,r=e.length;r>n&&(e=e.slice(0,n),r=n);for(var c=[],s=0,d=r;d>s;s++){var u=e[s],p=s%i==0,g="";p&&(g="ecl-tg-item-line-begin"),c.push(t.format(v,t.extend(u,{cls_line_begin:g})))}o[0].innerHTML=c.join(""),f.bindItemHoverAnimate()},renderFilters:function(e){var a=[];
e=e||{};var i=!0,l=0,n={category:{label:"分类",type:"catg",need_truncate:!0},district:{label:"区域",type:"dist",need_truncate:!0},price:{label:"价格",type:"price",need_truncate:!1}};for(var r in e){var c=n[r];if(c){var s=e[r];if(s&&!(s instanceof Array&&0==s.length)){i=!1,l++;var o={label:c.label,type:c.type,first:1==l,count_per_line:1==l?4:5,need_truncate:c.need_truncate};a.push(f.getFilterHtml(e[r],o))}}}i&&a.push('<div class="ecl-tg-filter-empty">为您找到以下团购：</div>'),t("#TgZxFilters")[0].innerHTML=a.join("")},getFilterHtml:function(e,a){var i=[];
if(!(e instanceof Array&&e.length>0))return"";a=t.extend({count_per_line:5,max_line_count:3,label:"",type:"",first:!1,need_truncate:!1},a||{});var l=a.count_per_line,n=a.max_line_count,r=a.label,c=a.type,s=a.first,o=a.need_truncate,d=e.length,u=l*n,p="",g="";d>u&&(e=e.slice(0,u),d=u),s&&(g="ecl-tg-filter-area-first"),i.push('<div class="ecl-tg-filter-area #{first_cls} ecl-tg-clear #{expand_cls}" data-click="{fm:\'beha\'}" data-type="#{type}">'),i.push(' <div class="ecl-tg-filter-label">#{label}：</div>'),i.push(' <div class="ecl-tg-filter-container" data-click="{rsv_click_type:\'#{type}\'}">');
for(var v=0;d>v;v++){var f=[],h=e[v],m=v%l==0,_=v%l==l-1,y=v==d-1;m&&f.push('<div class="ecl-tg-filter-line ecl-tg-clear">'),f.push('<div class="ecl-tg-filter-wrap'),(_||y)&&f.push(" ecl-tg-filter-wrap-line-last"),f.push('">');var k=h.text;h.truncated_text=k;var x=!1;o&&k.length>5&&(k=k.substr(0,4)+"...",h.truncated_text=k,x=!0),h.disable?f.push("<span>#{truncated_text}</span>"):(f.push('<a href="javascript:void(0)" data-id="#{id}" data-click="{rsv_click_value:\'#{id}\'}" class="ecl-tg-filter-link'),h.checked&&(f.push(" ecl-tg-filter-link-active"),v>=l&&(p="ecl-tg-filter-area-expand")),x?f.push('" title="#{text}"'):f.push('"'),f.push(">#{truncated_text}"),f.push("</a>")),f.push("</div>"),(_||y)&&f.push("</div>"),i.push(t.format(f.join(""),h))
}return i.push(" </div>"),d>l&&(i.push('<div class="ecl-tg-filter-more" data-click="{rsv_click_type:\'#{type}_more\'}">'),i.push(' <span class="ecl-tg-filter-expand-wrap">更多</span>'),i.push(' <span class="ecl-tg-filter-collapse-wrap">收起</span>'),i.push("</div>")),i.push("</div>"),t.format(i.join(""),{label:r,type:c,expand_cls:p,first_cls:g})},renderLinks:function(e){var a=[];e=e||{},a.push(" 没有相应团单，欢迎查看#{current_city}的"),a.push(' <a href="#{city_no_data_url}&pos=citynodata" target="_blank">其他团购</a>'),t("#TgZxCityNoData")[0].innerHTML=t.format(a.join(""),{current_city:s,city_no_data_url:e.city_no_data_url}),a=[],a.push('<a href="#{title_url}&pos=head" class="ecl-tg-title-link" target="_blank" data-click="{rsv_click_type:\'title\'}">'),a.push("#{title}"),a.push("</a>"),t("#TgZxTitle")[0].innerHTML=t.format(a.join(""),e),a=[],a.push('<a href="#{more_url}&pos=all" target="_blank" data-click="{rsv_click_type:\'see_more\'}">'),a.push("#{more_text}"),a.push("</a>"),e.total<=8?t("#TgZxLinkMore").addClass("ecl-tg-hidden"):t("#TgZxLinkMore").removeClass("ecl-tg-hidden"),t("#TgZxLinkMore")[0].innerHTML=t.format(a.join(""),e),a=[],e.other_label&&(a.push('<div class="ecl-tg-link-promotion">'),a.push("#{other_label}？"),a.push('<a href="#{other_url}&pos=more" target="_blank">查看更多</a>'),a.push("</div>")),e.promotion_label&&(a.push('<div class="ecl-tg-link-promotion">'),a.push("#{promotion_label}："),a.push('<a href="#{promotion_url}&pos=activity" target="_blank">#{promotion_text}</a>'),a.push("</div>")),a.push('<div class="ecl-tg-footer">'),a.push("tuan.baidu.com"),a.push("</div>"),t("#TgZxBottom")[0].innerHTML=t.format(a.join(""),e)
},documentClickHandler:function(e){var a=e.target;t.contains(u[0],a)||u.hide()},jsonToQuery:function(t){var e=[];for(var a in t)t.hasOwnProperty(a)&&e.push(a+"="+encodeURIComponent(t[a]));return e.join("&")},getSuccessHandler:function(t){return function(e){p=!0;var a=e;f.reload(a,t)}}};f.genCityItems(i),f.bindItemHoverAnimate(),g()});
</script>

{%/block%}