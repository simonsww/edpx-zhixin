{%extends 'base_div.tpl'%}

{%block name='content'%}
<style type="text/css">
.ecl-left_hotel-main{width:600px;font-size:12px}.ecl-left_hotel-main a{outline:0;text-decoration:none}.ecl-left_hotel-main a em{text-decoration:none}.ecl-left_hotel-main strong{font-size:inherit;font-weight:normal}.ecl-left_hotel-main h3,.ecl-left_hotel-main h4,.ecl-left_hotel-main h5{margin:0;font-weight:normal;line-height:inherit;font-size:12px}.ecl-left_hotel-border{border:1px solid #f6f6f6}.ecl-left_hotel-empty-value{color:#bababa}.ecl-left_hotel-highlight{color:#f00}.ecl-left_hotel-error{background-color:#c30;color:#fff}
.ecl-left_hotel-hide,.ecl-left_hotel-cond-hide{display:none!important}.ecl-left_hotel-clearfix{zoom:1}.ecl-left_hotel-clearfix:after{clear:both;content:".";display:block;height:0;visibility:hidden}.ecl-left_hotel-query{background:#fdfdfd;padding-top:9px}.ecl-left_hotel-cond-row,.ecl-left_hotel-query-row{padding-left:9px;height:20px;line-height:26px}.ecl-left_hotel-query-row{margin-bottom:9px;height:26px}.ecl-left_hotel-query-item{float:left;padding-right:20px}.ecl-left_hotel-query-item h5{display:inline;float:left;margin-right:10px}
.ecl-left_hotel-query-item b{display:block;width:17px;height:17px;margin-top:3px;float:left;cursor:pointer}.ecl-left_hotel-query-dist{padding-right:10px}.ecl-left_hotel-input,.ecl-left_hotel-cal{float:left;border:1px solid #b5b5b5;background:#FFF}.ecl-left_hotel-input input,.ecl-left_hotel-cal input{float:left;padding-left:5px;height:24px;line-height:24px;border:0;outline:0;font-size:12px}.ecl-left_hotel-layer button,.ecl-left_hotel-input b{border:0;background:0;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/hotel_btn.png") 0 0 no-repeat;overflow:hidden}
.ecl-left_hotel-layer button{float:right;margin:6px 5px auto auto;width:9px;height:9px;background-position:0 -25px;cursor:pointer}.ecl-left_hotel-city{width:96px}.ecl-left_hotel-city input{width:76px;*width:70px}.ecl-left_hotel-cal{width:156px}.ecl-left_hotel-cal input{width:136px;*width:130px;cursor:pointer;-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none;-khtml-user-select:none;user-select:none}.ecl-left_hotel-cal b{background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/hotel_cbtn.gif") no-repeat}.ecl-left_hotel-dist{width:428px}
.ecl-left_hotel-dist input{width:408px;*width:402px}.ecl-left_hotel-submit{display:block;width:82px;line-height:26px;height:26px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/button_sprites.png) no-repeat;overflow:hidden;text-align:center;text-decoration:none;color:#000;cursor:pointer;-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none;-khtml-user-select:none;user-select:none}.ecl-left_hotel-submit.ecl-left_hotel-submit-hover{background-position:-84px 0}.ecl-left_hotel-submit.ecl-left_hotel-submit-press{background-position:-168px 0}
.ecl-left_hotel-city-sug,.ecl-left_hotel-layer{position:absolute;zoom:1;left:-10000px;margin-left:-1px;border:#d0d0d0 solid 1px;background:#fff;z-index:10;color:#666;line-height:20px}.ecl-left_hotel-layer h3{padding:0 5px;border-bottom:1px dotted #d0d0d0;background:#fff;line-height:21px;font-size:12px}.ecl-left_hotel-layer ul{padding:6px 0}.ecl-left_hotel-layer li span{cursor:pointer}.ecl-left_hotel-city .ecl-left_hotel-layer{width:315px}.ecl-left_hotel-city .ecl-left_hotel-layer li{float:left;width:20%;line-height:20px;text-align:center;overflow:hidden}
.ecl-left_hotel-city .ecl-left_hotel-layer a,.ecl-left_hotel-dist .ecl-left_hotel-layer a{color:#00c;margin-right:20px;display:inline-block;cursor:pointer}.ecl-left_hotel-city .ecl-left_hotel-layer a:hover,.ecl-left_hotel-dist .ecl-left_hotel-layer a:hover{color:#ff6c00}.ecl-left_hotel-sug{padding:2px;padding-right:5px;color:#414141;cursor:default}.ecl-left_hotel-sug-highlight{background-color:#36c;color:#fff}.ecl-left_hotel-city-sug li,.ecl-left_hotel-layer span{white-space:nowrap}.ecl-left_hotel-dist .ecl-left_hotel-layer{width:428px}
.ecl-left_hotel-dist .ecl-left_hotel-layer li{padding:5px;list-style:outside none}.ecl-left_hotel-dist .ecl-left_hotel-layer .ecl-left_hotel-li{border-top:1px dotted #d0d0d0}.ecl-left_hotel-dist .ecl-left_hotel-layer strong{margin:0;color:#333;font-size:13px;font-weight:bold}.ecl-left_hotel-cond-row{line-height:20px;width:589px;height:21px;margin-bottom:9px}.ecl-left_hotel-cond-row h4{float:left;width:40px;margin-top:1px;font-weight:bold}.ecl-left_hotel-cond-row strong{width:32px;line-height:16px;margin:2px 9px 0 3px;float:left;background:#67a5eb;border:1px solid #418ce5;color:#FFF;border-radius:1px;text-align:center;cursor:pointer}
.ecl-left_hotel-cond-row strong.ecl-left_hotel-unselect{background:0;color:#555;border-color:#fdfdfd}.ecl-left_hotel-filter-trigger{height:23px;line-height:23px;margin-top:14px;cursor:pointer;color:#666;background:#f9f9f9;text-align:center;border-bottom:1px solid #ebebeb}.ecl-left_hotel-filter-trigger b{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/icon_sprites.gif) -35px 1px no-repeat;padding:0 4px;margin-left:4px}.ecl-left_hotel-opt{float:left;width:500px;_width:480px}.ecl-left_hotel-opt ul{width:500px;float:left}
.ecl-left_hotel-opt li{float:left;width:93px;height:18px;line-height:18px;padding:1px 4px 1px 0;overflow:hidden;*position:relative}.ecl-left_hotel-opt-district ul,.ecl-left_hotel-opt-brand ul{width:420px}.ecl-left_hotel-opt b{float:left;margin-left:10px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/icon_sprites.gif) 28px 4px no-repeat;width:38px;height:16px;margin-top:1px;font-weight:normal;padding:0;display:block;overflow:hidden;cursor:pointer;color:#00c}.ecl-left_hotel-opt .ecl-left_hotel-layer{width:470px}
.ecl-left_hotel-opt .ecl-left_hotel-layer ul{width:460px;padding:6px}.ecl-left_hotel-opt input{vertical-align:top;width:13px;height:13px;margin:0;margin-top:4px;*margin-top:1px}.ecl-left_hotel-opt label{font-family:tahoma;cursor:pointer;padding:0 1px 3px 2px;padding:0 2px 3px 0 url(0);_padding:2px 2px 2px 2px;height:18px;line-height:18px;*line-height:20px;_line-height:25px;overflow:hidden;word-wrap:break-word;word-break:break-all;width:76px;width:autourl(0);display:inline-block;display:inlineurl(0);color:#333}
.ecl-left_hotel-ctrl{height:20px;overflow:hidden;line-height:20px;text-align:right;padding:5px 9px;margin:5px 0 0}.ecl-left_hotel-ctrl .ecl-left_hotel-info{margin-top:2px;margin-right:14px}.ecl-left_hotel-ctrl .ecl-left_hotel-info em{color:#ff6c00}.ecl-left_hotel-sort{float:left;height:20px;line-height:20px;width:250px;overflow:hidden;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/button_sprites.png) 0 -54px no-repeat}.ecl-left_hotel-sort a{display:block;float:left;width:63px;height:20px;margin-left:-1px;line-height:20px;color:#666;text-align:center;cursor:pointer;-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none;-khtml-user-select:none;user-select:none}
.ecl-left_hotel-sort a.ecl-left_hotel-sort-default{margin-left:0}.ecl-left_hotel-sort a.ecl-left_hotel-cur{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/button_sprites.png) 0 -77px}.ecl-left_hotel-sort i{padding:0 4px}.ecl-left_hotel-sort i{margin-left:3px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/icon_sprites.gif) 0 0 no-repeat;padding:0 4px}.ecl-left_hotel-sort-both i{background-position:0 -12px;*background-position:0 -11px}.ecl-left_hotel-sort-asc i{background-position:-24px -12px;*background-position:-24px -11px}
.ecl-left_hotel-sort-desc i{background-position:-12px -12px;*background-position:-12px -11px}.ecl-left_hotel-sort-desconly i{background-position:-12px 1px;*background-position:-12px 2px}.ecl-left_hotel-list{padding:1px 9px 0;color:#333}.ecl-left_hotel-list-short{height:260px;*height:265px;overflow:hidden;*position:relative;*zoom:1}.ecl-left_hotel-list-trigger{height:28px;line-height:28px;border:1px solid #ebebeb;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/button_sprites.png) 0 -100px repeat-x;color:#666;text-align:center;cursor:pointer;margin-top:-1px}
.ecl-left_hotel-list-trigger b{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/icon_sprites.gif) 2px 1px no-repeat;padding:0 4px;margin-left:7px}.ecl-left_hotel-list li{height:78px;margin:8px 0;border-bottom:1px solid #f5f5f5;overflow:hidden}.ecl-left_hotel-list li.last{border-bottom:0}.ecl-left_hotel-list li.ecl-left_hotel-nodata{border:0 none;height:auto;padding:25px 0;text-align:center}.ecl-left_hotel-img,.ecl-left_hotel-intro,.ecl-left_hotel-rate,.ecl-left_hotel-price{float:left}.ecl-left_hotel-img{width:80px;position:relative}
.ecl-left_hotel-img a{display:block}.ecl-left_hotel-img div{position:absolute;top:0;left:0;width:68px;height:68px;border:1px solid #000;opacity:.1;filter:alpha(opacity=10)}.ecl-left_hotel-img a,.ecl-left_hotel-img img{width:70px;height:70px;border:0}.ecl-left_hotel-intro{width:295px}.ecl-left_hotel-intro h5{margin:0;padding:0;line-height:18px;margin-top:3px;margin-bottom:4px;font-weight:normal}.ecl-left_hotel-intro h5 a{font-size:13px;text-decoration:none;color:#00c;word-wrap:break-word;word-break:break-all}
.ecl-left_hotel-intro h5 a:hover{text-decoration:underline}.ecl-left_hotel-intro h5 i{margin-left:10px;color:#666;font-style:normal;font-size:12px}.ecl-left_hotel-intro p{width:250px;*width:260px;height:40px;line-height:20px;overflow:hidden;*position:relative;word-wrap:break-word;word-break:break-all}.ecl-left_hotel-rate{margin-top:22px;width:90px;height:36px;text-align:center;line-height:18px;padding:0}.ecl-left_hotel-rate a{margin-bottom:9px;color:#00c;display:block}.ecl-left_hotel-rate a:hover{text-decoration:underline}
.ecl-left_hotel-rate p{margin-bottom:9px;padding-left:15px;text-align:left}.ecl-left_hotel-rate p a{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/star.png) 0 0 no-repeat;height:12px;width:64px;padding:0;margin:0;overflow:hidden;position:relative;cursor:pointer}.ecl-left_hotel-rate p a em{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/star.png) 0 -14px no-repeat;position:absolute;left:0;height:12px;display:block}.ecl-left_hotel-price{width:66px;padding-right:0;margin-top:10px;margin-left:37px}
.ecl-left_hotel-price em{display:block;margin-right:10px;text-align:right;font-weight:bold;color:#ff6c00}.ecl-left_hotel-link{margin-top:12px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/button_sprites.png) 0 -28px no-repeat;overflow:hidden;display:block;width:66px;height:24px;line-height:24px;color:#666;text-align:center}.ecl-left_hotel-link:hover{background-position:-68px -28px}.ecl-left_hotel-link:active{background-position:-136px -28px}.ecl-left_hotel-pg{background:#fff;padding-bottom:10px;text-align:center}
.ecl-left_hotel-ui-pager{display:inline-block;text-align:center;zoom:1}.ecl-left_hotel-ui-pager a{display:inline-block;_display:inline;border:1px solid #d5d5d5;background:#fdfdfd;overflow:hidden;*zoom:1;padding:2px 5px;margin:0 1px;color:#00c;text-decoration:none;font:normal 12px Arial,Helvetica,sans-serif;text-align:center;vertical-align:middle}.ecl-left_hotel-ui-pager a:hover{background-color:#eff4fa}.ecl-left_hotel-ui-pager a.ecl-left_hotel-ui-pager-ellipsis{border:0 none;color:#333}.ecl-left_hotel-ui-pager .ecl-left_hotel-ui-pager-current{border:0 none;color:#333;cursor:default}
.ecl-left_hotel-ui-pager a em{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/icon_sprites.gif) -36px -11px no-repeat;padding:0 4px;*background-position:-36px -10px;line-height:14px;*line-height:15px}.ecl-left_hotel-ui-pager a.ecl-left_hotel-ui-pager-current:hover,.ecl-left_hotel-ui-pager a.ecl-left_hotel-ui-pager-ellipsis:hover,.ecl-left_hotel-ui-pager a.ecl-left_hotel-ui-pager-disabled:hover{background:0}.ecl-left_hotel-ui-pager a em.ecl-left_hotel-ui-pager-icon-r{background-position:-48px -11px;*background-position:-48px -10px}
.ecl-left_hotel-ui-pager a.ecl-left_hotel-ui-pager-disabled{color:#999;cursor:default;display:none}table.ecl-left_hotel-ui-cal{border:1px solid #b5b5b5;background:#fff}table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month{float:left;width:155px;margin:2px 2px 0 2px;display:inline;border-left:1px solid #dae2f5}table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month h5{margin:0;padding:0;height:19px;margin-bottom:2px;overflow:hidden;border:1px solid #c6cede;border-top-color:#e9eff9;border-left-color:#e9eff9;text-align:center;line-height:19px;font-size:14px;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/hotel_cal.gif") 1px 0 repeat-x;color:#41537b;cursor:default}
table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month h5 strong{font-weight:bold}table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month td.ecl-left_hotel-ui-cal-month-prev,table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month td.ecl-left_hotel-ui-cal-month-next{color:#999}table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month td.ecl-left_hotel-ui-cal-month-cur{color:#000}table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month td.ecl-left_hotel-ui-cal-day-disabled{cursor:not-allowed;color:#ddd}table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month td.ecl-left_hotel-ui-cal-today{color:red}
table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month td.ecl-left_hotel-ui-cal-day-hover{background:#eb4f03;color:#fff}table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month td.ecl-left_hotel-ui-cal-day-selected{background:#3977d2;color:#fff}table.ecl-left_hotel-ui-cal .ecl-left_hotel-ui-cal-month th{text-align:center;font-size:12px;background:#f1f4f9;padding:4px 0}table.ecl-left_hotel-ui-cal td{text-align:center;cursor:pointer;font-family:Arial;font-size:12px;height:18px;padding:0}.ecl-left_hotel-ui-cal-btn-prev-month,.ecl-left_hotel-ui-cal-btn-next-month{cursor:pointer;display:block;width:5px;height:9px;overflow:hidden;margin:6px 0 0}
.ecl-left_hotel-ui-cal-btn-prev-month{margin-left:3px;float:left;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/hotel_cal.gif") 0 -19px}.ecl-left_hotel-ui-cal-btn-next-month{float:right;margin-right:3px;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/hotel_cal.gif") 0 -28px}table .ecl-left_hotel-ui-cal-month-pre1 .ecl-left_hotel-ui-cal-month{border-left:none}
</style>
{%*点击统计*%} 
{%$sessionid=$extData.sessionID%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}

{%function name=fe_fn_vs_hotel_clicklog id=""%}
    data-click='{"vs_hotel_sessionid":"{%$sessionid|escape:"html"%}","vs_hotel_subqid":"{%$subqid|escape:"html"%}","vs_hotel_sid":"{%$sid|escape:"html"%}"{%if $id%},"vs_hotel_data":"id:{%$id|escape:"html"%}"{%/if%}}'
{%/function%}
<div class="ecl-left_hotel-main" {%fe_fn_vs_hotel_clicklog%}>
    <div class="ecl-left_hotel-border">
        <div class="ecl-left_hotel-query" data-click="{'fm':'behz'}">
            {%*城市、日期*%} 
            <div class="ecl-left_hotel-query-row">
                <div class="ecl-left_hotel-query-item">
                    <h5>城市</h5>
                    <div class="ecl-left_hotel-input ecl-left_hotel-city">
                        <input autocomplete="off" type="text" maxlength="10" value="{%if $tplData.curcity%}{%$tplData.curcity|escape:'html'%}{%else%}{%if $tplData.ipcity%}{%$tplData.ipcity|escape:'html'%}{%else%}北京{%/if%}{%/if%}" />
                        <b class="OP_LOG_BTN"></b>
                        <div class="ecl-left_hotel-layer ecl-left_hotel-hide-layer">
                            <button>&nbsp;</button>
                            <h3>Top 20热门城市 (直接输入可搜索{%$tplData.citycount|escape:'html'%}个城市)</h3>
                            <ul class="ecl-left_hotel-clearfix">
                                {%$loop_maxcount=count($tplData.hotcity)%}{%for $count=0 to 99%}{%if $count<$loop_maxcount%}
                                <li><a class="ecl-left_hotel-citys" data-id="{%$tplData.hotcity[$count]['id']|escape:'html'%}">{%$tplData.hotcity[$count]['name']|escape:'html'%}</a></li>
                                {%else%}{%break%}{%/if%}{%/for%}
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
                    <h5>名称</h5>
                    <div class="ecl-left_hotel-input ecl-left_hotel-dist">
                        <input autocomplete="off" type="text" maxlength="60" value="{%$tplData.keyword|escape:'html'%}" data-placeholder="酒店名称、地标、商圈 可组合搜索" />
                        <b data-query="dist" class="OP_LOG_BTN"></b>
                        <div class="ecl-left_hotel-layer ecl-left_hotel-hide-layer"></div>
                    </div>
                </div>
                <div class="ecl-left_hotel-submit OP_LOG_BTN">快速查询</div> 
            </div>

            {%$loop_maxcount=count($tplData.cond_district)%}
            <div class="ecl-left_hotel-cond-row{%if $loop_maxcount==0%} ecl-left_hotel-hide{%/if%}" data-filter="district">
                <h4>商圈:</h4>
                <strong class="OP_LOG_OTHERS">不限</strong>
                <div class="ecl-left_hotel-opt ecl-left_hotel-opt-district">
                    <ul>
                        {%$max_choice=4%}{%for $count=0 to $max_choice-1%}{%if $count<$loop_maxcount%}
                        <li class="OP_LOG_OTHERS">
                            <input type="checkbox" value="{%$tplData.cond_district[$count]['value']|escape:'html'%}" /><label title="{%$tplData.cond_district[$count]['name']|escape:'html'%}">{%$tplData.cond_district[$count]['name']|escape:'html'%}</label>
                        </li>
                        {%else%}{%break%}{%/if%}{%/for%}
                    </ul>
                    <b title="更多" class="{%if $loop_maxcount<=$max_choice%}ecl-left_hotel-hide{%/if%} OP_LOG_BTN">更多</b>
                    <div class="ecl-left_hotel-layer ecl-left_hotel-hide-layer">
                        {%if $loop_maxcount>$max_choice%}
                        <button title="关闭" data-command="close-filter-layer" class="OP_LOG_BTN"></button>
                        <h3>&nbsp;</h3>
                        <ul>
                        {%for $count=$max_choice to 99%}{%if $count<$loop_maxcount%}
                        <li class="OP_LOG_OTHERS">
                            <input type="checkbox" value="{%$tplData.cond_district[$count]['value']|escape:'html'%}" /><label title="{%$tplData.cond_district[$count]['name']|escape:'html'%}">{%$tplData.cond_district[$count]['name']|escape:'html'%}</label>
                        </li>
                        {%else%}{%break%}{%/if%}{%/for%}
                        </ul> 
                        {%/if%}
                    </div>
                </div>
            </div>
            <div class="ecl-left_hotel-cond-row ecl-left_hotel-cond-price" data-filter="price">
                <h4>价格:</h4>
                <strong class="OP_LOG_OTHERS">不限</strong>
                <div class="ecl-left_hotel-opt">
                    <ul>
                        <li class="OP_LOG_OTHERS"><input type="checkbox" value="1" /><label>200元以下</label></li>
                        <li class="OP_LOG_OTHERS"><input type="checkbox" value="2" /><label>200元-300元</label></li>
                        <li class="OP_LOG_OTHERS"><input type="checkbox" value="3" /><label>300元-500元</label></li>
                        <li class="OP_LOG_OTHERS"><input type="checkbox" value="4" /><label>500元以上</label></li>
                    </ul>
                </div>
            </div>
            <div class="ecl-left_hotel-cond-hide">
                <div class="ecl-left_hotel-cond-row" data-filter="star">
                    <h4>星级:</h4>
                    <strong class="OP_LOG_OTHERS">不限</strong>
                    <div class="ecl-left_hotel-opt">
                        <ul>
                            <li class="OP_LOG_OTHERS"><input type="checkbox" value="1" /><label>经济型</label></li>
                            <li class="OP_LOG_OTHERS"><input type="checkbox" value="2" /><label>二星级/普通</label></li>
                            <li class="OP_LOG_OTHERS"><input type="checkbox" value="3" /><label>三星级/舒适</label></li>
                            <li class="OP_LOG_OTHERS"><input type="checkbox" value="4" /><label>四星级/高档</label></li>
                            <li class="OP_LOG_OTHERS"><input type="checkbox" value="5" /><label>五星级/豪华</label></li>
                        </ul>
                    </div>
                </div>
                {%$loop_maxcount=count($tplData.cond_brand)%}
                <div class="ecl-left_hotel-cond-row" data-filter="brand">
                    <h4>品牌:</h4>
                    <strong class="OP_LOG_OTHERS">不限</strong>
                    <div class="ecl-left_hotel-opt ecl-left_hotel-opt-brand">
                        <ul>
                            {%$max_choice=4%}{%for $count=0 to $max_choice-1%}{%if $count<$loop_maxcount%}
                            <li class="OP_LOG_OTHERS">
                                <input type="checkbox" value="{%$tplData.cond_brand[$count]['value']|escape:'html'%}" /><label title="{%$tplData.cond_brand[$count]['name']|escape:'html'%}">{%$tplData.cond_brand[$count]['name']|escape:'html'%}</label>
                            </li>
                            {%else%}{%break%}{%/if%}{%/for%}
                        </ul>
                        <b title="更多" class="{%if $loop_maxcount<=$max_choice%}ecl-left_hotel-hide{%/if%} OP_LOG_BTN">更多</b>
                        <div class="ecl-left_hotel-layer ecl-left_hotel-hide-layer">
                            {%if $loop_maxcount>$max_choice%}
                            <button title="关闭" data-command="close-filter-layer" class="OP_LOG_BTN"></button>
                            <h3>&nbsp;</h3>
                            <ul>
                            {%for $count=$max_choice to 99%}{%if $count<$loop_maxcount%}
                            <li class="OP_LOG_OTHERS">
                                <input type="checkbox" value="{%$tplData.cond_brand[$count]['value']|escape:'html'%}" /><label title="{%$tplData.cond_brand[$count]['name']|escape:'html'%}">{%$tplData.cond_brand[$count]['name']|escape:'html'%}</label></li>
                            {%else%}{%break%}{%/if%}{%/for%}
                            </ul>
                            {%/if%}
                        </div>
                    </div>
                </div>
            </div>
            <div class="ecl-left_hotel-filter-trigger OP_LOG_BTN">更多筛选条件<b title="更多" class="OP_LOG_BTN">&nbsp;&nbsp;</b></div>
        </div>
        <div class="ecl-left_hotel-ctrl" data-click="{'fm':'behz'}">
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
            {%for $count=0 to 99%}{%if $count<$loop_maxcount%}
            {%$url=$tplData.hotel[$count]['viewurl']|escape:'html'%}
            {%$cmurl=$tplData.hotel[$count]['commenturl']|escape:'html'%}
            {%$id=$tplData.hotel[$count]['id']%}
            <li data-outid="{%$tplData.hotel[$count]['out_id']|escape:'html'%}" {%if $count==$loop_maxcount-1 or $count==9%}class="last"{%/if%}>
                <div class="ecl-left_hotel-img">
                    <a target="_blank" href="{%$url%}" {%fe_fn_vs_hotel_clicklog id=$id%}><img width="" height="" src="{%$tplData.hotel[$count]['imgsrc']|escape:'html'%}" /><div></div></a>
                </div>
                <div class="ecl-left_hotel-intro">
                    <h5>
                        <a target="_blank" href="{%$url%}" {%fe_fn_vs_hotel_clicklog id=$id%}>{%$tplData.hotel[$count]['title']|escape:'html'|highlight:0%}</a><i>[{%$tplData.hotel[$count]['star']|escape:'html'%}]</i>
                    </h5>
                    <p>{%if $tplData.hotel[$count]['desc']%}{%$tplData.hotel[$count]['desc']|escape:'html'|highlight:0%}{%else%}暂无酒店简介{%/if%}</p>
                </div>
                <div class="ecl-left_hotel-rate">
                    {%if $tplData.hotel[$count]['score']%}
                    <p><a title="用户总体评分为{%$tplData.hotel[$count]['score']|escape:'html'%}分/5分" target="_blank" href="{%$cmurl%}" {%fe_fn_vs_hotel_clicklog id=$id%}><em style="width:{%$tplData.hotel[$count]['score']/5*100%}%;"></em></a></p>
                    {%else%}
                    <a target="_blank" href="{%$cmurl%}" {%fe_fn_vs_hotel_clicklog id=$id%}>暂无评分</a>
                    {%/if%}
                    <a target="_blank" href="{%$cmurl%}" {%fe_fn_vs_hotel_clicklog id=$id%}>{%$tplData.hotel[$count]['comment']|escape:'html'%}条评论</a>
                </div>
                <div class="ecl-left_hotel-price">
                    <em>{%if $tplData.hotel[$count]['price']%}¥{%$tplData.hotel[$count]['price']|escape:'html'%}起{%else%}暂无报价{%/if%}</em>
                    <a target="_blank" class="ecl-left_hotel-link" href="{%$url%}" {%fe_fn_vs_hotel_clicklog id=$id%}>查看详情</a>
                </div>
            </li>
            {%else%}{%break%}{%/if%}{%/for%}
        </ul>
        <div class="ecl-left_hotel-pg{%if $loop_maxcount>3%} ecl-left_hotel-cond-hide{%/if%}" data-click="{'fm':'behz'}">
            <div class="ecl-left_hotel-ui-pager OP_LOG_BTN"></div>
        </div>
    </div>
    {%if $loop_maxcount>3%}
    <div class="ecl-left_hotel-list-trigger OP_LOG_BTN" data-click="{'fm':'behz'}">展开更多酒店<b>&nbsp;&nbsp;</b></div>
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
A.init(function(){var t=A.baidu,e=this,n=e.data.ZHIXIN_HOTEL_LEFT,a=n.IP_CITY||n.QUERY_CITY,i=+n.IP_CITYID||n.CITYID,r=function(){function n(){this.events={}}function a(e,n){var a={};for(var i in e)a["vs_hotel_"+i]=e[i];var r=t.json.stringify(a).replace(/"/g,"'");return n?r:'data-click="'+r+'"'}var i={},s="ecl-left_hotel";i.getClass=function(t){return t=t||"",s+"-"+t};var o=[];return i.addIniter=function(t){o.push(t)},i.init=function(){for(var t=0,e=o.length;e>t;t++){var n=o[t];"function"==typeof n&&n()}},i.queryByClass=function(t){return t=r.getClass(t),e.q(t)[0]
},i.getInput=function(t){return r.queryByClass(t).getElementsByTagName("input")[0]},i.prev=function(t){for(t=t.previousSibling;t;){if(1==t.nodeType)return t;t=t.previousSibling}return t},i.last=function(t){for(var t=t.lastChild;t;){if(1==t.nodeType)return t;t=t.previousSibling}return t},i.request=function(e,n,a){n=n||Function(),a=a||Function(),t.ajax.request(e,{onsuccess:function(e,i){var r={status:-1,statusInfo:e.statusText};try{r=t.json.parse(i)}catch(s){return a(-1,r),void 0}if(!i)return a(-1,r),void 0;if(r.status)return a(r),void 0;
var o=r.data;n(o,r)},onfailure:function(t){var e={status:t.status,statusInfo:t.statusText};a(t.status,e)}})},i.now="undefined"==typeof bdServerTime?new Date:new Date(1e3*bdServerTime),i.showLayer=function(e,n,a){var r=n.offsetHeight,s=n.offsetWidth,o=t.dom.getPosition(n),u={};u.top=o.top+r+2,6==t.browser.ie&&(u.top-=7),a&&"left"!=a?"right"==a&&(u.left=o.left+s-e.offsetWidth):u.left=o.left,e.style.left=u.left+"px",e.style.top=u.top+"px",t.removeClass(e,i.getClass("hide-layer"))},i.hideLayer=function(e){t.addClass(e,i.getClass("hide-layer")),e.style.left="-10000px"
},i.toggleLayer=function(e,n,a){var r="hideLayer";t.dom.hasClass(e,i.getClass("hide-layer"))&&(r="showLayer"),i[r](e,n,a)},i.scrollToDom=function(e){window.scroll(0,t.dom.getPosition(e).top||0)},i.formatDate=function(t,e){function n(t,n){e=e.replace(t,n)}function a(t,e){var n="",a=0>t,i=Math.abs(t)+"";return e>i.length&&(n=Array(e-i.length+1).join("0")),(a?"-":"")+n+i}if("string"!=typeof e)return""+t;var i=t.getFullYear(),r=t.getMonth()+1,s=t.getDate(),o=t.getHours(),u=t.getMinutes(),c=t.getSeconds();return n(/yyyy/g,a(i,4)),n(/yy/g,a(parseInt((""+i).slice(2),10),2)),n(/MM/g,a(r,2)),n(/M/g,r),n(/dd/g,a(s,2)),n(/d/g,s),n(/HH/g,a(o,2)),n(/H/g,o),n(/hh/g,a(o%12,2)),n(/h/g,o%12),n(/mm/g,a(u,2)),n(/m/g,u),n(/ss/g,a(c,2)),n(/s/g,c),e
},i.date2HumanStyle=function(t){return r.formatDate(t,"yyyy-MM-dd")+"("+"周"+"日一二三四五六".charAt(t.getDay())+")"},i.afterDays=function(t,e){return new Date(t.getFullYear(),t.getMonth(),t.getDate()+e)},n.prototype={constructor:n,on:function(t,e){this.events[t]instanceof Array||(this.events[t]=[]),this.events[t].push(e)},un:function(t,e){for(var n=this.events[t],a=n instanceof Array&&n.length;a--;)n[a]===e&&n.splice(a,1)},fire:function(e,n){var a=this.events[e],i=this;a instanceof Array&&t.each(a,function(t){"function"==typeof t&&t.call(i,n)
})}},i.Observable=n,i.getStatsAttr=a,i}(),s=function(){function e(){k=n.QUERY_CITY,E=n.CITYID,O=n.KEYWORD}function s(){var e=t.trim(M("dist").value);return e==M("dist").getAttribute("data-placeholder")&&(e=""),e!=O&&(O=e),{city:k,cityid:E,sdate:H,edate:q,keyword:O}}function o(){var e=A("submit");e.onclick=u,t.on(e,"mouseover",function(){t.addClass(this,U("submit-hover"))}),t.on(e,"mouseout",function(){t.removeClass(this,U("submit-hover"))}),t.on(e,"mousedown",function(){t.addClass(this,U("submit-press"))}),t.on(e,"mouseup",function(){t.removeClass(this,U("submit-press"))
}),t.browser.ie&&(e.onselectstart=function(){return!1}),e=null}function u(){P&&clearTimeout(P),P=setTimeout(function(){D.fire("change",s())},200)}function c(){var e=M("city");t.on(document,"click",function(e){var n=t.event.getTarget(e),a=M("city"),i=I(a),s=t.dom.next(i);n==i?r.toggleLayer(s,a):r.hideLayer(s);var o=A("city-sug");n!==a&&r.hideLayer(o)}),t.on(e,"keydown",g);var n;t.on(e,"mouseup",function(e){n?this.focus():(n=1,e=e||window.event,t.event.preventDefault(e))}),t.on(e,"focus",function(){n||this.select()
}),t.on(e,"blur",function(){if(n=0,""==this.value||N)d();else{var t=k;if(R>-1){var e=F[R];E!=e.id&&(t=h(e),l(t,e.id))}B=t,M("city").value=B}r.hideLayer(A("city-sug"))}),t.on(A("city-sug"),"mouseover",function(e){if(!N){var n=t.event.getTarget(e);"LI"==n.tagName&&f(n.getAttribute("data-index"))}});var a=t.dom.next(I(M("city")));t.on(a,"click",function(e){var n=t.event.getTarget(e);"A"==n.tagName&&(B=n.innerHTML,M("city").value=B,l(B,n.getAttribute("data-id")))}),e=null,a=null}function l(t,e){k=t,E=e,S()}function d(){B=a,l(B,i),M("city").value=k
}function g(t){var e=F.length;if(!N&&e){v();var n;t=t||window.event;var a=t.keyCode||t.which;switch(a){case 38:n=0==R?e-1:R-1;break;case 40:n=R==e-1?0:R+1;break;case 13:n=R,r.hideLayer(A("city-sug"))}n>-1&&f(n,1)}}function f(e,n){e=+e;var a=A("city-sug").getElementsByTagName("li");e>-1&&e!=R&&(t.removeClass(a[R],Y),t.addClass(a[e],Y),R=e),n&&(B=h(F[e]),M("city").value=B)}function h(t){var e=t.s.split("|")[0],n=e.indexOf("-");return n>-1&&(e=e.slice(0,n)),e}function v(){var t=A("city-sug");t.innerHTML&&r.showLayer(t,M("city"))
}function m(){function e(t,e){t=!e.status&&t instanceof Array&&t||[],F=t,y(t),R=N?-1:0,r.showLayer(A("city-sug"),M("city"))}s&&clearTimeout(s);var a=n.URL_CITY+(n.URL_CITY.indexOf("?")>-1?"&":"?")+"city=#{0}&t=#{1}",i=t.trim(M("city").value);""!=i&&i!=B?(B=i,a=t.format(a,encodeURIComponent(B),(new Date).getTime()),R=-1,r.request(a,e,e)):""==i&&(B="",A("city-sug").innerHTML="",r.hideLayer(A("city-sug")));var s=setTimeout(m,200)}function y(e){var n=[];t.each(e,function(e,a){var i=RegExp("("+B+")","i"),r=e.s.split("|"),s=(r[0]+"("+r[1]+")").replace(i,'<span class="'+U("highlight")+'">$1</span>');
n.push(t.format('<li class="#{3}" data-id="#{1}" data-index="#{2}">#{0}</li>',s,e.id||"",a,0==a?U("sug")+" "+U("sug-highlight"):U("sug")))}),n=n.join(""),n?N=0:(n='<li class="'+U("error")+'">'+"对不起，查找不到"+B+"</li>",N=1),A("city-sug").innerHTML=n}function p(){var t=r.now;H=j(t,2),q=j(t,3),M("cal-in").value=r.date2HumanStyle(H),M("cal-out").value=r.date2HumanStyle(q)}function b(t){return t.replace(/-/g,"")}function T(t){return 1e4*t.getFullYear()+100*(t.getMonth()+1)+t.getDate()}function C(t){return t=(""+t).match(/^(\d+)(\d\d)(\d\d)/),t.shift(),new Date(t[0],t[1]-1,t[2])
}function _(e){function n(){return M("cal-"+e).value.replace(/\([^\)]*\)$/,"")}var a={"in":{onShow:function(){var t=n();this.setHtml(b(t))},onSelectDay:function(t){H=C(t),(H>=q||q>j(H,28))&&(q=j(H,1),M("cal-out").value=r.date2HumanStyle(q))}},out:{onShow:function(){this.setHtml(T(q));var t=T(j(H,1)),e=Math.min(T(j(H,28)),T(G));this.setBetween([t,e])},onSelectDay:function(t){q=C(t)}}};require(["ecom/ui/wcal"],function(i){var s=M("cal-"+e);t.browser.ie&&(s.onselectstart=function(){return!1}),s.onfocus=function(){this.blur()
},new i({position:s.parentNode,input:s,button:I(s),element:A("cal-layer-"+e),count:2,today:T(r.now),conf:Q,between:[T(r.now),T(j(G,-1))],onShow:a[e].onShow,onSelectDay:a[e].onSelectDay,onChange:function(){var t=n();this.setDay(b(t))}}),s=null})}function w(){function e(e){""==e.value?(e.value=i,t.addClass(e,a)):t.removeClass(e,a)}var n=M("dist"),a=r.getClass("empty-value"),i=n.getAttribute("data-placeholder");n.onfocus=function(){this.value==i&&(this.value="",t.removeClass(this,a))},n.onblur=function(){e(this)
};var s=n.getAttribute("maxlength");t.on(n,"keyup",function(t){var e=this.value;for(e.replace(/[^\x00-\xFF]/g,"aa").length;e.replace(/[^\x00-\xFF]/g,"aa").length>s;)e=e.substr(0,e.length-1);e!=this.value&&(this.value=e),t=t||window.event;var n=t.keyCode||t.which;13==n&&(u(),this.blur())}),t.on(document,"click",function(e){var n=t.event.getTarget(e),a=M("dist"),i=I(a),s=t.dom.next(i);n==i?r.toggleLayer(s,a):r.hideLayer(s)}),t.on(t.dom.next(I(n)),"click",function(e){var n=t.event.getTarget(e);"A"==n.tagName&&(O=n.innerHTML,t.removeClass(M("dist"),a),M("dist").value=O,M("dist").focus())
}),e(n),n=null}function I(e){return t.dom.next(e)}function S(){B=k;var e=n.URL_DETAIL;e+=(e.indexOf("?")>-1?"&":"?")+"city=#{0}&cityid=#{1}&t=#{2}";var a=(new Date).getTime();r.request(t.format(e,encodeURIComponent(k),E,a),function(t){x([t.hotdistrict,t.hotbrand])})}function x(e){var n=["热门商圈：","热门品牌："],a=[];t.each(e,function(t,e){t&&t.length>0&&a.push(L(n[e],t,a.length))});var a=a.join("");if(a){var i="<button>&nbsp;</button><h3>&nbsp;</h3>";a=i+a}t.dom.next(I(M("dist"))).innerHTML=a}function L(e,n,a){var i=[];
t.each(n,function(e){i.push(t.format('<a data-id="#{1}">#{0}</a>',e.name,e.id))}),i=i.join("");var r='<li class="#{2}"><strong>#{1}</strong><p>#{0}</p></li>';return i=i?t.format(r,i,e,a?U("li"):""):""}var D=new r.Observable,A=r.queryByClass;r.addIniter(function(){e(),p(),c(),_("in"),_("out"),w(),o(),S(),m()});var k,E,O;D.get=s;var P,N,H,q,M=r.getInput,B="",R=-1,U=r.getClass,Y=U("sug-highlight"),F=[],j=r.afterDays,Q={day_text:["日","一","二","三","四","五","六"],cal_text:["年","月","日"],cal_class:U("ui-cal"),month_class_pre:U("ui-cal-month-pre"),month_class:U("ui-cal-month"),day_class:[U("ui-cal-month-prev"),U("ui-cal-month-cur"),U("ui-cal-month-next"),U("ui-cal-today"),U("ui-cal-day-hover"),U("ui-cal-day-selected"),U("ui-cal-day-disabled")],btn_class:[U("ui-cal-btn-prev-month"),U("ui-cal-btn-next-month")]},G=function(){return j(r.now,89)
}();return D}(),o='<li class="OP_LOG_OTHERS"><input type="checkbox" value="#{value}" /><label title="#{name}">#{name}</label></li>',u='<button title="关闭" data-command="close-filter-layer" class="OP_LOG_OTHERS"></button><h3>&nbsp;</h3><ul>#{0}</ul>',c=function(){function n(){var e=r.getClass,n=r.queryByClass,a=n("filter-trigger"),i=n("cond-hide");a&&(a.onclick=function(){t.removeClass(i,e("cond-hide")),t.addClass(this,e("hide"))},a=null)}function a(e,n){var a=r.last(e),s=a.getElementsByTagName("ul")[0],o=a.getElementsByTagName("b")[0],u=a.getElementsByTagName("div")[0];
s.innerHTML=i(n).options,u.innerHTML=i(n).layer,t[u.innerHTML?"removeClass":"addClass"](o,r.getClass("hide"))}function i(e){for(var n=[],a=[],i=0,r=e.length;r>i;i++)m>i?n.push(s(e[i])):a.push(s(e[i]));var o="";return a.length&&(o=t.format(u,a.join(""))),{options:n.join(""),layer:o}}function s(e){return t.format(o,e)}function c(n){t.each(e.q(r.getClass("cond-row")),n||Function())}function l(){var t={};return c(function(e){var n=e.getAttribute("data-filter");t[n]=d(e)}),t}function d(e){var n=[];return t.each(e.getElementsByTagName("input"),function(t){"checkbox"==t.type&&t.checked&&n.push(t.value)
}),n}function g(e){var n=!1;return t.each(e.getElementsByTagName("input"),function(t){"checkbox"==t.type&&(n=n||t.checked,t.checked=!1)}),n}function f(e,n){var a="removeClass";n&&(a="addClass"),t[a](e,r.getClass("unselect"))}function h(e){e.getAttribute("data-filter");var n=e.getElementsByTagName("B")[0],a=n&&t.dom.next(n);t.event.on(e,"click",function(e){var n,a=t.event.getTarget(e);switch(a.tagName){case"LABEL":var i=r.prev(a);i.checked=!i.checked,n=1;break;case"INPUT":n=1;break;case"STRONG":g(this)&&(n=1)
}if(n){var s=d(this);f(this.getElementsByTagName("strong")[0],s.length),v.fire("change",l())}}),t.on(document,"click",function(e){if(a){var i=t.event.getTarget(e);i==n?r.toggleLayer(a,i,"right"):"close-filter-layer"!=i.getAttribute("data-command")&&t.dom.contains(a,i)||r.hideLayer(a)}}),e=null}var v=new r.Observable;r.addIniter(function(){c(function(t){h(t)}),n()}),v.render=function(e){c(function(n){var i=n.getAttribute("data-filter"),s=e[i];if(s){a(n,s);var o="addClass";s instanceof Array&&s.length&&(o="removeClass"),t[o](n,r.getClass("hide"))
}})};var m=4;return v.reset=function(){c(function(t){g(t);var e=t.getElementsByTagName("strong")[0];f(e)})},v.get=l,v}(),l=function(){function e(e){t.each(r.queryByClass("sort").getElementsByTagName("a"),e||Function())}function n(){e(function(e,n){var a=e.getAttribute("data-orderby")||"";e.className=c[n],a==u&&(t.addClass(e,s),t.addClass(e,r.getClass("sort-"+o)))})}function a(){var e=this.getAttribute("data-orderby")||"",a=this.getAttribute("data-order")||"",s=1;u==e?t.dom.hasClass(this,r.getClass("sort-both"))?o="asc"==o?"desc":"asc":s=0:(o=a,u=e),n(),s&&i.fire("change",i.get())
}var i=new r.Observable,s=r.getClass("cur"),o="",u="",c=[];return i.get=function(){return{order:o,orderby:u}},i.reset=function(){o="",u="",n()},r.addIniter(function(){e(function(t,e){t.onclick=a,c[e]=t.className.replace(s,"")})}),i}(),d='<li data-outid="#{out_id}" class="#{last}"><div class="ecl-left_hotel-img"><a target="_blank" href="#{viewurl}" #{stats}><img width="" height="" src="#{imgsrc}" /><div></div></a></div><div class="ecl-left_hotel-intro"><h5><a target="_blank" href="#{viewurl}" #{stats}>#{title}</a><i>[#{star}]</i></h5><p>#{desc}</p></div><div class="ecl-left_hotel-rate">#{scorehtml}<a target="_blank" href="#{commenturl}" #{stats}>#{comment}条评论</a></div><div class="ecl-left_hotel-price"><em>#{price}</em><a target="_blank" class="ecl-left_hotel-link" href="#{viewurl}" #{stats}>查看详情</a></div></li>',g='<p><a target="_blank" href="#{commenturl}" #{stats} title="用户总体评分为#{score}分/5分"><em style="width:#{scorewidth}%"></em></a></p>',f='<a target="_blank" href="#{commenturl}" #{stats}>暂无评分</a>',h=function(){function e(){c=1;
var e=r.getClass,n=h("list-trigger");t.addClass(n,e("hide")),t.removeClass(h("pg"),e("cond-hide")),t.removeClass(h("list"),e("list-short"))}function a(e){for(var n,a=[],s=5,o=e.length,u=0;n=e[u];)n.price=n.price?"¥"+n.price+"起":"暂无报价",n.desc=n.desc?n.desc:"暂无酒店简介",n.stats=r.getStatsAttr({data:"id:"+n.id})||"",n.score>0?(n.scorewidth=Math.round(100*(n.score/s)),n.scorehtml=t.format(g,n)):n.scorehtml=t.format(f,n),n.last=u==o-1?"last":"",a[u++]=t.format(d,n);a=o?a.join(""):'<li class="ecl-left_hotel-nodata">抱歉，没有找到满足条件的酒店。您可以尝试更改搜索条件重新搜索！</li>',h("list").innerHTML=a,i(o)
}function i(e){var n=r.getClass,a=h("list-trigger"),i=h("list");c||(e>3?(t.removeClass(a,n("hide")),t.addClass(i,n("list-short"))):(t.addClass(a,n("hide")),t.removeClass(i,n("list-short"))))}function s(t){var e=bds.event.trigger||Function();e("ec.zhixin_refresh_right_hotel_list",{list:t.right_hotel,stats:t.stats}),e("ec.zhixin_refresh_right_hotel_brand",{list:t.right_brand,stats:t.stats})}function o(e){if(!e||!e.length)return!1;for(var n=t.dom.children(h("list")),a=0,i=e.length;i>a;a++){var s=n[a];if(s&&e[a].out_id==s.getAttribute("data-outid")){var o=r.last(s).getElementsByTagName("em")[0];
if(o){var u="¥"+e[a].price+"起";e[a].price||(u="暂无报价"),o.innerHTML=u}o=null,s=null}}}var u,c,l=new r.Observable,h=r.queryByClass;return r.addIniter(function(){c=0,require(["ecom/ui/pager"],function(t){u=new t({main:h("ui-pager"),page:n.PAGE-1,total:n.TOTALPAGE,prefix:r.getClass("ui-pager"),showAlways:0,lang:{prev:'<em class="ecl-left_hotel-ui-pager-icon-l">&nbsp;</em>上一页',next:'下一页<em class="ecl-left_hotel-ui-pager-icon-r">&nbsp;</em>',ellipsis:"..."}}),u.on("change",function(t){this.setPage(t.page),this.render(),r.scrollToDom(h("ctrl")),l.fire("change",{page:t.page})
}),u.render()});var t=h("list-trigger");t&&(t.onclick=e,t=null),l.fire("updatePrice")}),l.updatePrice=o,l.render=function(t,e){a(t),e&&s(e)},l.renderCount=function(t){h("info").getElementsByTagName("em")[0].innerHTML=t||0},l.get=function(){return{page:u&&u.getPage()||0}},l.setPager=function(e){if(u){u.setPage(e.page),u.total=e.totalPage,u.render();var n="addClass";e.totalPage>0&&(n="removeClass"),t[n](h("pg"),r.getClass("hide"))}},l}(),v=function(){function e(){u=1}function a(t){for(var e in t)t[e]instanceof Date&&(t[e]=r.formatDate(t[e],"yyyy-MM-dd"));
return t}var i={},o={};i.getStatsData=function(e){var n=t.extend({},o);return e&&"object"==typeof e&&(n=t.extend(n,e)),n};var u=0;i.request=function(a,i){e(),a.sessionID=n.SESSION_ID,a.originQuery=n.ORIGIN_QUERY,a.pssid=n.STATS_PSSID,a.t=(new Date).getTime(),a.page=a.page+1;var s=n.URL_QUERY;s+=(s.indexOf("?")>-1?"&":"?")+t.url.jsonToQuery(a,function(t){return/[^\x00-\xFF]/.test(t)?encodeURIComponent(t):t}),r.request(s,function(e){o=t.extend(o,e.stats||{}),o.page=e.page,t.dom.setAttr(r.queryByClass("main"),"data-click",r.getStatsAttr(o,!0)),e.rightdata=e.rightdata||{},e.rightdata.stats=t.extend({},o),e.page=e.page-1,i({list:e.hotel,filter:{district:e.cond_district,brand:e.cond_brand},count:e.count,rightdata:e.rightdata,pager:{page:e.page,totalPage:e.totalpage}})
})},i.requestPrice=function(e,a){e.sessionID=n.SESSION_ID,e.originQuery=n.ORIGIN_QUERY,e.pssid=n.STATS_PSSID,e.t=(new Date).getTime();var i=n.URL_PRICE;i+=(i.indexOf("?")>-1?"&":"?")+t.url.jsonToQuery(e),r.request(i,a)};var c={};return r.addIniter(function(){c=a(s.get()),o={sessionid:n.SESSION_ID,subqid:n.STATS_SUBQID,sid:n.STATS_SID}}),i.mergeOption=function(e,n,i,r){c=t.extend(c,a(e));var s=t.extend({},c);if(n)for(var o in n)s["cond_"+o]=n[o].join(",");return s=t.extend(s,i),s.page=r.page,s},i.handleQuery=a,i
}();s.on("change",function(t){var e={district:[],price:[],brand:[],star:[]},n={order:"",orderby:""},a={page:0},i=v.mergeOption(t,e,n,a);v.request(i,function(t){h.renderCount(t.count),h.setPager(t.pager),h.render(t.list,t.rightdata),c.render(t.filter),c.reset(),l.reset()})});var m;c.on("change",function(t){m&&clearTimeout(m);var e={},n=l.get(),a={page:0},i=v.mergeOption(e,t,n,a);i.bycondition=1,m=setTimeout(function(){v.request(i,function(t){h.renderCount(t.count),h.setPager(t.pager),h.render(t.list,t.rightdata)
})},300)});var y;l.on("change",function(t){y&&clearTimeout(y);var e=c.get(),n={},a={page:0},i=v.mergeOption(n,e,t,a);i.bycondition=1,y=setTimeout(function(){v.request(i,function(t){h.setPager(t.pager),h.render(t.list,t.rightdata)})},300)}),h.on("change",function(t){var e=c.get(),n={},a=l.get(),i=v.mergeOption(n,e,a,t);i.bycondition=1,v.request(i,function(t){h.render(t.list,t.rightdata)})}),h.on("updatePrice",function(){var t=v.handleQuery(s.get());t.updateQueue=n.UPDATE_QUEUE,v.requestPrice(t,function(t){h.updatePrice(t)
})}),function(){6==t.browser.ie&&r.addIniter(function(){var n=e.q(r.getClass("layer"));t.each(n,function(t){r.hideLayer(t)})})}(),r.init()});
</script>
{%/block%}
