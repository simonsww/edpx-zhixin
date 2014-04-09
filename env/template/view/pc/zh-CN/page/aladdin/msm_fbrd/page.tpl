{%extends 'c_base.tpl'%} {%block name='content'%}{%$data=$tplData%}{%$xf_tmp_title="<h3><a href=\"`$data.url|escape:'html'`\" target=\"_blank\">`$data.title|escape:'html'`</a></h3>"%}{%$xf_tmp_logo1="<a href=\"`$data.url|escape:'html'`&is_pic=1\" target=\"_blank\"><img src=\"`$data.logo|escape:'html'`\"   rz=\"121\" dw=\"121\" dh=\"121\" /></a>"%}{%$xf_tmp_logo2="<a href=\"`$data.url|escape:'html'`&is_pic=1\" target=\"_blank\"><img src=\"`$data.logo|escape:'html'`\" rz=\"121\" dw=\"121\" dh=\"91\"/></a>"%} {%$xf_tmp_lv=$data.dimensionInfo.recommendLevel|escape:'html'%}{%if $xf_tmp_lv=='强烈推荐' || $xf_tmp_lv=='较好选择'%} {%$xf_tmp_lv="`$xf_tmp_lv`"%}{%/if%}{%$xf_tmp_mrlk="<a href=\"{%$data.moreInfo.url|escape:'none'%}\" target=\"_blank\">`$data.moreInfo.title|escape:'html'`</a>"%}{%$xf_tmp_dimensionInfo=$data.dimensionInfo%}{%$xf_tmp_commentTag=$data.commentTag%} {%$xf_tmp_rinfo=$data.recommendInfo%} {%$xf_tmp_lv=$xf_tmp_rinfo[0].dimensionInfo.recommendLevel|escape:'html'%} {%if $xf_tmp_lv=='强烈推荐' || $xf_tmp_lv=='较好选择'%} {%$xf_tmp_lv="`$xf_tmp_lv`"%} {%/if%}  {%foreach $xf_tmp_rinfo as $row%} {%if !$row@index%} <div class="c-abstract op_xf_fbrd_row1"> <span class="op_xf_fbrd_icon1 c-gap-right-small c-gap-top">1</span> <a class="op_xf_fbrd_ttxt" href="{%$row.url|escape:'none'%}" target="_blank">{%$row.name|escape:'html'%}</a> </div> <div class="op_xf_fbrd_content op_xf_fbrd_color333 c-abstract c-row op_xf_fbrd_border"> <div class="op_xf_fbrd_leftpart c-span6"> <a href="{%$row.url|escape:'none'%}&is_pic=1" target="_blank"> <img src="{%$row.logo|escape:'none'%}" rz="1" dw="121" dh="91" /> </a> </div> <div class="op_xf_fbrd_centerpart c-span10"> <ul class="op_xf_fbrd_txttop"> <li> {%$xf_tmp_lv|escape:none%}&nbsp;好评率：{%if $row.good_rate.title%}{%$row.good_rate.title|escape:'html'%}%{%else%}暂无{%/if%} </li> <li class="op_xf_fbrd_color666"> 近期销量{%if $row.dimensionInfo.recent_sales.value > 10%}：{%$row.dimensionInfo.recent_sales.value|escape:'html'%}{%else%}少于10{%/if%} {%if strlen($row.dimensionInfo.recent_sales.value) + strlen($row.dimensionInfo.attention_degree.value) > 9%} <br> {%else%} &nbsp; {%/if%} 搜索指数{%if $row.dimensionInfo.attention_degree.value > 10%}：{%$row.dimensionInfo.attention_degree.value|escape:'html'%}{%else%}少于10{%/if%} </li> </ul> <div class="op_xf_fbrd_txtbtm"> <ul> {%if !empty($row.commentTag.goodTag)%} <li>优点： {%$xf_tmp_strlen=0%} {%foreach $row.commentTag.goodTag as $item%} {%$xf_tmp_strlen = $xf_tmp_strlen + strlen($item.title)%} {%if $item@index %} {%if $xf_tmp_strlen < 22%} <a href="{%$item.url|escape:'none'%}" target="_blank">{%$item.title|escape:'html'%}</a>&nbsp; {%/if%} {%else%} <a href="{%$item.url|escape:'none'%}" target="_blank">{%$item.title|escape:'html'%}</a>&nbsp; {%/if%} {%if $item@index%} <a href="{%$row.commentTag.goodTagMore.url|escape:'none'%}" target="_blank"> {%$row.commentTag.goodTagMore.title|escape:'html'%} </a> {%break%} {%/if%} {%/foreach%} </li> {%/if%} {%if !empty($row.commentTag.badTag)%} <li>缺点： {%$xf_tmp_strlen=0%} {%foreach $row.commentTag.badTag as $item%} {%$xf_tmp_strlen = $xf_tmp_strlen + strlen($item.title)%} {%if $item@index %} {%if $xf_tmp_strlen < 22%} <a href="{%$item.url|escape:'none'%}" target="_blank">{%$item.title|escape:'html'%}</a>&nbsp; {%/if%} {%else%} <a href="{%$item.url|escape:'none'%}" target="_blank">{%$item.title|escape:'html'%}</a>&nbsp; {%/if%} {%if $item@index%} <a href="{%$row.commentTag.badTagMore.url|escape:'none'%}" target="_blank"> {%$row.commentTag.badTagMore.title|escape:'html'%} </a> {%break%} {%/if%} {%/foreach%} </li> {%/if%} </ul> </div> </div> <div class="op_xf_fbrd_rightpart c-span-last c-span8 c-span-last"> {%if !empty($row.hotList.hot_list)%} <ul> <li> {%$row.hotList.recommend_title.title|escape:'html'%} </li> {%foreach $row.hotList.hot_list as $r%} <li> <a title="{%$r.title|escape:'none'%}" href="{%$r.url|escape:'none'%}" target="_blank"> {%if strlen($r.title)>20%} {%$r.title|limitlen:20|escape:'html'%} {%else%} {%$r.title|escape:'html'%} {%/if%} </a> </li> {%if $r@index>1%} <li> <a href="{%$row.moreInfo.url|escape:'none'%}" target="_blank">{%$row.moreInfo.title|escape:'html'%}</a> </li> {%break%} {%/if%} {%/foreach%} </ul> {%/if%} </div> </div> {%else%} <div class="c-abstract op_xf_fbrd_row1 c-row op_xf_fbrd_border op_xf_tbr"> <div class="c-span7"> <span class="op_xf_fbrd_icon{%if $row@index>2%}4{%else%}{%$row@index+1%}{%/if%} c-gap-right-small c-gap-top">{%$row@index+1%}</span> <a class="op_xf_fbrd_ttxt" href="{%$row.url%}" target="_blank">{%$row.name|escape:'html'%}</a> </div> <div class="c-span6"> 近期销量{%if $row.recent_sales_rank > 200%}200名以后{%else%}：第{%$row.recent_sales_rank|escape:'html'%}名{%/if%} </div> <div class="c-span6"> 搜索指数{%if $row.attention_degree_rank > 200%}200名以后{%else%}：第{%$row.attention_degree_rank|escape:'html'%}名{%/if%} </div> <div class="c-span5 c-span-last"> <a href="{%$row.good_rate.url%}" target="_blank"> 好评率：{%if $row.good_rate.title%}{%$row.good_rate.title|escape:'html'%}%{%else%}暂无{%/if%} </a> </div> </div> {%/if%} {%/foreach%} <div class="op_xf_fbrd_link c-abstract c-row"> {%$xf_tmp_mrlk|escape:'none'%} </div> <script >
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