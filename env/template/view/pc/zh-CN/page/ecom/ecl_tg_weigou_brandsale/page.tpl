{%extends 'c_base.tpl'%}
{%block name="title"%}{%/block%}
{%block name="foot"%}{%/block%}
{%block name='content'%}
<style type="text/css">
.ecl-tg-brand{position:relative;padding:5px 10px 0 0;font-size:12px;font-family:arial;top:~1px\9;_top:-2px}.ecl-tg-brand .clearfix:before,.ecl-tg-brand .clearfix:after{content:"";display:table}.ecl-tg-brand .clearfix:after{clear:both}.ecl-tg-brand .clearfix{zoom:1}.ecl-tg-brand .brand-title{height:25px;margin:0;padding:4px 0 0 0;font-family:simsum,"宋体",'Arial','Sans';font-size:16px;color:#00C;font-weight:normal;position:relative}
.ecl-tg-brand .brand-detail{margin:1px 0 10px 0;padding:10px 0 31px 9px;height:70px;width:527px;overflow:hidden;position:relative;border:1px solid #e4e4e4;-moz-box-shadow:1px 2px 3px #e2e2e2;-webkit-box-shadow:1px 2px 3px #e2e2e2;-o-box-shadow:1px 2px 3px #e2e2e2;-icab-box-shadow:1px 2px 3px #e2e2e2;-khtml-box-shadow:1px 2px 3px #e2e2e2;background:#FFF\9;filter:progid:DXImageTransform.Microsoft.Shadow(Strength=3,Direction=135,Color="#E2E2E2")\9;-ms-box-shadow:1px 2px 3px #e2e2e2;box-shadow:1px 2px 3px #e2e2e2}
.ecl-tg-brand .brand-detail em{text-decoration:none}.ecl-tg-brand .brand-detail .detail-pic{position:relative;top:-5px;display:block;height:100px;width:120px}.ecl-tg-brand .brand-detail .detail-pic a{position:absolute;width:100%;height:100%;background-position:center center;background-repeat:no-repeat;background-color:#FFF}.ecl-tg-brand .brand-detail .detail-pic span{position:absolute;right:0;white-space:nowrap;bottom:0;color:#FFF;background:#333;-ms-filter:alpha(opacity=60);filter:alpha(opacity=60);opacity:.6;padding:0 5px;line-height:16px;_padding-top:3px}
.ecl-tg-brand .brand-detail .detail-info{position:absolute;top:11px;left:140px;width:auto;height:93px}.ecl-tg-brand .brand-detail .detail-info .info-link{text-decoration:none;display:block;cursor:pointer}.ecl-tg-brand .brand-detail .detail-info .info-title{font-family:"Microsoft YaHei","微软雅黑","Microsoft JhengHei";font-size:18px;line-height:21px;height:28px;font-weight:500;color:#333}.ecl-tg-brand .brand-detail .detail-info .info-title span.wd{position:relative;color:#666;font-family:simsum,"宋体",'Arial','Sans';font-size:13px;top:-2px;left:10px;text-decoration:none}
.ecl-tg-brand .brand-detail .detail-info .info-desc{color:#333;font-family:simsum,"宋体",'Arial','Sans';font-size:13px;margin-bottom:17px;height:15px;overflow:hidden}.ecl-tg-brand .brand-detail .detail-info .info-purchase{padding:0 0 0 1px;outline:0}.ecl-tg-brand .brand-detail .detail-info .info-purchase .purchase-btn{display:inline-block;width:102px;height:34px;line-height:1000px;overflow:hidden;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tg-brand-resource.png?v=20131216") -111px 0}
.ecl-tg-brand .brand-detail .detail-info .info-purchase .purchase-btn:hover{background-position:-111px -33px}.ecl-tg-brand .brand-detail .detail-info .info-purchase .purchase-btn:active{background-position:-111px -66px}.ecl-tg-brand .brand-recommend{color:#666;font-family:simsum,"宋体",'Arial','Sans';font-size:13px;position:relative;left:-1px}.ecl-tg-brand .brand-recommend a{color:#0000d5;display:inline-block;margin:0 8px 0 3px}
.ecl-tg-brand .brand-showurl{color:#008000;margin:6px 0 0 1px;font-size:13px;*position:relative;*top:-1px}
</style>
{%strip%}
<div class="ecl-tg-brand">
    <h4 class="brand-title">
        <a target="_blank" data-click="{rsv_click_type:'title', 'fm': 'alop', 'rsv_click_value': '{%$tplData.list[0]['mid']%}'}" href="{%$tplData.title_info.url%}">{%$tplData.title_info.title%}</a>
    </h4>
    <div class="brand-detail clearfix">
        <div class="detail-pic">
            <a href="{%$tplData.list[0]['url']%}" data-click="{rsv_click_type:'item_img', 'fm': 'alop', 'rsv_click_value': '{%$tplData.list[0]['mid']%}'}" hidefocus="true" target="_blank" style="background-image:url({%$tplData.list[0]['brandlogo']|escape:'html'%})">
                <!--span>{%$tplData.list[0].source%}</span-->
            </a>
        </div>
        <div class="detail-info">
            <a class="info-link" href="{%$tplData.list[0]['url']%}" data-click="{rsv_click_type:'item_link', 'fm': 'alop', 'rsv_click_value': '{%$tplData.list[0]['mid']%}'}" hidefocus="true" target="_blank">
                <div class="info-title clearfix">
                    {%$tplData.list[0]['brandname']%}
                    <span class="wd">{%$tplData.list[0]['left_time']|escape:'html'%}</span>
                </div>
                <div class="info-desc">
                    {%$tplData.list[0]['title']|cat: "&nbsp;"|cat:$tplData.list[0]['rebate_origin']|limitlen:50: "..."%}
                </div>
            </a>
            <div class="info-purchase">
                <a href="{%$tplData.list[0]['url']%}" data-click="{rsv_click_type:'items_button', 'fm': 'alop', 'rsv_click_value': '{%$tplData.list[0]['mid']%}'}" hidefocus="true" target="_blank" class="purchase-btn">立即抢购</a>
            </div>
        </div>
    </div>
    {%if count($tplData.recommend_list) > 0%}
    <div class="brand-recommend">
        <span>相关推荐：</span>
        {%foreach $tplData.recommend_list as $item%}
        <a href="{%$item.href|escape:'html'%}" data-click="{rsv_click_type:'{%if !$item@last%}recommend{%else%}see_more{%/if%}', 'rsv_click_value': '{%$item.text|urlencode%}', 'rsv_click_index': {%$item@index%}, 'fm': 'alop'}" target="_blank">{%$item.text|escape:'html'%}</a>
        {%/foreach%}
    </div>
    {%/if%}
    <p class="brand-showurl">{%if $tplData.showurl%}{%$tplData.showurl%}{%else%}temai.baidu.com{%/if%}</p>
</div>
{%/strip%}
{%/block%}