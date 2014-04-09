{%extends 'base_div.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecl-left_hotel-main{width:600px;font-size:12px}.ecl-left_hotel-main a{outline:0;text-decoration:none}.ecl-left_hotel-main a em{text-decoration:none}.ecl-left_hotel-main strong{font-size:inherit;font-weight:normal}.ecl-left_hotel-main h3,.ecl-left_hotel-main h4,.ecl-left_hotel-main h5{margin:0;font-weight:normal;line-height:inherit;font-size:12px}h4.ecl-left_hotel-title{font-weight:normal;margin:0;padding-bottom:10px;background:#fff}h4.ecl-left_hotel-title a{font-size:16px;text-decoration:underline;outline:0}
h4.ecl-left_hotel-title a em{text-decoration:underline}.ecl-left_hotel-border{border:1px solid #f6f6f6}.ecl-left_hotel-empty-value{color:#bababa}.ecl-left_hotel-highlight{color:#f00}.ecl-left_hotel-error{background-color:#c30;color:#fff}.ecl-left_hotel-info{color:#666}.ecl-left_hotel-hide,.ecl-left_hotel-cond-hide{display:none!important}.ecl-left_hotel-clearfix{zoom:1}.ecl-left_hotel-clearfix:after{clear:both;content:".";display:block;height:0;visibility:hidden}.ecl-left_hotel-query{background:#fdfdfd;padding-top:9px;border-bottom:1px solid #f6f6f6}
.ecl-left_hotel-cond-row,.ecl-left_hotel-query-row{padding-left:9px;height:20px;line-height:26px}.ecl-left_hotel-cond-row h5,.ecl-left_hotel-query-row h5{font-weight:normal}.ecl-left_hotel-query-row{margin-bottom:9px;height:26px}.ecl-left_hotel-query-item{float:left;padding-right:20px}.ecl-left_hotel-query-item h5{display:inline;float:left;margin-right:10px}.ecl-left_hotel-query-item b{display:block;width:17px;height:17px;margin-top:3px;float:left;cursor:pointer}.ecl-left_hotel-query-dist{padding-right:10px}
.ecl-left_hotel-input,.ecl-left_hotel-cal{float:left;border:1px solid #b5b5b5;background:#FFF}.ecl-left_hotel-input input,.ecl-left_hotel-cal input{float:left;padding-left:5px;height:24px;line-height:24px;border:0;outline:0;font-size:12px}.ecl-left_hotel-layer button,.ecl-left_hotel-input b{border:0;background:0;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/hotel_btn.png") 0 0 no-repeat;overflow:hidden}.ecl-left_hotel-layer button{float:right;margin:6px 5px auto auto;width:9px;height:9px;background-position:0 -25px;cursor:pointer}
.ecl-left_hotel-city-label{width:36px}.ecl-left_hotel-city{width:96px}.ecl-left_hotel-city input{width:76px;*width:70px}.ecl-left_hotel-cal{width:156px}.ecl-left_hotel-cal input{width:136px;*width:130px;cursor:pointer;-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none;-khtml-user-select:none;user-select:none}.ecl-left_hotel-cal b{background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/hotel_cbtn.gif") no-repeat}.ecl-left_hotel-dist{width:428px}.ecl-left_hotel-dist input{width:408px;*width:402px}.ecl-left_hotel-submit{display:block;width:82px;line-height:26px;height:26px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/20130528/img/button_sprites.gif) no-repeat;overflow:hidden;text-align:center;text-decoration:none;color:#000;cursor:pointer;-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none;-khtml-user-select:none;user-select:none}
.ecl-left_hotel-submit.ecl-left_hotel-submit-hover{background-position:-84px 0}.ecl-left_hotel-submit.ecl-left_hotel-submit-press{background-position:-168px 0}.ecl-left_hotel-city-sug,.ecl-left_hotel-layer{position:absolute;zoom:1;left:-10000px;margin-left:-1px;border:#d0d0d0 solid 1px;background:#fff;z-index:10;color:#666;line-height:20px}.ecl-left_hotel-layer h3{padding:0 5px;border-bottom:1px dotted #d0d0d0;background:#fff;line-height:21px;font-size:12px}.ecl-left_hotel-layer ul{padding:6px 0}.ecl-left_hotel-layer li span{cursor:pointer}
.ecl-left_hotel-city .ecl-left_hotel-layer{width:315px}.ecl-left_hotel-city .ecl-left_hotel-layer li{float:left;width:20%;line-height:20px;text-align:center;overflow:hidden}.ecl-left_hotel-city .ecl-left_hotel-layer a,.ecl-left_hotel-dist .ecl-left_hotel-layer a{color:#00c;margin-right:20px;display:inline-block;cursor:pointer}.ecl-left_hotel-city .ecl-left_hotel-layer a:hover,.ecl-left_hotel-dist .ecl-left_hotel-layer a:hover{color:#ff6c00}.ecl-left_hotel-sug{padding:2px;padding-right:5px;color:#414141;cursor:default}
.ecl-left_hotel-sug-highlight{background-color:#36c;color:#fff}.ecl-left_hotel-city-sug li,.ecl-left_hotel-layer span{white-space:nowrap}.ecl-left_hotel-dist .ecl-left_hotel-ui-city{width:418px}.ecl-left_hotel-cond-row{line-height:20px;width:589px;height:21px;margin-bottom:9px}.ecl-left_hotel-cond-row h5{float:left;width:40px;margin-top:1px}.ecl-left_hotel-cond-row strong{width:32px;line-height:16px;margin:2px 9px 0 3px;float:left;background:#67a5eb;border:1px solid #418ce5;color:#FFF;border-radius:1px;text-align:center;cursor:pointer}
.ecl-left_hotel-cond-row strong.ecl-left_hotel-unselect{background:0;color:#555;border-color:#fdfdfd}.ecl-left_hotel-opt{float:left;width:500px;_width:480px}.ecl-left_hotel-opt ul{width:500px;float:left}.ecl-left_hotel-opt li{float:left;width:93px;height:18px;line-height:18px;padding:1px 4px 1px 0;overflow:hidden;*position:relative}.ecl-left_hotel-cond-filters{*font-size:0}.ecl-left_hotel-filter-clear{margin-left:20px;color:#00c;*font-size:12px}.ecl-left_hotel-filter-clear:hover{text-decoration:underline}.ecl-left_hotel-ctrl{height:20px;overflow:hidden;line-height:20px;text-align:right;padding:5px 9px;margin:5px 0 0}
.ecl-left_hotel-ctrl .ecl-left_hotel-info{margin-top:2px;margin-right:14px}.ecl-left_hotel-ctrl .ecl-left_hotel-info em{color:#333;font-weight:bold}.ecl-left_hotel-sort{float:left;height:20px;line-height:20px;width:250px;overflow:hidden;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/20130528/img/button_sprites.gif) 0 -54px no-repeat}.ecl-left_hotel-sort a{display:block;float:left;width:63px;height:20px;margin-left:-1px;line-height:20px;color:#666;text-align:center;cursor:pointer;-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none;-khtml-user-select:none;user-select:none}
.ecl-left_hotel-sort a.ecl-left_hotel-sort-default{margin-left:0}.ecl-left_hotel-sort a.ecl-left_hotel-cur{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/20130528/img/button_sprites.gif) 0 -77px}.ecl-left_hotel-sort i{padding:0 4px}.ecl-left_hotel-sort i{margin-left:3px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/icon_sprites.gif) 0 0 no-repeat;padding:0 4px}.ecl-left_hotel-sort-both i{background-position:0 -12px;*background-position:0 -11px}.ecl-left_hotel-sort-asc i{background-position:-24px -12px;*background-position:-24px -11px}
.ecl-left_hotel-sort-desc i{background-position:-12px -12px;*background-position:-12px -11px}.ecl-left_hotel-sort-desconly i{background-position:-12px 1px;*background-position:-12px 2px}.ecl-left_hotel-list{padding:1px 9px 0;color:#333}.ecl-left_hotel-list-short{height:276px;*height:281px;overflow:hidden;*position:relative;*zoom:1}.ecl-left_hotel-list-trigger{height:28px;line-height:28px;border:1px solid #ebebeb;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/20130528/img/button_sprites.gif) 0 -100px repeat-x;color:#666;text-align:center;cursor:pointer;margin-top:-2px}
.ecl-left_hotel-list-trigger b{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/icon_sprites.gif) 2px 1px no-repeat;padding:0 4px;margin-left:7px}.ecl-left_hotel-list li{height:83px;padding-top:8px;border-bottom:1px solid #f5f5f5;overflow:hidden}.ecl-left_hotel-list li.last{border-bottom:0}.ecl-left_hotel-list li.ecl-left_hotel-nodata{border:0 none;height:auto;padding:25px 0;text-align:center}.ecl-left_hotel-img,.ecl-left_hotel-intro,.ecl-left_hotel-rate,.ecl-left_hotel-price{float:left}
.ecl-left_hotel-img{width:85px;position:relative}.ecl-left_hotel-img img{width:75px;height:75px;border:0}.ecl-left_hotel-img a{display:block;width:75px;height:75px;border:0}.ecl-left_hotel-img div{position:absolute;top:0;left:0;width:73px;height:73px;border:1px solid #000;opacity:.1;filter:alpha(opacity=10)}.ecl-left_hotel-intro{width:295px}.ecl-left_hotel-intro h5{margin:0;padding:0;margin-bottom:3px;font-weight:normal}.ecl-left_hotel-intro h5 a{font-size:14px;text-decoration:none;color:#00c;word-wrap:break-word;word-break:break-all}
.ecl-left_hotel-intro h5 a:hover{text-decoration:underline}.ecl-left_hotel-intro h5 a:hover em{text-decoration:underline}.ecl-left_hotel-intro h5 i{margin-left:10px;color:#666;font-style:normal;font-size:12px}.ecl-left_hotel-intro p{width:250px;*width:260px;max-height:20px;line-height:20px;text-overflow:ellipsis;overflow:hidden;word-wrap:nowrap}.ecl-left_hotel-intro span{width:250px;*width:260px;height:20px;line-height:20px;overflow:hidden;word-wrap:break-word;word-break:break-all}.ecl-left_hotel-rate{margin-top:22px;margin-right:15px;width:70px;height:36px;text-align:center;line-height:18px;padding:0}
.ecl-left_hotel-rate p{text-align:right;color:#666}.ecl-left_hotel-rate a{text-align:right;color:#00c;display:block}.ecl-left_hotel-rate a:hover{text-decoration:underline}.ecl-left_hotel-rate a strong{font-weight:700}.ecl-left_hotel-rate a.ecl-left_hotel-info{color:#666}.ecl-left_hotel-price{width:104px;padding-right:0;margin-top:15px}.ecl-left_hotel-price p{text-align:right;font-size:13px}.ecl-left_hotel-price em{font-weight:bold;color:#ff6c00}.ecl-left_hotel-price em b{font-size:15px;font-weight:700;margin-right:1px}
.ecl-left_hotel-price span{color:#666;font-size:12px}.ecl-left_hotel-price span b{font-weight:400}.ecl-left_hotel-link{margin-top:5px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/20130528/img/button_sprites.gif) transparent 0 -136px no-repeat;overflow:hidden;display:block;float:right;width:67px;height:24px;line-height:24px;color:#fff;text-align:center}.ecl-left_hotel-links{padding:7px 11px 0;line-height:16px}.ecl-left_hotel-links span{color:#a6a6a6;margin-right:16px}.ecl-left_hotel-links a{padding-right:20px;*font-family:'SimSun'}
.ecl-left_hotel-links a img{margin-right:4px;vertical-align:text-bottom}.ecl-left_hotel-links a:hover{text-decoration:underline}.ecl-left_hotel-pg{background:#fff;padding-bottom:10px;text-align:center}.ecl-left_hotel-ui-pager{display:inline-block;text-align:center;zoom:1;margin-top:10px}.ecl-left_hotel-ui-pager a{display:inline-block;_display:inline;border:1px solid #d5d5d5;background:#fdfdfd;overflow:hidden;*zoom:1;padding:2px 5px;margin:0 1px;color:#00c;text-decoration:none;font:normal 12px Arial,Helvetica,sans-serif;text-align:center;vertical-align:middle}
.ecl-left_hotel-ui-pager a:hover{background-color:#eff4fa}.ecl-left_hotel-ui-pager a.ecl-left_hotel-ui-pager-ellipsis{border:0 none;color:#333}.ecl-left_hotel-ui-pager .ecl-left_hotel-ui-pager-current{border:0 none;color:#333;cursor:default}.ecl-left_hotel-ui-pager a em{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/icon_sprites.gif) -36px -11px no-repeat;padding:0 4px;*background-position:-36px -10px;line-height:14px;*line-height:15px}.ecl-left_hotel-ui-pager a.ecl-left_hotel-ui-pager-current:hover,.ecl-left_hotel-ui-pager a.ecl-left_hotel-ui-pager-ellipsis:hover,.ecl-left_hotel-ui-pager a.ecl-left_hotel-ui-pager-disabled:hover{background:0}
.ecl-left_hotel-ui-pager a em.ecl-left_hotel-ui-pager-icon-r{background-position:-48px -11px;*background-position:-48px -10px}.ecl-left_hotel-ui-pager a.ecl-left_hotel-ui-pager-disabled{color:#999;cursor:default;display:none}table.ecl-left_hotel-ui-cal{border:1px solid #b5b5b5;background:#fff}table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month{float:left;width:155px;margin:2px 2px 0 2px;display:inline;border-left:1px solid #dae2f5}table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month h5{margin:0;padding:0;height:19px;margin-bottom:2px;overflow:hidden;border:1px solid #c6cede;border-top-color:#e9eff9;border-left-color:#e9eff9;text-align:center;line-height:19px;font-size:14px;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/hotel_cal.gif") 1px 0 repeat-x;color:#41537b;cursor:default}
table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month h5 strong{font-weight:bold}table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month td.ecl-left_hotel-ui-cal-month-prev,table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month td.ecl-left_hotel-ui-cal-month-next{color:#999}table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month td.ecl-left_hotel-ui-cal-month-cur{color:#000}table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month td.ecl-left_hotel-ui-cal-day-disabled{cursor:not-allowed;color:#ddd}table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month td.ecl-left_hotel-ui-cal-today{color:red}
table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month td.ecl-left_hotel-ui-cal-day-hover{background:#eb4f03;color:#fff}table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month td.ecl-left_hotel-ui-cal-day-selected{background:#3977d2;color:#fff}table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month th{text-align:center;font-size:12px;background:#f1f4f9;padding:4px 0}table.ecl-left_hotel-ui-cal td{text-align:center;cursor:pointer;font-family:Arial;font-size:12px;height:18px;padding:0}.ecl-left_hotel-ui-cal-btn-prev-month,.ecl-left_hotel-ui-cal-btn-next-month{cursor:pointer;display:block;width:5px;height:9px;overflow:hidden;margin:6px 0 0}
.ecl-left_hotel-ui-cal-btn-prev-month{margin-left:3px;float:left;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/hotel_cal.gif") 0 -19px}.ecl-left_hotel-ui-cal-btn-next-month{float:right;margin-right:3px;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/hotel_cal.gif") 0 -28px}table .ecl-left_hotel-ui-cal-month-pre1 .ecl-left_hotel-ui-cal-month{border-left:none}.ecl-left_hotel-filter-target{text-decoration:none;color:#00c;display:inline-block;padding:0 25px 0 10px;border:1px solid transparent;_border-color:#000;_filter:chroma(color=#000000);font-size:12px;position:relative;cursor:pointer;margin-left:5px}
.ecl-left_hotel-filter-target b{font-weight:300}.ecl-left_hotel-filter-target:hover{border-color:#c9cbce;background-color:#f7f7f7}.ecl-left_hotel-filter-target i{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/icon_sprites.gif) no-repeat 0 -18px;width:10px;height:8px;_height:6px;_line-height:6px;_font-size:6px;position:absolute;top:50%;right:10px;margin-top:-4px;font-size:0}.ecl-left_hotel-filter-disabled{color:#666;cursor:default}.ecl-left_hotel-filter-disabled:hover{border-color:transparent;_border-color:#000;background:0}
.ecl-left_hotel-filter-hl,.ecl-left_hotel-filter-hl:hover{border-color:#b6b9bd;background-color:#f1f1f1}.ecl-left_hotel-filter-hl i,.ecl-left_hotel-filter-hl:hover i{background-position:0 -12px}.ecl-left_hotel-filter-checked{color:#00c}.ecl-left_hotel-filter{position:absolute;border:1px solid #b6b9bd;width:140px;z-index:10;left:-1000em;line-height:30px;margin:0;font-size:12px;background:#fff}.ecl-left_hotel-filter a{height:30px;padding:0 10px;text-decoration:none;display:block;overflow:hidden;color:#333;cursor:pointer;background-color:#FFF}
.ecl-left_hotel-filter a:hover{background-color:#f5f5f5}.ecl-left_hotel-filter .ecl-left_hotel-filter-cur{color:#000}.ecl-left_hotel-filter-cols3{width:276px;overflow:hidden}.ecl-left_hotel-filter-cols3 a{_display:inline;width:72px;float:left;_zoom:1}.ecl-left_hotel-ui-city{width:360px;position:absolute;z-index:1000;border:1px solid #ddd;background-color:#fff;padding:5px;font-size:12px;color:#555;left:-9999px}.ecl-left_hotel-ui-city a{text-decoration:none}.ecl-left_hotel-ui-city .ecl-left_hotel-ui-city-labels,.ecl-left_hotel-ui-city .ecl-left_hotel-ui-city-panels{list-style:none}
.ecl-left_hotel-ui-city .ecl-left_hotel-ui-city-close{color:#b4b4b4;font:bold 12px/1.2 'Comic Sans MS';padding:0 3px;position:absolute;right:3px;top:8px}.ecl-left_hotel-ui-city .ecl-left_hotel-ui-city-labels{border-bottom:1px solid #ddd;padding:0}.ecl-left_hotel-ui-city .ecl-left_hotel-ui-city-labels li{border:1px solid #ddd;background-color:#fff;float:left;padding:3px;margin-right:5px;margin-bottom:-1px;cursor:pointer;color:#0069ca;line-height:16px}.ecl-left_hotel-ui-city .ecl-left_hotel-ui-city-labels .ecl-left_hotel-ui-city-active{background-color:#e8edf1}
.ecl-left_hotel-ui-city .ecl-left_hotel-ui-city-panels li{display:none;float:left;line-height:18px}.ecl-left_hotel-ui-city .ecl-left_hotel-ui-city-panels .ecl-left_hotel-ui-city-active{display:block}.ecl-left_hotel-ui-city .ecl-left_hotel-ui-city-panels a{color:#555;float:left;margin-right:20px;line-height:30px;text-align:center;*display:block;text-decoration:none;white-space:nowrap}.ecl-left_hotel-ui-city .ecl-left_hotel-ui-city-panels a:hover{color:#ff6c00}
</style>
{%*点击统计*%} 
{%$sessionid=$extData.sessionID%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}

<div class="ecl-left_hotel-main" data-click='{"vs_hotel_sessionid":"{%$sessionid|escape:"html"%}","vs_hotel_subqid":"{%$subqid|escape:"html"%}","vs_hotel_sid":"{%$sid|escape:"html"%}"}'>
    <h4 class="ecl-left_hotel-title">
        <a target="_blank" href="{%$tplData.mainurl|escape:'html'%}">
            <em>{%$extData.originQuery|escape:'html'%}</em>({%$tplData.count|escape:'html'%}家酒店)&nbsp;&nbsp;全网特惠酒店预订&nbsp;&nbsp;去哪儿&nbsp;携程&nbsp;艺龙等提供
        </a>
    </h4>
    <div class="ecl-left_hotel-border">
        <div class="ecl-left_hotel-query" data-click="{'fm':'beha'}">
            {%*城市、日期*%} 
            <div class="ecl-left_hotel-query-row">
                <div class="ecl-left_hotel-query-item">
                    <h5 class="ecl-left_hotel-city-label">城市</h5>
                    <div class="ecl-left_hotel-input ecl-left_hotel-city">
                        <input autocomplete="off" type="text" maxlength="10" value="{%if $tplData.curcity%}{%$tplData.curcity|escape:'html'%}{%else%}{%if $tplData.ipcity%}{%$tplData.ipcity|escape:'html'%}{%else%}北京{%/if%}{%/if%}" />
                        <b class="OP_LOG_BTN"></b>
                        <div class="ecl-left_hotel-layer ecl-left_hotel-hide-layer">
                            <button>&nbsp;</button>
                            <h3>Top 20热门城市 (直接输入可搜索{%$tplData.citycount|escape:'html'%}个目的地)</h3>
                            <ul class="ecl-left_hotel-clearfix">
                                {%foreach $tplData.hotcity as $item%}
                                <li><a class="ecl-left_hotel-citys" data-id="{%$item['id']|escape:'html'%}" href="#">{%$item['name']|escape:'html'%}</a></li>
                                {%/foreach%}
                            </ul>
                        </div>
                        <ul class="ecl-left_hotel-city-sug ecl-left_hotel-hide-layer"></ul>
                    </div>
                </div>
                <div class="ecl-left_hotel-query-item">
                    <h5>入住</h5>
                    <div class="ecl-left_hotel-cal ecl-left_hotel-cal-in">
                        <input type="text" readonly="readonly" class="OP_LOG_OTHERS" />
                        <b class="OP_LOG_BTN"></b>
                    </div>
                </div>
                <div class="ecl-left_hotel-query-item">
                    <h5>退房</h5>
                    <div class="ecl-left_hotel-cal ecl-left_hotel-cal-out">
                        <input type="text" readonly="readonly" class="OP_LOG_OTHERS" />
                        <b class="OP_LOG_BTN"></b>
                    </div>
                </div>
                <div class="ecl-left_hotel-cal-layer-in OP_LOG_OTHERS"></div>
                <div class="ecl-left_hotel-cal-layer-out OP_LOG_OTHERS"></div>
            </div>
            {%*名称组合框*%} 
            <div class="ecl-left_hotel-query-row">
                <div class="ecl-left_hotel-query-item ecl-left_hotel-query-dist">
                    <h5 class="ecl-left_hotel-city-label">关键词</h5>
                    <div class="ecl-left_hotel-input ecl-left_hotel-dist">
                        <input autocomplete="off" class="ecl-left_hotel-city-trigger" type="text" maxlength="60" value="{%$tplData.keyword|escape:'html'%}" data-placeholder="酒店名称、地标、商圈 可组合搜索" />
                        <b data-query="dist" class="ecl-left_hotel-city-trigger OP_LOG_BTN"></b>
                        <div class=""></div>
                    </div>
                </div>
                <div class="ecl-left_hotel-submit OP_LOG_BTN">快速查询</div> 
            </div>

            <div class="ecl-left_hotel-cond-row ecl-left_hotel-cond-filters">
                <h5>筛选</h5>
                <a href="#" hidefocus data-type="district" class="ecl-left_hotel-filter-target"><b>商圈</b><i></i></a>
                <a href="#" hidefocus data-type="price" class="ecl-left_hotel-filter-target"><b>价格</b><i></i></a>
                <a href="#" hidefocus data-type="star" class="ecl-left_hotel-filter-target"><b>星级</b><i></i></a>
                <a href="#" hidefocus data-type="brand" class="ecl-left_hotel-filter-target"><b>品牌</b><i></i></a>
                <a class="ecl-left_hotel-filter-clear ecl-left_hotel-hide" href="#">清除筛选</a>

                <p class="ecl-left_hotel-filter ecl-left_hotel-filter-cols3">
                    <a href="#" data-value="0">不限</a>
                    {%foreach from=$tplData.cond_district item=district%}
                    <a href="#" data-value="{%$district.value|escape:html%}">{%$district.name|escape:html%}</a>
                    {%/foreach%}
                </p>
                <p class="ecl-left_hotel-filter">
                    <a href="#" data-value="0">不限</a>
                    <a href="#" data-value="1">200元以下</a>
                    <a href="#" data-value="2">200元-300元</a>
                    <a href="#" data-value="3">300元-500元</a>
                    <a href="#" data-value="4">500元以上</a>
                </p>
                <p class="ecl-left_hotel-filter">
                    <a href="#" data-value="0">不限</a>
                    <a href="#" data-value="1">经济型</a>
                    <a href="#" data-value="2">二星级/普通</a>
                    <a href="#" data-value="3">三星级/舒适</a>
                    <a href="#" data-value="4">四星级/高档</a>
                    <a href="#" data-value="5">五星级/豪华</a>
                </p>
                <p class="ecl-left_hotel-filter ecl-left_hotel-filter-cols3">
                    <a href="#" data-value="0">不限</a>
                    {%foreach from=$tplData.cond_brand item=brand%}
                    <a href="#" data-value="{%$brand.value|escape:html%}">{%$brand.name|escape:html%}</a>
                    {%/foreach%}
                </p>
            </div>
        </div>
    

        <div class="ecl-left_hotel-ctrl" data-click="{'fm':'beha'}">
            <div class="ecl-left_hotel-sort">
                <a class="ecl-left_hotel-sort-default ecl-left_hotel-cur">默认</a>
                <a class="ecl-left_hotel-sort-both" data-orderby="star" data-order="desc">星级<i>&nbsp;</i></a>
                <a class="ecl-left_hotel-sort-desconly" data-orderby="score" data-order="desc">评分<i>&nbsp;</i></a>
                <a class="ecl-left_hotel-sort-both" data-orderby="price" data-order="asc">价格<i>&nbsp;</i></a>
            </div>
            <span class="ecl-left_hotel-info"><em>{%$tplData.count|escape:'html'%}</em>家酒店满足条件</span>
        </div>

        {%$loop_maxcount=count($tplData.hotel)%}
        <ul class="ecl-left_hotel-list {%if $loop_maxcount>3%}ecl-left_hotel-list-short{%/if%}">
            {%foreach $tplData.hotel as $count=>$hotel %}
            {%$url=$hotel['viewurl']|escape:'html'%}
            {%$cmurl=$hotel['commenturl']|escape:'html'%}
            {%$id=$hotel['id']%}
            <li data-outid="{%$hotel['out_id']|escape:'html'%}" {%if $count==$loop_maxcount-1 or $count==9%}class="last"{%/if%} data-click='"vs_hotel_data":"id:{%$id|escape:"html"%}"'>
                <div class="ecl-left_hotel-img">
                    <a target="_blank" href="{%$url%}"><img width="75" height="75" src="{%$hotel['imgsrc']|escape:'html'%}" /><div></div></a>
                </div>
                <div class="ecl-left_hotel-intro">
                    <h5>
                        <a target="_blank" href="{%$url%}">{%$hotel['title']|escape:'html'|highlight:0%}</a><i>[{%$hotel['star']|escape:'html'%}]</i>
                    </h5>
                    {%if $hotel['address']%}<p>{%$hotel['address']|escape:'html'%}</p>{%/if%}
                    {%if $hotel['location']%}<p>{%$hotel['location']|escape:'html'|highlight:0%}</p>{%/if%}
                    <span>供应商：实时查询中...</span>
                </div>
                <div class="ecl-left_hotel-rate">
                    {%if $hotel['score']%}
                    <a target="_blank" href="{%$cmurl%}"><strong>{%$hotel['score']|escape:'html'%}</strong>分/5分</a>
                    {%else%}
                    <p>暂无评分</p>
                    {%/if%}
                    {%if $hotel['comment']%}
                    <a target="_blank" href="{%$cmurl%}">{%$hotel['comment']|escape:'html'%}条评论</a>
                    {%else%}
                    <p>0条评论</p>
                    {%/if%}
                </div>
                <div class="ecl-left_hotel-price">
                    <p>{%if $hotel['price']%}<em><b>¥{%$hotel['price']|escape:'html'%}</b>起</em>{%else%}<span>暂无报价</span>{%/if%}</p>
                    <a target="_blank" class="ecl-left_hotel-link" href="{%$url%}">查看详情</a>
                </div>
            </li>
            {%/foreach%}
        </ul>
        <div class="ecl-left_hotel-pg{%if $loop_maxcount>3%} ecl-left_hotel-cond-hide{%/if%}" data-click="{'fm':'beha'}">
            <div class="ecl-left_hotel-ui-pager OP_LOG_BTN"></div>
        </div>

        
    </div>

    {%if $loop_maxcount>3%}
    <div class="ecl-left_hotel-list-trigger OP_LOG_BTN" data-click="{'fm':'beha'}">点击查看更多酒店<b>&nbsp;&nbsp;</b></div>
    {%/if%}

    {%if count($tplData.agencyLinks)>0%}
    <p class="ecl-left_hotel-links">
        <span>酒店预订直达:</span>{%foreach $tplData.agencyLinks as $link%}<a target="_blank" href="{%$link['url']|escape:'html'%}"><img width="16" height="16" src="{%$link['logo']|escape:'html'%}" />{%$link['name']|escape:'html'%}</a>{%/foreach%}
    </p>
    {%/if%}
</div>


<script data-compress="off">
A.setup("ZHIXIN_HOTEL_LEFT", {
    ORIGIN_QUERY: "{%$extData.originQuery|escape:'html'%}",
    QUERY_CITY: "{%if $tplData.curcity%}{%$tplData.curcity|escape:'html'%}{%else%}{%if $tplData.ipcity%}{%$tplData.ipcity|escape:'html'%}{%else%}北京{%/if%}{%/if%}",
    CITYID: +'{%$tplData.curcityid|escape:"html"%}',
    IP_CITY: "{%$tplData.ipcity|escape:'html'%}",
    IP_CITYID: +"{%$tplData.ipcityid|escape:'html'%}",
    KEYWORD: '{%$tplData.keyword|escape:"html"%}',
    PAGE: +'{%$tplData.page|escape:'html'%}' || 0,
    TOTALPAGE: +'{%$tplData.totalpage|escape:'html'%}' || 0,
    UPDATE_QUEUE: '{%$tplData.updateQueue|escape:"html"%}',
    PRICE_QUEUE: '{%$tplData.priceQueue|escape:"html"%}',
    URL_QUERY: '/ecomui/hotel?controller=Bws&action=query',
    URL_CITY: '/ecomui/hotel?controller=Bws&action=tip',
    URL_DETAIL: '/ecomui/hotel?controller=Bws&action=location',
    URL_PRICE: '/ecomui/hotel?controller=Bws&action=updatePrice',
    SESSION_ID: '{%$sessionid|escape:"javascript"%}',
    STATS_SUBQID: '{%$subqid|escape:"javascript"%}',
    STATS_SID: '{%$sid|escape:"javascript"%}',
    STATS_PSSID: '{%$pssid|escape:"javascript"%}'   
});
</script>

<script type="text/javascript">
/**
 * 
 * @file 知心酒店左侧模板处理逻辑
 * @author zhuyuwei
 */
A.init( function() {
    // 如果使用tangram，需要这样声明
    var T = A.baidu;
    // this对象指向当前卡片
    var card = this;

    // AMD加载的config配置路径
    require.config({
        paths : {
            // 'ecom/ui': 'http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/20130528/js/'
            'ecom/ui': 'ecom/ui/20130622'
        }
    });

    var common=function(){function t(t,e){return t?t.getElementsByTagName(e)||[]:[]}function e(){this.events={}}function n(t,e){var n={};for(var r in t)n["vs_hotel_"+r]=t[r];var o=T.json.stringify(n).replace(/"/g,"'");return e?o:'data-click="'+o+'"'}var r={},o="ecl-left_hotel";r.getClass=function(t){return t=t||"",o+"-"+t};var s=[];return r.addIniter=function(t){s.push(t)},r.init=function(){for(var t=0,e=s.length;e>t;t++){var n=s[t];"function"==typeof n&&n()}},r.queryByClass=function(t){return t=common.getClass(t),card.q(t)[0]
},r.getInput=function(t){return common.queryByClass(t).getElementsByTagName("input")[0]},r.prev=function(t){for(t=t.previousSibling;t;){if(1==t.nodeType)return t;t=t.previousSibling}return t},r.last=function(t){for(var t=t.lastChild;t;){if(1==t.nodeType)return t;t=t.previousSibling}return t},r.request=function(t,e,n){e=e||new Function,n=n||new Function,T.ajax.request(t,{onsuccess:function(t,r){var o={status:-1,statusInfo:t.statusText};try{o=T.json.parse(r)}catch(s){return n(-1,o),void 0}if(!r)return n(-1,o),void 0;
if(o.status)return n(o),void 0;var a=o.data;e(a,o)},onfailure:function(t){var e={status:t.status,statusInfo:t.statusText};n(t.status,e)}})},r.now="undefined"==typeof bdServerTime?new Date:new Date(1e3*bdServerTime),r.getTags=t,r.showLayer=function(t,e,n){var o=e.offsetHeight,s=e.offsetWidth,a=T.dom.getPosition(e),i={};i.top=a.top+o+2,6==T.browser.ie&&(i.top-=7),n&&"left"!=n?"right"==n&&(i.left=a.left+s-t.offsetWidth):i.left=a.left,t.style.left=i.left+"px",t.style.top=i.top+"px",T.removeClass(t,r.getClass("hide-layer"))
},r.hideLayer=function(t){T.addClass(t,r.getClass("hide-layer")),t.style.left="-10000px"},r.toggleLayer=function(t,e,n){var o="hideLayer";T.dom.hasClass(t,r.getClass("hide-layer"))&&(o="showLayer"),r[o](t,e,n)},r.scrollToDom=function(t){window.scroll(0,T.dom.getPosition(t).top||0)},r.formatDate=function(t,e){function n(t,n){e=e.replace(t,n)}function r(t,e){var n="",r=0>t,o=String(Math.abs(t));return o.length<e&&(n=new Array(e-o.length+1).join("0")),(r?"-":"")+n+o}if("string"!=typeof e)return t.toString();var o=t.getFullYear(),s=t.getMonth()+1,a=t.getDate(),i=t.getHours(),u=t.getMinutes(),f=t.getSeconds();
return n(/yyyy/g,r(o,4)),n(/yy/g,r(parseInt(o.toString().slice(2),10),2)),n(/MM/g,r(s,2)),n(/M/g,s),n(/dd/g,r(a,2)),n(/d/g,a),n(/HH/g,r(i,2)),n(/H/g,i),n(/hh/g,r(i%12,2)),n(/h/g,i%12),n(/mm/g,r(u,2)),n(/m/g,u),n(/ss/g,r(f,2)),n(/s/g,f),e},r.date2HumanStyle=function(t){return common.formatDate(t,"yyyy-MM-dd")+"("+"周"+"日一二三四五六".charAt(t.getDay())+")"},r.afterDays=function(t,e){return new Date(t.getFullYear(),t.getMonth(),t.getDate()+e)},e.prototype={constructor:e,on:function(t,e){this.events[t]instanceof Array||(this.events[t]=[]),this.events[t].push(e)
},un:function(t,e){for(var n=this.events[t],r=n instanceof Array&&n.length;r--;)n[r]===e&&n.splice(r,1)},fire:function(t,e){var n=this.events[t],r=this;n instanceof Array&&T.each(n,function(t){"function"==typeof t&&t.call(r,e)})}},r.Observable=e,r.getStatsAttr=n,r}();
    var TPLDATA=card.data.ZHIXIN_HOTEL_LEFT,IP_CITY=TPLDATA.IP_CITY||TPLDATA.QUERY_CITY,IP_CITYID=+TPLDATA.IP_CITYID||TPLDATA.CITYID,hotelQuery=function(){function t(){x=TPLDATA.QUERY_CITY,S=TPLDATA.CITYID,_=TPLDATA.KEYWORD}function e(){var t=T.trim(q("dist").value);return t==q("dist").getAttribute("data-placeholder")&&(t=""),t!=_&&(_=t),{city:x,cityid:S,sdate:Y,edate:M,keyword:_}}function n(){var t=I("submit");T.on(t,"click",o),T.on(t,"mouseover",function(){T.addClass(this,F("submit-hover"))}),T.on(t,"mouseout",function(){T.removeClass(this,F("submit-hover"))
}),T.on(t,"mousedown",function(){T.addClass(this,F("submit-press"))}),T.on(t,"mouseup",function(){T.removeClass(this,F("submit-press"))}),T.browser.ie&&(t.onselectstart=function(){return!1}),t=null}function o(){P&&clearTimeout(P),k&&k.hide(),P=setTimeout(function(){L.fire("change",e())},200)}function i(){var t=q("city");T.on(document,"click",function(t){var e=T.event.getTarget(t),n=q("city"),o=C(n),i=T.dom.next(o);e==o?common.toggleLayer(i,n):common.hideLayer(i);var a=I("city-sug");e!==n&&common.hideLayer(a)
}),T.on(t,"keydown",s);var e;T.on(t,"mouseup",function(t){e?this.focus():(e=1,t=t||window.event,T.event.preventDefault(t))}),T.on(t,"focus",function(){e||this.select()}),T.on(t,"blur",function(){if(e=0,""===q("city").value||H)r();else{var t=x;if(R>-1){var n=N[R];S!=n.id&&(t=c(n),a(t,n.id))}E=t,q("city").value=E}common.hideLayer(I("city-sug"))}),T.on(I("city-sug"),"mouseover",function(t){if(!H){var e=T.event.getTarget(t);"LI"==e.tagName&&u(e.getAttribute("data-index"))}});var n=T.dom.next(C(q("city")));T.on(n,"click",function(t){T.event.preventDefault(t);
var e=T.event.getTarget(t);"A"==e.tagName&&(E=e.innerHTML,q("city").value=E,a(E,e.getAttribute("data-id")))}),t=null,n=null}function a(t,e){t!=x&&(x=t,S=e,q("dist").value="",w(q("dist")),o(),D())}function r(){E=IP_CITY,a(E,IP_CITYID),q("city").value=x}function s(t){var e=N.length;if(!H&&e){l();var n;t=t||window.event;var o=t.keyCode||t.which;switch(o){case 38:n=0===R?e-1:R-1;break;case 40:n=R==e-1?0:R+1;break;case 13:if(n=R,common.hideLayer(I("city-sug")),R>-1){var i=N[R];if(S!=i.id){var r=c(i);a(r,i.id)}}}n>-1&&u(n,1)
}}function u(t,e){t=+t;var n=I("city-sug").getElementsByTagName("li");t>-1&&t!=R&&(T.removeClass(n[R],B),T.addClass(n[t],B),R=t),e&&(E=c(N[t]),q("city").value=E)}function c(t){var e=t.s.split("|")[0],n=e.indexOf("-");return n>-1&&(e=e.slice(0,n)),e}function l(){var t=I("city-sug");t.innerHTML&&common.showLayer(t,q("city"))}function f(){o&&clearTimeout(o);var t=TPLDATA.URL_CITY+(TPLDATA.URL_CITY.indexOf("?")>-1?"&":"?")+"city=#{0}&t=#{1}",e=T.trim(q("city").value);if(""!==e&&e!=E){E=e,t=T.format(t,encodeURIComponent(E),(new Date).getTime()),R=-1;
var n=function(t,e){t=!e.status&&t instanceof Array&&t||[],N=t,m(t),R=H?-1:0,common.showLayer(I("city-sug"),q("city"))};common.request(t,n,n)}else""===e&&(E="",I("city-sug").innerHTML="",common.hideLayer(I("city-sug")));var o=setTimeout(f,200)}function m(t){var e=[],n='<li class="#{3}" data-id="#{1}" data-index="#{2}">#{0}</li>';T.each(t,function(t,o){var i=new RegExp("("+E+")","i"),a=t.s.split("|"),r=(a[0]+"("+a[1]+")").replace(i,'<span class="'+F("highlight")+'">$1</span>'),s=T.format(n,r,t.id||"",o,0===o?F("sug")+" "+F("sug-highlight"):F("sug"));
e.push(s)}),e=e.join(""),e?H=0:(e='<li class="'+F("error")+'">'+"对不起，查找不到"+E+"</li>",H=1),I("city-sug").innerHTML=e}function v(){var t=common.now;Y=O(t,2),M=O(t,3),q("cal-in").value=common.date2HumanStyle(Y),q("cal-out").value=common.date2HumanStyle(M)}function d(t){return t.replace(/-/g,"")}function g(t){return 1e4*t.getFullYear()+100*(t.getMonth()+1)+t.getDate()}function h(t){return t=t.toString().match(/^(\d+)(\d\d)(\d\d)/),t.shift(),new Date(t[0],t[1]-1,t[2])}function y(t){function e(){var e=q("cal-"+t).value;
return e.replace(/\([^\)]*\)$/,"")}var n={"in":{onShow:function(){var t=e();this.setHtml(d(t))},onSelectDay:function(t){if(Y=h(t),Y>=M||M>O(Y,28)){M=O(Y,1);var e=common.date2HumanStyle(M);q("cal-out").value=e}o()}},out:{onShow:function(){this.setHtml(g(M));var t=g(O(Y,1)),e=Math.min(g(O(Y,28)),g(j));this.setBetween([t,e])},onSelectDay:function(t){M=h(t),o()}}};require(["ecom/ui/wcal"],function(o){var i=q("cal-"+t);T.browser.ie&&(i.onselectstart=function(){return!1}),i.onfocus=function(){this.blur()},new o({position:i.parentNode,input:i,button:C(i),element:I("cal-layer-"+t),count:2,today:g(common.now),conf:U,between:[g(common.now),g(O(j,-1))],onShow:n[t].onShow,onSelectDay:n[t].onSelectDay,onChange:function(){var t=e();
this.setDay(d(t))}}),i=null})}function p(){var t,e=q("dist");e.onfocus=function(){this.value==Q&&(this.value="",T.removeClass(this,W)),t||setTimeout(function(){q("dist").select()},1),t=1},e.onblur=function(){w(this),t=0};var n=e.getAttribute("maxlength");T.on(e,"keyup",function(t){for(var e=this.value;e.replace(/[^\x00-\xFF]/g,"aa").length>n;)e=e.substr(0,e.length-1);e!=this.value&&(this.value=e),t=t||window.event;var i=t.keyCode||t.which;13==i?(o(),this.blur(),k&&k.hide()):27==i&&k&&k.hide()}),T.on(C(q("dist")),"click",function(){q("dist").focus()
}),w(e),e=null}function w(t){""===t.value?(t.value=Q,T.addClass(t,W)):T.removeClass(t,W)}function C(t){return T.dom.next(t)}function D(){E=x;var t=TPLDATA.URL_DETAIL;t+=(t.indexOf("?")>-1?"&":"?")+"city=#{0}&cityid=#{1}&t=#{2}";var e=(new Date).getTime();common.request(T.format(t,encodeURIComponent(x),S,e),function(t){b(t)})}function b(t){var e=t&&t instanceof Array&&t.length||0;0!==e&&(k?A(t):require(["ecom/ui/City"],function(e){var n={x:-1,y:1};T.browser.ie<7&&(n.y=-5),k=new e({prefix:F("ui-city"),triggers:F("city-trigger"),main:T.dom.next(C(q("dist"))),target:q("dist"),offset:n,onShow:function(){return k.main.innerHTML?void 0:(k.hide(),!1)
},onPick:function(t){T.removeClass(q("dist"),common.getClass("empty-value")),q("dist").value=t.value,o()}}),A(t)}),T.dom.next(C(q("dist"))))}function A(t){if(k){var e=t.length;e||(k.main.innerHTML="");for(var n=[],o=0;e>o;o++){for(var i=[],a=t[o].list,r=0,s=a.length;s>r;r++){var u=a[r];"string"==typeof u?i.push(u):u.title&&i.push(u.title)}n[o]=t[o].title+"|"+i.join(",")}k.fill(n);var c=k.popup;if(c){k.index=0,c.content=k.build(),c.render();var l=k.main,i=common.getTags(l,"ul");k.labels=common.getTags(i[0],"li"),k.panels=common.getTags(i[1],"li")
}k.render()}}var L=new common.Observable,I=common.queryByClass;common.addIniter(function(){t(),v(),i(),y("in"),y("out"),p(),n(),D(),f()});var x,S,_;L.get=e;var P,H,Y,M,k,q=common.getInput,E="",R=-1,F=common.getClass,B=F("sug-highlight"),N=[],O=common.afterDays,U={day_text:["日","一","二","三","四","五","六"],cal_text:["年","月","日"],cal_class:F("ui-cal"),month_class_pre:F("ui-cal-month-pre"),month_class:F("ui-cal-month"),day_class:[F("ui-cal-month-prev"),F("ui-cal-month-cur"),F("ui-cal-month-next"),F("ui-cal-today"),F("ui-cal-day-hover"),F("ui-cal-day-selected"),F("ui-cal-day-disabled")],btn_class:[F("ui-cal-btn-prev-month"),F("ui-cal-btn-next-month")]},j=function(){return O(common.now,89)
}(),W=common.getClass("empty-value"),Q=q("dist").getAttribute("data-placeholder");return L}();
    var getClass=common.getClass,FILTER_OPTION_TPL='<a href="#" data-value=#{value}>#{name}</a>',hotelFilter=function(){function t(){var t=common.queryByClass("filter-clear");!a&&t&&T.removeClass(t,getClass("hide")),a=1}function e(){var t=common.queryByClass("filter-clear");a&&t&&T.addClass(t,getClass("hide")),a=0}var n=new common.Observable,o={};common.addIniter(function(){require(["ecom/ui/Select"],function(a){for(var i=card.q(getClass("filter-target")),r=card.q(getClass("filter")),s=0,u=r.length;u>s;s++){var c=T.getAttr(i[s],"data-type");
o[c]={},o[c].selector=new a({prefix:getClass("filter"),main:r[s],target:i[s],offset:{y:6===T.browser.ie?-7:-1},onChange:function(a){var i=this,r=i.target,s=T.getAttr(r,"data-type");o[s].value=a.value||"";var u=n.get();n.fire("change",u);var c;for(var l in u)u[l]&&(c=1);c?t():e()}}),o[c].selector.render()}n.render=function(t){for(var e in t){for(var n,a=o[e].selector,i=[],r=0;n=t[e][r];r++)i[r]=T.format(FILTER_OPTION_TPL,n);a.main.innerHTML=T.format(FILTER_OPTION_TPL,{value:0,name:"不限"})+i.join(""),i.length?a.enable():a.disable()
}},n.reset=function(){for(var t in o)o[t].selector.reset(),o[t].value="";e()},n.get=function(){var t={};for(var e in o)t[e]=o[e].value||"";return t}});var a=common.queryByClass("filter-clear");a&&T.on(a,"click",function(t){T.event.preventDefault(t),n.reset(),e(),hotelFilter.fire("change",n.get())})});var a;return n.get=n.reset=n.render=new Function,n}(),hotelOrder=function(){function t(t){T.each(common.queryByClass("sort").getElementsByTagName("a"),t||new Function)}function e(){t(function(t,e){var n=t.getAttribute("data-orderby")||"";
t.className=s[e],n==r&&(T.addClass(t,a),T.addClass(t,getClass("sort-"+i)))})}function n(){var t=this.getAttribute("data-orderby")||"",n=this.getAttribute("data-order")||"",a=1;r==t?T.dom.hasClass(this,getClass("sort-both"))?i="asc"==i?"desc":"asc":a=0:(i=n,r=t),e(),a&&o.fire("change",o.get())}var o=new common.Observable,a=getClass("cur"),i="",r="",s=[];return o.get=function(){return{order:i,orderby:r}},o.reset=function(){i="",r="",e()},common.addIniter(function(){t(function(t,e){t.onclick=n,s[e]=t.className.replace(a,"")
})}),o}();
    var HOTEL_ITEM_TPL='<li data-outid="#{out_id}" class="#{last}"><div class="ecl-left_hotel-img"><a target="_blank" href="#{viewurl}" #{stats}><img width="75" height="75" src="#{imgsrc}" /><div></div></a></div><div class="ecl-left_hotel-intro"><h5><a target="_blank" href="#{viewurl}" #{stats}>#{title}</a><i>[#{star}]</i></h5>#{address}#{location}<span>#{vendors}等提供</span></div><div class="ecl-left_hotel-rate">#{scoreHtml}#{commentHtml}</div><div class="ecl-left_hotel-price"><p>#{price}</p><a target="_blank" class="ecl-left_hotel-link" href="#{viewurl}" #{stats}>查看详情</a></div></li>',HOTEL_SCORE_TPL_NORMAL='<a target="_blank" href="#{commenturl}" #{stats}><strong>#{score}</strong>分/5分</a>',HOTEL_SCORE_TPL_NOSCORE="<p>暂无评分</p>",HOTEL_COMMENT_TPL='<a target="_blank" href="#{commenturl}" #{stats}>#{comment}条评论</a>',HOTEL_COMMENT_TPL_NONE="<p>0条评论</p>",hotelList=function(){function t(){s=1;
var t=common.getClass,e=l("list-trigger");T.addClass(e,t("hide")),T.removeClass(l("pg"),t("cond-hide")),T.removeClass(l("list"),t("list-short"))}function e(e){for(var o,r=[],i=e.length,s=0;o=e[s];s++)o.price=n(o),o.stats=common.getStatsAttr({data:"id:"+o.id})||"",o.scoreHtml=o.score>0?T.format(HOTEL_SCORE_TPL_NORMAL,o):HOTEL_SCORE_TPL_NOSCORE,o.commentHtml=o.comment>0?T.format(HOTEL_COMMENT_TPL,o):HOTEL_COMMENT_TPL_NONE,o.address&&(o.address="<p>"+o.address+"</p>"),o.location&&(o.location="<p>"+o.location+"</p>"),o.last=s==i-1?"last":"",o.vendors=o.vendors.slice(0,2).join("、"),r[s]=T.format(HOTEL_ITEM_TPL,o);
r=i?r.join(""):'<li class="ecl-left_hotel-nodata">抱歉，没有找到满足条件的酒店。您可以尝试更改搜索条件重新搜索！</li>',l("list").innerHTML=r,a(i),t()}function n(t){var e=t.priceStatus,n=m,a="<b>¥"+t.price+"</b>起";return-1==e?a="已订完":t.price>0?0===e&&(a="参考价:"+a):a="暂无报价",(-1==e||0===e||t.price<=0)&&(n=d),T.format(n,a)}function a(t){var e=common.getClass,n=l("list-trigger"),a=l("list");s||(t>3?(T.removeClass(n,e("hide")),T.addClass(a,e("list-short"))):(T.addClass(n,e("hide")),T.removeClass(a,e("list-short"))))}function o(t){var e=bds.event&&bds.event.trigger||new Function;
e("ec.zhixin_refresh_right_hotel_list",{list:t.right_hotel,stats:t.stats}),e("ec.zhixin_refresh_right_hotel_brand",{list:t.right_brand,stats:t.stats})}function r(t){var e=T.dom.children(l("list"));T.each(e,function(e){var a=t[e.getAttribute("data-outid")];if(a){var o=common.getTags(common.last(e),"p")[0];o&&(o.innerHTML=n(a));var r=common.getTags(e,"span")[0];a.vendors=a.vendors||["去哪儿网"],r.innerHTML=""+a.vendors.slice(0,2).join("、")+"等提供",r=null,e=null}}),e=null}var i,s,c=new common.Observable,l=common.queryByClass,u='<em class="ecl-left_hotel-ui-pager-icon-l">&nbsp;</em>上一页',f='下一页<em class="ecl-left_hotel-ui-pager-icon-r">&nbsp;</em>';
common.addIniter(function(){s=0,require(["ecom/ui/Pager"],function(t){i=new t({main:l("ui-pager"),page:TPLDATA.PAGE-1,total:TPLDATA.TOTALPAGE,prefix:common.getClass("ui-pager"),showAlways:0,lang:{prev:u,next:f,ellipsis:"..."}}),i.on("change",function(t){this.setPage(t.page),this.render(),common.scrollToDom(l("ctrl")),c.fire("change",{page:t.page})}),i.render()});var e=l("list-trigger");e&&(e.onclick=t,e=null),c.fire("updatePrice")});var m="<em>#{0}</em>",d="<span>#{0}</span>";return c.updatePrice=r,c.render=function(t,n){e(t),n&&o(n)
},c.renderCount=function(t){common.getTags(l("info"),"em")[0].innerHTML=t||0},c.get=function(){return{page:i&&i.getPage()||0}},c.setPager=function(t){if(i){i.setPage(t.page),i.total=t.totalPage,i.render();var e="addClass";t.totalPage>0&&(e="removeClass"),T[e](l("pg"),common.getClass("hide"))}},c}();
    var hotelData=function(){function e(){a=1}function t(e){for(var t in e)e[t]instanceof Date&&(e[t]=common.formatDate(e[t],"yyyy-MM-dd"));return e}var n={},r={};n.getStatsData=function(e){var t=T.extend({},r);return e&&"object"==typeof e&&(t=T.extend(t,e)),t};var a=0;n.request=function(t,n){e(),t.sessionID=TPLDATA.SESSION_ID,t.originQuery=TPLDATA.ORIGIN_QUERY,t.pssid=TPLDATA.STATS_PSSID,t.t=(new Date).getTime(),t.page=t.page+1;var a=TPLDATA.URL_QUERY;a+=(a.indexOf("?")>-1?"&":"?")+T.url.jsonToQuery(t,function(e){return/[^\x00-\xFF]/.test(e)?encodeURIComponent(e):e
}),common.request(a,function(e){r=T.extend(r,e.stats||{}),r.page=e.page,T.dom.setAttr(common.queryByClass("main"),"data-click",common.getStatsAttr(r,!0)),e.rightdata=e.rightdata||{},e.rightdata.stats=T.extend({},r),e.page=e.page-1,n({list:e.hotel,filter:{district:e.cond_district,brand:e.cond_brand},count:e.count,rightdata:e.rightdata,pager:{page:e.page,totalPage:e.totalpage}})})},n.requestPrice=function(e,t){e.sessionID=TPLDATA.SESSION_ID,e.originQuery=TPLDATA.ORIGIN_QUERY,e.pssid=TPLDATA.STATS_PSSID,e.t=(new Date).getTime();
var n=TPLDATA.URL_PRICE;n+=(n.indexOf("?")>-1?"&":"?")+T.url.jsonToQuery(e),common.request(n,t)};var o={};return common.addIniter(function(){o=t(hotelQuery.get()),r={sessionid:TPLDATA.SESSION_ID,subqid:TPLDATA.STATS_SUBQID,sid:TPLDATA.STATS_SID}}),n.mergeOption=function(e,n,r,a){o=T.extend(o,t(e));var i=T.extend({},o);if(n)for(var s in n)i["cond_"+s]=n[s];return i=T.extend(i,r),i.page=a.page,i},n.handleQuery=t,n}();hotelQuery.on("change",function(e){var t={district:[],price:[],brand:[],star:[]},n={order:"",orderby:""},r={page:0},a=hotelData.mergeOption(e,t,n,r);
hotelData.request(a,function(e){hotelList.renderCount(e.count),hotelList.setPager(e.pager),hotelList.render(e.list,e.rightdata),hotelFilter.render(e.filter),hotelFilter.reset(),hotelOrder.reset()})});var timerFilterChange;hotelFilter.on("change",function(e){timerFilterChange&&clearTimeout(timerFilterChange);var t={},n=hotelOrder.get(),r={page:0},a=hotelData.mergeOption(t,e,n,r);a.bycondition=1,timerFilterChange=setTimeout(function(){hotelData.request(a,function(e){hotelList.renderCount(e.count),hotelList.setPager(e.pager),hotelList.render(e.list,e.rightdata)
})},300)});var timerOrderChange;hotelOrder.on("change",function(e){timerOrderChange&&clearTimeout(timerOrderChange);var t=hotelFilter.get(),n={},r={page:0},a=hotelData.mergeOption(n,t,e,r);a.bycondition=1,timerOrderChange=setTimeout(function(){hotelData.request(a,function(e){hotelList.setPager(e.pager),hotelList.render(e.list,e.rightdata)})},300)}),hotelList.on("change",function(e){var t=hotelFilter.get(),n={},r=hotelOrder.get(),a=hotelData.mergeOption(n,t,r,e);a.bycondition=1,hotelData.request(a,function(e){hotelList.render(e.list,e.rightdata)
})}),hotelList.on("updatePrice",function(){var e=hotelData.handleQuery(hotelQuery.get());e.updateQueue=TPLDATA.UPDATE_QUEUE,e.priceQueue=TPLDATA.PRICE_QUEUE,hotelData.requestPrice(e,function(e){hotelList.updatePrice(e)})}),function(){6==T.browser.ie&&common.addIniter(function(){var e=card.q(common.getClass("layer"));T.each(e,function(e){common.hideLayer(e)})})}(),common.init();

});
</script>

{%/block%}
