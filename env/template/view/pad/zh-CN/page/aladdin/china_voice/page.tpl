{%extends 'c_base.tpl'%} {%block name="data_modifier"%} {%$extData.feData.hasShowURLGap = true%}{%/block%}{%block name='title'%} {%* 标题 *%} {%fe_fn_c_title_prefix%} {%if $tplData.showgw%}{%$titleLimitlen=56%}{%else%}{%$titleLimitlen=62%}{%/if%} {%if $tplData.displayUrl%} <a href="{%$tplData.url%}" target="_blank">{%$tplData.title|limitlen:$titleLimitlen|highlight:0%}</a> {%else%} <div class="op_china_voice_title_bold">{%$tplData.title|limitlen:$titleLimitlen|highlight:0%}</div> {%/if%} {%if $tplData.showgw%}{%fe_fn_c_showgw%}{%/if%} {%fe_fn_c_title_suffix%}{%/block%}{%block name='content'%}<style data-merge>{%fe_fn_c_css css='tabs'%}{%fe_fn_c_css css='img'%}.op_china_voice_title_bold{font-size:1.08em;font-weight:bold}.op_china_voice_item{display:block;position:relative}.op_china_voice_itemname{display:block;text-align:center;overflow:hidden}.op_china_voice_itemname a{white-space:nowrap}.op_china_voice_tip{background:#fcfcfc;text-align:center;cursor:pointer;border-bottom:1px solid #f0f0f0}.op_china_voice_tip .op_china_voice_tipbtn{display:inline-block;padding:5px 0;color:#666;cursor:pointer}.op_china_voice_linktitle{font-size:16px;font-weight:normal{%*i*%}}.op_china_voice_status{position:absolute;color:#fff;width:16px;height:32px;line-height:15px;top:0;left:0;text-align:center;font-size:12px;text-decoration:none;cursor:pointer;background:url(http://www.baidu.com/aladdin/img/chinavoice/sign.png) no-repeat}.op_china_voice_status_red{background-position:0 0}.op_china_voice_status_yellow{background-position:-26px 0}.op_china_voice_status_blue,.op_china_voice_status_undefined{background-position:-52px 0}.op_china_voice_status_{background-position:-52p{%*i*%}x 0}.op_china_voice_more_spacing{height:8px;overflow:hidden}</style>{%$tempDataStatusMap=['晋级'=>'red', '复活'=>'yellow', '离开'=>'blue','冠军'=>'red', '亚军'=>'red', '季军'=>'red']%}<div> {%if $tplData.tag.link%} {%$tplData.tag = array( $tplData.tag )%} {%/if%} {%* 如果第一个 tag 有 name 属性，则认为有 tab 标签组 *%} {%if $tplData.tag[0].name && $tplData.tag[0].name != ''  %} <ul class="c-tabs-nav"> {%foreach $tplData.tag as $item%} <li class="c-tabs-nav-li OP_LOG_BTN{%if $item@first%} c-tabs-nav-selected{%/if%} op_china_voice_tabtag" data-click="{fm:'beha'}">{%$item.name|escape:'html'%}</li> {%if !$item@last%}<li class="c-tabs-nav-sep" style="visibility: hidden;"></li>{%/if%} {%/foreach%} </ul> {%/if%} {%* 主要内容区 *%} {%$defaultList = $tplData.tag[0].link%} <div class="op_china_voice_list"{%if !$tplData.tag[0].name%} style="margin-top:-10px;"{%/if%}> {%* 图片列表 *%} <ul class="c-clearfix"> {%foreach array_slice($defaultList, 0, 6) as $item%} {%if $item.param%} {%$itemUrl = {%build_search_url params="`$item.param`"%}%} {%else%} {%$itemUrl = $item.href%} {%/if%} <li class="c-gap-top c-span4{%if $item@index == 5%} c-span-last{%/if%}"> <a class="op_china_voice_item" href="{%$itemUrl%}" title="{%$item.name%}" target="_blank"> <img class="c-img c-img4" src="{%$item.imgurl%}" alt="{%$item.name%}" /> {%if $item.status%} <div class="op_china_voice_status op_china_voice_status_{%$tempDataStatusMap[{%$item.status%}]%}">{%$item.status|escape%}</div> {%/if%} </a> <span class="c-gap-top-small op_china_voice_itemname"> <a href="{%$itemUrl%}" target="_blank" title="{%$item.name%}">{%$item.name|limitlen:10|escape:'html'%}</a> </span> {%if $item.musicname%} <span class="c-gap-top-small op_china_voice_itemname"> <a href="{%$itemUrl%}" target="_blank" title="{%$item.musicname%}">{%$item.musicname|limitlen:10|escape:'html'%}</a> </span> {%/if%} </li> {%/foreach%} </ul> {%if $tplData.more[0]['title']%} <div><a href="{%$tplData.more[0]['url']%}" target="_blank">{%$tplData.more[0]['title']%}</a></div> <div class="op_china_voice_more_spacing">&nbsp;</div> {%else%} {%*点击查看更多*%} {%if !$tplData.more[0]['title'] && $defaultList|@count > 6%} <div class="c-gap-top-small op_china_voice_tip"> <span class="op_china_voice_tipbtn OP_LOG_BTN" data-click="{fm:'beha'}">{%$tplData.tips[0].show|escape:'html'%}<i class="c-icon c-icon-chevron-bottom op_china_voice_arrbottom c-gap-icon-left-small"></i></span> </div> {%/if%} {%/if%} </div></div><script >
    A.setup({
        tips: [ '{%$tplData.tips[0].show|escape:"html"%}', '{%$tplData.tips[0].hidden%}' ],
        tags: [
            {%foreach $tplData.tag as $item%}
            [
                {%foreach $item.link as $ls%}
                {
              		nameOrigin: '{%$ls.name|escape:'javascript'|escape%}',
              		name: '{%$ls.name|limitlen:10|escape:'javascript'|escape%}',
                	musicnameOrign: '{%$ls.musicname|escape:'javascript'|escape%}',
                	musicname: '{%$ls.musicname|limitlen:10|escape:'javascript'|escape%}',
                    imgUrl: '{%$ls.imgurl%}',
                    url: '{%if $ls.param%}{%build_search_url params="`$ls.param`"%}{%else%}{%$ls.href%}{%/if%}',
              		status: '{%$ls.status%}'
                }
                {%if !$ls@last%},{%/if%}
                {%/foreach%}
            ]
            {%if !$item@last %},{%/if%}
            {%/foreach%}
        ],
      	statusMap:{%json_encode($tempDataStatusMap)%}
    });
</script><script data-merge> A.setup(function(){var _this = this,data = _this.data,showDefault,buildElement,changeTab,curIndex = 0,tabBox = _this.find('.op_china_voice_tabcontent')[0],tabs = _this.find('.op_china_voice_tabtag'),wrap = _this.find('.op_china_voice_list')[0],list = _this.data.tags;buildElement = function( obj, index ) {obj = $.extend( {}, obj );obj.status = obj.status ? '<div class="op_china_voice_status op_china_voice_status_'+_this.data.statusMap[obj.status]+'">' + obj.status + '{%*i*%}</div>' :'';obj.musicname = obj.musicname ? '<span class="c-gap-top-small op_china_voice_itemname"><a href="'+obj.url+'" target="_blank" title="'+obj.musicnameOrign+'">'+obj.musicname+'</a></span>':'';return '<li class="c-gap-top c-span4' + ((index+1)%6==0?' c-span-last':'') + '">\<a class="op_china_voice_item" href="{url}" title="{nameOrigin}" target="_blank">\<img class="c-img c-img4" src="{imgUrl}" alt="{nameOrigin}" />\{status}\</a>\<span class="c-gap-top-small op_china_voice_itemname">\<a h{%*i*%}ref="{url}" target="_blank" title="{nameOrigin}">{name}</a>\</span>\{musicname}\</li>'.replace( /{([^}]*)}/g, function( match, ret ) {return typeof obj[ ret ] == 'string' ? obj[ ret ] : match;});};showDefault = function( list, all ) {var html = '<ul class="c-clearfix">', i,l = all || list.length < 6 ? list.length : 6;for ( i = 0; i < l; i ++ ) {html += buildElement( list[i], i);}html += '</ul>';if ( list.length > 6 ) {html += '<div class="c-gap-top-small op_china_voice_tip"><span class="op_china{%*i*%}_voice_tipbtn OP_LOG_BTN" data-click="{fm:\'beha\'}">{showtip}<i class="c-gap-icon-left-small c-icon c-icon-chevron-{sign} op_china_voice_arr{sign}"></i></span></div>'.replace( '{showtip}', _this.data.tips[ all ? 1 : 0] ).replace( /\{sign\}/g, all ? 'top' : 'bottom' );}wrap.innerHTML = html;};changeTab = function( index ) {var selectClass = 'c-tabs-nav-selected';tabs.each(function(i,v){$(v).removeClass(selectClass);});tabs.eq(index).addClass(selectClass);showDefault( list[ index ] );curIndex = i{%*i*%}ndex;};if ( tabs ) {tabs.each(function(i,v){$(v).click(function(){changeTab( i );});});}$(wrap).click(function(e){var obj = e.target,parent,flag;if ( ( obj.className + ( parent = obj.parentNode ).className + parent.parentNode.className ).indexOf( 'op_china_voice_tip' ) > -1) {if ( !_this.find( '.op_china_voice_arrtop' )[0] ) {flag = true;}showDefault( list[ curIndex ], !!flag );}});});</script>{%/block%}