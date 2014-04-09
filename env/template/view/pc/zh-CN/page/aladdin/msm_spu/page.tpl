{%extends 'c_base.tpl'%} {%block name='content'%}{%$data=$tplData%}{%$xf_tmp_title="<h3><a href=\"`$data.url|escape:'html'`\" target=\"_blank\">`$data.title|escape:'html'`</a></h3>"%}{%$xf_tmp_logo1="<a href=\"`$data.url|escape:'html'`&is_pic=1\" target=\"_blank\"><img src=\"`$data.logo|escape:'html'`\"   rz=\"121\" dw=\"121\" dh=\"121\" /></a>"%}{%$xf_tmp_logo2="<a href=\"`$data.url|escape:'html'`&is_pic=1\" target=\"_blank\"><img src=\"`$data.logo|escape:'html'`\" rz=\"121\" dw=\"121\" dh=\"91\"/></a>"%} {%$xf_tmp_lv=$data.dimensionInfo.recommendLevel|escape:'html'%}{%if $xf_tmp_lv=='强烈推荐' || $xf_tmp_lv=='较好选择'%} {%$xf_tmp_lv="`$xf_tmp_lv`"%}{%/if%}{%$xf_tmp_mrlk="<a href=\"{%$data.moreInfo.url|escape:'none'%}\" target=\"_blank\">`$data.moreInfo.title|escape:'html'`</a>"%}{%$xf_tmp_dimensionInfo=$data.dimensionInfo%}{%$xf_tmp_commentTag=$data.commentTag%}  <div class="op_xf_spu_content op_xf_spu_color333 c-abstract c-row"> <div class="op_xf_spu_leftpart c-span6"> {%$xf_tmp_logo1|escape:'none'%} </div> <div class="op_xf_spu_centerpart c-span10"> <ul class="op_xf_spu_txttop"> <li>{%$xf_tmp_lv|escape:none%}</li> <li class="op_xf_spu_color666"> 参考价：<span class="op_xf_spu_colorf80">￥{%$data.price.price|escape:'html'%}</span> <span class="op_xf_spu_price c-gap-left-small">{%$data.price.trend|escape:'html'%}</span> </li> </ul> <div class="op_xf_spu_txtbtm"> <ul> <li>{%$xf_tmp_dimensionInfo.fbr|escape:'html'%}</li> <li>{%$xf_tmp_dimensionInfo.recent_sales.title|escape:'html'%}</li> <li>{%$xf_tmp_dimensionInfo.good_rate.title|escape:'html'%}</li> </ul> <ul class="op_xf_spu_color959494"> <li>&nbsp;</li> <li>(近期销量{%if $xf_tmp_dimensionInfo.recent_sales.value > 10%}：{%$xf_tmp_dimensionInfo.recent_sales.value|escape:'html'%}{%else%}少于10{%/if%})</li> <li>(好评率：{%if $xf_tmp_dimensionInfo.good_rate.value%}{%$xf_tmp_dimensionInfo.good_rate.value|escape:'html'%}%{%else%}暂无{%/if%})</li> </ul> </div> </div> <div class="op_xf_spu_rightpart c-span-last c-span8 c-span-last"> {%if $xf_tmp_commentTag.goodTag%} <dl class="op_xf_i_merit"> <dt>优点：</dt> <dd> <ul> {%foreach $xf_tmp_commentTag.goodTag as $tag%} {%if !($tag@index % 2)%} <li> {%/if%} {%if $tag@index>4 || $tag@last%} {%if strlen($xf_tmp_commentTag.goodTag[$tag@index-1].title) + strlen($tag.title)<16 %} <a href="{%$tag.url|escape:'none'%}" target="_blank">{%$tag.title|escape:'html'%}</a> {%/if%} {%else%} <a href="{%$tag.url|escape:'none'%}" target="_blank">{%$tag.title|escape:'html'%}</a> {%/if%} {%if $tag@index>4 || $tag@last%} <a href="{%$xf_tmp_commentTag.goodTagMore.url|escape:'none'%}" target="_blank"> {%$xf_tmp_commentTag.goodTagMore.title|escape:'html'%} </a> {%/if%} {%if ($tag@index % 2)%} </li> {%/if%} {%if $tag@index>4%}{%break%}{%/if%} {%/foreach%} </ul> </dd> </dl> {%/if%} {%if $xf_tmp_commentTag.badTag%} <dl class="op_xf_i_defect"> <dt>缺点：</dt> <dd> <ul> {%foreach $xf_tmp_commentTag.badTag as $tag%} {%if !($tag@index % 2)%} <li> {%/if%} {%if $tag@index>4 || $tag@last%} {%if strlen($xf_tmp_commentTag.badTag[$tag@index-1].title) + strlen($tag.title)<16 %} <a href="{%$tag.url|escape:'none'%}" target="_blank">{%$tag.title|escape:'html'%}</a> {%/if%} {%else%} <a href="{%$tag.url|escape:'none'%}" target="_blank">{%$tag.title|escape:'html'%}</a> {%/if%} {%if $tag@index>4 || $tag@last%} <a href="{%$xf_tmp_commentTag.badTagMore.url|escape:'none'%}" target="_blank"> {%$xf_tmp_commentTag.badTagMore.title|escape:'html'%} </a> {%/if%} {%if ($tag@index % 2)%} </li> {%/if%} {%if $tag@index>4%}{%break%}{%/if%} {%/foreach%} </ul> </dd> </dl> {%/if%} </div> </div> {%if $data.moreInfo%} <div class="op_xf_spu_link c-abstract"> {%$xf_tmp_mrlk|escape:'none'%} </div> {%/if%} <script >
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