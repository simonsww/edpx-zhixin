{%extends 'c_base.tpl'%} {%block name="title"%}{%/block%}{%block name="foot"%}{%/block%}{%block name='content'%}<style>{%fe_fn_c_css css='tabs'%}{%fe_fn_c_css css='img'%}.op_videoidea_title{font-size:1.07em;font-weight:bold}.op_videoidea_top{font-size:.92em}.op_videoidea_condition{padding-top:3px}.op_videoidea_tags div{height:30px;line-height:30px}.op_videoidea_tag{margin:0 4px;color:#00c;cursor:pointer;padding:1px 4px 2px;*padding:2px 4px 0}.op_videoidea_select{background-color:#388bff;color:#fff}.op_videoidea_content{font-size:.92em}.op_videoidea_detailcnt{position:relative;margin-top:15px}.op_videoidea_imgwrap{height:180px}.op_videoidea_cntimg{height:180px;ov{%*i*%}erflow:hidden;z-index:4}.op_videoidea_imgangle{position:absolute;top:0;left:0;width:29px;height:29px;color:#fff;padding:1px 2px;cursor:pointer}.op_videoidea_imgwrap .op_videoidea_imgangle{top:0;left:0}.op_videoidea_new{background:url("http://www.baidu.com/aladdin/img/videoidea/triangle.png") no-repeat 0 -32px}.op_videoidea_hot{background:url("http://www.baidu.com/aladdin/img/videoidea/triangle.png") no-repeat 0 0}.op_videoidea_name{text-align:center}.op_videoidea_name a{text-decoration:none}.op_{%*i*%}videoidea_name a:hover{text-decoration:underline}.op_videoidea_star{width:85px;margin:auto}.op_videoidea_starwrap{margin:3px 2px 0 0}.op_videoidea_star i,.op_videoidea_star span{float:left}.op_videoidea_ep{text-align:center}.op_videoidea_noresult{padding:166px 0}.op_videoidea_noresult div{height:30px;line-height:30px;font-size:1.07em;width:345px;margin:auto}.op_videoidea_hidden{display:none}.op_videoidea_bold{font-weight:bold}.op_videoidea_page{margin:15px 0 10px;font-size:.92em;clear:both}.op_v{%*i*%}ideoidea_page p{color:#00c;text-align:center;line-height:19px}.op_videoidea_page_number,.op_videoidea_page_pre,.op_videoidea_page_next{border:1px solid #e7ecf0;text-align:center;font-weight:normal;cursor:pointer;margin:0 2px;padding:0 5px;display:inline-block}.op_videoidea_page_number_now{font-weight:bold;color:#000;margin:0 8px;display:inline-block;*border:1px solid #fff}.op_videoidea_page_more{color:#000}.op_videoidea_page_number:hover,.op_videoidea_page_pre:hover,.op_videoidea_page_next:hover{%*i*%}{border:1px solid #5a9ff1}</style>{%if $tplData.result[0].tvplay == true%}{%$tvplay = TRUE%}{%else%}{%$tvplay = FALSE%}{%/if%}{%if $tvplay%} {%$typetag = ["爱情", "喜剧", "动作", "古装", "科幻", "恐怖", "伦理", "惊悚", "战争"]%} {%$areatag = ["大陆", "香港", "台湾", "美国", "韩国", "日本", "泰国", "英国", "其它"]%} {%$timetag = ["2014", "2013", "2012", "2011", "00年代", "90年代", "80年代", "更早"]%}{%else%} {%$typetag = ['爱情', '喜剧', '动作', '剧情', '科幻', '恐怖', '伦理', '惊悚', '战争']%} {%$areatag = ['大陆', '香港', '台湾', '美国', '韩国', '日本', '泰国', '英国', '其他']%} {%$timetag = ['2014', '2013', '2012', '2011', '00年代', '90年代', '80年代', '更早']%}{%/if%}{%foreach $tplData.QueryTags as $item%} {%if in_array($item, $typetag)%}{%$typeExist = true%}{%continue%}{%/if%} {%if in_array($item, $areatag)%}{%$areaExist = true%}{%continue%}{%/if%} {%if in_array($item, $timetag)%}{%$timeExist = true%}{%continue%}{%/if%}{%/foreach%}<div class="op_videoidea_main c-border"> <div class="op_videoidea_title"> {%$extData.OriginQuery%}： </div> <div class="op_videoidea_top" data-click="{'fm':'beha'}"> <div class="op_videoidea_tags"> <div class="op_videoidea_type"{%if $typeExist%} style="display:none;"{%/if%}> <span style="color:#666">按类型：</span> <span class="op_videoidea_tag op_videoidea_all OP_LOG_BTN">全部</span> {%foreach $typetag as $item%} <span class="op_videoidea_tag OP_LOG_BTN">{%$item%}</span> {%/foreach%} </div> <div class="op_videoidea_area"{%if $areaExist%} style="display:none;"{%/if%}> <span style="color:#666">按地区：</span> <span class="op_videoidea_tag op_videoidea_all OP_LOG_BTN">全部</span> {%foreach $areatag as $item%} <span class="op_videoidea_tag OP_LOG_BTN">{%$item%}</span> {%/foreach%} </div> <div class="op_videoidea_time"{%if $timeExist%} style="display:none;"{%/if%}> <span style="color:#666">按年代：</span> <span class="op_videoidea_tag op_videoidea_all OP_LOG_BTN">全部</span> {%foreach $timetag as $item%} <span class="op_videoidea_tag OP_LOG_BTN">{%$item%}</span> {%/foreach%} </div> </div> <div class="op_videoidea_condition" style="display:none"> <span style="font-weight:bold;float:left;margin-right:10px;">当前筛选条件：</span> <a class="op_videoidea_fresh" href="###">重新筛选</a> <div style="clear:both;"></div> </div> </div> <div class="op_videoidea_content c-gap-top"> <ul class="c-tabs-nav"> {%if $tvplay%} <li class="c-tabs-nav-li c-tabs-nav-selected OP_LOG_BTN">最热电视剧</li> <li class="c-tabs-nav-li OP_LOG_BTN">最新电视剧</li> {%else%} <li class="c-tabs-nav-li c-tabs-nav-selected OP_LOG_BTN">最热电影</li> <li class="c-tabs-nav-li OP_LOG_BTN">最新电影</li> <li class="c-tabs-nav-li OP_LOG_BTN">用户好评</li> {%/if%} </ul> <div class="op_videoidea_maincnt"> <div class="op_videoidea_cntwrap c-clearfix" data-index="0"> <div class="op_videoidea_lastdiv"></div> </div> <div class="op_videoidea_cntwrap c-clearfix op_videoidea_hidden" data-index="1"> <div class="op_videoidea_lastdiv"></div> </div> <div class="op_videoidea_cntwrap c-clearfix op_videoidea_hidden" data-index="2"> <div class="op_videoidea_lastdiv"></div> </div> </div> <div class="op_videoidea_noresult op_videoidea_hidden"> <div><i class="c-icon c-icon{%*i*%}-warning c-gap-icon-right-small"></i>抱歉，没有找到符合条件的电影，请尝试其它分类。</div> </div> <div class="op_videoidea_page" style="display:none"></div> </div> <div class="op_videoidea_tempdata" style="display:none;"></div></div><script >
    A.setup({'data':[{%$loop_maxcount=count($tplData.result)%}{%for $op_loop_count=0 to 7%}{%if $op_loop_count<$loop_maxcount%}{'isNew': '{%$tplData.result[$op_loop_count]['isNew']%}','isHot':'{%$tplData.result[$op_loop_count]['isHot']%}','poster':'{%$tplData.result[$op_loop_count]['poster']%}','videoLink':'{%$tplData.result[$op_loop_count]['videoLink']%}','rate':'{%$tplData.result[$op_loop_count]['rate']%}','title':'{%$tplData.result[$op_loop_count]['title']%}','displayTitle':'{%$tplData.result[$op_loop_count]['displayTitle']%}','total':'{%$tplData.result[$op_loop_count]['total']%}'},{%else%}{%break%}{%/if%}{%/for%}{}].slice(0, -1)});
    A.setup({'tags':[{%$loop_maxcount=count($tplData.QueryTags)%}{%for $op_loop_count=0 to 30%}{%if $op_loop_count<$loop_maxcount%}'{%$tplData.QueryTags[$op_loop_count]%}',{%else%}{%break%}{%/if%}{%/for%}{}].slice(0, -1),'sid':'{%$extData.resourceid%}','allNum':{%$tplData.listNum%},'tvplay':'{%$tvplay|escape:'javascript'%}','badTags':{%if $tvplay%}['电视剧', '片']{%else%}['电影', '片']{%/if%}});
</script><script>A.setup(function(){var _this = this,$fresh = _this.find('.op_videoidea_fresh'),$tags = _this.find('.op_videoidea_tag'),cnt = _this.find('.op_videoidea_content')[0],noresult = _this.find('.op_videoidea_noresult')[0],$cntabs = _this.find('.c-tabs-nav-li'),urlData = _this.find('.op_videoidea_tempdata')[0],index = 0, tStamp = 0, hotnum = 0, newnum = 0, tvplay = _this.data.tvplay,pg;A.use('page', function(){var $dom_pageArea=_this.find('.op_videoidea_page');var pagePrm = { listNum : {%*i*%}Number(_this.data.allNum), nowPage : 1,endPage : undefined,pn : 0, rn : 8 };initDisplay();function initDisplay(){var tagslen = _this.data.tags.length,badTags = _this.data.badTags,tagMark = {'time':true,'type':true,'area':true};for(var i = 0; i < tagslen; i++){var badTag = false;for(var k = 0;k <badTags.length; k++){if( _this.data.tags[i] == badTags[k]){badTag = true;break;}}if (badTag) {continue;}var isIn = false;for(var j = 0;j < $tags.length; j++){if (_this.data.tags[i] == $tags.eq(j).html()){{%*i*%} $tags.eq(j).addClass('op_videoidea_select');var tagtype = $tags.eq(j).parent().attr("class").split('_')[2];createItem($tags.eq(j).html(), tagtype);isIn = true;tagMark[tagtype] = false;}}if (!isIn) {createItem(_this.data.tags[i], '');}}if (tagMark['type']) _this.find('.op_videoidea_type').find(".op_videoidea_all").eq(0).addClass('op_videoidea_select'); if (tagMark['time']) _this.find('.op_videoidea_time').find(".op_videoidea_all").eq(0).addClass('op_videoidea_select');if (tagMark['area']) _this.{%*i*%}find('.op_videoidea_area').find(".op_videoidea_all").eq(0).addClass('op_videoidea_select');var tempData = {'disp_data':_this.data.data,'listNum':_this.data.allNum},arr = [tempData],data = {'status':'0','t':'0','data':arr};addCnt(data);ifCond();}$cntabs.each(function(i,el){ $(el).on('click',function(){ if(!$(this).hasClass('c-tabs-nav-selected')){_this.find('.c-tabs-nav-selected').removeClass('c-tabs-nav-selected');$(this).addClass('c-tabs-nav-selected');index = i; _this.find('.op_videoidea_cntwr{%*i*%}ap').each(function(i,el){if (i == index) {$(el).removeClass('op_videoidea_hidden');} else if ( !$(el).hasClass('op_videoidea_hidden')){$(el).addClass('op_videoidea_hidden');}});initData();getData();}});});$tags.on('click',function(){var $thisWrap=$(this).parent(),type = $thisWrap.get(0).className.split('_')[2],$items = _this.find('.op_videoidea_item');var $this=$(this);if(!$this.hasClass('op_videoidea_select')){$this.addClass('op_videoidea_select').siblings('.op_videoidea_select').removeClass('o{%*i*%}p_videoidea_select');$items.each(function(i,el){if ( el.getAttribute('data-type') == type) {$(el).remove();}});if (!$this.hasClass('op_videoidea_all')) {createItem($this.html(), type);}initData();getData();ifCond();}else{if (!$this.hasClass('.op_videoidea_all')) {$this.removeClass('op_videoidea_select');$items.each(function(i,el){if ( el.getAttribute('data-cont') == $this.html()) {$(el).remove();}});if($thisWrap.find('.op_videoidea_select')[0] == undefined){$thisWrap.find('.op_videoidea_all').eq{%*i*%}(0).addClass('op_videoidea_select');}initData();getData();ifCond();}}});function createItem(cnt, type){var item = document.createElement('div');item.className = 'op_videoidea_item OP_LOG_BTN';item.innerHTML = cnt;item.setAttribute('data-type', type);item.setAttribute('data-cont', cnt);$(item).on('click',function(){if (type) {var $typewrap = _this.find('.op_videoidea_' + type), $typetags = $typewrap.find('.op_videoidea_select');hasOther = true;$typetags.each(function(i,el){if( el.innerHTML == ite{%*i*%}m.getAttribute('data-cont') ){$(el).removeClass('op_videoidea_select');} else {hasOther = false;}});if (hasOther) {$typewrap.find('.op_videoidea_all').eq(0).addClass('op_videoidea_select');;}}$(item).remove();initData();getData();ifCond();});$(item).insertBefore($fresh)} $fresh.on('click',function(){var $items = _this.find('.op_videoidea_item'),$selectTags = _this.find('.op_videoidea_select'),$tagAll = _this.find('.op_videoidea_all'); $items.each(function(el){$(el).remove();}); $selectTags.each({%*i*%}function(el){$(el).removeClass('.op_videoidea_select');});$tagAll.each(function(el){$(el).addClass('.op_videoidea_select'); });initData();getData();ifCond();});function ifCond() {var $items = _this.find('.op_videoidea_item'),$cond = _this.find('.op_videoidea_condition');if ( $items.length < 1 ) {if (!$cond.hasClass('op_videoidea_hidden')) {$cond.addClass('op_videoidea_hidden');}} else { $cond.removeClass('op_videoidea_hidden');}}function addCnt(data){if ( tStamp != data.t) {return;}if (data.stat{%*i*%}us == '0' && data.data[0].disp_data) {var len = data.data[0].disp_data.length,$wrap = _this.find('.op_videoidea_cntwrap').eq(index);pagePrm.listNum = data.data[0].listNum;if (len > 0) {initPageComp();var cntHtml = '';for(var i = 0; i < len && i < 8; i ++){cntHtml += createCntItem(data.data[0].disp_data[i], i);}$wrap.html(cntHtml);$(noresult).addClass('op_videoidea_hidden');} else {$(noresult).removeClass('op_videoidea_hidden');$wrap.html('');$dom_pageArea.css({display: 'none'});}} else {$(noresu{%*i*%}lt).removeClass('op_videoidea_hidden'); $wrap.html('');$dom_pageArea.css({display: 'none'});} }function createCntItem(data, itemIndex){var bgHtml = ['<div class="op_videoidea_detailcnt c-span6'],url = data.videoLink;if ( (itemIndex + 1) % 4 == 0) {bgHtml.push(' c-span-last');} bgHtml = bgHtml.concat(['"><div class="op_videoidea_imgwrap"><a target="_blank" href="',url,'"><img class="op_videoidea_cntimg c-img6"  src="',data.poster,'" /></a>']);if (data.isHot == 'true' && hotnum < 6) {bgHtml.push('{%*i*%}<span class="op_videoidea_imgangle op_videoidea_hot">热</span></div>');hotnum++;} else if (data.isNew == 'true' && newnum < 6) {bgHtml.push('<span class="op_videoidea_imgangle op_videoidea_new">新</span></div>');newnum++;} else {bgHtml.push('</div>');}var downHtml = [ '<div class="op_videoidea_name c-gap-top-small"><a target="_blank" href="',url,'" title="',data.title,'">',data.displayTitle,'</a></div>'];if (tvplay) {downHtml = downHtml.concat(['<div class="op_videoidea_ep c-row">',data.total,'</d{%*i*%}iv></div>']);} else {downHtml = downHtml.concat(['<div class="op_videoidea_star c-row"><i class="c-icon c-icon-star-gray op_videoidea_starwrap"><i class="c-icon c-icon-star" style="width:',data.rate*10,'%"></i></i><span>',data.rate,'</span></div></div>']);}return bgHtml.concat(downHtml).join('');}function getData(){var type = [],sortkey,time_more,url = 'http://opendata.baidu.com/api.php?format=json&rn=8&from_mid=1&sort_type=1&ie=utf-8&oe=utf-8&type=#{0}&sort_key=#{1}&pn=#{2}&query=#{3}&time_more{%*i*%}=#{4}&t=#{5}&resource_id=#{6}',$items = _this.find('.op_videoidea_item');tStamp = new Date().getTime();$items.each(function(i,el){var cont = el.getAttribute('data-cont');if (cont == '更早') {time_more = '1900_1979';} else {type.push(cont);}});switch (index) {case 0:sortkey = '';break;case 1:sortkey = '12';break;case 2:sortkey = '11';break;}$(noresult).addClass('op_videoidea_hidden');$.ajax({url:$.format(url, encodeURIComponent(type.join(',')), sortkey, pagePrm.pn, encodeURIComponent(tvplay?'电视剧':'{%*i*%}电影'), time_more, tStamp, _this.data.sid),dataType:'jsonp',success:addCnt,scriptCharset:'utf-8',jsonp:'cb'});};function initPageComp(){ if ($dom_pageArea.length ) {if (pagePrm.listNum > pagePrm.rn) {$dom_pageArea.css({display: 'block'}); pagePrm.endPage = Math.ceil(pagePrm.listNum / pagePrm.rn);pg=A.ui.page($dom_pageArea[0], pagePrm.nowPage, pagePrm.endPage, {onChange: function(nowPage, endPage){pagePrm.nowPage = nowPage;pagePrm.pn = (pagePrm.nowPage - 1) * pagePrm.rn;getData();}});} else {$dom_p{%*i*%}ageArea.css({display: 'none'}); };};};function initData(){pagePrm.nowPage = 1;pagePrm.listNum = 0;hotnum = 0;newnum = 0;pagePrm.pn = 0;};this.dispose = function(){pg&&pg.dispose&&pg.dispose();};});});</script>{%/block%}