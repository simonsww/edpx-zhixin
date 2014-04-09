{%extends 'c_base.tpl'%} {%block name='content'%}{%$data=$tplData%}{%$xf_tmp_title="<h3><a href=\"`$data.url|escape:'html'`\" target=\"_blank\">`$data.title|escape:'html'`</a></h3>"%}{%$xf_tmp_logo1="<a href=\"`$data.url|escape:'html'`&is_pic=1\" target=\"_blank\"><img src=\"`$data.logo|escape:'html'`\"   rz=\"121\" dw=\"121\" dh=\"121\" /></a>"%}{%$xf_tmp_logo2="<a href=\"`$data.url|escape:'html'`&is_pic=1\" target=\"_blank\"><img src=\"`$data.logo|escape:'html'`\" rz=\"121\" dw=\"121\" dh=\"91\"/></a>"%} {%$xf_tmp_lv=$data.dimensionInfo.recommendLevel|escape:'html'%}{%if $xf_tmp_lv=='强烈推荐' || $xf_tmp_lv=='较好选择'%} {%$xf_tmp_lv="`$xf_tmp_lv`"%}{%/if%}{%$xf_tmp_mrlk="<a href=\"{%$data.moreInfo.url|escape:'none'%}\" target=\"_blank\">`$data.moreInfo.title|escape:'html'`</a>"%}{%$xf_tmp_dimensionInfo=$data.dimensionInfo%}{%$xf_tmp_commentTag=$data.commentTag%} {%$xf_tmp_cinfo=$data.compareInfo%} {%if $data.dimensionType=='brand'%} {%$xf_tmp_clogo1="<a href=\"`$xf_tmp_cinfo[0].url|escape:'html'`&is_pic=1\" target=\"_blank\"><img src=\"`$xf_tmp_cinfo[0].logo|escape:'html'`\" rz=\"1\" dw=\"121\" dh=\"91\"/></a>"%} {%$xf_tmp_clogo2="<a href=\"`$xf_tmp_cinfo[1].url|escape:'html'`&is_pic=1\" target=\"_blank\"><img src=\"`$xf_tmp_cinfo[1].logo|escape:'html'`\" rz=\"1\" dw=\"121\" dh=\"91\"/></a>"%} {%else%} {%$xf_tmp_clogo1="<a href=\"`$xf_tmp_cinfo[0].url|escape:'html'`&is_pic=1\" target=\"_blank\"><img src=\"`$xf_tmp_cinfo[0].logo|escape:'html'`\"   rz=\"1\" dw=\"121\" dh=\"121\" /></a>"%} {%$xf_tmp_clogo2="<a href=\"`$xf_tmp_cinfo[1].url|escape:'html'`&is_pic=1\" target=\"_blank\"><img src=\"`$xf_tmp_cinfo[1].logo|escape:'html'`\"   rz=\"1\" dw=\"121\" dh=\"121\" /></a>"%} {%/if%} {%if $xf_tmp_cinfo[0].support > $xf_tmp_cinfo[1].support%} {%$xf_tmp_clogo1="`$xf_tmp_clogo1`<div class=\"op_xf_cmp_mrsp\">更多支持</div>"%} {%elseif $xf_tmp_cinfo[1].support > $xf_tmp_cinfo[0].support%} {%$xf_tmp_clogo2="`$xf_tmp_clogo2`<div class=\"op_xf_cmp_mrsp\">更多支持</div>"%} {%/if%} {%$xf_tmp_ai0=$data.anchorInfo%} {%$xf_tmp_ai="<a href=\"`$xf_tmp_ai0.url|escape:'html'`\" target=\"_blank\">`$xf_tmp_ai0.title|escape:'html'`</a>"%} {%$xf_tmp_pers=[]%} {%$xf_tmp_c0=$data.detailInfo[0]%} {%$xf_tmp_c1=$data.detailInfo[1]%} {%$permax=0%} {%$rmax=0%} {%$perlen=44%} {%$minper=0.1%} {%foreach $xf_tmp_c0 as $key=>$item%} {%$per0=floatval($xf_tmp_c0[$key].value)%} {%$per1=floatval($xf_tmp_c1[$key].value)%} {%if $per0>1 || $per1>1%} {%if $per0>$rmax%} {%$rmax=$per0%} {%/if%} {%if $per1>$rmax%} {%$rmax=$per1%} {%/if%} {%else%} {%if $per0>$permax%} {%$permax=$per0%} {%/if%} {%if $per1>$permax%} {%$permax=$per1%} {%/if%} {%/if%} {%/foreach%} {%foreach $xf_tmp_c0 as $key=>$item%} {%$per0=floatval($xf_tmp_c0[$key].value)%} {%$per1=floatval($xf_tmp_c1[$key].value)%} {%if $per0>1 || $per1>1%} {%$pertxt0=$per0%} {%$pertxt1=$per1%} {%if $pertxt0>10000%} {%$pertxt0=intval($pertxt0/10000)%} {%$pertxt0="`$pertxt0`万"%} {%/if%} {%if $pertxt1>10000%} {%$pertxt1=intval($pertxt1/10000)%} {%$pertxt1="`$pertxt1`万"%} {%/if%} {%$pertxt0="`$pertxt0`"%} {%$pertxt1="`$pertxt1`"%} {%if $rmax%} {%$per0=$per0/$rmax%} {%if $minper > $per0%} {%$per0 = $minper %} {%/if%} {%$per1=$per1/$rmax%} {%if $minper > $per1%} {%$per1 = $minper %} {%/if%} {%else%} {%$per0=$minper%} {%$per1=$minper%} {%/if%} {%else%} {%$pertxt0=$per0*100%} {%$pertxt1=$per1*100%} {%$pertxt0="`$pertxt0`%"%} {%$pertxt1="`$pertxt1`%"%} {%if $data.dimensionType != 'brand'%} {%if $permax%} {%$per0=$per0/$permax%} {%if $minper > $per0%} {%$per0 = $minper %} {%/if%} {%$per1=$per1/$permax%} {%if $minper > $per1%} {%$per1 = $minper %} {%/if%} {%else%} {%$per0=$minper%} {%$per1=$minper%} {%/if%} {%/if%} {%/if%} {%$len0=$per0*$perlen%} {%$len1=$per1*$perlen%} {%$xf_tmp_pers[$item@index]="<li> <div class=\"op_xf_cmp_prmtxt\">`$item.key|escape:'html'`</div> <div class=\"op_xf_cmp_prmleft\"> <div class=\"op_xf_cmp_per c-gap-left-small\" style=\"width:`$len0|escape:'html'`px;\"></div> <div>`$pertxt0|escape:'html'`</div> </div> <div class=\"op_xf_cmp_prmright\"> <div class=\"op_xf_cmp_per c-gap-right-small\" style=\"width:`$len1|escape:'html'`px;\"></div> <div>`$pertxt1|escape:'html'`</div> </div> </li>"%} {%if $item@index>2%}{%break%}{%/if%} {%/foreach%} {%$xf_tmp_pers=implode('', $xf_tmp_pers)%}  <div class="op_xf_cmpbrd_content op_xf_cmpbrd_color333 c-abstract"> <div class="op_xf_cmpbrd_leftpart c-span6"> {%$xf_tmp_clogo1|escape:'none'%} </div> <div class="op_xf_cmpbrd_centerpart c-span12"> <div class="op_xf_cmpbrd_txttop"> &nbsp; </div> <ul class="op_xf_cmpbrd_txtbtm op_xf_cmpbrd_color666"> {%$xf_tmp_pers|escape:'none'%} </ul> </div> <div class="op_xf_cmpbrd_rightpart c-span-last c-span6"> {%$xf_tmp_clogo2|escape:'none'%} </div> </div> <div class="op_xf_cmpbrd_titles c-abstract"> <div class="op_xf_cmpbrd_titleleft c-span6"> <a href="{%$xf_tmp_cinfo[0].url|escape:'none'%}" target="_blank">{%$xf_tmp_cinfo[0].name|escape:'html'%}</a> </div> <div class="op_xf_cmpbrd_titlecenter c-span12"> {%$xf_tmp_ai|escape:'none'%} </div> <div class="op_xf_cmpbrd_titleright c-span6 c-span-last"> <a href="{%$xf_tmp_cinfo[1].url|escape:'none'%}" target="_blank">{%$xf_tmp_cinfo[1].name|escape:'html'%}</a> </div> </div> <div class="op_xf_cmpbrd_link c-abstract"> {%$xf_tmp_mrlk|escape:'none'%} </div> <script >
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