{%extends 'c_base.tpl'%} {%block name='content'%}{%$data=$tplData%}{%$xf_tmp_title="<h3><a href=\"`$data.url|escape:'html'`\" target=\"_blank\">`$data.title|escape:'html'`</a></h3>"%}{%$xf_tmp_logo1="<a href=\"`$data.url|escape:'html'`&is_pic=1\" target=\"_blank\"><img src=\"`$data.logo|escape:'html'`\"   rz=\"121\" dw=\"121\" dh=\"121\" /></a>"%}{%$xf_tmp_logo2="<a href=\"`$data.url|escape:'html'`&is_pic=1\" target=\"_blank\"><img src=\"`$data.logo|escape:'html'`\" rz=\"121\" dw=\"121\" dh=\"91\"/></a>"%} {%$xf_tmp_lv=$data.dimensionInfo.recommendLevel|escape:'html'%}{%if $xf_tmp_lv=='强烈推荐' || $xf_tmp_lv=='较好选择'%} {%$xf_tmp_lv="`$xf_tmp_lv`"%}{%/if%}{%$xf_tmp_mrlk="<a href=\"{%$data.moreInfo.url|escape:'none'%}\" target=\"_blank\">`$data.moreInfo.title|escape:'html'`</a>"%}{%$xf_tmp_dimensionInfo=$data.dimensionInfo%}{%$xf_tmp_commentTag=$data.commentTag%}  <div class="op_xf_ser_content op_xf_ser_color333 c-abstract c-row"> <div class="op_xf_ser_leftpart c-span6"> {%$xf_tmp_logo1|escape:'none'%} </div> <div class="op_xf_ser_centerpart c-span10"> <ul class="op_xf_ser_txttop"> <li>{%$xf_tmp_lv|escape:none%}</li> {%if $data.prices.max_price%} <li class="op_xf_ser_color666"> 最高配参考价： <span class="op_xf_ser_colorf80">￥{%$data.prices.max_price|escape:'html'%}</span> </li> {%/if%} {%if $data.prices.min_price%} <li class="op_xf_ser_color666"> 最低配参考价： <span class="op_xf_ser_colorf80">￥{%$data.prices.min_price|escape:'html'%}</span> </li> {%/if%} </ul> <div class="op_xf_ser_txtbtm"> <ul> <li>{%$xf_tmp_dimensionInfo.attention_degree.title|escape:'html'%}</li> <li>{%$xf_tmp_dimensionInfo.recent_sales.title|escape:'html'%}</li> <li>{%$xf_tmp_dimensionInfo.good_rate.title|escape:'html'%}</li> </ul> <ul class="op_xf_ser_color959494"> <li>(搜索量{%if $xf_tmp_dimensionInfo.attention_degree.value > 10%}：{%$xf_tmp_dimensionInfo.attention_degree.value|escape:'html'%}{%else%}少于10{%/if%})</li> <li>(近期销量{%if $xf_tmp_dimensionInfo.recent_sales.value > 10%}：{%$xf_tmp_dimensionInfo.recent_sales.value|escape:'html'%}{%else%}少于10{%/if%})</li> <li>(好评率：{%if $xf_tmp_dimensionInfo.good_rate.value%}{%$xf_tmp_dimensionInfo.good_rate.value|escape:'html'%}%{%else%}暂无{%/if%})</li> </ul> </div> </div> <div class="op_xf_ser_rightpart c-span-last c-span8"> {%if $xf_tmp_commentTag.goodTag%} <ul class="op_xf_i_merit"> <li> 优点： {%$xf_tmp_strlen = 0%} {%foreach $xf_tmp_commentTag.goodTag as $tag%} {%$xf_tmp_strlen = $xf_tmp_strlen + strlen($tag.title)%} {%if $tag@index %} {%if $xf_tmp_strlen < 22%} <a href="{%$tag.url%}" target="_blank">{%$tag.title|escape:'html'%}</a> {%/if%} {%else%} <a href="{%$tag.url%}" target="_blank">{%$tag.title|escape:'html'%}</a> {%/if%} {%if $tag@index || $tag@last%} <a href="{%$xf_tmp_commentTag.goodTagMore.url|escape:'none'%}" target="_blank"> {%$xf_tmp_commentTag.goodTagMore.title|escape:'html'%} </a> {%/if%} {%if $tag@index%}{%break%}{%/if%} {%/foreach%} </li> </ul> {%/if%} {%if $xf_tmp_commentTag.badTag%} <ul class="op_xf_i_defect"> <li> 缺点： {%$xf_tmp_strlen = 0%} {%foreach $xf_tmp_commentTag.badTag as $tag%} {%$xf_tmp_strlen = $xf_tmp_strlen + strlen($tag.title)%} {%if $tag@index %} {%if $xf_tmp_strlen < 22%} <a href="{%$tag.url%}" target="_blank">{%$tag.title|escape:'html'%}</a> {%/if%} {%else%} <a href="{%$tag.url%}" target="_blank">{%$tag.title|escape:'html'%}</a> {%/if%} {%if $tag@index || $tag@last%} <a href="{%$xf_tmp_commentTag.badTagMore.url|escape:'none'%}" target="_blank"> {%$xf_tmp_commentTag.badTagMore.title|escape:'html'%} </a> {%/if%} {%if $tag@index%}{%break%}{%/if%} {%/foreach%} </li> </ul> {%/if%} {%if !empty($data.hotList.hot_list)%} <dl class="op_xf_ser_morespu"> <dt> {%$data.hotList.recommend_title.title|escape:'html'%} </dt> <dd> <ul> {%foreach $data.hotList.hot_list as $item%} <li> <a title="{%$item.title%}" href="{%$item.url|escape:'none'%}" target="_blank"> {%if strlen($item.title)>20%} {%$item.title|limitlen:20|escape:'html'%} {%else%} {%$item.title|escape:'html'%} {%/if%} </a> </li> {%if $item@index%}{%break%}{%/if%} {%/foreach%} </ul> </dd> </dl> {%/if%} </div> </div> {%if $data.moreInfo%} <div class="op_xf_ser_link c-abstract"> {%$xf_tmp_mrlk|escape:'none'%} </div> {%/if%}  <script >
A.setup(function() {
	var imgs = document.getElementsByTagName('img');
	var callback = function(e) {
		var url = e.src;
		var t = Number(e.getAttribute('dw'));
		var n = Number(e.getAttribute('dh'));
		t ? n || (n = t) : t = n = 150;
		var r = t / n;
		var i = this;
		var s = i.width,
		o = i.height,
		u = s / o,
		a, l;
		u > r ? (a = t, l = t / u) : (l = n, a = n * u),
		e.style.width = Math.floor(a) + "px",
		e.style.height = Math.floor(l) + "px",
		e.style.padding = Math.floor((n - l) / 2) + "px " + Math.floor((t - a) / 2) + "px"
	};
	var rsImg = function(obj) {
		var img = new Image;
		img.onload = function() {
			callback.call(this, obj);
		};
		img.src = obj.src;
		if (img.complete) callback.call(img, obj);
	};
	for (var i = 0,
	len = imgs.length; i < len; i++) {
		var e = imgs[i];
		if (e.getAttribute('rz')) {
			if (e.complete) {
				rsImg(e);
			} else {
				e.onload = function() {
					rsImg(this)
				};
			}
		}
	};
});
</script>{%/block%}