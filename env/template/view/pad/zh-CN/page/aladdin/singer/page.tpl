{%extends 'c_base.tpl'%} {%block name='data_modifier'%} {%$originTitle=$tplData.title%} {%*type是singer，为歌手的歌；type是album，为专辑*%} {%if $tplData.type == "singer"%} {%$tplData.title="`$tplData.title`_{%if $tplData.newSongFlag%}最新{%/if%}歌曲免费试听下载_百度音乐"%} {%elseif $tplData.type == "album"%} {%$tplData.title="《`$tplData.title`》免费试听下载_百度音乐"%} {%elseif $tplData.type == "samesong" || $tplData.type == "filmsongs"%} {%$tplData.title="`$tplData.title`在线试听_{%if $tplData.copyright==1%}正版{%else%}高音质{%/if%}歌曲免费下载_百度音乐"%} {%/if%} {%$tplData.showurl="music.baidu.com"%} {%if $extData.resourceid&&$extData.resourceid lt 5999%}{%$extData.feData.fm='alop'%}{%/if%}{%/block%}{%block name='content'%}<style data-merge>{%fe_fn_c_css css="img"%}{%fe_fn_c_css css="btn"%}{%fe_fn_c_css css="table"%}.op-singer-songs input{margin:0;padding:0}.op-singer-info{position:relative}.op-singer-logo{position:absolute;top:0;right:0;width:64px;height:21px;background:url(http://www.baidu.com/aladdin/img/music/logo.jpg) no-repeat}.op-singer-earth{display:inline-block;width:12px;height:12px;background:url(http://www.baidu.com/aladdin/img/zx_mussong/earth.png) no-repeat}.op-singer-hot1{width:100px;position:relative;height:6px;background-color:#fff;overflow:hidden}.op-singer-hot2{position:absolute;top:0;lef{%*i*%}t:0;height:100%;background-color:#e5e5e5}.op-singer-mv{position:relative;top:2px}.op-singer-icon-piao{float:left;margin-top:5px;width:14px;height:14px;background:url(http://www.baidu.com/aladdin/img/music/piao.png) no-repeat;vertical-align:text-bottom}</style>{%*音乐域名*%}{%$musicHome="http://music.baidu.com/"%}{%$playHome="http://play.baidu.com/"%}{%$fm=$tplData.fm%}{%*热门歌曲id 或者 热门专辑id*%}{%$ids=implode("_", $tplData.ids)%}{%if $tplData.dsp=="pc"%} {%$hotUrl="`$playHome`?__methodName=mboxCtrl.playSong&__argsValue=`$ids`&fm=`$fm`&__o=aladin"%}{%else%} {%$hotUrl="`$musicHome`box?__methodName=mboxCtrl.playSong&__argsValue=`$ids`&fm=`$fm`&__o=aladin"%}{%/if%}{%if $tplData.type == "singer"%}{%*歌手*%}{%$artistUrl="`$musicHome`artist/`$tplData.singerIds[0]`?fm=`$fm`"%}{%$artistAlbumUrl="`$musicHome`artist/`$tplData.singerIds[0]`/album?fm=`$fm`"%}{%*更多*%}{%$escaped_moreText="更多`$tplData.singers[0]|highlight:0`的音乐"%}{%$moreUrl=$artistUrl%}<div class="c-row c-gap-bottom"> {%if $tplData.singerPic%} <div class="c-span6"> <a target="_blank" href="{%$artistUrl%}"> <img class="c-img c-img6" src="{%$tplData.singerPic%}"/> </a> </div> {%/if%} <div class="op-singer-info{%if $tplData.singerPic%} c-span18 c-span-last{%/if%}"> {%if $tplData.singerCountry%}<div><span class="c-gray">地区：</span>{%$tplData.singerCountry%}</div>{%/if%} {%if $tplData.singerBirth%}<div><span class="c-gray">生日：</span>{%$tplData.singerBirth%}{%if $tplData.singerStar%}({%$tplData.singerStar%}){%/if%}</div>{%/if%} <div><span class="c-gray">单曲：</span><a target="_blank" href="{%$artistUrl%}">{%$tplData.singerSongNum%}首</a></div> <div><span class="c-gray">专辑：</span>{%if $tplData.singerAlbumNum !=0%}<a target="_blank" href="{%$artistAlbumUrl%}">{%/if%}{%$tplData.singerAlbumNum%}张{%if $tplData.singerAlbumNum !=0%}</a>{%/if%}</div> <div class="c-gap-top"><a target="_blank" href="{%$hotUrl|escape%}" class="c-btn c-btn-primary"><i class="c-icon c-icon-play-white c-gap-icon-right-small"></i>播放TA的热门歌曲</a>{%*票务*%}{%if $tplData.ticketurl%}<span class="c-gap-left"><a target="_blank" href="{%if $tplData.ticketflag==="1"%}{%$tplData.ticketurl%}{%else%}javascript:;{%/if%}" class="c-btn {%if $tplData.ticketflag==="0"%} c-btn-disable{%/if%}"><i class="op-singer-icon-piao c-gap-icon-right-small"></i>抢购TA的演唱会门票</a></span>{%/if%}</div> {%if $tplData.showLogo==1%}<a target="_blank" href="{%$musicHome|escape%}" class="op-singer-logo"></a>{%/if%} </div></div>{%elseif $tplData.type == "album"%}{%*专辑*%}{%$albumUrl="`$musicHome`album/`$tplData.albumId`?fm=`$fm`"%}{%*更多*%}{%$escaped_moreText="查看全部歌曲"%}{%$moreUrl=$albumUrl%}<div class="c-row c-gap-bottom"> {%if $tplData.albumPic%} <div class="c-span6"> <a target="_blank" href="{%$albumUrl%}"> <img class="c-img c-img6" src="{%$tplData.albumPic%}"/> </a> </div> {%/if%} <div class="op-singer-info{%if $tplData.albumPic%} c-span18 c-span-last{%/if%}"> {%if $tplData.singers%}<div><span class="c-gray">歌手：</span>{%foreach $tplData.singers as $singer%}{%$artistUrl="`$musicHome`data/artist/redirect?id=`$tplData.singerIds[$singer@index]`?fm=`$fm`"%}{%if $singer@index > 0%} / {%/if%}{%if $tplData.singerIds[$singer@index]%}<a target="_blank" href="{%$artistUrl|escape%}">{%/if%}{%$singer|escape%}{%if $tplData.singerIds[$singer@index]%}</a>{%/if%}{%/foreach%}</div>{%/if%} {%if $tplData.albumPubTime%}<div><span class="c-gray">发行时间：</span>{%$tplData.albumPubTime%}</div>{%/if%} {%if $tplData.albumInfo%}<div><span class="c-gray">简介：</span>{%$tplData.albumInfo|limitlen:108%}<a target="_blank" href="{%$albumUrl%}" class="c-gap-left-small">详情</a></div>{%/if%} <div class="c-gap-top"><a target="_blank" href="{%$hotUrl|escape%}" class="c-btn c-btn-primary"><i class="c-icon c-icon-play-white c-gap-icon-right-small"></i>试听整张专辑</a></div> {%if $tplData.copyright==1%}<a target="_blank" href="{%$musicHome|escape%}" class="op-singer-logo"></a>{%/if%} </div></div>{%elseif $tplData.type == "samesong" || $tplData.type == "filmsongs"%}{%*更多*%} {%if $tplData.type == "samesong"%} {%$escaped_moreText="查看更多歌手的《`$originTitle|highlight:0`》"%} {%else%} {%$escaped_moreText="查看更多`$originTitle|highlight:0`"%} {%/if%}{%$moreUrl=$tplData.url%}{%/if%}{%*公用歌曲列表*%}<table class="c-table op-singer-songs"> <tr> <th><input type="checkbox" checked class="op-singer-checkall"/></th> <th>全选</th> <th {%if $tplData.type=="singer" || $tplData.type=="samesong" || $tplData.type=="filmsongs"%}colspan="3"{%else%}colspan="2"{%/if%}><a target="_blank" href="javascript:;" class="c-btn op-singer-btn"><i class="c-icon c-icon-play-blue c-gap-icon-right-small op-singer-btn-icon"></i>播放选中歌曲</a></th> {%if $tplData.type=="album"%} <th>热度</th> {%/if%} <th>播放</th> <th>歌词</th> <th>下载</th> </tr> {%foreach array_slice($tplData.songs, 0, 5) as $song%} {%*是否该出单曲页*%} {%if $tplData.dsp=="pc"%} {%*pc*%} {%$songPlayUrl="`$playHome`?__methodName=mboxCtrl.playSong&__argsValue=`$song.songId`&fm=`$fm`&__o=aladin"%} {%else%} {%*pad*%} {%$songPlayUrl="`$musicHome`song/`$song.songId`?fm=`$fm`"%} {%/if%} {%if $tplData.dsp=="pc" && !$song.songPage%} {%$songUrl=$songPlayUrl%} {%*歌词链接*%} {%$songLyricUrl="`$musicHome`search/lrc?key=`$song.song`&fm=`$fm`"%} {%else%} {%$songPageUrl="`$musicHome`song/`$song.songId`?fm=`$fm`"%} {%$songUrl=$songPageUrl%} {%$songLyricUrl="`$musicHome`song/`$song.songId`?fm=`$fm`#song_lyric"%} {%/if%} {%*mv*%} {%$songMvUrl="`$musicHome`mv/`$song.songId`?fm=`$fm`"%} {%*下载链接*%} {%$songDownloadUrl="`$musicHome`song/`$song.songId`/download?fm=`$fm`"%} {%if $tplData.type == "singer"%} {%*专辑链接*%} {%$songAlbumUrl="`$musicHome`album/`$song.albumId`?fm=`$fm`"%} {%/if%} <tr> <td><input type="checkbox" checked value="{%$song.songId|escape%}" class="op-singer-check"/></td> <td><span class="c-gray">0{%$song@index + 1%}</span></td> <td>{%if !$song.resourceType%}<span class="op-singer-earth"></span>{%/if%}</td> <td><a target="_blank" href="{%$songUrl|escape%}" title="{%$song.song|escape%}">{%$song.song|limitlen:20|escape%}</a>{%if $song.hasMv%}<a target="_blank" href="{%$songMvUrl%}" class="c-icon c-icon-mv op-singer-mv c-gap-icon-left-small" title="播放MV"></a>{%/if%}{%if $tplData.newSongFlag && $song@index==0 || !$tplData.newSongFlag && $song.isNew%}<i class="c-text c-text-danger c-gap-icon-left-small">新</i>{%/if%}</td> <td> {%if $tplData.type == "singer"%} {%if $song.album%}{%if $song.relateStatus!=1&&$song.relateStatus!=3%}<a target="_blank" href="{%$songAlbumUrl|escape%}" title="{%$song.album|escape%}">{%/if%}《{%$song.album|limitlen:20|escape%}》{%if $song.relateStatus!=1&&$song.relateStatus!=3%}</a>{%/if%}{%/if%} {%elseif $tplData.type == "album"%} <div class="op-singer-hot1"><div class="op-singer-hot2" style="width:{%($song.hot/$tplData.maxHot)*100%}%"></div></div> {%elseif $tplData.type == "samesong" || $tplData.type == "filmsongs"%} {%foreach $song.singers as $singer%} {%*歌手链接*%} {%$songSingerUrl="`$musicHome`artist/`$song.singerIds[$singer@index]`?fm=`$fm`"%} {%if $singer@index>0%} / {%/if%}{%if $song.relateStatus!=2&&$song.relateStatus!=3 && $song.singerIds[$singer@index]%}<a target="_blank" href="{%$songSingerUrl|escape%}" title="{%$singer|escape%}">{%/if%}{%$singer|limitlen:20|escape%}{%if $song.relateStatus!=2&&$song.relateStatus!=3 && $song.singerIds[$singer@index]%}</a>{%/if%} {%/foreach%} {%/if%} </td> <td><a target="_blank" href="{%$songPlayUrl|escape%}" class="c-icon c-icon-play-circle" title="播放"></a></td> <td><a target="_blank" href="{%$songLyricUrl|escape%}" class="c-icon c-icon-lyric" title="歌词"></a></td> <td><a target="_blank" href="{%$songDownloadUrl|escape%}" class="c-icon c-icon-download" title="下载"></a></td> </tr> {%/foreach%}</table><div class="c-gap-top-small"><a target="_blank" href="{%$moreUrl|escape%}">{%$escaped_moreText%}</a></div><script>A.setup({hotUrl:"{%$hotUrl%}"});</script><script data-merge>A.setup(function(){var _this = this;var checks = _this.find(".op-singer-check"),checkAll = _this.find(".op-singer-checkall").eq(0),btn = _this.find(".op-singer-btn").eq(0),icon = _this.find(".op-singer-btn-icon").eq(0),href=_this.data.hotUrl,btnDisableClass="c-btn-disable",iconDisableClass="c-icon-play-gray",iconEnableClass="c-icon-play-blue";btn.on("click", function(e){var me = this,_href = href,ids = [];$.each(checks, function(i, v){ if(v.checked){ids.push(v.val{%*i*%}ue); }});if(ids.length){_href=_href.replace(/(__argsValue=)((\d+_?)*)/, function(a,b,c){return (b+ids.join("_"));});$(me).attr("href", _href);}else{e.preventDefault();}});checkAll.on("click", function(){var me = this;if(me.checked){$.each(checks, function(i, v){v.checked = true;});EnsableBtn()}else{$.each(checks, function(i, v){v.checked = false;});disableBtn();}});$.each(checks, function(i, v){- $(v).on("click", function(){if(!this.checked){checkAll.checked=false;}var allEmpty = true;$.each(che{%*i*%}cks, function(i, vt){if(vt.checked){allEmpty=false;return false;}});if(allEmpty){disableBtn();}else{EnsableBtn();}});});function disableBtn(){btn.addClass(btnDisableClass);icon.addClass(iconDisableClass);icon.removeClass(iconEnableClass);}function EnsableBtn(){btn.removeClass(btnDisableClass);icon.removeClass(iconDisableClass);icon.addClass(iconEnableClass);}});</script>{%/block%}