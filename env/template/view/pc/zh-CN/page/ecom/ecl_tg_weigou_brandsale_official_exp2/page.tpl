{%extends 'c_base.tpl'%}
{%block name="title"%}{%/block%}
{%block name="foot"%}{%/block%}
{%block name='content'%}
<style type="text/css">
.ecl-tg-brandsale-official{position:relative;padding:5px 10px 0 0;font-size:13px;font-family:arial;width:538px}.ecl-tg-brandsale-official .game-title{height:23px;margin:0;padding:4px 0 0;line-height:1;font-size:16px;color:#00C;font-weight:normal;text-decoration:underline}.ecl-tg-brandsale-official .clearfix{clear:both}.ecl-tg-brandsale-official .brand-list{border:1px solid #e3e3e3;border-bottom-color:#e0e0e0;border-right-color:#ececec;box-shadow:1px 2px 1px rgba(0,0,0,0.072);-webkit-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-moz-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-o-box-shadow:1px 2px 1px rgba(0,0,0,0.072);filter:progid:DXImageTransform.Microsoft.Shadow(Strength=1,Direction=135,Color="#E2E2E2")\9;margin:3px 0 0 0;overflow:hidden;padding:9px 9px 0 9px}
.ecl-tg-brandsale-official .brand-list ul{display:block;overflow:hidden}.ecl-tg-brandsale-official .brand-list ul .item{display:inline-block;float:left;width:122px;height:123px;margin:0 10px 5px 0;overflow:hidden}.ecl-tg-brandsale-official .brand-list ul .item a{text-decoration:none;position:relative;overflow:hidden}.ecl-tg-brandsale-official .brand-list ul .item .pic{display:block;height:91px;width:121px;overflow:hidden}.ecl-tg-brandsale-official .brand-list ul .item .pic span{width:121px;padding:0;position:absolute;left:0;bottom:0}
.ecl-tg-brandsale-official .brand-list ul .item .pic .title{white-space:nowrap;text-overflow:ellipsis;overflow:hidden;color:#FFF;z-index:2;line-height:1.54;text-align:center}.ecl-tg-brandsale-official .brand-list ul .item .pic .bg{background:#000;filter:alpha(opacity=65);-moz-opacity:.65;opacity:.65;height:20px}.ecl-tg-brandsale-official .brand-list ul .item .desp{display:block}.ecl-tg-brandsale-official .brand-list ul .item .desp .cust{display:block;line-height:32px;text-align:center}.ecl-tg-brandsale-official .brand-list ul .item-right{margin-right:0}
.ecl-tg-brandsale-official .brand-list .see-more{font-family:simsum,"宋体",'Arial','Sans';clear:both;margin:0;text-align:center;border-top:1px solid #f3f3f3}.ecl-tg-brandsale-official .brand-list .see-more a{display:block;height:31px;overflow:hidden;line-height:32px}.ecl-tg-brandsale-official .brand-cmd{color:#666;margin-top:9px;margin-left:-1px;font-family:simsum,"宋体",'Arial','Sans'}
.ecl-tg-brandsale-official .brand-cmd a{color:#0000d5;display:inline-block;margin:0 8px 0 3px}.ecl-tg-brandsale-official .brand-showurl{color:#008000;margin:7px 0 0 0;font-family:Arial}
</style>
{%strip%}
<div class="ecl-tg-brandsale-official">
    <h4 class="game-title">
        <a target="_blank" data-click="{rsv_click_type:'title', 'fm': 'alop', 'rsv_click_value': '{%$tplData.list[0]['mid']%}'}" href="{%$tplData.title_info.url%}">{%$tplData.title_info.title%}</a>
    </h4>
    <div class="brand-list">
        <ul>
            {%foreach $tplData.list as $item%}
            <li class="item{%if ($item@index + 1)%4 == 0%} item-right{%/if%}" title="{%$item.title|escape:'html'%}" data-click="{'fm': 'alop', 'rsv_click_index': '{%$item@index%}'}">
                <a href="{%$item.url%}" target="_blank" class="pic" data-click="{rsv_click_type:'item'}">
                    <img src="{%$item.imgurl%}" width="121" height="91" />
                    <span class="bg"></span>
                    <span class="title">{%$item.rebate_cut%}</span>
                </a>
                <a href="{%$item.url%}" target="_blank" class="desp" data-click="{rsv_click_type:'title'}">
                    <span class="cust">{%$item.title%}</span>
                </a>
            </li>
            {%/foreach%}
        </ul>
        {%if $tplData.see_more%}
        <div class="see-more clear">
            <a href="{%$tplData.title_info.url%}" data-click="{rsv_click_type:'see_more'}" target="_blank">{%$tplData.see_more%}</a>
        </div>
        {%/if%}
        <div class="clearfix"></div>
    </div>
    <div class="brand-cmd">
        {%if !$tplData.noRecommend && count($tplData.recommend_list) > 0%}
            <span>相关推荐：</span>
            {%foreach $tplData.recommend_list as $item%}
            <a href="{%$item.href|escape:'html'%}" data-click="{rsv_click_type:'{%if !$item@last%}recommend{%else%}see_more{%/if%}','rsv_click_value':'{%$item.text|urlencode%}', 'rsv_click_index':{%$item@index%},'fm':'alop'}" target="_blank">{%$item.text|escape:'html'%}</a>
            {%/foreach%}
        {%else%}
            <a target="_blank" data-click="{rsv_click_type:'more',fm:'alop',rsv_click_value:'{%$tplData.list[0]['mid']%}'}" href="{%$tplData.title_info.url%}">{%if $tplData.recommendWord%}{%$tplData.recommendWord%}{%else%}更多品牌特卖>>{%/if%}</a>
        {%/if%}
    </div>
    <p class="brand-showurl">{%if $tplData.showurl%}{%$tplData.showurl%}{%else%}temai.baidu.com{%/if%}</p>
</div>
{%/strip%}
{%/block%}