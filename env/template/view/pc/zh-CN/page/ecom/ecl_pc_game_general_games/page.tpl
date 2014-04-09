{%extends 'c_base.tpl'%}

{%block name="title"%}{%/block%}
{%block name="foot"%}{%/block%}

{%block name='content'%}
<style type="text/css" data-merge>.ecl-pc-gmgg-header{width:636px;margin:0;margin-bottom:8px}.ecl-pc-gmgg-header a{font-size:16px;font-weight:400}.ecl-pc-gmgg{line-height:normal;width:636px;border:#f5f5f5 1px solid;font-size:12px}.ecl-pc-gmgg .last-item{clear:left;height:0;font-size:0}.ecl-pc-gmgg .games-panel{padding-bottom:10px}.ecl-pc-gmgg .games-panel a{text-decoration:none}.ecl-pc-gmgg .games-category-panel{background:#fdfdfd;padding:7px 0 0 20px}.ecl-pc-gmgg .games-type{height:30px;overflow:hidden}.ecl-pc-gmgg .games-type-expand{height:auto;overflow:hidden}
.ecl-pc-gmgg .games-type-subject{float:left;width:54px;color:#333;line-height:30px;height:30px}.ecl-pc-gmgg .games-type-list,.ecl-pc-gmgg .games-subject-list{float:left;width:493px;line-height:30px;color:#d8d8d8}.ecl-pc-gmgg .games-type-list a,.ecl-pc-gmgg .games-subject-list a{padding:0 3px 1px;*padding:2px;_padding-bottom:0;margin:0 5px;*margin:0 6px;border:#fdfdfd 1px solid;background:#fdfdfd;text-decoration:none;white-space:nowrap;*white-space:normal;*word-break:keep-all;color:#00C;*font-family:宋体}.ecl-pc-gmgg .games-type-list a:hover,.ecl-pc-gmgg .games-subject-list a:hover{text-decoration:underline}
.ecl-pc-gmgg .games-type-list .games-type-selected,.ecl-pc-gmgg .games-subject-list .games-type-selected{background:#5a9ff1;border:#418ce5 1px solid;border-radius:2px;color:#FFF}.ecl-pc-gmgg .games-type-list .games-subject-disabled:hover,.ecl-pc-gmgg .games-subject-list .games-subject-disabled:hover,.ecl-pc-gmgg .games-type-list .games-subject-disabled,.ecl-pc-gmgg .games-subject-list .games-subject-disabled{color:#CCC;text-decoration:none;cursor:text}.ecl-pc-gmgg .games-subject-more{float:left;width:50px;line-height:30px;height:30px}
.ecl-pc-gmgg .games-subject-more .icon-down,.ecl-pc-gmgg .games-subject-more .icon-up{display:block;width:7px;height:4px;position:absolute;margin-top:13px;*margin-top:6px;_margin-top:7px;margin-left:34px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') -6px -32px no-repeat}.ecl-pc-gmgg .games-subject-more .icon-wrap{color:#333;padding:1px 16px 2px 5px;*padding-top:2px;_padding-top:3px;border:1px solid #fdfdfd}.ecl-pc-gmgg .games-subject-more .icon-wrap:hover{background:#f2f8ff;border-color:#67a5eb}.ecl-pc-gmgg .games-subject-more .icon-up{background-position:-20px -32px}
.ecl-pc-gmgg .games-querytag{background:#fdfdfd;padding:0 0 7px 20px;*padding-top:1px}.ecl-pc-gmgg .games-list{border-top:#ebebeb 1px solid;padding-top:10px;padding-left:22px;min-height:160px;_height:160px}.ecl-pc-gmgg .games-list-loading{text-align:center;padding-top:76px;padding-bottom:76px}.ecl-pc-gmgg .games-list-loading .loading-text{height:28px;line-height:28px;color:#333}.ecl-pc-gmgg .games-list-err{padding-top:76px;padding-bottom:76px}.ecl-pc-gmgg .games-list-err .loading-text{color:#333;padding-left:32px;height:28px;line-height:28px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') no-repeat;width:280px;margin:0 auto}
.ecl-pc-gmgg .games-list-item-mark{position:absolute;width:13px;height:27px;padding-right:14px;font:normal bold 15px/15px '宋体';letter-spacing:-2px;text-align:center;color:#FFF;pointer-events:none;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') -154px -80px no-repeat}.ecl-pc-gmgg .games-list-item{float:left;width:122px;height:195px;overflow:hidden;color:#666;position:relative}.ecl-pc-gmgg .games-list-item img{width:100px;height:140px;display:block}.ecl-pc-gmgg .games-list-item-text{text-align:center;margin-top:6px;width:100px}
.ecl-pc-gmgg .games-list-item-text a{font-size:13px}.ecl-pc-gmgg .games-list-item-text a:hover{text-decoration:underline}.ecl-pc-gmgg .games-list-item-text a.game-gift-link{display:inline-block;*display:inline;*zoom:1;width:14px;height:14px;margin-left:4px;margin-bottom:-2px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') -24px -130px no-repeat}.ecl-pc-gmgg .games-list-star{padding:3px 0 0 7px;font-size:12px}.ecl-pc-gmgg .games-list-star span{position:absolute;margin:-1px 0 0 67px;color:#333}.ecl-pc-gmgg .games-list-star .star-bg,.ecl-pc-gmgg .games-list-star .star-cover{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') no-repeat -20px -107px;height:12px}
.ecl-pc-gmgg .games-list-star .star-bg{width:62px;text-align:left}.ecl-pc-gmgg .games-list-star .star-cover{background-position:-20px -90px}.ecl-pc-gmgg .games-list-item-border{position:absolute;display:block;width:98px;height:138px;border:1px solid #000;pointer-events:none;-ms-filter:"alpha(opacity=10)";filter:alpha(opacity=10);opacity:.1}.ecl-pc-gmgg .games-list-item-platform{position:absolute;top:122px;right:22px;pointer-events:none;height:18px;overflow:hidden}.ecl-pc-gmgg .games-list-item-platform i{position:absolute;display:block;width:100%;height:18px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-platform-1.6.png') no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src='http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-platform-1.6.png')}
.ecl-pc-gmgg .games-list-item-platform em{margin:0 4px 0 18px;line-height:18px;color:#EEE;position:relative}.ecl-pc-gmgg .games-list-item-cover,.ecl-pc-gmgg .games-list-item-cover-more,.ecl-pc-gmgg .games-list-item-cover-bg{position:absolute;display:none;width:90px;height:140px;margin:0;padding:0 5px}.ecl-pc-gmgg .games-list-item-cover-bg{-ms-filter:"alpha(opacity=90)";filter:alpha(opacity=90);opacity:.9;background:#FFF}.ecl-pc-gmgg .games-list-item-cover{color:#666;text-decoration:none}.ecl-pc-gmgg .games-list-item-cover h3{margin-top:10px;margin-left:3px;color:#000;font-weight:400;font-size:14px}
.ecl-pc-gmgg .games-list-item-cover p{margin-top:10px;margin-left:3px;line-height:18px;height:54px;overflow:hidden;text-overflow:ellipsis;word-break:break-all;cursor:pointer}.ecl-pc-gmgg .games-list-item-cover em{position:absolute;display:block;margin:101px 0 0 3px;*margin-left:0;width:82px;line-height:22px;border:1px solid #187ec6;color:#FFF;text-align:center;text-decoration:none;background:#3aa9fd;_background:#1f95ea;cursor:pointer}.ecl-pc-gmgg .games-list-item-cover em:hover{background:#1f95ea}.ecl-pc-gmgg .games-list-item-top,.ecl-pc-gmgg .games-list-item-top-hover{width:100px}
.ecl-pc-gmgg .games-list-item-top:hover .games-list-item-cover,.ecl-pc-gmgg .games-list-item-top:hover .games-list-item-cover-bg{display:block}.ecl-pc-gmgg .games-list-item-top-hover .games-list-item-cover,.ecl-pc-gmgg .games-list-item-top-hover .games-list-item-cover-bg{display:block}.ecl-pc-gmgg .games-list-item-cover .item-start-btn-grp{position:absolute;margin-top:92px;*margin-left:0;width:82px;padding-left:4px}.ecl-pc-gmgg .games-list-item-cover .item-start-btn,.ecl-pc-gmgg .games-list-item-cover .item-start-btn-more{display:block;border:1px solid #187ec6;line-height:22px;color:#FFF;background:#3aa9fd;_padding-top:2px;line-height:20px;cursor:pointer;text-align:center}
.ecl-pc-gmgg .games-list-item-cover .item-start-btn:hover{background:#1f95ea}.ecl-pc-gmgg .games-list-item-cover .item-start-btn-more{border:1px solid #187ec6;border-top:0;color:#666;padding:0 2px;background:#fefefe;_padding-top:2px}.ecl-pc-gmgg .games-list-item-cover .item-start-btn-more:hover{color:#1c8bff}.ecl-pc-gmgg .games-list-item-cover-more em{line-height:14px;margin:6px 0;display:block;text-align:center;color:#000;font-weight:400}.ecl-pc-gmgg .games-list-item-cover-more a{display:block;width:74px;margin:6px 0;border:1px solid #187ec6;text-align:center;line-height:18px;color:#FFF;background:#3aa9fd;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.ecl-pc-gmgg .games-list-item-cover-more a:hover{background:#1f95ea}.ecl-pc-gmgg .games-list-item-cover-more .item-start-btn-wrap{height:140px;width:90px;display:table-cell;vertical-align:middle;text-align:center;*margin-top:-8px;*font-size:140px}.ecl-pc-gmgg .games-list-item-cover-more .item-start-btn-wrap span{display:inline-block;vertical-align:middle;*font-size:12px}.ecl-pc-gmgg .games-list-item-cover em:hover,.ecl-pc-gmgg .games-list-item-cover .item-start-btn:hover,.ecl-pc-gmgg .games-list-item-cover-more a:hover{background:-moz-linear-gradient(top,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);background:-webkit-linear-gradient(top,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);background:-ms-linear-gradient(top,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);background:linear-gradient(to bottom,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#0084e2',endColorstr='#1f95ea',GradientType=0)}
.ecl-pc-gmgg .category-panel-xiaoyouxi{border-bottom:#ebebeb 1px solid;padding-bottom:7px}.ecl-pc-gmgg .games-list-xiaoyouxi{padding-left:40px;padding-top:18px}.ecl-pc-gmgg .games-list-item-xiaoyouxi{float:left;width:190px;height:92px;overflow:hidden;color:#999}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-photo{width:64px;height:64px;overflow:hidden;display:block;float:left;margin-right:9px}.ecl-pc-gmgg .games-list-item-xiaoyouxi a:hover{text-decoration:underline}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-photo em{position:absolute;width:70px;height:70px;margin-left:-2px;margin-top:-2px;z-index:1;display:block;background:url('http://www.baidu.com/cache/app/app/static/image/icon/filter.1b080e63.png') no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src='http://www.baidu.com/cache/app/app/static/image/icon/filter.1b080e63.png');cursor:pointer}
.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-photo:hover em{background:url("http://www.baidu.com/cache/app/app/static/image/icon/filter_hover.5fae861e.png") no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="http://www.baidu.com/cache/app/app/static/image/icon/filter_hover.5fae861e.png")}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-use{margin-top:1px}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-use em{color:#000;margin-right:3px}.ecl-pc-gmgg .games-list-item-xiaoyouxi .games-list-star{padding-top:4px;padding-left:0;margin-left:71px}
.ecl-pc-gmgg .games-ordertype-shouyou{position:absolute;z-index:1;margin-left:482px;*margin-left:234px;margin-top:-25px;background:#f9f9f9;width:90px;border:1px solid #d4d4d4;border-right:0;overflow:hidden}.ecl-pc-gmgg .games-ordertype-shouyou a{float:left;padding:1px 10px;*padding:3px 10px 1px;border-right:1px solid #d4d4d4;color:#00C}.ecl-pc-gmgg .games-ordertype-shouyou a:hover{text-decoration:underline}.ecl-pc-gmgg .games-ordertype-shouyou .games-type-selected,.ecl-pc-gmgg .games-ordertype-shouyou .games-type-selected:hover{background:#ededed;color:#676767;text-decoration:none;cursor:text}
.ecl-pc-gmgg .games-search-shouyou .games-type-list{width:530px;padding-left:4px;*padding-left:5px}.ecl-pc-gmgg .games-search-shouyou .games-type-list a{margin:0 1px}.ecl-pc-gmgg .games-list-shouyou{padding-left:50px;padding-top:18px}.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .games-list-star{margin-left:79px}.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .item-xiaoyouxi-photo{width:72px;height:72px}.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .item-xiaoyouxi-photo em{width:78px;height:78px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/cover-sy.png') no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src='http://s1.bdstatic.com/r/www/cache/biz/ecom/game/cover-sy.png')}
.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .item-xiaoyouxi-photo:hover em{background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/game/cover-hover-sy.png") no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="http://s1.bdstatic.com/r/www/cache/biz/ecom/game/cover-hover-sy.png")}.ecl-pc-gmgg .item-shouyou-mark-1,.ecl-pc-gmgg .item-shouyou-mark-2,.ecl-pc-gmgg .item-shouyou-mark-3{position:absolute;width:28px;height:28px;margin:1px 0 0 1px;z-index:2;pointer-events:none;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/mark-sy-1.8.png') no-repeat;_background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/mark-sy-1.8.gif') no-repeat}
.ecl-pc-gmgg .item-shouyou-mark-2{background-position:-30px 0}.ecl-pc-gmgg .item-shouyou-mark-3{background-position:-60px 0}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-shouyou-popup{position:absolute;background:#FFF;outline:0}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-use{_margin-top:-2px;color:#999}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-shouyou-download{display:block;position:absolute;z-index:3;margin-top:48px;width:54px;line-height:18px;margin-left:80px;border:1px solid #c5c9cb;color:#818181;text-align:center;background:#fff;background:-moz-linear-gradient(top,#fff 0,#e5e5e5 100%);background:-webkit-linear-gradient(top,#fff 0,#e5e5e5 100%);background:-ms-linear-gradient(top,#fff 0,#e5e5e5 100%);background:linear-gradient(to bottom,#fff 0,#e5e5e5 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff',endColorstr='#e5e5e5',GradientType=0);*line-height:16px;*padding-top:2px}
.ecl-pc-gmgg .games-list-item-xiaoyouxi:hover .item-shouyou-popup,.ecl-pc-gmgg .games-list-item-xiaoyouxi-hover .item-shouyou-popup{z-index:2;padding-top:9px;padding-left:8px;margin-top:-10px;margin-left:-9px;width:172px;height:84px;border:1px solid #CCC;box-shadow:1px 1px 1px #DDD;_width:180px}.ecl-pc-gmgg .games-list-item-xiaoyouxi:hover .item-shouyou-download,.ecl-pc-gmgg .games-list-item-xiaoyouxi-hover .item-shouyou-download{border:1px solid #187ec6;color:#FFF;background:#3aa9fd;filter:none}.ecl-pc-gmgg .games-list-item-xiaoyouxi:hover .item-shouyou-download:hover,.ecl-pc-gmgg .games-list-item-xiaoyouxi-hover .item-shouyou-download:hover{border:1px solid #187ec6;color:#FFF;text-decoration:none;background:-moz-linear-gradient(top,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);background:-ms-linear-gradient(top,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);background:linear-gradient(to bottom,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#0084e2',endColorstr='#1f95ea',GradientType=0);_filter:none;_background:#0084e2}
.ecl-pc-gmgg .games-pager{height:25px;text-align:center;margin-top:0}.ecl-pc-gmgg .games-pager a,.ecl-pc-gmgg .games-pager a:hover{text-decoration:none}.ecl-pc-gmgg .games-pager-end{display:none}.ecl-pc-gmgg .games-pager-wrapper{display:inline-block}.ecl-pc-gmgg .games-pager-wrapper a,.ecl-pc-gmgg .games-pager-cur,.ecl-pc-gmgg .games-pager-more{text-align:center;padding:2px 6px;margin-left:2px;line-height:21px;cursor:pointer;color:#00C;border:1px solid #d5d5d5}.ecl-pc-gmgg .games-pager-prev,.ecl-pc-gmgg .games-pager-next{margin:0 2px;margin-top:1px;height:19px;line-height:19px;width:52px;color:#00C;cursor:pointer;border:1px solid #d5d5d5;display:inline-block;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') 4px -44px no-repeat}
.ecl-pc-gmgg .games-pager-prev{margin-right:0;text-align:right;padding-right:4px}.ecl-pc-gmgg .games-pager-next{text-align:left;padding-left:4px;background-position:44px -64px}.ecl-pc-gmgg .games-pager-more{border:1px solid #FFF;cursor:default}.ecl-pc-gmgg .games-pager-wrapper a:hover,.ecl-pc-gmgg .games-pager-prev:hover,.ecl-pc-gmgg .games-pager-next:hover{background-color:#fdfdfd;border-color:#5a9ff1}.ecl-pc-gmgg a.games-pager-cur,.ecl-pc-gmgg a.games-pager-cur:hover{border-color:#FFF;cursor:default;color:#000}</style>
{%strip%}{%*泛需求，好玩的网游，好玩的网页游戏模板*%}

{%if $tplData.aiwanurl%}
<h4 class="ecl-pc-gmgg-header" data-click="{rsv_vsmid:1}"><a target="_blank" class="games-header-link" href="{%$tplData.aiwanurl%}">{%$tplData.aiwantitle%}</a></h4>
{%/if%}
<div class="ecl-pc-gmgg">
    <div class="games-panel">
        <div class="games-category-panel">
            <div class="games-type">
                <b class="games-type-subject">按游戏：</b>
                <span class="games-type-list games-category" data-click="{fm:'beha'}">
                    <a href="#" hidefocus="on" data-value="yeyou" {%if $tplData.gametype=='yeyou'%} class="games-type-selected"{%/if%}>网页游戏</a>|
                    <a href="#" hidefocus="on" data-value="wangyou" {%if $tplData.gametype=='wangyou'%} class="games-type-selected"{%/if%}>客户端网游</a>|
                    <a href="#" hidefocus="on" data-value="xiaoyouxi" {%if $tplData.gametype=='xiaoyouxi'%} class="games-type-selected"{%/if%}>小游戏</a>|
                    <a href="#" hidefocus="on" data-value="shouyou" {%if $tplData.gametype=='shouyou'%} class="games-type-selected"{%/if%}>安卓手机游戏</a>
                </span>
            </div>
        </div>
        <div class="games-querytag">
            {%if !empty($tplData.newquerytag)%}
            <div class="games-search games-search-{%$tplData.gametype|escape:'html'%}">
                <div class="games-type games-type-panel">
                    <b class="games-type-subject">按类型：</b>
                    <span class="games-type-list" data-click="{fm:'beha'{%if $tplData.gametype=='shouyou'%},rsv_vsgmtype:40{%/if%}}">
                        {%foreach $tplData.newquerytag.typelist as $item%}
                            <a href="#" hidefocus="on" data-code="{%$item.code%}" data-value="{%$item.id%}"
                            {%if $item.id===$tplData.newquerytag.selectedtype%} class="games-type-selected"{%/if%}>{%$item.text%}</a>
                            {%if !$item@last%}|{%/if%}
                        {%/foreach%}
                    </span>
                </div>
                {%if !empty($tplData.newquerytag.subjectlist)%}
                {%$isSubjectExpand=$tplData.newquerytag.selectedsubject!='0'%}
                {%$isSubjectMultiLine=count($tplData.newquerytag.subjectlist)>1%}
                <div class="games-type{%if $isSubjectExpand%} games-type-expand{%/if%} games-subject-panel">
                    <b class="games-type-subject">按特色：</b>
                    <span class="games-subject-list" data-click="{fm:'beha'{%if $tplData.gametype=='shouyou'%},rsv_vsgmtype:44{%/if%}}">
                        {%foreach $tplData.newquerytag.subjectlist as $lineitem%}
                            {%foreach $lineitem as $item%}
                            <a href="#" hidefocus="on" data-code="{%$item.code%}" data-value="{%$item.id%}"
                            {%if $item.id===$tplData.newquerytag.selectedsubject%} class="games-type-selected"{%/if%}>{%$item.text%}</a>
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
            {%if $tplData.gametype=='shouyou'%}
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
            {%elseif $tplData.gametype=='xiaoyouxi'%}
            {%foreach $tplData.list as $item%}
            <div class="games-list-item-xiaoyouxi" data-click="{rsv_vsgmid:'{%$item.gameid%}'}">
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
                <div class="games-list-item" data-click="{rsv_vsgmid:'{%$item.gameid%}'}">
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
                        {%if $tplData.gametype=='yeyou'%}
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
       
        {%function name=fe_fn_zx_game_general_gen_page from="1" to="1" page="1"%}
            {%for $i=$from to $to %}
                <a href="javascript:;" data-page="{%$i%}" {%if $i==$page%} class="games-pager-cur"{%/if%}>{%$i%}</a>
            {%/for%}
        {%/function%}

        {%function name=fe_fn_zx_game_general_page page="1" totalPage="1" split="5"%}
            <div class="games-pager" data-click="{fm:'beha'}" onselectstart="return false"{%if $totalPage == 1%} style="display:none"{%/if%}>
                <a href="javascript:;" id="games-pager-prev" data-click="{rsv_vspn:-1}" data-page="prev" class="games-pager-prev" {%if $page == 1%} style="visibility:hidden"{%/if%}>上一页</a>
                <span class="games-pager-wrapper" data-click="{rsv_vspn:-2}">
                    {%if $totalPage <= $split+1%}
                        {%fe_fn_zx_game_general_gen_page from="1" to="$totalPage" page="$page"%}
                    {%else%}
                        {%fe_fn_zx_game_general_gen_page from="1" to="1" page="$page"%}
                        {%if $page < $split%}
                            {%fe_fn_zx_game_general_gen_page from="2" to="$split" page="$page"%}
                            <span class="games-pager-more">...</span>
                        {%elseif $page>$totalPage-$split+1%}
                            <span class="games-pager-more">...</span>
                            {%$temp_from=$totalPage-$split+1%}
                            {%$temp_to=$totalPage-1%}
                            {%fe_fn_zx_game_general_gen_page from="$temp_from" to="$temp_to" page="$page"%}
                        {%else%}
                            {%$temp_from=$page-($split-3)/2%}
                            {%$temp_to=$page+($split-3)/2%}
                            <span class="games-pager-more">...</span>
                            {%fe_fn_zx_game_general_gen_page from="$temp_from" to="$temp_to" page="$page"%}
                            <span class="games-pager-more">...</span>
                        {%/if%}
                        {%fe_fn_zx_game_general_gen_page from="$totalPage" to="$totalPage" page="$page"%}
                    {%/if%}
                </span>
                <a href="javascript:;" data-page="next" data-click="{rsv_vspn:-3}" class="games-pager-next"{%if $totalPage == $page%} style="visibility:hidden"{%/if%}>下一页</a>
            </div>
        {%/function%}
        
        {%$temp_page=$tplData.page%}
        {%$temp_totalPage=$tplData.totalpage%}
        {%if $temp_totalPage<=0||empty($tplData.list)%}{%$temp_totalPage=1%}{%/if%}
        {%fe_fn_zx_game_general_page page="$temp_page" totalPage="$temp_totalPage" split="5"%}
    </div>
</div>
<div style="color:#008000;font-size:13px;line-height:20px;margin-top:5px;">iwan.baidu.com</div>
<script data-compress="off">
A.setup("G_ZX_GAME_GENERAL", {
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
    "zt": "{%$tplData.zt%}" || 'ps',
    "from": "{%$tplData.from%}",
    "urlparam": "{%$tplData.urlparam%}"
});
</script>
{%/strip%}
{%*首屏反作弊脚本*%}
<script>
A.setup("G_ZX_GAME_GENERAL_ANTI",(function (d){var Anti=function(e){function n(e){var n=window.event||e;for(T=n.target||n.srcElement;T&&"A"!=T.tagName;)T=T.parentNode;w=(new Date).getTime(),v=9999,m=n.clientX,s=n.clientY,h=E?w-E:0,i()&&o()}function t(){N=(new Date).getTime(),v=N-w,i()&&o()}function r(e){var n=window.event||e;x+=1,d||(d=n.clientX),l||(l=n.clientY),E=(new Date).getTime()}function i(){if(u=0,g=/\?url\=([^\.]+)\./.exec(T.href)){for(var e=0;x*A%99+9>e;++e)u+=g[1].charCodeAt(v*e%g[1].length);return!0}return!1}function o(){var e="&ck="+[u,x,v,m,s,d,l,h].join(".");
if(T.href){var n=T.href;-1==n.indexOf("&ck=")?T.href+=e:T.href=n.replace(/&ck=[\w.]*/,e)}}function a(e,n,t){for(var r in n)X[++D]=t[r],e[p+r]=D,window.attachEvent?e.attachEvent("on"+n[r],t[r]):e.addEventListener(n[r],t[r],!1)}function c(e,n){for(var t in n){var r=e[p+t],i=X[r];i&&(window.detachEvent?e.detachEvent("on"+n[t],i):e.removeEventListener(n[t],i)),X[r]=null}}function f(e,n){for(var t,r=[],i=n.getElementsByTagName("A"),o=" "+e+" ",a=0;t=i[a];a++)t.className&&(" "+t.className+" ").indexOf(o)>=0&&r.push(t);
return r}var u,v,m,s,d,l,h,g,w,E,N,T,p="EC_ZHIXIN",A=0,k=0,x=0;v=m=s=d=l=h=g=w=E=N=T=0;var D=0,X={};return{getAntiTag:function(){return p},setTimesign:function(e){A=e},bind:function(){for(var i=f(p,e),o=0,c=i.length;c>o;o++)a(i[o],["mouseover","mousedown","mouseup"],[r,n,t]);i.length&&(k=1)},unbind:function(){if(k){for(var n=f(p,e),t=0,r=n.length;r>t;t++)c(n[t],["mouseover","mousedown","mouseup"]);k=0}}}};var a=new Anti(d.getElementById('ecl-pc-game-general-games-list'));a.setTimesign('{%$tplData.timesign%}');a.bind();return a;})(document));
</script>
<script type="text/javascript" data-merge>A.init(function(){var self=this,T=A.baidu,PARAMS=self.data.G_ZX_GAME_GENERAL,Anti=self.data.G_ZX_GAME_GENERAL_ANTI;
    
    T = null;
    var $ = jQuery;

function q(t,n){return("string"==typeof n||n instanceof String)&&(n="#"+n),$("."+t,n||document)[0]}function inherits(t,n){function e(){}e.prototype=n.prototype,t.superClass=n.prototype,t.prototype=new e,t.prototype.constructor=t}function isIE(){return/msie (\d+\.\d+)/i.test(navigator.userAgent)?document.documentMode||+RegExp.$1:void 0}function format(t,n){t=String(t);var e=Array.prototype.slice.call(arguments,1),r=Object.prototype.toString;return e.length?(e=1==e.length?null!==n&&/\[object Array\]|\[object Object\]/.test(r.call(n))?n:e:e,t.replace(/#\{(.+?)\}/g,function(t,n){var o=e[n];
return"[object Function]"==r.call(o)&&(o=o(n)),"undefined"==typeof o?"":o})):t}var stringify=function(){function t(t){return/["\\\x00-\x1f]/.test(t)&&(t=t.replace(/["\\\x00-\x1f]/g,function(t){var n=o[t];return n?n:(n=t.charCodeAt(),"\\u00"+Math.floor(n/16).toString(16)+(n%16).toString(16))})),'"'+t+'"'}function n(t){var n,e,r,o=["["],u=t.length;for(e=0;u>e;e++)switch(r=t[e],typeof r){case"undefined":case"function":case"unknown":break;default:n&&o.push(","),o.push(stringify(r)),n=1}return o.push("]"),o.join("")
}function e(t){return 10>t?"0"+t:t}function r(t){return'"'+t.getFullYear()+"-"+e(t.getMonth()+1)+"-"+e(t.getDate())+"T"+e(t.getHours())+":"+e(t.getMinutes())+":"+e(t.getSeconds())+'"'}var o={"\b":"\\b","	":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"};return function(e){switch(typeof e){case"undefined":return"undefined";case"number":return isFinite(e)?String(e):"null";case"string":return t(e);case"boolean":return String(e);default:if(null===e)return"null";if(e instanceof Array)return n(e);if(e instanceof Date)return r(e);
var o,u,i=["{"],c=stringify;for(var a in e)if(Object.prototype.hasOwnProperty.call(e,a))switch(u=e[a],typeof u){case"undefined":case"unknown":case"function":break;default:o&&i.push(","),o=1,i.push(c(a)+":"+c(u))}return i.push("}"),i.join("")}}}(),extend=$.extend;
function ListItemHover(n,e){function o(){$(this).addClass(e+"-hover")}function t(){$(this).removeClass(e+"-hover")}return{bind:function(){var i=$("."+e,n);i.on("mouseenter",o).on("mouseleave",t)},unbind:function(){}}}
var Loader=function(r){var a={ajaxUrl:""};extend(a,r);var n,t=$({}),e=0;return t.ajax=function(r,o){e=+new Date;var i=e,u=function(){},l=function(){i===e&&(t.trigger("loaderror"),u())},c=$.param(r)+PARAMS.urlparam,d=a.ajaxUrl+(a.ajaxUrl.indexOf("?")>=0?"&":"?")+c,f=function(r,a){if(i===e){var n={};try{n=$.parseJSON(a)}catch(l){return t.trigger("loaderror",[l]),void 0}0===n.status?o(n.data):(t.trigger("loaderror"),u())}};n=$.ajax(d,{timeout:6e3,success:function(r,a,n){n=null,f(n,r)},error:function(){n=null,l()
}})},t.load=function(r){t.trigger("loading"),t.ajax(r,function(r){r.list[0]?t.trigger("load",{data:r}):t.trigger("loaderror")})},t.abort=function(){successHandler=errHandler=function(){},n=null},t};
var Pager=function(e,r){function t(r){return $("."+r,e)[0]}var a={split:5,prev:"games-pager-prev",wrapper:"games-pager-wrapper",next:"games-pager-next",selectedClass:"games-pager-cur",moreClass:"games-pager-more",pagerAttr:"data-page"};extend(a,r);var n=$({}),s="PAGER_"+Math.random();return n._genPager=function(e,r,t){for(var n=[],g=e;r>=g;g++)n.push('<a  href="javascript:;" data-page="'+g+'" '+(g==t?'id="'+s+'" class="'+a.selectedClass+'"':"")+">"+g+"</a>");return n.join("")},n._genMore=function(){return'<span class="'+a.moreClass+'">...</span>'
},n.getPage=function(){return n.current?(("string"==typeof n.current||n.current instanceof String)&&(n.current=document.getElementById(n.current)),Math.floor($(n.current).attr(a.pagerAttr))):1},n.setPager=function(r,g){r=r||1,g=g||1,e.style.display="none",t(a.prev).style.visibility=1==r?"hidden":"visible",t(a.next).style.visibility=g==r?"hidden":"visible";var p=[];if(g<=a.split+1)p.push(n._genPager(1,g,r));else{if(p.push(n._genPager(1,1,r)),r<a.split)p.push(n._genPager(2,a.split,r)),p.push(n._genMore());else if(r>g-a.split+1)p.push(n._genMore()),p.push(n._genPager(g-a.split+1,g-1,r));
else{var i=Math.floor((a.split-3)/2);p.push(n._genMore()),p.push(n._genPager(r-i,r+i,r)),p.push(n._genMore())}p.push(n._genPager(g,g,r))}n.current=s,t(a.wrapper).innerHTML=p.join(""),g>1&&(document.getElementById(n.current)||(n.current=a.wrapper),e.style.display=""),n.trigger("render",{page:r})},n.init=function(){function e(e){e.preventDefault();var r=e.target,t=n.getPage(),s=$(r).attr(a.pagerAttr);t+="prev"==s?-1:1,n.trigger("change",{page:t})}function r(e){e.preventDefault();var r=$(e.target),s=t(a.selectedClass);
r.attr("data-page")!==$(s).attr("data-page")&&($(s).removeClass(a.selectedClass),$(n.current=r[0]).addClass(a.selectedClass),n.trigger("change",{page:a.page=r.attr(a.pagerAttr)}))}return n.current=t(a.selectedClass),$(t(a.next)).on("click",e),$(t(a.prev)).on("click",e),$(t(a.wrapper)).on("click",r),n},n.hide=function(){n.setPager(1,1)},n};
function TemplateRender(t){this._init.call(this,t)}TemplateRender.prototype={TPL:{LOADING_TPL:'<div class="games-list-loading"><span class="loading-text">正在努力为您加载...</span></div>',ERROR_TPL:'<div class="games-list-err"><div class="loading-text">#{0}</div></div>'},ERROR_MSG:"抱歉没有找到符合条件的游戏，请尝试其他分类。",LIST_TPL:'<div class="games-list-item" data-click="{rsv_vsgmid:\'#{gameid}\'}">#{itemplatform}#{itemmark}<i class="games-list-item-border"></i><div class="games-list-item-top"><i class="games-list-item-cover-bg"></i>#{itemTypeHolder}<img src="#{photo}" alt="#{title}"></div><p class="games-list-item-text"><a target="_blank" class="EC_ZHIXIN" href="#{url}" title="#{title}">#{shorttitle}</a></p><div class="games-list-star"><div class="star-bg"><span>#{hot}</span><div class="star-cover" style="width:#{hotPercent}%;"></div></div></div></div>',ITEM_COVER:'<a target="_blank" href="#{piclinkurl}" class="games-list-item-cover EC_ZHIXIN"><em>#{piclinktitle}</em><h3>#{type}</h3><p>#{info}</p></a>',ITEM_MORE_COVER:'<a target="_blank" href="#{piclinkurl}" class="EC_ZHIXIN games-list-item-cover"><div class="item-start-btn-grp"><span  class="item-start-btn">开始游戏</span><span class="item-start-btn-more" data-click="{fm:\'beha\'}">更多平台</span></div><h3>#{type}</h3><p>#{info}</p></a><div class="games-list-item-cover-more"><div class="item-start-btn-wrap"><span>#{morepiclinkholder}</span></div></div>',MORE_COVER_LINK:'<a target="_blank" href="#{url}" class="item-start-btn EC_ZHIXIN">#{name}</a>',_init:function(t){this.setOpt(t)
},_render:function(t){this.opt.list.innerHTML=t},_renderList:function(t){var i=[],e=this.opt.gameType,s=this.ITEM_COVER,a=this.LIST_TPL,r=this.ITEM_MORE_COVER,l=this.MORE_COVER_LINK;$.each(t,function(t,n){if(n.hotPercent=20*(n.star>5?5:n.star),n.info=n.info||"","yeyou"==e)if(n.morepiclink&&n.morepiclink[0]){var o="";$.each(n.morepiclink,function(t,i){o+=format(l,i)}),n.morepiclinkholder=o,n.itemTypeHolder=format(r,n)}else n.piclinktitle="开始游戏",n.itemTypeHolder=format(s,n);else n.piclinktitle="进入专区",n.itemTypeHolder=format(s,n);
n.itemmark=n.mark?format('<i class="games-list-item-mark">#{mark}</i>',n):"",n.itemplatform=n.platform?format('<div class="games-list-item-platform"><i></i><em>#{platform}</em></div>',n):"",i.push(format(a,n))}),i.push('<div class="last-item"></div>'),this._render(i.join("")),this.opt.container.style.height=""},onRender:function(){},setOpt:function(t){this.opt=t},renderError:function(){this.opt.container.style.height="",this._render(format(this.TPL.ERROR_TPL,this.ERROR_MSG))},renderList:function(t){this._renderList(t),this.onRender(t)
},renderLoading:function(){if(!isIE()||isIE()>=8){var t=$(this.opt.container).outerHeight()-(isIE()<8?0:2);this.opt.container.style.height=t+"px"}this._render(this.TPL.LOADING_TPL)}};
function XiaoYouXiRender(e){this.setOpt.call(this,e)}inherits(XiaoYouXiRender,TemplateRender),$.extend(XiaoYouXiRender.prototype,{LIST_TPL:'<div class="games-list-item-xiaoyouxi" data-click="{rsv_vsgmid:\'#{gameid}\'}"><a class="item-xiaoyouxi-photo" target="_blank" href="#{url}"><em></em><img src="#{photo}"></a><a target="_blank" href="#{url}" title="#{title}">#{shorttitle}</a><div class="games-list-star"><div class="star-bg"><div class="star-cover" style="width:#{hotPercent}%;"></div></div></div><p class="item-xiaoyouxi-use">#{useHolder}次使用</p></div>',_renderList:function(e){var t=[],i=this.LIST_TPL;
$.each(e,function(e,s){s.hotPercent=20*(s.star>5?5:s.star),s.useHolder=s.use>=1e8?"<em>"+Math.floor(s.use/1e8)+"</em>亿":s.use>=1e4?"<em>"+Math.floor(s.use/1e4)+"</em>万":"<em>"+s.use+"</em>",t.push(format(i,s))}),t.push('<div class="last-item"></div>'),this._render(t.join("")),this.opt.container.style.height=""}});
function ShouYouRender(e){this.setOpt.call(this,e)}inherits(ShouYouRender,TemplateRender),$.extend(ShouYouRender.prototype,{LIST_TPL:'<div class="games-list-item-xiaoyouxi" data-click="{rsv_vsgmid:\'#{gameid}\'}"><a target="_blank" href="#{downloadurl}" class="item-shouyou-download" data-click="{rsv_vsgmtype:43}">下载</a><div class="item-shouyou-popup"><a target="_blank" href="#{url}" class="item-shouyou-link item-xiaoyouxi-photo" data-click="{rsv_vsgmtype:41}">#{markholder}<em></em><img src="#{photo}"></a><a target="_blank" href="#{url}" class="item-shouyou-link" title="#{title}" data-click="{rsv_vsgmtype:42}">#{shorttitle}</a><div class="games-list-star"><div class="star-bg"><div class="star-cover" style="width:#{hotPercent}%;"></div></div></div><p class="item-xiaoyouxi-use">#{sizeHolder}B</p></div></div>',_renderList:function(e){var t=[],s=this.LIST_TPL,i=1048576;
$.each(e,function(e,a){a.hotPercent=20*(a.star>5?5:a.star),a.markholder=a.mark?format('<i class="item-shouyou-mark-#{mark}"></i>',a):"",a.sizeHolder=a.size>=i?"<em>"+Math.floor(a.size/i)+"</em>M":"<em>"+Math.floor(a.size/1024)+"</em>K",t.push(format(s,a))}),t.push('<div class="last-item"></div>'),this._render(t.join("")),this.opt.container.style.height=""}});
var SwitchTab=function(e,t){function a(t,a){return("string"==typeof a||a instanceof String)&&(a="#"+a),$("."+t,a||e)[0]}function n(){$(e).on("click",function(e){e.preventDefault();var t=e.target;t!==d.selected&&$(t).attr(l.dataTag)&&!$(t).hasClass(l.disabled)&&(c(t),d.trigger("change",d.getValue()))})}function s(){n(),d.selected=a(l.selected)}function c(e){$(d.selected).removeClass(l.selected),$(d.selected=e).addClass(l.selected)}var d=$({}),l={selected:"games-type-selected",dataTag:"data-value",disabled:"games-subject-disabled"};
return t&&(l=extend(l,t)),d.getValue=function(){return{value:$(d.selected).attr(l.dataTag)}},d.init=s,d.select=c,d.reset=function(){c($(e).children()[0])},d};
var MoreToggle=function(e,n){function a(){var n=q(s.list,e).getElementsByTagName("A");if(n[0]){var a=n[0],t=n[n.length-1];t.offsetTop-a.offsetTop>10&&$(q(s.morebtn,e)).show()}}function t(){var n=q(s.morebtn,e),a=q("icon-down",n),t=q("icon-wrap",n);$(n).on("click",function(){var n=q(s.wrapper,e),o=$(n).hasClass(s.expand);$(n)[o?"removeClass":"addClass"](s.expand),o=!o,a.className="icon-"+(o?"up":"down"),t.innerHTML=o?"收起":"更多"})}var o=this,s={list:"games-subject-list",wrapper:"games-subject-panel",morebtn:"games-more-subject",expand:"games-type-expand"};
extend(s,n),o.init=function(){setTimeout(function(){a(),t()},0)}};
var TabManager=function(){function s(s,e){var a="",t=s.length-1;return $.each(s,function(s,c){a+='<a href="#" hidefocus="on" data-code="'+(c.code||"")+'"'+' data-value="'+c.id+'"'+(c.id==e?'class="games-type-selected"':"")+">"+c.text+"</a>"+(t!=s?"|":"")}),a}function e(e,a){var t="shouyou"==a?",rsv_vsgmtype:40":"",c='<div class="games-type games-type-panel">';return c+='<b class="games-type-subject">按类型：</b><span class="games-type-list" data-click="{fm:\'beha\''+t+'}">',c+=s(e.typelist,e.selectedtype),c+="</span></div>"
}function a(e,a){var t="shouyou"==a?",rsv_vsgmtype:44":"",c='<div class="games-type games-subject-panel"><b class="games-type-subject">按特色：</b><span class="games-subject-list" data-click="{fm:\'beha\''+t+'}">',n=e.subjectlist.length>1,l=e.subjectlist.length-1;return $.each(e.subjectlist,function(a,t){c+=s(t,e.selectedsubject),n&&a!=l&&(c+="<br>")}),c+='</span><span class="games-subject-more games-more-subject" data-click="{fm:\'beha\'}" style="display:none"><span class="icon-down OP_LOG_BTN"></span><a href="javascript:;" class="icon-wrap">更多</a></span><div class="last-item"></div></div>'
}function t(s,t){var c='<div class="games-search games-search-'+t+'">';return c+=e(s,t),s.subjectlist&&(c+=a(s,t)),c+="</div>"}return{build:t}}();
var TypeTab=function(e){function t(t){return $("."+t,e)[0]}function a(e){var a=t(s.subject),n=$(a).find("a"),c=i.selected,u=a.firstChild;n.each(function(t,a){var n=+$(a).attr(s.codeTag),d=e&n;$(a)[d?"removeClass":"addClass"](s.disabled),d||c!==a||c===u||i.select(c=u)})}function n(){u.init(),i.init(),u.on("change",function(){a(+$(u.selected).attr("data-code")),c.trigger("change",{content:c.getValue()})}),i.on("change",function(){c.trigger("change",{content:c.getValue()})});var t=u.getValue().value;"0"!=t&&a(+$(u.selected).attr("data-code"));
var n=new MoreToggle(e,{list:"games-subject-list",wrapper:"games-subject-panel",morebtn:"games-more-subject",expand:"games-type-expand"});n.init()}var s={codeTag:"data-code",selected:"games-type-selected",type:"games-type-list",subject:"games-subject-list",subjectw:"games-subject-panel",subjectMore:"games-subject-more",disabled:"games-subject-disabled",expand:"games-type-expand"},c=$({}),u=new SwitchTab(t(s.type)),i=new SwitchTab(t(s.subject));return c.getValue=function(){return{type:u.getValue().value,subject:i.getValue().value}
},c.show=function(){$(e).show()},c.hide=function(){$(e).hide()},c.init=n,c};
var GameCategoryTab=function(e){var a=new SwitchTab(e),t=a.getValue;return a.getValue=function(){return{gameType:t.apply(a).value}},a};
var GamePanel={create:function(t){return new this[t.gameType](t)},BasicPanel:function(){function t(t){this._init.call(this,t)}return t.prototype={IE6:isIE()<7,_initItemHover:function(){this._itemHover=0},_init:function(t){this.opt=t,this._initItemHover(),this._events=$({})},_getParams:function(){return{}},getParams:function(){return this._getParams()},_buildTab:function(t){return t&&t.typelist?($(this.opt.querytag).append(TabManager.build(t,this.opt.gameType)),!0):!1},bindDOM:function(){this._itemHover&&this._itemHover.bind()
},unbindDOM:function(){this._itemHover&&this._itemHover.unbind()},initTab:function(t){var i=this;!i.typeTab&&i._buildTab(t)&&(i._initTab(),i.typeTab.show())},init:function(){var t=this.opt,i=new TemplateRender(t);this.render=i},reload:function(){this.fire("change",{target:this})}},t.prototype.on=function(t,i){this._events.on(t,i)},t.prototype.un=function(t,i){this._events.off(t,i)},t.prototype.fire=function(t,i){this._events.trigger(t,i)},t}()};
function LayerToggle(t){function e(){$("."+a.top,t).each(function(t,e){var n=q(a.btn,e);if(n){var l=q(a.cover,e),s=q(a.more,e);i[++o]=function(t){t.preventDefault(),l.style.display="none",s.style.display="block"},n.__event_lt_click=o,$(n).on("click",i[o]),i[++o]=function(t){var e=t.relatedTarget,n=t.target;n&&e&&(n===s||$.contains(s,n)&&e!==s)&&!$.contains(s,e)&&(l.style.display="",s.style.display="none")},s.__event_lt_click=o,$(s).on("mouseout",i[o]),i[++o]=function(t){var e=t.target;e.href&&0===e.href.indexOf("http")&&(l.style.display="",s.style.display="none")
},s.__event_lt_click=o,$(s).on("click",i[o])}})}function n(){$("."+a.top,t).each(function(t,e){var n=q(a.btn,e);if(n){var o=q(a.more,e);$(n).off("click",i[n.__event_lt_click]),$(o).off("mouseout",i[o.__event_lt_out]).off("click",i[o.__event_lt_click])}}),i=[]}var i=[],o=0,a={top:"games-list-item-top",cover:"games-list-item-cover",more:"games-list-item-cover-more",btn:"item-start-btn-more"};return{bind:e,unbind:n}}GamePanel.wangyou=GamePanel.yeyou=function(){function t(t){this._init.call(this,t)}return inherits(t,GamePanel.BasicPanel),$.extend(t.prototype,{anti:1,_initItemHover:function(){this.IE6&&(this._itemHover=new ListItemHover(this.opt.list,"games-list-item-top"))
},_initTab:function(){var t=this,e=new TypeTab(q("games-search-"+t.opt.gameType,t.opt.container));e.init(),e.on("change",function(){t.unbindDOM(),t.reload()}),t.typeTab=e},_getParams:function(){return this.typeTab?this.typeTab.getValue():{type:0,subject:0,needquerytag:1}},bindDOM:function(){GamePanel.BasicPanel.prototype.bindDOM.apply(this),this.layerToggle&&this.layerToggle.bind()},unbindDOM:function(){GamePanel.BasicPanel.prototype.unbindDOM.apply(this),this.layerToggle&&this.layerToggle.unbind()},init:function(){var t=this;
t.render=new TemplateRender(t.opt),"yeyou"==t.opt.gameType&&(t.layerToggle=new LayerToggle(t.opt.list))},show:function(){this.typeTab&&this.typeTab.show()},showFirst:function(){this._initTab(),this.show()},hide:function(){this.typeTab&&this.typeTab.hide()}}),t}();
GamePanel.xiaoyouxi=function(){function i(i){this._init.call(this,i)}var t="games-list-xiaoyouxi";return inherits(i,GamePanel.BasicPanel),$.extend(i.prototype,{init:function(){this._initItemHover(),this.render=new XiaoYouXiRender(this.opt)},initTab:function(){},showFirst:function(){this.show()},show:function(){$(this.opt.list).addClass(t)},hide:function(){$(this.opt.list).removeClass(t)}}),i}();
GamePanel.shouyou=function(){function e(e){this._init.call(this,e)}var t="games-list-shouyou",i='<div data-click="{fm:\'beha\',rsv_vsgmtype:49}" class="games-ordertype-shouyou"><a href="#" hidefocus="on" data-value="hot" class="games-type-selected">热门</a><a href="#" hidefocus="on" data-value="new">最新</a></div>';return inherits(e,GamePanel.BasicPanel),$.extend(e.prototype,{_initItemHover:function(){this.IE6&&(this._itemHover=new ListItemHover(this.opt.list,"games-list-item-xiaoyouxi"))},_initTab:function(){function e(){return q("games-search-"+i.opt.gameType,i.opt.container)
}function t(){i.unbindDOM(),i.reload()}var i=this,n=e(),a=new SwitchTab(q("games-type-list",n));a.init(),a.on("change",function(){i.subjectTab&&i.subjectTab.reset(),t()}),a.show=function(){$(e()).show()},a.hide=function(){$(e()).hide()},i.typeTab=a;var s=q("games-subject-list",n);if(s){var o=new SwitchTab(s);o.init(),o.on("change",function(){i.typeTab.reset(),t()}),i.subjectTab=o;var r=new MoreToggle(n,{list:"games-subject-list",wrapper:"games-subject-panel",morebtn:"games-more-subject",expand:"games-type-expand"});
r.init()}},_getParams:function(){var e=this.typeTab?{type:this.typeTab.getValue().value}:{type:0,needquerytag:1},t=this.orderTab;t&&(e.ordertype=t.getValue().value);var i=this.subjectTab;return i&&(e.subject=i.getValue().value),e},_bindLink:function(){var e=this.opt.getParams(),t=$.param({query:e.query,qid:e.qid,sid:e.sid,resource_id:e.resource_id,version:e.version});$(".item-shouyou-link",this.opt.list).each(function(e,i){var n=i.href;i.href=n+(n.indexOf("?")>=0?"&":"?")+t})},_initOrderTab:function(){var e=this,t=this.opt.querytag;
$(t).prepend(i);var n=q("games-ordertype-shouyou",t),a=new SwitchTab(n);a.on("change",function(){e.unbindDOM(),e.reload()}),a.show=function(){$(n).show()},a.hide=function(){$(n).hide()},(e.orderTab=a).init()},init:function(){var e=this;e._initItemHover(),e.render=new ShouYouRender(e.opt),e.render.onRender=function(){e._bindLink()}},show:function(){var e=this;$(e.opt.list).addClass(t),e.typeTab&&e.typeTab.show(),e.orderTab?e.orderTab.show():e._initOrderTab()},hide:function(){$(this.opt.list).removeClass(t),this.typeTab&&this.typeTab.hide(),this.orderTab&&this.orderTab.hide()
},showFirst:function(){var e=this;e._initTab(),e._initOrderTab(),e.show(),e._bindLink()}}),e}();
var Controller=function(e,n){function r(){var e=y.opt.gameType;return{action:h[e],query:n.query,qid:n.qid,sid:n.sid,resource_id:n.resourceid,gametype:e,ordertype:n.ordertype,version:n.version,action_from:n.action_from,from:n.from,zt:n.zt}}function t(n){var t={gameType:n,getParams:r},o=GamePanel.create(extend(t,e));return o.init(),o}function o(e){if(!b[e]){var n=t(e);n.on("change",u),b[e]=n}y!=b[e]&&(y=b[e])}function a(){var n=e.card,r=n.offsetHeight,t="BackCompat"==document.compatMode?document.body.clientHeight:$(window).height(),o=$(n).offset();
isIE()<=7&&(r-=26),t>r?window.scrollTo(window.scrollLeft,o.top-10):window.scrollTo(window.scrollLeft,$("#ecl-pc-game-general-games-list").offset().top+6)}function i(n){var r={rsv_vsgmtype:v[n]};$(e.container).attr("data-click",stringify(r))}function d(n){var r={rsv_vspn:n};$(e.list).attr("data-click",stringify(r))}function g(){var r=e.headerlink.href;$(e.headerlink).on("mousedown",function(){var t=extend({query:n.query,ordertype:n.ordertype,gametype:n.gametype,qid:n.qid,sid:n.sid,from:n.from,zt:n.zt},y.getParams()),o="";
for(var a in t)t.hasOwnProperty(a)&&(o+=a+"="+t[a]+"&");o=o.slice(0,-1)+n.urlparam,e.headerlink.href=/index/i.test(r)?r+(-1==r.indexOf("?")?"?":"&")+o:r+("/"===r[r.length-1]?"":"/")+n.gametype+"?"+o})}function u(e,n){var t=n.target,o=extend(r(),t.getParams());o.page=1,m.load(o)}function s(){f.on("change",function(e,n){y.unbindDOM();var t=extend(r(),y.getParams());t.page=n.page,a(),m.load(t)}),m.on("loaderror",function(){y.render.renderError(),f.hide()}),m.on("loading",function(){w.unbind(),y.render.renderLoading(),f.hide()
}),m.on("load",function(e,n){var r=n.data,t=r.page||1,o=r.totalpage||1;w.setTimesign(r.timesign),y.initTab(r.newquerytag),y.render.renderList(r.list),y.anti&&w.bind(),y.bindDOM(),f.setPager(t,o)}),f.on("render",function(e,n){d(n.page)}),l.on("change",function(e,r){y.unbindDOM(),y.hide(),o(n.gametype=r.gameType),y.show(),y.reload(),i(r.gameType)})}function c(){f=new Pager(e.pager),f.init(),m=new Loader({ajaxUrl:decodeURIComponent(n.ajaxurl)}),l=new GameCategoryTab(e.gameCategory),l.init();var r=n.gametype||"wangyou";
o(r),y.bindDOM(),y.showFirst(),s(),i(r),d(1),e.headerlink&&g(),self.dispose=function(){m.abort(),w.unbind()}}var f,m,l,y,p=this,h={wangyou:"getOnlineGame",yeyou:"getWebGame",xiaoyouxi:"getSmallGame",shouyou:"getPhoneGame"},v={yeyou:1,wangyou:2,xiaoyouxi:3,shouyou:4},w=Anti,b={};return p.init=c,p};

var ctls={card:self.container,headerlink:q('games-header-link', self.container),container:q('ecl-pc-gmgg', self.container),list:q('games-list', self.container),pager:q('games-pager', self.container),gameCategory:q('games-category', self.container),querytag:q('games-querytag', self.container)},controller=new Controller(ctls,PARAMS);controller.init()
})</script>
{%/block%}