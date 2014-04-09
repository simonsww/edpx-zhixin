{%extends 'c_base.tpl'%}

{%block name='title'%}{%/block%}
{%block name='content'%}

<style type="text/css">
    .ecl-tg{position:relative;width:540px;font-size:12px;font-family:"宋体"}.ecl-tg-hidden{display:none}.ecl-tg-display-block{display:block}.ecl-tg-clearfix:before,.ecl-tg-clearfix:after{content:"";display:table}.ecl-tg-clearfix:after{clear:both}.ecl-tg-clearfix{font-size:0;line-height:0;_width:538px;_height:1px;*width:538px;*height:1px;*zoom:1}.ecl-tg-float-left{float:left}.ecl-tg-title{margin:0;margin-bottom:10px;padding:4px 0 0;line-height:1;font-size:16px;color:#00c;font-weight:normal;text-decoration:underline}
.ecl-tg-title em{color:#c00;font-style:normal}.ecl-tg-thumb-canyinmeishi{background:url(http://tuan.baidu.com/event/zhixin/canyinmeishi.jpg) no-repeat}.ecl-tg-thumb-xiuxianyule{background:url(http://tuan.baidu.com/event/zhixin/xiuxianyule.jpg) no-repeat}.ecl-tg-thumb-shenghuofuwu{background:url(http://tuan.baidu.com/event/zhixin/shenghuofuwu.jpg) no-repeat}.ecl-tg-thumb-wangshanggouwu{background:url(http://tuan.baidu.com/event/zhixin/wangshanggouwu.jpg) no-repeat}.ecl-tg-thumb-jiudianlvyou{background:url(http://tuan.baidu.com/event/zhixin/jiudianlvyou.jpg) no-repeat}
.ecl-tg-thumb-liren{background:url(http://tuan.baidu.com/event/zhixin/liren.jpg) no-repeat}.ecl-tg-thumb-dianying{background:url(http://tuan.baidu.com/event/zhixin/dianying.jpg) no-repeat}.ecl-tg-main{width:538px;border:1px solid #ebebeb;margin-bottom:10px;box-shadow:#eee 1px 1px 1px 0}.ecl-tg-main .ecl-tg-ctg-list{width:528px;padding:10px 5px;_padding-bottom:0}.ecl-tg-main .ecl-tg-ctg-list .ecl-tg-ctg{width:78px;margin:5px;text-align:center}.ecl-tg-main .ecl-tg-ctg-list .ecl-tg-ctg .ecl-tg-link{text-decoration:none;cursor:pointer}
.ecl-tg-main .ecl-tg-ctg-list .ecl-tg-ctg .ecl-tg-thumb{width:78px;height:78px;background-size:78px 78px;position:relative;overflow:hidden}.ecl-tg-main .ecl-tg-ctg-list .ecl-tg-ctg .ecl-tg-thumb .ecl-tg-ctg-amount{position:absolute;bottom:0;left:0;width:74px;color:#fff;padding:2px;background:rgba(0,0,0,0.7);_background:#000;*background:#000;background:#000\0;filter:alpha(opacity=70)}.ecl-tg-main .ecl-tg-ctg-list .ecl-tg-ctg .ecl-tg-ctg-name{color:#00c;font-size:13px;margin-top:10px;text-decoration:none}.ecl-tg-main .ecl-tg-ctg-list .ecl-tg-ctg .ecl-tg-ctg-name:hover{text-decoration:underline}
.ecl-tg-main .ecl-tg-view-more{_width:538px;padding:10px;text-align:center;border-top:1px solid #ebebeb}.ecl-tg-main .ecl-tg-view-more .ecl-tg-view-more-text{text-decoration:none}.ecl-tg-main .ecl-tg-view-more .ecl-tg-view-more-text em{text-decoration:none}.ecl-tg-main .ecl-tg-view-more .ecl-tg-view-more-text:hover{border-bottom:1px solid #00c}.ecl-tg-additional{width:540px}.ecl-tg-additional .ecl-tg-hot-list{margin:0 0 10px 0}.ecl-tg-additional .ecl-tg-hot-list .ecl-tg-hot{margin-right:15px}.ecl-tg-footer{margin-top:-3px;font:13px Arial;color:#008000}
.ecl-tg-footer .ecl-tg-baidu-verified-icon{display:inline-block;width:14px;height:14px;vertical-align:text-bottom;margin-left:5px;background:url(http://tuan.baidu.com/event/zhixin/baidu_verified.jpg) no-repeat}.ecl-tg-footer .ecl-tg-baidu-verified-text{color:#4bad37;font-family:"宋体";font-weight:bold}
</style>

{%$MAX_NUM=6%}
{%$MAX_WIDTH=500%}
<div class="ecl-tg" id="ecl-tg-index">
    <h4 class="ecl-tg-title">
		<a id="ecl-tg-title" href="{%$tplData.title_url|escape:none%}?utm_source=baidu&utm_medium=zhixin_fan_title&cid=002516" target="_blank" data-href="{%$tplData.title_url|escape:none%}" data-click="{rsv_click_type:'title'}">
			{%$tplData.title|escape:none%}
		</a>
	</h4>
    <div class="ecl-tg-main">
		{%if is_array($tplData.ctg)%}
		<ul class="ecl-tg-ctg-list">
			{%$i_counter=0%}
			{%foreach $tplData.ctg as $ctg%}
			{%if $MAX_NUM>$i_counter%}
			<li class="ecl-tg-ctg ecl-tg-float-left">
				<a href="{%$ctg.link|escape:none%}?utm_source=baidu&utm_medium=zhixin_fan_{%$ctg.py|escape:html%}_img_{%$ctg@index+1%}&cid=002516" target="_blank" class="ecl-tg-link ecl-tg-display-block" title="{%$ctg.name|escape:html%}"
					data-click="{rsv_click_type:'{%$ctg.py|escape:html%}_img',rsv_click_value:'{%$ctg.py|escape:html%}_img'}">
					<div class="ecl-tg-thumb ecl-tg-thumb-{%$ctg.py|escape:html%}">
						<p class="ecl-tg-ctg-amount">
							{%$ctg.goods_amount|escape:html%}个
						</p>
					</div>
				</a>
				<a href="{%$ctg.link|escape:none%}?utm_source=baidu&utm_medium=zhixin_fan_{%$ctg.py|escape:html%}_text_{%$ctg@index+1%}&cid=002516" target="_blank" class="ecl-tg-link ecl-tg-display-block" title="{%$ctg.name|escape:html%}"
					data-click="{rsv_click_type:'{%$ctg.py|escape:html%}_text',rsv_click_value:'{%$ctg.py|escape:html%}_text'}">
					<p class="ecl-tg-ctg-name">
						{%$ctg.name|escape:html%}
					</p>
				</a>
			</li>
			{%$i_counter=$i_counter+1%}
			{%/if%}
			{%/foreach%}
			<li class="ecl-tg-clearfix"></li>
		</ul>
		{%/if%}
		<p class="ecl-tg-view-more">
			<a href="{%$tplData.view_all_url|escape:none%}?utm_source=baidu&utm_medium=zhixin_fan_all&cid=002516" target="_blank" class="ecl-tg-view-more-text"
				data-click="{rsv_click_type:'all',rsv_click_value:'all'}">
				查看{%$tplData.total_goods|escape:html%}个<em>{%$tplData.city.current|escape:html%}团购</em>>>
			</a>
		</p>
	</div>
		<div class="ecl-tg-additional">
		{%if is_array($tplData.hot_region)&&!empty($tplData.hot_region.sub_ctg)&&is_array($tplData.hot_region.sub_ctg)%}
		<ul class="ecl-tg-hot-list">
			<li class="ecl-tg-hot-title ecl-tg-float-left">
				热门地区：
			</li>
			{%$i_counter=0%}
			{%foreach $tplData.hot_region.sub_ctg as $hr%}
			{%if $MAX_NUM>$i_counter%}
			<li class="ecl-tg-hot ecl-tg-float-left">
				<a href="{%$hr.link|escape:none%}&utm_source=baidu&utm_medium=zhixin_fan_remendiqu_{%$hr.py|escape:html%}_{%$hr@index+1%}&cid=002516" target="_blank" class="ecl-tg-hot-name" title="{%$hr.name|escape:html%}"
					data-click="{rsv_click_type:'remendiqu',rsv_click_value:'remendiqu_{%$hr.py|escape:html%}'}">
					{%$hr.name|escape:html%}
				</a>
			</li>
			{%$i_counter=$i_counter+1%}
			{%/if%}
			{%/foreach%}
			<li class="ecl-tg-hot ecl-tg-float-left">
				<a href="{%$tplData.hot_region.link|escape:none%}?utm_source=baidu&utm_medium=zhixin_fan_remendiqu_more&cid=002516" target="_blank" class="ecl-tg-hot-name" title="更多热门地区"
					data-click="{rsv_click_type:'remendiqu',rsv_click_value:'remendiqu_more'}">
					更多>>
				</a>
			</li>
			<li class="ecl-tg-clearfix"></li>
		</ul>
		{%/if%}
		{%if is_array($tplData.hot_business)&&!empty($tplData.hot_business.sub_ctg)&&is_array($tplData.hot_business.sub_ctg)%}
		<ul class="ecl-tg-hot-list">
			<li class="ecl-tg-hot-title ecl-tg-float-left">
				热门商圈：
			</li>
			{%$i_counter=0%}
			{%foreach $tplData.hot_business.sub_ctg as $hb%}
			{%if $MAX_NUM>$i_counter%}
			<li class="ecl-tg-hot ecl-tg-float-left">
				<a href="{%$hb.link|escape:none%}&utm_source=baidu&utm_medium=zhixin_fan_remenshangquan_{%$hb.py|escape:html%}_{%$hb@index+1%}&cid=002516" target="_blank" class="ecl-tg-hot-name" title="{%$hb.name|escape:html%}"
					data-click="{rsv_click_type:'remenshangquan',rsv_click_value:'remenshangquan_{%$hb.py|escape:html%}'}">
					{%$hb.name|escape:html%}
				</a>
			</li>
			{%$i_counter=$i_counter+1%}
			{%/if%}
			{%/foreach%}
			<li class="ecl-tg-hot ecl-tg-float-left">
				<a href="{%$tplData.hot_business.link|escape:none%}" target="_blank" class="ecl-tg-hot-name" title="更多热门商圈"
					data-click="{rsv_click_type:'remenshangquan',rsv_click_value:'remenshangquan_more'}">
					更多>>
				</a>
			</li>
			<li class="ecl-tg-clearfix"></li>
		</ul>
		{%/if%}
	</div>
	<div class="ecl-tg-footer">
		www.nuomi.com
	</div>
</div>



<script type="text/javascript">
    {%*include file="page.js"*%}
</script>

{%/block%}