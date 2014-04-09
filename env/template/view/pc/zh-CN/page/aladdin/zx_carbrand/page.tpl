{%extends 'c_base.tpl'%} {%block name="foot"%}{%/block%}{%block name="title"%}{%/block%}{%block name='content'%}{%function carbrand_c_title title='' url='' showgw='' icon_url='' highlightParam=0%}{%$titleLimitlen=58%}{%if $showgw%}{%$titleLimitlen = $titleLimitlen - 8%}{%/if%} {%if $icon_url%} {%$titleLimitLen = $titleLimitlen - 3%} {%/if%}<a href="{%$url%}" {%if $icon_url%}class="op-zx-carbrand-titleicon" style="background-image:url({%$icon_url%})"{%/if%} target="_blank">{%$title|limitlen:$titleLimitlen|highlight:{%$highlightParam%}%}</a>{%if $showgw%}<span class="icon-gw">官网</span>{%/if%}{%/function%}{%* 显示在结果下方的url，模拟自然结果 *%}{%function carbrand_c_showurl showurl='' date='' vtag='' shot_url=''%}<span class="c-showurl">{%$showurl|escape:'html'%}{%if $date%}&nbsp;{%$date|escape:'html'%}{%/if%}</span>{%if $vtag%}&nbsp;<span class="op-zx-carbrand-vtag"></span>{%/if%}{%if $shot_url != ''%}&nbsp;-&nbsp;<a href="{%$shot_url%}" target="_blank" class="op-zx-carbrand-shot">百度快照</a> {%/if%}{%/function%}{%* title *%}{%function carbrand_c_title_prefix%}<div class="op-zx-carbrand-title c-gap-bottom-small">{%/function%} {%* title end *%} {%function carbrand_c_title_suffix title='' url='' token='' backEndEncryption=''%}{%if $title===''%}{%$title=$tplData.title%}{%/if%}{%if $url===''%}{%$url=$tplData.url%}{%/if%}{%fe_fn_c_title_soucang title="{%$title|escape:'html'%}" url="{%$url%}" token="`$token`" backEndEncryption="`$backEndEncryption`"%}</div>{%/function%}<div class="c-abstract"> <div class="c-border"> {%* 第一条结果开始 *%} <div class="op-zx-carbrand-official"> {%* 标题 *%} {%carbrand_c_title_prefix%} {%carbrand_c_title title="{%$tplData.official.title%}" url="{%$tplData.official.url%}" showgw={%$tplData.official.showgw == '1'%} icon_url="{%$tplData.official.icon%}"%} {%carbrand_c_title_suffix title="{%$tplData.official.title%}" url="{%$tplData.official.url%}"%} {%* 内容 *%} <p>{%$tplData.official.content|limitlen:140|highlight:0%}</p> {%* 底部 url *%} {%carbrand_c_showurl showurl="{%$tplData.official.showurl%}" date="{%$tplData.official.date%}" vtag="{%isSet($tplData.official.v)%}" shot_url="{%$tplData.official.snapshot%}"%} {%* v标浮层 *%} {%$vSign = $tplData.official.v[0]%} {%if $vSign%} <div class="op-zx-carbrand-vsign"> <div class="op-zx-carbrand-arrow"> <span class="op-zx-carbrand-arrowout">◆</span> <span class="op-zx-carbrand-arrowin">◆</span> </div> <div class="op-zx-carbrand-vcon"> <p class="op-zx-carbrand-vname">{%$vSign.text|limitlen:40|escape:'html'%}</p> {%if $vSign.baiduUrl%} <p> <img src="http://s1.bdstatic.com/r/www/cache/res/static/certification/img/hinticon_ecom_v_89ee89c6.png" class="op-zx-carbrand-vicon">已通过<a href="{%$vSign.baiduUrl%}" target="_blank">百度身份认证</a> {%if $vSign.starLevel%} 百度信誉星级<span class="op-zx-carbrand-star" style="width:{%$vSign.starLevel*11|escape:'html'%}px"></span> {%/if%} </p> {%/if%} {%if $vSign.safeUrl%} <p> <img src="http://s1.bdstatic.com/r/www/cache/res/static/certification/img/hinticon_safeunion_32ce4cd4.png" class="op-zx-carbrand-vicon">由<a href="{%$vSign.safeUrl%}" target="_blank">安全联盟</a>认证的安全可信网站</p> {%/if%} </div> </div> {%/if%} </div> {%* 第二条结果开始 *%} <div class="op-zx-carbrand-baike"> {%* 标题 *%} {%carbrand_c_title_prefix%} {%carbrand_c_title title="{%$tplData.baike.title%}" url="{%$tplData.baike.url%}"%} {%carbrand_c_title_suffix title="{%$tplData.baike.title%}" url="{%$tplData.baike.url%}"%} {%* 内容 *%} <div class="c-row"> <div class="c-span6"> <a href="{%$tplData.baike.url%}" target="_blank" title="{%$tplData.baike.title|escape:'html'%}" style="background-image:url({%$tplData.baike.imgurl%})" class="op-zx-carbrand-baike-img"></a> </div> <div class="c-span18 c-span-last"> <span class="op-zx-carbrand-nowrap">{%$tplData.baike.text1|limitlen:54|escape:'html'%}</span> <span class="op-zx-carbrand-nowrap">{%$tplData.baike.text2|limitlen:54|escape:'html'%}</span> <span class="op-zx-carbrand-baike-abstract">{%$tplData.baike.text3|limitlen:140|escape:'html'%}</span> <span class="op-zx-carbrand-nowrap"> {%foreach $tplData.baike.links as $item%} <a href="{%$item.url%}" target="_blank" title="{%$item.name|escape:'html'%}">{%$item.name|limitlen:10|escape:'html'%}</a> {%if !$item@last%} - {%/if%} {%/foreach%} </span> </div> </div> {%* 底部 url *%} {%carbrand_c_showurl showurl="{%$tplData.baike.showurl%}" date="{%$tplData.baike.date%}" %} </div> {%* 第三条结果开始 *%} <div class="op-zx-carbrand-table"> {%* 标题 *%} {%$table = $tplData.table%} {%carbrand_c_title_prefix%} {%carbrand_c_title title="{%$tplData.table.title%}" url="{%$tplData.table.url%}"%} {%carbrand_c_title_suffix title="{%$tplData.table.title%}" url="{%$tplData.table.url%}"%} {%* 内容 *%} <table class="c-table"> <tr> <th>类型</th> <th colspan="5">车系</th> </tr> {%foreach $table.tr as $item%} <tr> <td class="op-zx-carbrand-tdtitle">{%$item.name|limitlen:6|escape:'html'%}</td> {%for $index= 1 to 5%} {%$name = $item["td{%$index%}name"]%} {%$url = $item["td{%$index%}url"]%} <td> {%if $name%} {%if $url%} <a href="{%$url%}" title="{%$name|escape:'html'%}" target="_blank">{%$name|limitlen:10|escape:'html'%}</a> {%else%} {%$name|limitlen:10|escape:'html'%} {%/if%} {%elseif $index != 5%} <span class="op-zx-carbrand-simsun">-</span> {%/if%} </td> {%/for%} </tr> {%/foreach%} </table> {%if $table.moretext %} <div class="op-zx-carbrand-morelink"> <a href="{%$table.moretext[0].url%}" target="_blank" title="{%$table.moretext[0].name|escape:'html'%}">{%$table.moretext[0].name|limitlen:50|escape:'html'%}</a> </div> {%/if%} {%* 底部 url *%} {%carbrand_c_showurl showurl="{%$tplData.table.showurl%}" date="{%$tplData.table.date%}" %} </div> </div></div>{%/block%}