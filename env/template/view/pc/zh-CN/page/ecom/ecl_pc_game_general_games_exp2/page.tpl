{%extends 'base_div.tpl'%}
{%block name='content'%}
<style type="text/css">.ecl-pc-gmgg-header{margin:0;margin-bottom:7px;*margin-bottom:10px;_margin-bottom:9px;width:538px;overflow:hidden;white-space:nowrap;word-break:keep-all;word-wrap:normal;text-overflow:ellipsis;-o-text-overflow:ellipsis;*font-family:\5b8b\4f53}.ecl-pc-gmgg-header a{font-size:16px;font-weight:400}.ecl-pc-gmgg{font-size:12px}.ecl-pc-gmgg .last-item{clear:left;height:0;font-size:0}.ecl-pc-gmgg a[hidefocus]:focus{outline:0}.ecl-pc-gmgg .games-panel{border:1px solid #e3e3e3;border-bottom-color:#e0e0e0;border-right-color:#ececec;-khtml-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-webkit-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-moz-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-o-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-icab-box-shadow:1px 2px 1px rgba(0,0,0,0.072);background:#FFF\9;filter:progid:DXImageTransform.Microsoft.Shadow(Strength=2,Direction=135,Color="#E2E2E2")\9;margin-bottom:-2px\9;-ms-box-shadow:1px 2px 1px rgba(0,0,0,0.072);box-shadow:1px 2px 1px rgba(0,0,0,0.072);width:536px;_overflow:hidden;padding:4px 0 0 0}
.ecl-pc-gmgg .games-panel a{text-decoration:none}.ecl-pc-gmgg .games-panel .sub-border-wrap{width:536px}.ecl-pc-gmgg .games-panel .sub-width-wrap{width:536px;padding-left:10px;*padding-top:1px}.ecl-pc-gmgg .games-querytag{padding-bottom:11px;*padding-bottom:10px;*padding-top:1px;*margin-top:-1px}.ecl-pc-gmgg .games-type{height:26px;overflow:hidden}.ecl-pc-gmgg .games-type-expand{height:auto;overflow:hidden}.ecl-pc-gmgg .games-type-subject{float:left;width:54px;color:#333;line-height:27px;height:27px;margin-right:-11px}
.ecl-pc-gmgg .games-type-list,.ecl-pc-gmgg .games-subject-list{float:left;color:#d8d8d8;width:440px;margin-right:-8px;overflow:hidden;line-height:27px}.ecl-pc-gmgg .games-type-list a,.ecl-pc-gmgg .games-subject-list a{padding:0 5px 1px 6px;*padding:2px 5px 2px 6px;_padding-bottom:1px;margin:0 13px;text-decoration:none;white-space:nowrap;*white-space:normal;*word-break:keep-all;color:#00C;*font-family:\5b8b\4f53;*vertical-align:-1px;font-size:12px}.ecl-pc-gmgg .games-type-list a:hover,.ecl-pc-gmgg .games-subject-list a:hover{text-decoration:underline}
.ecl-pc-gmgg .games-type-list .games-type-selected,.ecl-pc-gmgg .games-subject-list .games-type-selected{background:#388bff;color:#FFF}.ecl-pc-gmgg .games-type-list .games-subject-disabled:hover,.ecl-pc-gmgg .games-subject-list .games-subject-disabled:hover,.ecl-pc-gmgg .games-type-list .games-subject-disabled,.ecl-pc-gmgg .games-subject-list .games-subject-disabled{color:#CCC;text-decoration:none;cursor:text}.ecl-pc-gmgg .games-subject-more,.ecl-pc-gmgg .games-type-more{float:left;width:47px;line-height:27px;*line-height:25px;height:27px}
.ecl-pc-gmgg .games-subject-more .icon-down,.ecl-pc-gmgg .games-type-more .icon-down,.ecl-pc-gmgg .games-subject-more .icon-up,.ecl-pc-gmgg .games-type-more .icon-up{display:block;width:7px;height:4px;position:absolute;margin-top:12px;*margin-top:8px;_margin-top:9px;margin-left:34px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') -6px -32px no-repeat}.ecl-pc-gmgg .games-subject-more .icon-wrap,.ecl-pc-gmgg .games-type-more .icon-wrap{color:#333;*margin-top:-10px;padding:1px 16px 2px 5px;*padding:3px 16px 0 5px;_padding-top:4px;border:1px solid transparent;_border-color:#FFF;_filter:chroma(color=#ffffff)}
.ecl-pc-gmgg .games-subject-more .icon-wrap:focus,.ecl-pc-gmgg .games-type-more .icon-wrap:focus{outline:0}.ecl-pc-gmgg .games-subject-more .icon-hover,.ecl-pc-gmgg .games-type-more .icon-hover,.ecl-pc-gmgg .games-subject-more .icon-wrap:hover,.ecl-pc-gmgg .games-type-more .icon-wrap:hover{background:#f2f8ff;border-color:#67a5eb}.ecl-pc-gmgg .games-subject-more .icon-down:hover,.ecl-pc-gmgg .games-type-more .icon-down:hover{cursor:pointer}.ecl-pc-gmgg .games-subject-more .icon-up,.ecl-pc-gmgg .games-type-more .icon-up{background-position:-20px -32px}
.ecl-pc-gmgg .games-list{padding-left:10px;min-height:160px;_height:160px}.ecl-pc-gmgg .games-list-loading{text-align:center;padding-top:76px;padding-bottom:76px}.ecl-pc-gmgg .games-list-loading .loading-text{height:28px;line-height:28px;color:#333}.ecl-pc-gmgg .games-list-err{padding-top:76px;padding-bottom:76px}.ecl-pc-gmgg .games-list-err .loading-text{color:#333;padding-left:32px;height:28px;line-height:28px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') no-repeat;width:280px;margin:0 auto}.ecl-pc-gmgg .games-list-item-mark{position:absolute;width:13px;height:27px;padding-right:14px;font:normal bold 15px/15px '宋体';letter-spacing:-2px;text-align:center;color:#FFF;pointer-events:none;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') -154px -80px no-repeat}
.ecl-pc-gmgg .games-list-item{float:left;width:104px;height:197px;overflow:hidden;color:#666;position:relative}.ecl-pc-gmgg .games-list-item img{width:100px;height:140px;display:block}.ecl-pc-gmgg .games-list-item-text{text-align:center;margin:8px 0 5px 0;*margin-top:10px;width:100px}.ecl-pc-gmgg .games-list-item-text a{font-size:13px;*font-family:\5b8b\4f53}.ecl-pc-gmgg .games-list-item-text a:hover{text-decoration:underline}.ecl-pc-gmgg .games-list-item-text a.game-gift-link{display:inline-block;*display:inline;*zoom:1;width:14px;height:14px;margin-left:4px;margin-bottom:-2px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') -24px -130px no-repeat}
.ecl-pc-gmgg .games-list-star{padding:3px 0 0 7px;*padding-top:4px;_padding:2px 0 2px 7px;font-size:12px}.ecl-pc-gmgg .games-list-star span{position:absolute;margin:-2px 0 0 67px;color:#333}.ecl-pc-gmgg .games-list-star .star-bg,.ecl-pc-gmgg .games-list-star .star-cover{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') no-repeat -20px -108px;height:12px}.ecl-pc-gmgg .games-list-star .star-bg{width:61px;text-align:left}.ecl-pc-gmgg .games-list-star .star-cover{background-position:-20px -91px}.ecl-pc-gmgg .games-list-item-border{position:absolute;display:block;width:98px;height:138px;border:1px solid #000;pointer-events:none;-ms-filter:"alpha(opacity=10)";filter:alpha(opacity=10);opacity:.1}
.ecl-pc-gmgg .games-list-item-platform{position:absolute;top:122px;right:4px;pointer-events:none;height:18px;overflow:hidden}.ecl-pc-gmgg .games-list-item-platform i{position:absolute;display:block;width:100%;height:18px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-platform-1.6.png') no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src='http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-platform-1.6.png')}.ecl-pc-gmgg .games-list-item-platform em{margin:0 4px 0 18px;line-height:18px;color:#EEE;position:relative}
.ecl-pc-gmgg .games-list-item-cover,.ecl-pc-gmgg .games-list-item-cover-more,.ecl-pc-gmgg .games-list-item-cover-bg{position:absolute;display:none;width:90px;height:140px;margin:0;padding:0 5px}.ecl-pc-gmgg .games-list-item-cover-bg{-ms-filter:"alpha(opacity=90)";filter:alpha(opacity=90);opacity:.9;background:#FFF}.ecl-pc-gmgg .games-list-item-cover{color:#666;text-decoration:none}.ecl-pc-gmgg .games-list-item-cover h4{padding:0;list-style:none;margin:10px 0 0 3px;color:#000;font-weight:400;font-size:14px}
.ecl-pc-gmgg .games-list-item-cover p{margin-top:10px;_margin-top:6px;margin-left:3px;line-height:18px;height:54px;overflow:hidden;text-overflow:ellipsis;word-break:break-all;cursor:pointer}.ecl-pc-gmgg .games-list-item-cover em{position:absolute;display:block;margin:101px 0 0 3px;*margin-left:0;width:82px;line-height:22px;border:1px solid #187ec6;color:#FFF;text-align:center;text-decoration:none;background:#3aa9fd;_background:#1f95ea;cursor:pointer}.ecl-pc-gmgg .games-list-item-cover em:hover{background:#1f95ea}
.ecl-pc-gmgg .games-list-item-top,.ecl-pc-gmgg .games-list-item-top-hover{width:100px}.ecl-pc-gmgg .games-list-item-top:hover .games-list-item-cover,.ecl-pc-gmgg .games-list-item-top:hover .games-list-item-cover-bg{display:block}.ecl-pc-gmgg .games-list-item-top-hover .games-list-item-cover,.ecl-pc-gmgg .games-list-item-top-hover .games-list-item-cover-bg{display:block}.ecl-pc-gmgg .games-list-item-cover .item-start-btn-grp{position:absolute;margin-top:92px;_margin-top:88px;*margin-left:0;width:82px;padding-left:4px}
.ecl-pc-gmgg .games-list-item-cover .item-start-btn,.ecl-pc-gmgg .games-list-item-cover .item-start-btn-more{display:block;border:1px solid #187ec6;line-height:22px;color:#FFF;background:#3aa9fd;_padding-top:2px;line-height:20px;cursor:pointer;text-align:center}.ecl-pc-gmgg .games-list-item-cover .item-start-btn:hover{background:#1f95ea}.ecl-pc-gmgg .games-list-item-cover .item-start-btn-more{border:1px solid #187ec6;border-top:0;color:#666;padding:0 2px;background:#fefefe;_padding-top:2px}.ecl-pc-gmgg .games-list-item-cover .item-start-btn-more:hover{color:#1c8bff}
.ecl-pc-gmgg .games-list-item-cover-more em{line-height:14px;margin:6px 0;display:block;text-align:center;color:#000;font-weight:400}.ecl-pc-gmgg .games-list-item-cover-more a{display:block;width:74px;margin:6px 0;border:1px solid #187ec6;text-align:center;line-height:18px;color:#FFF;background:#3aa9fd;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}.ecl-pc-gmgg .games-list-item-cover-more a:hover{background:#1f95ea}.ecl-pc-gmgg .games-list-item-cover-more .item-start-btn-wrap{height:140px;width:90px;display:table-cell;vertical-align:middle;text-align:center;*margin-top:-8px;*font-size:140px}
.ecl-pc-gmgg .games-list-item-cover-more .item-start-btn-wrap span{display:inline-block;vertical-align:middle;*font-size:12px}.ecl-pc-gmgg .games-list-item-cover em:hover,.ecl-pc-gmgg .games-list-item-cover .item-start-btn:hover,.ecl-pc-gmgg .games-list-item-cover-more a:hover{background:-moz-linear-gradient(top,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);background:-webkit-linear-gradient(top,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);background:-ms-linear-gradient(top,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);background:linear-gradient(to bottom,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#0084e2',endColorstr='#1f95ea',GradientType=0)}
.ecl-pc-gmgg .category-panel-xiaoyouxi{border-bottom:#ebebeb 1px solid;padding-bottom:7px}.ecl-pc-gmgg .games-list-xiaoyouxi{padding:2px 0 0 0;margin-bottom:-2px;_margin-bottom:-4px}.ecl-pc-gmgg .games-list-item-xiaoyouxi{float:left;margin:0 0 15px 12px;_display:inline;width:163px;height:70px;overflow:hidden;color:#999}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-photo{width:64px;height:64px;overflow:hidden;display:block;float:left;margin-right:14px}.ecl-pc-gmgg .games-list-item-xiaoyouxi a:hover{text-decoration:underline}
.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-title{*font-family:\5b8b\4f53;_zoom:1;_overflow:hidden;_o-text-overflow:ellipsis;_text-overflow:ellipsis;_white-space:nowrap;_width:68px;_height:17px;_vertical-align:baseline;_line-height:16px}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-photo em{position:absolute;width:70px;height:70px;margin-left:-2px;margin-top:-2px;z-index:1;display:block;background:url('http://www.baidu.com/cache/app/app/static/image/icon/filter.1b080e63.png') no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src='http://www.baidu.com/cache/app/app/static/image/icon/filter.1b080e63.png');cursor:pointer}
.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-photo:hover em{background:url("http://www.baidu.com/cache/app/app/static/image/icon/filter_hover.5fae861e.png") no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="http://www.baidu.com/cache/app/app/static/image/icon/filter_hover.5fae861e.png")}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-use{margin-top:1px;_margin-top:0;_text-indent:-1px}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-use em{color:#000;margin-right:3px}.ecl-pc-gmgg .games-list-item-xiaoyouxi .games-list-star{padding-top:4px;*padding-top:5px;_padding-top:0;padding-left:0;margin-left:77px;_font-size:0;_height:11px;_overflow:hidden}
.ecl-pc-gmgg .games-list-item-xiaoyouxi .games-list-star .star-bg{*background-position:-21px -108px}.ecl-pc-gmgg .games-list-item-xiaoyouxi .games-list-star .star-bg .star-cover{*background-position:-21px -91px}.ecl-pc-gmgg .games-ordertype-shouyou{position:absolute;z-index:1;margin-left:425px;*margin-left:212px;margin-top:-23px;background:#f9f9f9;width:90px;border:1px solid #d4d4d4;border-right:0;overflow:hidden}.ecl-pc-gmgg .games-ordertype-shouyou a{float:left;padding:1px 10px;*padding:3px 10px 1px;border-right:1px solid #d4d4d4;color:#00C}
.ecl-pc-gmgg .games-ordertype-shouyou a:hover{text-decoration:underline}.ecl-pc-gmgg .games-ordertype-shouyou .games-type-selected,.ecl-pc-gmgg .games-ordertype-shouyou .games-type-selected:hover{background:#ededed;color:#676767;text-decoration:none;cursor:text}.ecl-pc-gmgg .games-list-shouyou{padding:2px 0 0 0;margin-bottom:-2px;_margin-bottom:-4px}.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi{margin-bottom:23px}.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .item-shouyou-title{display:inline-block;*display:inline;*zoom:1;overflow:hidden;white-space:nowrap;word-break:keep-all;word-wrap:normal;text-overflow:ellipsis;-o-text-overflow:ellipsis;width:76px;height:16px;_width:60px;margin-bottom:-4px;*font-family:\5b8b\4f53;*vertical-align:baseline;*line-height:1;_line-height:17px}
.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .item-xiaoyouxi-use{margin:0 0 1px 0;_margin-top:-1px}.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .games-list-star{margin-left:85px;_margin-left:83px;_margin-top:6px;_font-size:0;_height:11px;_overflow:hidden}.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .item-xiaoyouxi-photo{width:72px;height:72px;_width:69px}.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .item-xiaoyouxi-photo em{width:78px;height:78px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/cover-sy.png') no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src='http://s1.bdstatic.com/r/www/cache/biz/ecom/game/cover-sy.png')}
.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .item-xiaoyouxi-photo:hover em{background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/game/cover-hover-sy.png") no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="http://s1.bdstatic.com/r/www/cache/biz/ecom/game/cover-hover-sy.png")}.ecl-pc-gmgg .item-shouyou-mark-1,.ecl-pc-gmgg .item-shouyou-mark-2,.ecl-pc-gmgg .item-shouyou-mark-3{position:absolute;width:28px;height:28px;margin:1px 0 0 1px;z-index:2;pointer-events:none;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/mark-sy-1.8.png') no-repeat;_background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/mark-sy-1.8.gif') no-repeat}
.ecl-pc-gmgg .item-shouyou-mark-2{background-position:-30px 0}.ecl-pc-gmgg .item-shouyou-mark-3{background-position:-60px 0}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-shouyou-popup{position:absolute;background:#FFF;outline:0}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-use{color:#999}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-shouyou-download{display:block;position:absolute;z-index:3;text-align:center;margin-left:86px;margin-top:48px;*margin-top:46px;_margin-top:47px;width:45px;height:24px;_height:23px;_overflow:hidden;line-height:24px;*line-height:26px;border:1px solid #bdc1c6;color:#333}
.ecl-pc-gmgg .games-list-item-xiaoyouxi:hover .item-shouyou-popup,.ecl-pc-gmgg .games-list-item-xiaoyouxi-hover .item-shouyou-popup{z-index:2;padding-top:2px;padding-left:2px;margin-top:-3px;margin-left:-3px;width:162px;height:76px;border:1px solid #CCC;box-shadow:1px 1px 1px #DDD}.ecl-pc-gmgg .games-list-item-xiaoyouxi:hover .item-shouyou-download,.ecl-pc-gmgg .games-list-item-xiaoyouxi-hover .item-shouyou-download{color:#FFF;border:0;background:#388bff;width:47px;height:26px;line-height:26px;*line-height:28px}
.ecl-pc-gmgg .games-list-item-xiaoyouxi:hover .item-shouyou-download:hover,.ecl-pc-gmgg .games-list-item-xiaoyouxi-hover .item-shouyou-download:hover{text-decoration:none}.ecl-pc-gmgg .games-list-item-xiaoyouxi:hover .item-shouyou-download:active,.ecl-pc-gmgg .games-list-item-xiaoyouxi-hover .item-shouyou-download:active{box-shadow:inset 0 0 1px 2px #1a7dc0}.ecl-pc-gmgg .games-pager{height:25px;text-align:center;margin:0 8px;_margin-top:-2px;border-top:1px solid #e3e3e3;padding:9px 0 7px 0}.ecl-pc-gmgg .games-pager a,.ecl-pc-gmgg .games-pager a:hover{text-decoration:none}
.ecl-pc-gmgg .games-pager-end{display:none}.ecl-pc-gmgg .games-pager-wrapper{display:inline-block}.ecl-pc-gmgg .games-pager-wrapper a,.ecl-pc-gmgg .games-pager-cur,.ecl-pc-gmgg .games-pager-more{text-align:center;padding:2px 6px;margin-left:2px;line-height:21px;cursor:pointer;color:#00C;border:1px solid #d5d5d5}.ecl-pc-gmgg .games-pager-prev,.ecl-pc-gmgg .games-pager-next{margin:0 2px;margin-top:1px;height:19px;line-height:19px;width:52px;color:#00C;cursor:pointer;border:1px solid #d5d5d5;display:inline-block;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') 4px -44px no-repeat}
.ecl-pc-gmgg .games-pager-prev{margin-right:0;text-align:right;padding-right:4px}.ecl-pc-gmgg .games-pager-next{text-align:left;padding-left:4px;background-position:44px -64px}.ecl-pc-gmgg .games-pager-more{border:1px solid #FFF;cursor:default}.ecl-pc-gmgg .games-pager-wrapper a:hover,.ecl-pc-gmgg .games-pager-prev:hover,.ecl-pc-gmgg .games-pager-next:hover{background-color:#fdfdfd;border-color:#5a9ff1}.ecl-pc-gmgg a.games-pager-cur,.ecl-pc-gmgg a.games-pager-cur:hover{border-color:#FFF;cursor:default;color:#000}
.ecl-pc-gmgg-header.ecl-game-fix-ff{margin-bottom:8px}.ecl-pc-gmgg.ecl-game-fix-ff .games-type-list a,.ecl-pc-gmgg.ecl-game-fix-ff .games-subject-list a{padding:1px 6px 0 5px!important}.ecl-pc-gmgg.ecl-game-fix-ff .games-type-panel{margin:-1px 0}.ecl-pc-gmgg.ecl-game-fix-ff .games-querytag{padding-bottom:10px}.ecl-pc-gmgg.ecl-game-fix-ff .games-list-item-text{margin-top:7px}.ecl-pc-gmgg.ecl-game-fix-ff .games-list-star{padding:2px}.ecl-pc-gmgg.ecl-game-fix-ff .games-list-item-xiaoyouxi .games-list-star{margin-left:75px}
.ecl-pc-gmgg.ecl-game-fix-ff .games-list-item-xiaoyouxi .item-xiaoyouxi-use{margin-top:-1px}.ecl-pc-gmgg.ecl-game-fix-ff .games-list-shouyou .games-list-item-xiaoyouxi .games-list-star{margin-left:83px;padding-top:3px}.ecl-pc-gmgg.ecl-game-fix-ff .games-list-item-xiaoyouxi .item-shouyou-download{margin-top:48px}.ecl-pc-gmgg.ecl-game-fix-ff .games-pager-prev,.ecl-pc-gmgg.ecl-game-fix-ff .games-pager-next{height:18px;line-height:18px}.ecl-pc-gmgg.ecl-game-fix-ie678 .games-type-panel{margin:-1px 0}.ecl-pc-gmgg.ecl-game-fix-ie678 .games-type-list a,.ecl-pc-gmgg.ecl-game-fix-ie678 .games-subject-list a{padding-bottom:1px;vertical-align:-1px}
.ecl-pc-gmgg.ecl-game-fix-ie678 .games-querytag{padding-bottom:9px}</style>
{%strip%}{%*泛需求，好玩的网游，好玩的网页游戏模板*%}

{%if $tplData.aiwanurl%}
<h4 class="ecl-pc-gmgg-header" data-click="{rsv_vsmid:1}"><a target="_blank" class="games-header-link" href="{%$tplData.aiwanurl%}">{%$tplData.aiwantitle%}</a></h4>
{%/if%}
<div class="ecl-pc-gmgg">
    <div class="games-panel">

        <div class="sub-width-wrap">

            <div class="games-category-panel">
                <div class="games-type">
                    <b class="games-type-subject">按游戏：</b>
                    <span class="games-type-list games-category" data-click="{fm:'beha'}">
                        <a href="#" hidefocus="on" data-value="yeyou" {%if $tplData.gametype=='yeyou'%} class="games-type-selected"{%/if%}>网页游戏</a>|
                        <a href="#" hidefocus="on" data-value="wangyou" {%if $tplData.gametype=='wangyou'%} class="games-type-selected"{%/if%}>客户端游戏</a>|
                        <a href="#" hidefocus="on" data-value="xiaoyouxi" {%if $tplData.gametype=='xiaoyouxi'%} class="games-type-selected"{%/if%}>小游戏</a>|
                        <a href="#" hidefocus="on" data-value="shouyou" {%if $tplData.gametype=='shouyou'%} class="games-type-selected"{%/if%}>安卓手机游戏</a>
                    </span>
                </div>
            </div>
            <div class="games-querytag">
                {%if !empty($tplData.newquerytag)%}
                <div class="games-search games-search-{%$tplData.gametype|escape:'html'%}">
                    {%*if !empty($tplData.newquerytag.typelist_exp)*%}
                    {%$isTypeMultiLine=count($tplData.newquerytag.typelist_exp)>1%}
                    {%$isTypeExpand=$tplData.newquerytag.selectedtype!='0'%}
                    <div class="games-type{%if $isTypeExpand%} games-type-expand{%/if%} games-type-panel">
                        <b class="games-type-subject">按类型：</b>
                        <span class="games-type-list" data-click="{fm:'beha'{%if $tplData.gametype=='shouyou'%},rsv_vsgmtype:40{%/if%}}">
                            {%foreach $tplData.newquerytag.typelist_exp as $lineitem%}
                                {%foreach $lineitem as $item%}
                                    <a href="#" hidefocus="on" data-code="{%$item.code%}" data-value="{%$item.id%}"
                                    {%if $item.id===$tplData.newquerytag.selectedtype%} class="games-type-selected"{%/if%}>{%if $item.text==='全部'%}{%$item.text='　'|cat:$item.text|cat:'　'%}{%/if%}{%$item.text%}</a>
                                    {%if !$item@last%}|{%/if%}
                                {%/foreach%}
                                {%if !$lineitem@last&&$isTypeMultiLine%}<br>{%/if%}
                            {%/foreach%}
                        </span>
                        <span class="games-type-more" data-click="{fm:'beha'}" {%if !$isTypeMultiLine%}style="display:none"{%/if%}>
                            <span class="icon-down{%if $isTypeExpand%} icon-up{%/if%} OP_LOG_BTN"></span>
                            <a href="javascript:;" hidefocus="on" class="icon-wrap">
                                {%if $isTypeExpand%}收起{%else%}更多{%/if%}
                            </a>
                        </span>
                        <div class="last-item"></div>
                    </div>
                    {%*/if*%}
                    {%if !empty($tplData.newquerytag.subjectlist_exp)%}
                    {%$isSubjectExpand=$tplData.newquerytag.selectedsubject!='0'%}
                    {%$isSubjectMultiLine=count($tplData.newquerytag.subjectlist_exp)>1%}
                    <div class="games-type{%if $isSubjectExpand%} games-type-expand{%/if%} games-subject-panel">
                        <b class="games-type-subject">按特色：</b>
                        <span class="games-subject-list" data-click="{fm:'beha'{%if $tplData.gametype=='shouyou'%},rsv_vsgmtype:44{%/if%}}">
                            {%foreach $tplData.newquerytag.subjectlist_exp as $lineitem%}
                                {%foreach $lineitem as $item%}
                                    <a href="#" hidefocus="on" data-code="{%$item.code%}" data-value="{%$item.id%}"
                                    {%if $item.id===$tplData.newquerytag.selectedsubject%} class="games-type-selected"{%/if%}>{%if $item.text==='全部'%}{%$item.text='　'|cat:$item.text|cat:'　'%}{%/if%}{%$item.text%}</a>
                                    {%if !$item@last%}|{%/if%}
                                {%/foreach%}
                                {%if !$lineitem@last&&$isSubjectMultiLine%}<br>{%/if%}
                            {%/foreach%}
                        </span>
                        <span class="games-subject-more games-more-subject" data-click="{fm:'beha'}" style="display:none">
                            <span class="icon-down{%if $isSubjectExpand%} icon-up{%/if%} OP_LOG_BTN"></span>
                            <a href="javascript:;" hidefocus="on" class="icon-wrap">
                                {%if $isSubjectExpand%}收起{%else%}更多{%/if%}
                            </a>
                        </span>
                        <div class="last-item"></div>
                    </div>
                    {%/if%}
                </div>
                {%/if%}
            </div>

        </div>

        <div class="sub-border-wrap">

            <div id="ecl-pc-game-general-games-list" class="games-list games-list-{%$tplData.gametype|escape:'html'%}">
                {%if !empty($tplData.list)%}
                {%*手机游戏*%}
                {%if $tplData.gametype=='shouyou'%}
                {%foreach $tplData.list as $item%}
                <div class="games-list-item-xiaoyouxi" data-click="{rsv_vsgmid:'{%$item.gameid%}'}">
                <a hidefocus="on" target="_blank" href="{%$item.downloadurl%}" class="item-shouyou-download" data-click="{rsv_vsgmtype:43}">下载</a>
                <div class="item-shouyou-popup">
                    <a hidefocus="on" target="_blank" href="{%$item.url%}" class="item-shouyou-link item-xiaoyouxi-photo" data-click="{rsv_vsgmtype:41}">
                        {%if !empty($item.mark)%}
                        <i class="item-shouyou-mark-{%$item.mark%}"></i>
                        {%/if%}
                        <em></em><img src="{%$item.photo%}">
                    </a>
                    <a hidefocus="on" target="_blank" href="{%$item.url%}" class="item-shouyou-link item-shouyou-title" title="{%$item.title%}" data-click="{rsv_vsgmtype:42}">{%$item.shorttitle%}</a>
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
                <a hidefocus="on" class="item-xiaoyouxi-photo" target="_blank" href="{%$item.url%}"><em></em><img src="{%$item.photo%}"></a>
                <a hidefocus="on" target="_blank" href="{%$item.url%}" title="{%$item.title%}">{%$item.shorttitle%}</a>
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
                            <a hidefocus="on" target="_blank" href="{%$item.piclinkurl%}" class="EC_ZHIXIN games-list-item-cover">
                                <div class="item-start-btn-grp">
                                    <span class="item-start-btn">开始游戏</span>
                                    <span class="item-start-btn-more" data-click="{fm:'beha'}">更多平台</span>
                                </div>
                                <h4>{%$item.type%}</h4>
                                <p>{%$item.info%}</p>
                            </a>
                            <div class="games-list-item-cover-more">
                                <div class="item-start-btn-wrap">
                                    <span>
                                        {%foreach $item.morepiclink as $morepiclink%}
                                        <a hidefocus="on" target="_blank" href="{%$morepiclink.url%}" class="item-start-btn EC_ZHIXIN">{%$morepiclink.name|escape:'html'%}</a>
                                        {%/foreach%}
                                    </span>
                                </div>
                            </div>
                            {%else%}
                            <a hidefocus="on" target="_blank" href="{%$item.piclinkurl%}" class="games-list-item-cover EC_ZHIXIN">
                                <em>开始游戏</em>
                                <h4>{%$item.type%}</h4>
                                <p>{%$item.info%}</p>
                            </a>
                            {%/if%}
                            {%else%}
                            {%* 端游样式 *%}
                            <a hidefocus="on" target="_blank" href="{%$item.piclinkurl%}" class="games-list-item-cover EC_ZHIXIN">
                                <em>进入专区</em>
                                <h4>{%$item.type%}</h4>
                                <p>{%$item.info%}</p>
                            </a>
                            {%/if%}
                            <img src="{%$item.photo%}" alt="{%$item.title%}">
                        </div>
                        <p class="games-list-item-text">
                            <a hidefocus="on" target="_blank" class="EC_ZHIXIN" href="{%$item.url%}" title="{%$item.title%}">{%$item.shorttitle%}</a>
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
                    <a hidefocus="on" href="javascript:;" data-page="{%$i%}" {%if $i==$page%} class="games-pager-cur"{%/if%}>{%$i%}</a>
                {%/for%}
            {%/function%}

            {%function name=fe_fn_zx_game_general_page page="1" totalPage="1" split="5"%}
                <div class="games-pager" data-click="{fm:'beha'}" onselectstart="return false"{%if $totalPage == 1%} style="display:none"{%/if%}>
                    <a hidefocus="on" href="javascript:;" id="games-pager-prev" data-click="{rsv_vspn:-1}" data-page="prev" class="games-pager-prev" {%if $page == 1%} style="visibility:hidden"{%/if%}>上一页</a>
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
                    <a hidefocus="on" href="javascript:;" data-page="next" data-click="{rsv_vspn:-3}" class="games-pager-next"{%if $totalPage == $page%} style="visibility:hidden"{%/if%}>下一页</a>
                </div>
            {%/function%}
            
            {%$temp_page=$tplData.page%}
            {%$temp_totalPage=$tplData.totalpage%}
            {%if $temp_totalPage<=0||empty($tplData.list)%}{%$temp_totalPage=1%}{%/if%}
            {%fe_fn_zx_game_general_page page="$temp_page" totalPage="$temp_totalPage" split="5"%}

        </div>

    </div>
</div>
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
    "from": "{%$tplData.from%}"
});
</script>
{%/strip%}
{%*首屏反作弊脚本*%}
<script>
A.setup("G_ZX_GAME_GENERAL_ANTI",(function (d){var Anti=function(e){function n(e){var n=window.event||e;for(T=n.target||n.srcElement;T&&"A"!=T.tagName;)T=T.parentNode;w=(new Date).getTime(),v=9999,m=n.clientX,s=n.clientY,h=E?w-E:0,i()&&o()}function t(){N=(new Date).getTime(),v=N-w,i()&&o()}function r(e){var n=window.event||e;x+=1,d||(d=n.clientX),l||(l=n.clientY),E=(new Date).getTime()}function i(){if(u=0,g=/\?url\=([^\.]+)\./.exec(T.href)){for(var e=0;x*A%99+9>e;++e)u+=g[1].charCodeAt(v*e%g[1].length);return!0}return!1}function o(){var e="&ck="+[u,x,v,m,s,d,l,h].join(".");
if(T.href){var n=T.href;-1==n.indexOf("&ck=")?T.href+=e:T.href=n.replace(/&ck=[\w.]*/,e)}}function a(e,n,t){for(var r in n)X[++D]=t[r],e[p+r]=D,window.attachEvent?e.attachEvent("on"+n[r],t[r]):e.addEventListener(n[r],t[r],!1)}function c(e,n){for(var t in n){var r=e[p+t],i=X[r];i&&(window.detachEvent?e.detachEvent("on"+n[t],i):e.removeEventListener(n[t],i)),X[r]=null}}function f(e,n){for(var t,r=[],i=n.getElementsByTagName("A"),o=" "+e+" ",a=0;t=i[a];a++)t.className&&(" "+t.className+" ").indexOf(o)>=0&&r.push(t);
return r}var u,v,m,s,d,l,h,g,w,E,N,T,p="EC_ZHIXIN",A=0,k=0,x=0;v=m=s=d=l=h=g=w=E=N=T=0;var D=0,X={};return{getAntiTag:function(){return p},setTimesign:function(e){A=e},bind:function(){for(var i=f(p,e),o=0,c=i.length;c>o;o++)a(i[o],["mouseover","mousedown","mouseup"],[r,n,t]);i.length&&(k=1)},unbind:function(){if(k){for(var n=f(p,e),t=0,r=n.length;r>t;t++)c(n[t],["mouseover","mousedown","mouseup"]);k=0}}}};var a=new Anti(d.getElementById('ecl-pc-game-general-games-list'));a.setTimesign('{%$tplData.timesign%}');a.bind();return a;})(document));
</script>
<script type="text/javascript">A.init(function(){var self=this,T=A.baidu,PARAMS=self.data.G_ZX_GAME_GENERAL,Anti=self.data.G_ZX_GAME_GENERAL_ANTI;

T = null;
var $ = jQuery;

function q(e,n){return("string"==typeof n||n instanceof String)&&(n="#"+n),$("."+e,n||document)[0]}function inherits(e,n){function t(){}t.prototype=n.prototype,e.superClass=n.prototype,e.prototype=new t,e.prototype.constructor=e}function isIE(){return/msie (\d+\.\d+)/i.test(navigator.userAgent)?document.documentMode||+RegExp.$1:void 0}function isFirefox(){return/firefox\/(\d+\.\d+)/i.test(navigator.userAgent)?+RegExp.$1:void 0}function format(e,n){e=String(e);var t=Array.prototype.slice.call(arguments,1),r=Object.prototype.toString;
return t.length?(t=1==t.length?null!==n&&/\[object Array\]|\[object Object\]/.test(r.call(n))?n:t:t,e.replace(/#\{(.+?)\}/g,function(e,n){var o=t[n];return"[object Function]"==r.call(o)&&(o=o(n)),"undefined"==typeof o?"":o})):e}var stringify=function(){function e(e){return/["\\\x00-\x1f]/.test(e)&&(e=e.replace(/["\\\x00-\x1f]/g,function(e){var n=o[e];return n?n:(n=e.charCodeAt(),"\\u00"+Math.floor(n/16).toString(16)+(n%16).toString(16))})),'"'+e+'"'}function n(e){var n,t,r,o=["["],i=e.length;for(t=0;i>t;t++)switch(r=e[t],typeof r){case"undefined":case"function":case"unknown":break;
default:n&&o.push(","),o.push(stringify(r)),n=1}return o.push("]"),o.join("")}function t(e){return 10>e?"0"+e:e}function r(e){return'"'+e.getFullYear()+"-"+t(e.getMonth()+1)+"-"+t(e.getDate())+"T"+t(e.getHours())+":"+t(e.getMinutes())+":"+t(e.getSeconds())+'"'}var o={"\b":"\\b","	":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"};return function(t){switch(typeof t){case"undefined":return"undefined";case"number":return isFinite(t)?String(t):"null";case"string":return e(t);case"boolean":return String(t);
default:if(null===t)return"null";if(t instanceof Array)return n(t);if(t instanceof Date)return r(t);var o,i,u=["{"],a=stringify;for(var c in t)if(Object.prototype.hasOwnProperty.call(t,c))switch(i=t[c],typeof i){case"undefined":case"unknown":case"function":break;default:o&&u.push(","),o=1,u.push(a(c)+":"+a(i))}return u.push("}"),u.join("")}}}(),extend=$.extend;
function ListItemHover(n,e){function t(){$(this).addClass(e+"-hover")}function r(){$(this).removeClass(e+"-hover")}return{bind:function(){var o=$("."+e,n);o.on("mouseenter",t).on("mouseleave",r)},unbind:function(){}}}
var Loader=function(n){var e={ajaxUrl:""};extend(e,n);var t,r=$({}),o=0;return r.ajax=function(n,i){var u=o=+new Date,a=function(){},c=function(){u===o&&(r.trigger("loaderror"),a())},f=$.param(n),s=e.ajaxUrl+(e.ajaxUrl.indexOf("?")>=0?"&":"?")+f,l=function(n,e){if(u===o){var t={};try{t=$.parseJSON(e)}catch(c){return r.trigger("loaderror",[c]),void 0}0===t.status?i(t.data):(r.trigger("loaderror"),a())}};t=$.ajax(s,{timeout:6e3,success:function(n,e,t){t=null,l(t,n)},timeout:function(){t=null,c()},error:function(){t=null,c()
}})},r.load=function(n){r.trigger("loading"),r.ajax(n,function(n){n.list[0]?r.trigger("load",{data:n}):r.trigger("loaderror")})},r.abort=function(){successHandler=errHandler=function(){},t=null},r};
var Pager=function(e,t){function n(t){return $("."+t,e)[0]}var r={split:5,prev:"games-pager-prev",wrapper:"games-pager-wrapper",next:"games-pager-next",selectedClass:"games-pager-cur",moreClass:"games-pager-more",pagerAttr:"data-page"};extend(r,t);var a=$({}),i="PAGER_"+Math.random();return a._genPager=function(e,t,n){for(var a=[],o=e;t>=o;o++)a.push('<a hidefocus="on" href="javascript:;" data-page="'+o+'" '+(o==n?'id="'+i+'" class="'+r.selectedClass+'"':"")+">"+o+"</a>");return a.join("")},a._genMore=function(){return'<span class="'+r.moreClass+'">...</span>'
},a.getPage=function(){return a.current?(("string"==typeof a.current||a.current instanceof String)&&(a.current=document.getElementById(a.current)),Math.floor($(a.current).attr(r.pagerAttr))):1},a.setPager=function(t,o){t=t||1,o=o||1,e.style.display="none",n(r.prev).style.visibility=1==t?"hidden":"visible",n(r.next).style.visibility=o==t?"hidden":"visible";var u=[];if(o<=r.split+1)u.push(a._genPager(1,o,t));else{if(u.push(a._genPager(1,1,t)),t<r.split)u.push(a._genPager(2,r.split,t)),u.push(a._genMore());else if(t>o-r.split+1)u.push(a._genMore()),u.push(a._genPager(o-r.split+1,o-1,t));
else{var s=Math.floor((r.split-3)/2);u.push(a._genMore()),u.push(a._genPager(t-s,t+s,t)),u.push(a._genMore())}u.push(a._genPager(o,o,t))}a.current=i,n(r.wrapper).innerHTML=u.join(""),o>1&&(document.getElementById(a.current)||(a.current=r.wrapper),e.style.display=""),a.trigger("render",{page:t})},a.init=function(){function e(e){e.preventDefault();var t=e.target,n=a.getPage(),i=$(t).attr(r.pagerAttr);n+="prev"==i?-1:1,a.trigger("change",{page:n})}function t(e){e.preventDefault();var t=e.target,i=n(r.selectedClass);
$(t).attr("data-page")!==$(i).attr("data-page")&&($(i).removeClass(r.selectedClass),$(a.current=t).addClass(r.selectedClass),a.trigger("change",{page:r.page=$(t).attr(r.pagerAttr)}))}return a.current=n(r.selectedClass),$(n(r.next)).on("click",e),$(n(r.prev)).on("click",e),$(n(r.wrapper)).on("click",t),a},a.hide=function(){a.setPager(1,1)},a};
function TemplateRender(e){this._init.call(this,e)}TemplateRender.prototype={TPL:{LOADING_TPL:'<div class="games-list-loading"><span class="loading-text">正在努力为您加载...</span></div>',ERROR_TPL:'<div class="games-list-err"><div class="loading-text">#{0}</div></div>'},ERROR_MSG:"抱歉没有找到符合条件的游戏，请尝试其他分类。",LIST_TPL:'<div class="games-list-item" data-click="{rsv_vsgmid:\'#{gameid}\'}">#{itemplatform}#{itemmark}<i class="games-list-item-border"></i><div class="games-list-item-top"><i class="games-list-item-cover-bg"></i>#{itemTypeHolder}<img src="#{photo}" alt="#{title}"></div><p class="games-list-item-text"><a hidefocus="on" target="_blank" class="EC_ZHIXIN" href="#{url}" title="#{title}">#{shorttitle}</a></p><div class="games-list-star"><div class="star-bg"><span>#{hot}</span><div class="star-cover" style="width:#{hotPercent}%;"></div></div></div></div>',ITEM_COVER:'<a hidefocus="on" target="_blank" href="#{piclinkurl}" class="games-list-item-cover EC_ZHIXIN"><em>#{piclinktitle}</em><h4>#{type}</h4><p>#{info}</p></a>',ITEM_MORE_COVER:'<a hidefocus="on" target="_blank" href="#{piclinkurl}" class="EC_ZHIXIN games-list-item-cover"><div class="item-start-btn-grp"><span  class="item-start-btn">开始游戏</span><span class="item-start-btn-more" data-click="{fm:\'beha\'}">更多平台</span></div><h4>#{type}</h4><p>#{info}</p></a><div class="games-list-item-cover-more"><div class="item-start-btn-wrap"><span>#{morepiclinkholder}</span></div></div>',MORE_COVER_LINK:'<a hidefocus="on" target="_blank" href="#{url}" class="item-start-btn EC_ZHIXIN">#{name}</a>',_init:function(e){this.setOpt(e)
},_render:function(e){this.opt.list.innerHTML=e},_renderList:function(e){var t=[],n=this.opt.gameType,r=this.ITEM_COVER;this.ITEM_TYPE_WANGYOU;var i=this.LIST_TPL,a=this.ITEM_MORE_COVER,s=this.MORE_COVER_LINK;$.each(e,function(e,o){if(o.hotPercent=20*(o.star>5?5:o.star),o.info=o.info||"","yeyou"==n)if(o.morepiclink&&o.morepiclink[0]){var c="";$.each(o.morepiclink,function(e,t){c+=format(s,t)}),o.morepiclinkholder=c,o.itemTypeHolder=format(a,o)}else o.piclinktitle="开始游戏",o.itemTypeHolder=format(r,o);else o.piclinktitle="进入专区",o.itemTypeHolder=format(r,o);
o.itemmark=o.mark?format('<i class="games-list-item-mark">#{mark}</i>',o):"",o.itemplatform=o.platform?format('<div class="games-list-item-platform"><i></i><em>#{platform}</em></div>',o):"",t.push(format(i,o))}),t.push('<div class="last-item"></div>'),this._render(t.join("")),this.opt.container.style.height=""},onRender:function(){},setOpt:function(e){this.opt=e},renderError:function(){this.opt.container.style.height="",this._render(format(this.TPL.ERROR_TPL,this.ERROR_MSG))},renderList:function(e){this._renderList(e),this.onRender(e)
},renderLoading:function(){if(!isIE()||isIE()>=8){var e=$(this.opt.container)[0].offsetHeight-(isIE()<8?0:2);this.opt.container.style.height=e+"px"}this._render(this.TPL.LOADING_TPL)}};
function XiaoYouXiRender(e){this.setOpt.call(this,e)}inherits(XiaoYouXiRender,TemplateRender),$.extend(XiaoYouXiRender.prototype,{LIST_TPL:'<div class="games-list-item-xiaoyouxi" data-click="{rsv_vsgmid:\'#{gameid}\'}"><a hidefocus="on" class="item-xiaoyouxi-photo" target="_blank" href="#{url}"><em></em><img src="#{photo}"></a><a hidefocus="on" target="_blank" class="item-xiaoyouxi-title" href="#{url}" title="#{title}">#{shorttitle}</a><div class="games-list-star"><div class="star-bg"><div class="star-cover" style="width:#{hotPercent}%;"></div></div></div><p class="item-xiaoyouxi-use">#{useHolder}次使用</p></div>',_renderList:function(e){var t=[],r=this.LIST_TPL;
$.each(e,function(e,n){n.hotPercent=20*(n.star>5?5:n.star),n.useHolder=n.use>=1e8?"<em>"+Math.floor(n.use/1e8)+"</em>亿":n.use>=1e4?"<em>"+Math.floor(n.use/1e4)+"</em>万":"<em>"+n.use+"</em>",t.push(format(r,n))}),t.push('<div class="last-item"></div>'),this._render(t.join("")),this.opt.container.style.height=""}});
function ShouYouRender(e){this.setOpt.call(this,e)}inherits(ShouYouRender,TemplateRender),$.extend(ShouYouRender.prototype,{LIST_TPL:'<div class="games-list-item-xiaoyouxi" data-click="{rsv_vsgmid:\'#{gameid}\'}"><a hidefocus="on" target="_blank" href="#{downloadurl}" class="item-shouyou-download" data-click="{rsv_vsgmtype:43}">下载</a><div class="item-shouyou-popup"><a hidefocus="on" target="_blank" href="#{url}" class="item-shouyou-link item-xiaoyouxi-photo" data-click="{rsv_vsgmtype:41}">#{markholder}<em></em><img src="#{photo}"></a><a hidefocus="on" target="_blank" href="#{url}" class="item-shouyou-link item-shouyou-title" title="#{title}" data-click="{rsv_vsgmtype:42}">#{shorttitle}</a><div class="games-list-star"><div class="star-bg"><div class="star-cover" style="width:#{hotPercent}%;"></div></div></div><p class="item-xiaoyouxi-use">#{sizeHolder}B</p></div></div>',_renderList:function(e){var t=[],r=this.LIST_TPL,i=1048576;
$.each(e,function(e,n){n.hotPercent=20*(n.star>5?5:n.star),n.markholder=n.mark?format('<i class="item-shouyou-mark-#{mark}"></i>',n):"",n.sizeHolder=n.size>=i?"<em>"+Math.floor(n.size/i)+"</em>M":"<em>"+Math.floor(n.size/1024)+"</em>K",t.push(format(r,n))}),t.push('<div class="last-item"></div>'),this._render(t.join("")),this.opt.container.style.height=""}});
var SwitchTab=function(e,t){function r(t,r){return("string"==typeof r||r instanceof String)&&(r="#"+r),$("."+t,r||e)[0]}function i(){$(e).on("click",function(e){e.preventDefault();var t=e.target;t!==s.selected&&$(t).attr(o.dataTag)&&!$(t).hasClass(o.disabled)&&(a(t),s.trigger("change",s.getValue()))})}function n(){i(),s.selected=r(o.selected)}function a(e){$(s.selected).removeClass(o.selected),$(s.selected=e).addClass(o.selected)}var s=$({}),o={selected:"games-type-selected",dataTag:"data-value",disabled:"games-subject-disabled"};
return t&&(o=extend(o,t)),s.getValue=function(){return{value:$(s.selected).attr(o.dataTag)}},s.init=n,s.select=a,s.reset=function(){a($(e).children()[0])},s};
var MoreToggle=function(e){function t(){var t=q(o.list,e).getElementsByTagName("A");if(t[0]){var n=t[0],r=t[t.length-1];r.offsetTop-n.offsetTop>10&&$(q(o.morebtn,e)).show()}}function n(e,t,n){$(t).on("mouseover",function(){$(e).addClass(n)}),$(t).on("mouseout",function(){$(e).removeClass(n)})}function r(){var t=q(o.morebtn,e),r=q(o.iconDown,t),i=q(o.iconWrap,t);$(t).on("click",function(){var t=q(o.wrapper,e),n=$(t).hasClass(o.expand);$(t)[n?"removeClass":"addClass"](o.expand),n=!n,r.className=n?o.iconUp:o.iconDown,i.innerHTML=n?"收起":"更多"
}),n(i,r,o.iconHover)}function i(){var t=q(c.wrapper,e),r=q(c.iconDown,t),i=q(c.iconWrap,t);$(q(c.morebtn,t)).on("click",function(){var e=$(t).hasClass(c.expand),n=e?"removeClass":"addClass";$(t)[n](c.expand),$(r)[n](c.iconUp),i.innerHTML=e?"更多":"收起"}),n(i,r,c.iconHover)}var a=this,s={iconDown:"icon-down",iconUp:"icon-up",iconWrap:"icon-wrap",iconHover:"icon-hover",expand:"games-type-expand"},o={list:"games-subject-list",wrapper:"games-subject-panel",morebtn:"games-more-subject"};extend(o,s);var c={wrapper:"games-type-panel",morebtn:"games-type-more"};
extend(c,s),a.init=function(e){setTimeout(function(){e.subject&&(t(),r()),e.type&&i()},0)}};
var TabManager=function(){function e(e,t){var n="",a=e.length-1;return $.each(e,function(e,i){n+='<a href="#" hidefocus="on" data-code="'+(i.code||"")+'"'+' data-value="'+i.id+'"'+(i.id==t?'class="games-type-selected"':"")+">"+("全部"===i.text?"　全部　":i.text)+"</a>"+(a!=e?"|":"")}),n}function t(t,n){var a="0"===t.selectedtype||0===t.selectedtype,i="shouyou"==n?",rsv_vsgmtype:40":"",s='<div class="games-type'+(a?"":" games-type-expand")+' games-type-panel">'+'<b class="games-type-subject">按类型：</b>'+'<span class="games-type-list" data-click="{fm:\'beha\''+i+'}">',r=t.typelist_exp.length>1,o=t.typelist_exp.length-1;
return $.each(t.typelist_exp,function(n,a){s+=e(a,t.selectedtype),r&&n!=o&&(s+="<br>")}),s+='</span><span class="games-type-more" data-click="{fm:\'beha\'}"'+(r?"":' style="display:none"')+">"+'<span class="icon-down'+(a?"":" icon-up")+' OP_LOG_BTN"></span>'+'<a href="javascript:;" hidefocus="on" class="icon-wrap">'+(a?"更多":"收起")+"</a>"+"</span>"+'<div class="last-item"></div>'+"</div>"}function n(t,n){var a="0"===t.selectedsubject||0===t.selectedsubject,i="shouyou"==n?",rsv_vsgmtype:44":"",s='<div class="games-type'+(a?"":" games-type-expand")+' games-subject-panel">'+'<b class="games-type-subject">按特色：</b>'+'<span class="games-subject-list" data-click="{fm:\'beha\''+i+'}">',r=t.subjectlist_exp.length>1,o=t.subjectlist_exp.length-1;
return $.each(t.subjectlist_exp,function(n,a){s+=e(a,t.selectedsubject),r&&n!=o&&(s+="<br>")}),s+='</span><span class="games-subject-more games-more-subject"data-click="{fm:\'beha\'}" style="display:none"><span class="icon-down'+(a?"":" icon-up")+' OP_LOG_BTN"></span>'+'<a href="javascript:;" hidefocus="on" class="icon-wrap">'+(a?"更多":"收起")+"</a>"+"</span>"+'<div class="last-item"></div>'+"</div>"}function a(e,a){var i='<div class="games-search games-search-'+a+'">';return e.typelist_exp&&(i+=t(e,a)),e.subjectlist_exp&&(i+=n(e,a)),i+="</div>"
}return{build:a}}();
var TypeTab=function(e){function t(t){return $("."+t,e)[0]}function n(e){var n=t(i.subject),a=$(n).find("a"),s=o.selected,r=n.firstChild;a.each(function(t,n){var a=+$(n).attr(i.codeTag),c=e&a;$(n)[c?"removeClass":"addClass"](i.disabled),c||s!==n||s===r||o.select(s=r)})}function a(){r.init(),o.init(),r.on("change",function(){n(+$(r.selected).attr("data-code")),s.trigger("change",{content:s.getValue()})}),o.on("change",function(){s.trigger("change",{content:s.getValue()})});var t=r.getValue().value;"0"!=t&&n(+$(r.selected).attr("data-code"));
var a=new MoreToggle(e);a.init({subject:1,type:1})}var i={codeTag:"data-code",selected:"games-type-selected",type:"games-type-list",subject:"games-subject-list",subjectw:"games-subject-panel",subjectMore:"games-subject-more",disabled:"games-subject-disabled",expand:"games-type-expand"},s=$({}),r=new SwitchTab(t(i.type)),o=new SwitchTab(t(i.subject));return s.getValue=function(){return{type:r.getValue().value,subject:o.getValue().value}},s.show=function(){$(e).show()},s.hide=function(){$(e).hide()},s.init=a,s
};
var GameCategoryTab=function(e){var t=new SwitchTab(e),n=t.getValue;return t.getValue=function(){return{gameType:n.apply(t).value}},t};
var GamePanel={create:function(e){return new this[e.gameType](e)},BasicPanel:function(){function e(e){this._init.call(this,e)}return e.prototype={IE6:isIE()<7,_initItemHover:function(){this._itemHover=0},_init:function(e){this.opt=e,this._initItemHover(),this._events=$({})},_getParams:function(){return{}},getParams:function(){return this._getParams()},_buildTab:function(e){return e&&e.typelist?($(this.opt.querytag).append(TabManager.build(e,this.opt.gameType)),!0):!1},bindDOM:function(){this._itemHover&&this._itemHover.bind()
},unbindDOM:function(){this._itemHover&&this._itemHover.unbind()},initTab:function(e){var t=this;!t.typeTab&&t._buildTab(e)&&(t._initTab(),t.typeTab.show())},init:function(){var e=this.opt,t=new TemplateRender(e);this.render=t},reload:function(){this.fire("change",{target:this})}},e.prototype.on=function(e,t){this._events.on(e,t)},e.prototype.un=function(e,t){this._events.off(e,t)},e.prototype.fire=function(e,t){this._events.trigger(e,t)},e}()};
function LayerToggle(e){function t(){$("."+s.top,e).each(function(e,t){var n=q(s.btn,t);if(n){var r=q(s.cover,t),o=q(s.more,t);i[++a]=function(e){e.preventDefault(),r.style.display="none",o.style.display="block"},n.__event_lt_click=a,$(n).on("click",i[a]),i[++a]=function(e){var t=e.relatedTarget,n=e.target;n&&t&&(n===o||$.contains(o,n)&&t!==o)&&!$.contains(o,t)&&(r.style.display="",o.style.display="none")},o.__event_lt_out=a,$(o).on("mouseout",i[a]),i[++a]=function(e){var t=e.target;t.href&&0==t.href.indexOf("http")&&(r.style.display="",o.style.display="none")
},o.__event_lt_click=a,$(o).on("click",i[a])}})}function n(){$("."+s.top,e).each(function(e,t){var n=q(s.btn,t);if(n){var a=q(s.more,t);$(n).off("click",i[n.__event_lt_click]),$(a).off("mouseout",i[a.__event_lt_out]).off("click",i[a.__event_lt_click])}}),i=[]}var i=[],a=0,s={top:"games-list-item-top",cover:"games-list-item-cover",more:"games-list-item-cover-more",btn:"item-start-btn-more"};return{bind:t,unbind:n}}GamePanel.wangyou=GamePanel.yeyou=function(){function e(e){this._init.call(this,e)}return inherits(e,GamePanel.BasicPanel),$.extend(e.prototype,{anti:1,_initItemHover:function(){this.IE6&&(this._itemHover=new ListItemHover(this.opt.list,"games-list-item-top"))
},_initTab:function(){var e=this,t=new TypeTab(q("games-search-"+e.opt.gameType,e.opt.container));t.init(),t.on("change",function(){e.unbindDOM(),e.reload()}),e.typeTab=t},_getParams:function(){return this.typeTab?this.typeTab.getValue():{type:0,subject:0,needquerytag:1}},bindDOM:function(){GamePanel.BasicPanel.prototype.bindDOM.apply(this),this.layerToggle&&this.layerToggle.bind()},unbindDOM:function(){GamePanel.BasicPanel.prototype.unbindDOM.apply(this),this.layerToggle&&this.layerToggle.unbind()},init:function(){var e=this;
e.render=new TemplateRender(e.opt),"yeyou"==e.opt.gameType&&(e.layerToggle=new LayerToggle(e.opt.list))},show:function(){this.typeTab&&this.typeTab.show()},showFirst:function(){this._initTab(),this.show()},hide:function(){this.typeTab&&this.typeTab.hide()}}),e}();
GamePanel.xiaoyouxi=function(){function e(e){this._init.call(this,e)}var t="games-list-xiaoyouxi";return inherits(e,GamePanel.BasicPanel),$.extend(e.prototype,{init:function(){this._initItemHover(),this.render=new XiaoYouXiRender(this.opt)},initTab:function(){},showFirst:function(){this.show()},show:function(){$(this.opt.list).addClass(t)},hide:function(){$(this.opt.list).removeClass(t)}}),e}();
GamePanel.shouyou=function(){function e(e){this._init.call(this,e)}var t="games-list-shouyou",n='<div data-click="{fm:\'beha\',rsv_vsgmtype:49}" class="games-ordertype-shouyou"><a href="#" hidefocus="on" data-value="hot" class="games-type-selected">热门</a><a href="#" hidefocus="on" data-value="new">最新</a></div>';return inherits(e,GamePanel.BasicPanel),$.extend(e.prototype,{_initItemHover:function(){this.IE6&&(this._itemHover=new ListItemHover(this.opt.list,"games-list-item-xiaoyouxi"))},_initTab:function(){function e(){return q("games-search-"+n.opt.gameType,n.opt.container)
}function t(){n.unbindDOM(),n.reload()}var n=this,i=e(),a=new SwitchTab(q("games-type-list",i));a.init(),a.on("change",function(){n.subjectTab&&n.subjectTab.reset(),t()}),a.show=function(){$(e()).show()},a.hide=function(){$(e()).hide()},n.typeTab=a;var s=q("games-subject-list",i);if(s){var r=new SwitchTab(s);r.init(),r.on("change",function(){n.typeTab.reset(),t()}),n.subjectTab=r;var o=new MoreToggle(i);o.init({subject:1})}var c=q("games-type-list",i);if(c){var l=new MoreToggle(i);l.init({type:1})}},_getParams:function(){var e=this.typeTab?{type:this.typeTab.getValue().value}:{type:0,needquerytag:1},t=this.orderTab;
t&&(e.ordertype=t.getValue().value);var n=this.subjectTab;return n&&(e.subject=n.getValue().value),e},_bindLink:function(){var e=this.opt.getParams(),t=$.param({query:e.query,qid:e.qid,sid:e.sid,resource_id:e.resource_id,version:e.version});$(".item-shouyou-link",this.opt.list).each(function(e,n){var i=n.href;n.href=i+(i.indexOf("?")>=0?"&":"?")+t})},_initOrderTab:function(){var e=this,t=this.opt.querytag;$(t).prepend(n);var i=q("games-ordertype-shouyou",t),a=new SwitchTab(i);a.on("change",function(){e.unbindDOM(),e.reload()
}),a.show=function(){$(i).show()},a.hide=function(){$(i).hide()},(e.orderTab=a).init()},init:function(){var e=this;e._initItemHover(),e.render=new ShouYouRender(e.opt),e.render.onRender=function(){e._bindLink()}},show:function(){var e=this;$(e.opt.list).addClass(t),e.typeTab&&e.typeTab.show(),e.orderTab?e.orderTab.show():e._initOrderTab()},hide:function(){$(this.opt.list).removeClass(t),this.typeTab&&this.typeTab.hide(),this.orderTab&&this.orderTab.hide()},showFirst:function(){var e=this;e._initTab(),e._initOrderTab(),e.show(),e._bindLink()
}}),e}();
var Controller=function(e,t){function n(){var e=h.opt.gameType;return{action:v[e],query:t.query,qid:t.qid,sid:t.sid,resource_id:t.resourceid,gametype:e,ordertype:t.ordertype,version:t.version,action_from:t.action_from,from:t.from,zt:t.zt}}function i(t){var i={gameType:t,getParams:n},a=GamePanel.create(extend(i,e));return a.init(),a}function a(e){if(!_[e]){var t=i(e);t.on("change",u),_[e]=t}h!=_[e]&&(h=_[e])}function r(){var t=e.card,n=t.offsetHeight,i="BackCompat"==document.compatMode?document.body.clientHeight:$(window).height(),a=$(t).offset();
if(isIE()<=7&&(n-=26),i>n)window.scrollTo(window.scrollLeft,a.top-10);else{var r=5,s=$("#ecl-pc-game-general-games-list");(s.hasClass("games-list-shouyou")||s.hasClass("games-list-xiaoyouxi"))&&(r-=2),window.scrollTo(window.scrollLeft,s.offset().top-r)}}function s(t){var n={rsv_vsgmtype:y[t]};$(e.container).attr("data-click",stringify(n))}function o(t){var n={rsv_vspn:t};$(e.list).attr("data-click",stringify(n))}function c(){var n=e.headerlink.href;$(e.headerlink).on("mousedown",function(){var i=extend({query:t.query,ordertype:t.ordertype,gametype:t.gametype,qid:t.qid,sid:t.sid,from:t.from,zt:t.zt},h.getParams()),a="";
for(var r in i)i.hasOwnProperty(r)&&(a+=r+"="+i[r]+"&");e.headerlink.href=/index/i.test(n)?n+(-1==n.indexOf("?")?"?":"&")+a:n+("/"===n[n.length-1]?"":"/")+t.gametype+"?"+a})}function u(e,t){var i=t.target,a=extend(n(),i.getParams());a.page=1,f.load(a)}function l(){p.on("change",function(e,t){h.unbindDOM();var i=extend(n(),h.getParams());i.page=t.page,r(),f.load(i)}),f.on("loaderror",function(){h.render.renderError(),p.hide()}),f.on("loading",function(){b.unbind(),h.render.renderLoading(),p.hide()}),f.on("load",function(e,t){var n=t.data,i=n.page||1,a=n.totalpage||1;
b.setTimesign(n.timesign),h.initTab(n.newquerytag),h.render.renderList(n.list),h.anti&&b.bind(),h.bindDOM(),p.setPager(i,a)}),p.on("render",function(e,t){o(t.page)}),g.on("change",function(e,n){h.unbindDOM(),h.hide(),a(t.gametype=n.gameType),h.show(),h.reload(),s(n.gameType)})}function d(){p=new Pager(e.pager),p.init(),f=new Loader({ajaxUrl:decodeURIComponent(t.ajaxurl)}),g=new GameCategoryTab(e.gameCategory),g.init();var n=t.gametype||"wangyou";if(a(n),h.bindDOM(),h.showFirst(),l(),s(n),o(1),e.headerlink&&c(),isFirefox())$(e.container).addClass("ecl-game-fix-ff"),$(q("ecl-pc-gmgg-header")).addClass("ecl-game-fix-ff");
else if(isIE()){var i=function(){var e=function(){try{return"undefined"==typeof ScriptEngineMajorVersion?void 0:5==ScriptEngineMajorVersion()?ScriptEngineMinorVersion():ScriptEngineMajorVersion()}catch(e){}};return/msie (\d+\.\d+)/i.test(navigator.userAgent)?document.documentMode?e():document.compatMode?"CSS1Compat"===document.compatMode?+RegExp.$1:5:5:void 0};+i()<=8&&$(e.container).addClass("ecl-game-fix-ie678")}self.dispose=function(){f.abort(),b.unbind()}}var p,f,g,h,m=this,v={wangyou:"getOnlineGame",yeyou:"getWebGame",xiaoyouxi:"getSmallGame",shouyou:"getPhoneGame"},y={yeyou:1,wangyou:2,xiaoyouxi:3,shouyou:4},b=Anti,_={};
return m.init=d,m};

var ctls={card:self.container,headerlink:q('games-header-link', self.container),container:q('ecl-pc-gmgg', self.container),list:q('games-list', self.container),pager:q('games-pager', self.container),gameCategory:q('games-category', self.container),querytag:q('games-querytag', self.container)},controller=new Controller(ctls,PARAMS);controller.init()
})</script>
{%/block%}
