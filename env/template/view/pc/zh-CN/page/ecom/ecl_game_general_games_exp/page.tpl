{%extends 'base_div.tpl'%}
{%block name='content'%}
<style type="text/css">.ecl-pc-gmgg-header{margin:0;margin-bottom:8px}.ecl-pc-gmgg-header a{font-size:16px;font-weight:400}.ecl-pc-gmgg{border:#f5f5f5 1px solid;font-size:12px}.ecl-pc-gmgg .last-item{clear:left;height:0;font-size:0}.ecl-pc-gmgg .games-panel{padding-bottom:10px}.ecl-pc-gmgg .games-panel a{text-decoration:none}.ecl-pc-gmgg .games-category-panel{background:#fdfdfd;padding:7px 0 0 20px}.ecl-pc-gmgg .games-type{height:30px;overflow:hidden}.ecl-pc-gmgg .games-type-expand{height:auto;overflow:hidden}.ecl-pc-gmgg .games-type-subject{float:left;width:54px;color:#333;line-height:30px;height:30px}
.ecl-pc-gmgg .games-type-list,.ecl-pc-gmgg .games-subject-list{float:left;width:493px;line-height:30px;color:#d8d8d8}.ecl-pc-gmgg .games-type-list a,.ecl-pc-gmgg .games-subject-list a{padding:0 3px 1px;*padding:2px;_padding-bottom:0;margin:0 5px;*margin:0 6px;border:#fdfdfd 1px solid;background:#fdfdfd;text-decoration:none;white-space:nowrap;*white-space:normal;*word-break:keep-all;color:#00C;*font-family:宋体}.ecl-pc-gmgg .games-type-list a:hover,.ecl-pc-gmgg .games-subject-list a:hover{text-decoration:underline}
.ecl-pc-gmgg .games-type-list .games-type-selected,.ecl-pc-gmgg .games-subject-list .games-type-selected{background:#5a9ff1;border:#418ce5 1px solid;border-radius:2px;color:#FFF}.ecl-pc-gmgg .games-type-list .games-subject-disabled:hover,.ecl-pc-gmgg .games-subject-list .games-subject-disabled:hover,.ecl-pc-gmgg .games-type-list .games-subject-disabled,.ecl-pc-gmgg .games-subject-list .games-subject-disabled{color:#CCC;text-decoration:none;cursor:text}.ecl-pc-gmgg .games-subject-more{float:left;width:50px;line-height:30px;height:30px}
.ecl-pc-gmgg .games-subject-more .icon-down,.ecl-pc-gmgg .games-subject-more .icon-up{display:block;width:7px;height:4px;position:absolute;margin-top:13px;*margin-top:6px;_margin-top:7px;margin-left:34px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') -6px -32px no-repeat}.ecl-pc-gmgg .games-subject-more .icon-wrap{color:#333;padding:1px 16px 2px 5px;*padding-top:2px;_padding-top:3px;border:1px solid #fdfdfd}.ecl-pc-gmgg .games-subject-more .icon-wrap:hover{background:#f2f8ff;border-color:#67a5eb}.ecl-pc-gmgg .games-subject-more .icon-up{background-position:-20px -32px}
.ecl-pc-gmgg .games-querytag{background:#fdfdfd;padding:0 0 7px 20px;*padding-top:1px}.ecl-pc-gmgg .games-list{border-top:#ebebeb 1px solid;padding-top:10px;padding-left:22px;min-height:160px;_height:160px}.ecl-pc-gmgg .games-list-loading{text-align:center;padding-top:76px;padding-bottom:76px}.ecl-pc-gmgg .games-list-loading .loading-text{height:28px;line-height:28px;color:#333}.ecl-pc-gmgg .games-list-err{padding-top:76px;padding-bottom:76px}.ecl-pc-gmgg .games-list-err .loading-text{color:#333;padding-left:32px;height:28px;line-height:28px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') no-repeat;width:280px;margin:0 auto}
.ecl-pc-gmgg .games-list-item-mark{position:absolute;width:13px;height:27px;padding-right:14px;font:normal bold 15px/15px '宋体';letter-spacing:-2px;text-align:center;color:#FFF;pointer-events:none;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') -154px -80px no-repeat}.ecl-pc-gmgg .games-list-item{float:left;width:122px;height:195px;overflow:hidden;color:#666;position:relative}.ecl-pc-gmgg .games-list-item img{width:100px;height:140px;display:block}.ecl-pc-gmgg .games-list-item-text{text-align:center;margin-top:6px;width:100px}
.ecl-pc-gmgg .games-list-item-text a{font-size:13px}.ecl-pc-gmgg .games-list-item-text a:hover{text-decoration:underline}.ecl-pc-gmgg .games-list-item-text a.game-gift-link{display:inline-block;*display:inline;*zoom:1;width:14px;height:14px;margin-left:4px;margin-bottom:-2px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') -24px -130px no-repeat}.ecl-pc-gmgg .games-list-star{padding:3px 0 0 7px;font-size:12px}.ecl-pc-gmgg .games-list-star span{position:absolute;margin:-1px 0 0 67px;color:#333}.ecl-pc-gmgg .games-list-star .star-bg,.ecl-pc-gmgg .games-list-star .star-cover{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') no-repeat -20px -107px;height:12px}
.ecl-pc-gmgg .games-list-star .star-bg{width:62px;text-align:left}.ecl-pc-gmgg .games-list-star .star-cover{background-position:-20px -90px}.ecl-pc-gmgg .games-list-item-border{position:absolute;display:block;width:98px;height:138px;border:1px solid #000;pointer-events:none;-ms-filter:"alpha(opacity=10)";filter:alpha(opacity=10);opacity:.1}.ecl-pc-gmgg .games-list-item-platform{position:absolute;top:122px;right:22px;pointer-events:none;height:18px;overflow:hidden}.ecl-pc-gmgg .games-list-item-platform i{position:absolute;display:block;width:100%;height:18px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-platform-1.6.png') no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src='http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-platform-1.6.png')}
.ecl-pc-gmgg .games-list-item-platform em{margin:0 4px 0 18px;line-height:18px;color:#EEE;position:relative}.ecl-pc-gmgg .games-list-item-cover,.ecl-pc-gmgg .games-list-item-cover-more,.ecl-pc-gmgg .games-list-item-cover-bg{position:absolute;display:none;width:90px;height:140px;margin:0;padding:0 5px}.ecl-pc-gmgg .games-list-item-cover-bg{-ms-filter:"alpha(opacity=90)";filter:alpha(opacity=90);opacity:.9;background:#FFF}.ecl-pc-gmgg .games-list-item-cover{color:#666;text-decoration:none}.ecl-pc-gmgg .games-list-item-cover h3{margin-top:10px;margin-left:3px;color:#000;font-weight:400;font-size:14px}
.ecl-pc-gmgg .games-list-item-cover p{margin:3px 0 0 3px;line-height:18px;height:54px;overflow:hidden;text-overflow:ellipsis;word-break:break-all;cursor:pointer}.ecl-pc-gmgg .games-list-item-cover em{position:absolute;display:block;margin:96px 0 0 3px;*margin-left:0;width:82px;line-height:22px;border:1px solid #187ec6;color:#FFF;text-align:center;text-decoration:none;background:#3aa9fd;_background:#1f95ea;cursor:pointer}.ecl-pc-gmgg .games-list-item-cover em:hover{background:#1f95ea}.ecl-pc-gmgg .games-list-item-top,.ecl-pc-gmgg .games-list-item-top-hover{width:100px}
.ecl-pc-gmgg .games-list-item-top:hover .games-list-item-cover,.ecl-pc-gmgg .games-list-item-top:hover .games-list-item-cover-bg{display:block}.ecl-pc-gmgg .games-list-item-top-hover .games-list-item-cover,.ecl-pc-gmgg .games-list-item-top-hover .games-list-item-cover-bg{display:block}.ecl-pc-gmgg .games-list-item-cover .item-start-btn-grp{position:absolute;margin-top:86px;*margin-left:0;width:82px;padding-left:4px}.ecl-pc-gmgg .games-list-item-cover .item-start-btn,.ecl-pc-gmgg .games-list-item-cover .item-start-btn-more{display:block;border:1px solid #187ec6;line-height:22px;color:#FFF;background:#3aa9fd;_padding-top:2px;line-height:20px;cursor:pointer;text-align:center}
.ecl-pc-gmgg .games-list-item-cover .item-start-btn:hover{background:#1f95ea}.ecl-pc-gmgg .games-list-item-cover .item-start-btn-more{border:1px solid #187ec6;border-top:0;color:#666;padding:0 2px;background:#fefefe;_padding-top:2px}.ecl-pc-gmgg .games-list-item-cover .item-start-btn-more:hover{color:#1c8bff}.ecl-pc-gmgg .games-list-item-cover-more em{line-height:14px;margin:6px 0;display:block;text-align:center;color:#000;font-weight:400}.ecl-pc-gmgg .games-list-item-cover-more a{display:block;width:74px;margin:3px 0;border:1px solid #187ec6;text-align:center;line-height:18px;color:#FFF;background:#3aa9fd;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.ecl-pc-gmgg .games-list-item-cover-more a:hover{background:#1f95ea}.ecl-pc-gmgg .games-list-item-cover-more .item-start-btn-wrap{height:140px;width:90px;display:table-cell;vertical-align:middle;text-align:center;*margin-top:-8px;*font-size:140px}.ecl-pc-gmgg .games-list-item-cover-more .item-start-btn-wrap span{display:inline-block;vertical-align:middle;*font-size:12px}.ecl-pc-gmgg .games-list-item-cover em:hover,.ecl-pc-gmgg .games-list-item-cover .item-start-btn:hover,.ecl-pc-gmgg .games-list-item-cover-more a:hover{background:-moz-linear-gradient(top,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);background:-webkit-linear-gradient(top,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);background:-ms-linear-gradient(top,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);background:linear-gradient(to bottom,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#0084e2',endColorstr='#1f95ea',GradientType=0)}
.ecl-pc-gmgg .category-panel-xiaoyouxi{border-bottom:#ebebeb 1px solid;padding-bottom:7px}.ecl-pc-gmgg .games-list-xiaoyouxi{padding-left:40px;padding-top:18px}.ecl-pc-gmgg .games-list-item-xiaoyouxi{float:left;width:190px;height:92px;overflow:hidden;color:#999}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-photo{width:64px;height:64px;overflow:hidden;display:block;float:left;margin-right:9px}.ecl-pc-gmgg .games-list-item-xiaoyouxi a:hover{text-decoration:underline}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-photo em{position:absolute;width:70px;height:70px;margin-left:-2px;margin-top:-2px;z-index:1;display:block;background:url('http://www.baidu.com/cache/app/app/static/image/icon/filter.1b080e63.png') no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src='http://www.baidu.com/cache/app/app/static/image/icon/filter.1b080e63.png');cursor:pointer}
.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-photo:hover em{background:url("http://www.baidu.com/cache/app/app/static/image/icon/filter_hover.5fae861e.png") no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="http://www.baidu.com/cache/app/app/static/image/icon/filter_hover.5fae861e.png")}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-use{margin-top:1px}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-use em{color:#000;margin-right:3px}.ecl-pc-gmgg .games-list-item-xiaoyouxi .games-list-star{padding-top:4px;padding-left:0;margin-left:71px}
.ecl-pc-gmgg .games-ordertype-shouyou{position:absolute;z-index:1;margin-left:482px;*margin-left:234px;margin-top:-25px;background:#f9f9f9;width:90px;border:1px solid #d4d4d4;border-right:0;overflow:hidden}.ecl-pc-gmgg .games-ordertype-shouyou a{float:left;padding:1px 10px;*padding:3px 10px 1px;border-right:1px solid #d4d4d4;color:#00C}.ecl-pc-gmgg .games-ordertype-shouyou a:hover{text-decoration:underline}.ecl-pc-gmgg .games-ordertype-shouyou .games-type-selected,.ecl-pc-gmgg .games-ordertype-shouyou .games-type-selected:hover{background:#ededed;color:#676767;text-decoration:none;cursor:text}
.ecl-pc-gmgg .games-search-shouyou .games-type-list{width:530px;padding-left:4px;*padding-left:5px}.ecl-pc-gmgg .games-search-shouyou .games-type-list a{margin:0 1px}.ecl-pc-gmgg .games-list-shouyou{padding-left:50px;padding-top:18px}.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .games-list-star{margin-left:79px}.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .item-xiaoyouxi-photo{width:72px;height:72px}.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .item-xiaoyouxi-photo em{width:78px;height:78px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/cover-sy.png') no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src='http://s1.bdstatic.com/r/www/cache/biz/ecom/game/cover-sy.png')}
.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .item-xiaoyouxi-photo:hover em{background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/game/cover-hover-sy.png") no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="http://s1.bdstatic.com/r/www/cache/biz/ecom/game/cover-hover-sy.png")}.ecl-pc-gmgg .item-shouyou-mark-1,.ecl-pc-gmgg .item-shouyou-mark-2,.ecl-pc-gmgg .item-shouyou-mark-3{position:absolute;width:28px;height:28px;margin:1px 0 0 1px;z-index:2;pointer-events:none;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/mark-sy-1.8.png') no-repeat;_background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/mark-sy-1.8.gif') no-repeat}
.ecl-pc-gmgg .item-shouyou-mark-2{background-position:-30px 0}.ecl-pc-gmgg .item-shouyou-mark-3{background-position:-60px 0}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-shouyou-popup{position:absolute;background:#FFF;outline:0}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-use{_margin-top:-2px;color:#999}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-shouyou-download{display:block;position:absolute;z-index:3;margin-top:48px;width:54px;line-height:18px;margin-left:80px;border:1px solid #c5c9cb;color:#818181;text-align:center;background:#fff;background:-moz-linear-gradient(top,#fff 0,#e5e5e5 100%);background:-webkit-linear-gradient(top,#fff 0,#e5e5e5 100%);background:-ms-linear-gradient(top,#fff 0,#e5e5e5 100%);background:linear-gradient(to bottom,#fff 0,#e5e5e5 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff',endColorstr='#e5e5e5',GradientType=0);*line-height:16px;*padding-top:2px}
.ecl-pc-gmgg .games-list-item-xiaoyouxi:hover .item-shouyou-popup,.ecl-pc-gmgg .games-list-item-xiaoyouxi-hover .item-shouyou-popup{z-index:2;padding-top:9px;padding-left:8px;margin-top:-10px;margin-left:-9px;width:172px;height:84px;border:1px solid #CCC;box-shadow:1px 1px 1px #DDD;_width:180px}.ecl-pc-gmgg .games-list-item-xiaoyouxi:hover .item-shouyou-download,.ecl-pc-gmgg .games-list-item-xiaoyouxi-hover .item-shouyou-download{border:1px solid #187ec6;color:#FFF;background:#3aa9fd;filter:none}.ecl-pc-gmgg .games-list-item-xiaoyouxi:hover .item-shouyou-download:hover,.ecl-pc-gmgg .games-list-item-xiaoyouxi-hover .item-shouyou-download:hover{border:1px solid #187ec6;color:#FFF;text-decoration:none;background:-moz-linear-gradient(top,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);background:-ms-linear-gradient(top,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);background:linear-gradient(to bottom,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#0084e2',endColorstr='#1f95ea',GradientType=0);_filter:none;_background:#0084e2}
.ecl-pc-gmgg .games-pager{height:25px;text-align:center;margin-top:0}.ecl-pc-gmgg .games-pager a,.ecl-pc-gmgg .games-pager a:hover{text-decoration:none}.ecl-pc-gmgg .games-pager-end{display:none}.ecl-pc-gmgg .games-pager-wrapper{display:inline-block}.ecl-pc-gmgg .games-pager-wrapper a,.ecl-pc-gmgg .games-pager-cur,.ecl-pc-gmgg .games-pager-more{text-align:center;padding:2px 6px;margin-left:2px;line-height:21px;cursor:pointer;color:#00C;border:1px solid #d5d5d5}.ecl-pc-gmgg .games-pager-prev,.ecl-pc-gmgg .games-pager-next{margin:0 2px;margin-top:1px;height:19px;line-height:19px;width:52px;color:#00C;cursor:pointer;border:1px solid #d5d5d5;display:inline-block;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') 4px -44px no-repeat}
.ecl-pc-gmgg .games-pager-prev{margin-right:0;text-align:right;padding-right:4px}.ecl-pc-gmgg .games-pager-next{text-align:left;padding-left:4px;background-position:44px -64px}.ecl-pc-gmgg .games-pager-more{border:1px solid #FFF;cursor:default}.ecl-pc-gmgg .games-pager-wrapper a:hover,.ecl-pc-gmgg .games-pager-prev:hover,.ecl-pc-gmgg .games-pager-next:hover{background-color:#fdfdfd;border-color:#5a9ff1}.ecl-pc-gmgg a.games-pager-cur,.ecl-pc-gmgg a.games-pager-cur:hover{border-color:#FFF;cursor:default;color:#000}
.ecl-pc-gmgg .games-pager-next-more{width:64px;background-position:56px -64px}</style>
{%strip%}{%*泛需求，好玩的网游，好玩的网页游戏模板*%}
{%*定义的一些全局变量*%}
{%$g_shouyou=$tplData.gametype==='shouyou'%}

{%if $tplData.aiwanurl%}
<h4 class="ecl-pc-gmgg-header" data-click="{rsv_vsmid:1}"><a target="_blank" class="games-header-link" href="{%$tplData.aiwanurl%}">{%$tplData.aiwantitle%}</a></h4>
{%/if%}
<div class="ecl-pc-gmgg">
    <div class="games-panel">
        <div class="games-category-panel">
            <div class="games-type">
                <b class="games-type-subject">按游戏：</b>
                <span class="games-type-list games-category" data-click="{fm:'beha'}">
                    <a href="#" hidefocus="on" data-value="yeyou" {%if $tplData.gametype==='yeyou'%} class="games-type-selected"{%/if%}>网页游戏</a>|
                    <a href="#" hidefocus="on" data-value="wangyou" {%if $tplData.gametype==='wangyou'%} class="games-type-selected"{%/if%}>客户端网游</a>|
                    <a href="#" hidefocus="on" data-value="xiaoyouxi" {%if $tplData.gametype==='xiaoyouxi'%} class="games-type-selected"{%/if%}>小游戏</a>|
                    <a href="#" hidefocus="on" data-value="shouyou" {%if $g_shouyou%} class="games-type-selected"{%/if%}>安卓手机游戏</a>
                </span>
            </div>
        </div>
        <div class="games-querytag">
            {%if !empty($tplData.newquerytag)%}
            <div class="games-search games-search-{%$tplData.gametype|escape:'html'%}">
                <div class="games-type games-type-panel">
                    <b class="games-type-subject">按类型：</b>
                    <span class="games-type-list" data-click="{fm:'beha'{%if $g_shouyou%},rsv_vsgmtype:40{%/if%}}">
                        {%$selected=$tplData.newquerytag.selectedtype%}
                        {%foreach $tplData.newquerytag.typelist as $item%}
                            <a href="#" hidefocus="on" data-code="{%$item.code%}" data-value="{%$item.id%}"
                            {%if $item.id===$selected%} class="games-type-selected"{%/if%}>{%$item.text%}</a>
                            {%if !$item@last%}|{%/if%}
                        {%/foreach%}
                    </span>
                </div>
                {%if !empty($tplData.newquerytag.subjectlist)%}
                {%$isSubjectExpand=$tplData.newquerytag.selectedsubject!='0'%}
                {%$isSubjectMultiLine=count($tplData.newquerytag.subjectlist)>1%}
                <div class="games-type{%if $isSubjectExpand%} games-type-expand{%/if%} games-subject-panel">
                    <b class="games-type-subject">按特色：</b>
                    <span class="games-subject-list" data-click="{fm:'beha'{%if $g_shouyou%},rsv_vsgmtype:44{%/if%}}">
                        {%$selected=$tplData.newquerytag.selectedsubject%}
                        {%foreach $tplData.newquerytag.subjectlist as $lineitem%}
                            {%foreach $lineitem as $item%}
                            <a href="#" hidefocus="on" data-code="{%$item.code%}" data-value="{%$item.id%}"
                            {%if $item.id===$selected%} class="games-type-selected"{%/if%}>{%$item.text%}</a>
                            {%if !$item@last%}|{%/if%}
                            {%/foreach%}
                            {%if !$lineitem@last&&$isSubjectMultiLine%}<br>{%/if%}
                        {%/foreach%}
                    </span>
                    <span class="games-subject-more games-more-subject" data-click="{fm:'beha'}" style="display:none">
                        <span class="icon-down{%if $isSubjectExpand%} icon-up{%/if%} OP_LOG_BTN"></span>
                        <a href="javascript:;" class="icon-wrap">
                            {%if $isSubjectExpand%}收起{%else%}更多{%/if%}
                        </a>
                    </span>
                    <div class="last-item"></div>
                </div>
                {%/if%}
            </div>
            {%/if%}
        </div>
        <div id="ecl-pc-game-general-games-list" class="games-list games-list-{%$tplData.gametype|escape:'html'%}">
            {%if !empty($tplData.list)%}
            {%*手机游戏*%}
            {%if $g_shouyou%}
            {%foreach $tplData.list as $item%}
            <div class="games-list-item-xiaoyouxi" data-click="{rsv_vsgmid:'{%$item.gameid%}'}">
            <a target="_blank" href="{%$item.downloadurl%}" class="item-shouyou-download" data-click="{rsv_vsgmtype:43}">下载</a>
            <div class="item-shouyou-popup">
                <a target="_blank" href="{%$item.url%}" class="item-shouyou-link item-xiaoyouxi-photo" data-click="{rsv_vsgmtype:41}">
                    {%if !empty($item.mark)%}
                    <i class="item-shouyou-mark-{%$item.mark%}"></i>
                    {%/if%}
                    <em></em><img src="{%$item.photo%}">
                </a>
                <a target="_blank" href="{%$item.url%}" class="item-shouyou-link" title="{%$item.title%}" data-click="{rsv_vsgmtype:42}">{%$item.shorttitle%}</a>
                <div class="games-list-star"><div class="star-bg"><div class="star-cover" style="width:{%$item.star*20%}%;"></div></div></div>
                <p class="item-xiaoyouxi-use">
                    {%if $item.size>=1048576%}
                    <em>{%($item.size/1048576)|string_format:"%d"%}</em>M
                    {%else%}<em>{%($item.size/1024)|string_format:"%d"%}</em>K
                    {%/if%}
                    B
                </p>
            </div>
            </div>
            {%/foreach%}
            {%*小游戏*%}
            {%elseif $tplData.gametype==='xiaoyouxi'%}
            {%foreach $tplData.list as $item%}
            <div class="games-list-item-xiaoyouxi">
            <a class="item-xiaoyouxi-photo" target="_blank" href="{%$item.url%}"><em></em><img src="{%$item.photo%}"></a>
            <a target="_blank" href="{%$item.url%}" title="{%$item.title%}">{%$item.shorttitle%}</a>
            <div class="games-list-star">
                <div class="star-bg"><div class="star-cover" style="width:{%$item.star*20%}%;"></div></div></div>
                <p class="item-xiaoyouxi-use">
                    {%if $item.use>=1e8%}
                    <em>{%($item.use/1e8)|string_format:"%d"%}</em>亿
                    {%elseif $item.use>=1e4%}
                    <em>{%($item.use/1e4)|string_format:"%d"%}</em>万
                    {%else%}
                    <em>{%$item.use%}</em>
                    {%/if%}
                    次使用
                </p>
            </div>
            {%/foreach%}
            {%else%}
            {%foreach $tplData.list as $item%}
                <div class="games-list-item">
                    {%if $item.platform%}
                    <div class="games-list-item-platform"><i></i><em>{%$item.platform%}</em></div>
                    {%/if%}
                    {%if !empty($item.mark)%}
                    <i class="games-list-item-mark">{%$item.mark%}</i>
                    {%/if%}
                    <i class="games-list-item-border"></i>
                    <div class="games-list-item-top">
                        <i class="games-list-item-cover-bg"></i>
                        {%* 页游样式 *%}
                        {%if $tplData.gametype==='yeyou'%}
                        {%if !empty($item.morepiclink)%}
                        <a target="_blank" href="{%$item.piclinkurl%}" class="EC_ZHIXIN games-list-item-cover">
                            <div class="item-start-btn-grp">
                                <span class="item-start-btn">开始游戏</span>
                                <span class="item-start-btn-more" data-click="{fm:'beha'}">更多平台</span>
                            </div>
                            <h3>{%$item.type%}</h3>
                            <p>{%$item.info%}</p>
                        </a>
                        <div class="games-list-item-cover-more">
                            <div class="item-start-btn-wrap">
                                <span>
                                {%foreach $item.morepiclink as $morepiclink%}
                                <a target="_blank" href="{%$morepiclink.url%}" class="item-start-btn EC_ZHIXIN">{%$morepiclink.name|escape:'html'%}</a>
                                {%/foreach%}
                                </span>
                            </div>
                        </div>
                        {%else%}
                        <a target="_blank" href="{%$item.piclinkurl%}" class="games-list-item-cover EC_ZHIXIN">
                            <em>开始游戏</em>
                            <h3>{%$item.type%}</h3>
                            <p>{%$item.info%}</p>
                        </a>
                        {%/if%}
                        {%else%}
                        {%* 端游样式 *%}
                        <a target="_blank" href="{%$item.piclinkurl%}" class="games-list-item-cover EC_ZHIXIN">
                            <em>进入专区</em>
                            <h3>{%$item.type%}</h3>
                            <p>{%$item.info%}</p>
                        </a>
                        {%/if%}
                        <img src="{%$item.photo%}" alt="{%$item.title%}">
                    </div>
                    <p  class="games-list-item-text">
                        <a target="_blank" class="EC_ZHIXIN" href="{%$item.url%}" title="{%$item.title%}">{%$item.shorttitle%}</a>
                    </p>
                    <div class="games-list-star">
                        <div class="star-bg">
                            <span>{%$item.hot%}</span>
                            <div class="star-cover" style="width:{%if $item.star>5%}100{%else%}{%$item.star*20%}{%/if%}%;"></div>
                        </div>
                    </div>
                </div>
            {%/foreach%}
            {%/if%}
            <div class="last-item"></div>
            {%else%}
            <div class="games-list-err"><div class="loading-text">抱歉没有找到符合条件的游戏，请尝试其他分类。</div></div>
            {%/if%}
        </div>
        {%*分页逻辑*%}
        <div class="games-pager" data-click="{fm:'beha'}" onselectstart="return false"{%if $tplData.totalpage==1%} style="display:none"{%/if%}></div>
    </div>
</div>
<script data-compress="off">
A.setup("G_ZX_GAME_GENERAL",{
    "query":"{%$extData.OriginQuery|escape:'url'%}",
    "subqid":"{%$extData.subqid%}",
    "qid": "{%$extData.sessionID%}",
    "sid": bds.comm.sid,
    "resourceid":"{%$extData.resourceid%}",
    "gametype":"{%$tplData.gametype|escape:'html'%}",
    "ordertype":"{%$tplData.ordertype%}",
    "page":"{%$tplData.page%}",
    "pagesize":"{%$tplData.pagesize%}",
    "totalpage":"{%$tplData.totalpage%}",
    "ajaxurl": "{%$tplData.ajaxurl|escape:'url'%}",
    "timesign": "{%$tplData.timesign%}",
    "action_from": 1,
    "version": "{%$tplData.version%}",
    "aiwanurl": "{%$tplData.aiwanurl%}"
});
</script>{%/strip%}
{%strip%}
<script>
{%*首屏反作弊脚本*%}
A.setup("G_ZX_GAME_GENERAL_ANTI",
    (function (d){
        var Anti=function(e){function n(e){var n=window.event||e;for(T=n.target||n.srcElement;T&&"A"!=T.tagName;)T=T.parentNode;w=(new Date).getTime(),v=9999,m=n.clientX,s=n.clientY,h=E?w-E:0,i()&&o()}function t(){N=(new Date).getTime(),v=N-w,i()&&o()}function r(e){var n=window.event||e;x+=1,d||(d=n.clientX),l||(l=n.clientY),E=(new Date).getTime()}function i(){if(u=0,g=/\?url\=([^\.]+)\./.exec(T.href)){for(var e=0;x*A%99+9>e;++e)u+=g[1].charCodeAt(v*e%g[1].length);return!0}return!1}function o(){var e="&ck="+[u,x,v,m,s,d,l,h].join(".");
if(T.href){var n=T.href;-1==n.indexOf("&ck=")?T.href+=e:T.href=n.replace(/&ck=[\w.]*/,e)}}function a(e,n,t){for(var r in n)X[++D]=t[r],e[p+r]=D,window.attachEvent?e.attachEvent("on"+n[r],t[r]):e.addEventListener(n[r],t[r],!1)}function c(e,n){for(var t in n){var r=e[p+t],i=X[r];i&&(window.detachEvent?e.detachEvent("on"+n[t],i):e.removeEventListener(n[t],i)),X[r]=null}}function f(e,n){for(var t,r=[],i=n.getElementsByTagName("A"),o=" "+e+" ",a=0;t=i[a];a++)t.className&&(" "+t.className+" ").indexOf(o)>=0&&r.push(t);
return r}var u,v,m,s,d,l,h,g,w,E,N,T,p="EC_ZHIXIN",A=0,k=0,x=0;v=m=s=d=l=h=g=w=E=N=T=0;var D=0,X={};return{getAntiTag:function(){return p},setTimesign:function(e){A=e},bind:function(){for(var i=f(p,e),o=0,c=i.length;c>o;o++)a(i[o],["mouseover","mousedown","mouseup"],[r,n,t]);i.length&&(k=1)},unbind:function(){if(k){for(var n=f(p,e),t=0,r=n.length;r>t;t++)c(n[t],["mouseover","mousedown","mouseup"]);k=0}}}};
        var a=new Anti(d.getElementById('ecl-pc-game-general-games-list'));
        a.setTimesign('{%$tplData.timesign%}');
        a.bind();
        return a;
    }
)(document));

A.init(function(){

    {%*if $tplData.debug%}
        require.config({paths: {ecom:'http://cq01-rdqa-dev009.cq01.baidu.com:8001/ecom'}});
    {%/if*%}

    var self=this,
        T = A.baidu,
        PARAMS = self.data.G_ZX_GAME_GENERAL,
        Anti = self.data.G_ZX_GAME_GENERAL_ANTI;
    require(['ecom/game/game-exp-09241'], function(Controller){
        var ctls={
            card:self.container,
            headerlink:self.qq('games-header-link'),
            container:self.qq('ecl-pc-gmgg'),
            list:self.qq('games-list'),
            pager:self.qq('games-pager'),
            gameCategory:self.qq('games-category'),
            querytag:self.qq('games-querytag'
        )},
        controller=new Controller(ctls,PARAMS,Anti);
        controller.init()
    })
})
</script>
{%/strip%}
{%/block%}