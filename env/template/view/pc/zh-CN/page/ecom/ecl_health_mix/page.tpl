{%*公立医院卡片*%}{%extends 'c_base.tpl'%}
{%block name='content'%}
{%$debugon=0%}
<style type="text/css">
.ecl-health-left{font-size:12px;width:536px}.ecl-health-left .hidden{display:none}.ecl-health-left .c-showurl{margin-top:8px}.ecl-health-left .c-showurl .c-icon{margin-left:5px}.ecl-health-nav{margin-bottom:6px}.ecl-health-nav .ly-banner{height:30px;line-height:30px}.ecl-health-nav .nav-banner{height:30px;line-height:30px}.ecl-health-nav .nav-title{font-size:medium;width:456px;float:left;overflow:hidden}.ecl-health-poplist-wrapper{float:right;height:24px;line-height:24px;cursor:pointer;margin-top:4px}.ecl-health-poplist-wrapper input{border:1px solid #d8d8d8;border-top-color:#999;border-left-color:#b2b2b2;padding-left:6px;background:0;padding-right:25px;width:75px;*width:45px;cursor:pointer;height:24px;line-height:24px}
.ecl-health-poplist-wrapper i{color:#bfbfbf;font-style:normal;border-left:1px solid #d9d9d9;position:absolute;right:5px;*top:2px;width:18px;height:24px;line-height:24px;text-indent:-9999px;background-color:#fff;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/city-triangle.png') no-repeat center center}.ecl-health-poplist-wrapper .inbox{position:relative}#ecl-health-poplist-layer{left:-2000px}.ecl-health-pagelist-wrapper{border:1px solid #ebebeb;border-bottom:0;width:100%;box-shadow:#eee 1px 1px 1px 0}.ecl-health-empty-tip{text-align:center;line-height:30px;color:#666;background-color:#fff8e7}
.ecl-health-empty-tip a{color:#00C}.ecl-health-pagelist-pager{text-align:center;display:none;border-bottom:1px solid #f3f3f3;padding-top:1px;height:25px}.ecl-health-pagelist-pager .ecl-health-pager{*zoom:1;*margin-bottom:4px;vertical-align:middle}.ecl-health-queryUrl{color:#00c}.ecl-health-filter-list{padding:0;margin:0 40px 0 34px;_width:427px;list-style:none;overflow:hidden;padding-top:6px;*padding-top:5px;padding-bottom:7px}.ecl-health-filter-list li{line-height:30px}.ecl-health-filter-list .exclude a{color:#d8d8d8;cursor:text}
.ecl-health-filter-list .exclude a:hover{background:0}.ecl-health-filter{position:relative;padding:0 10px;_zoom:1}.ecl-health-filter .expand{height:auto!important}.ecl-health-filter-item{float:left;list-style:none;text-decoration:none;line-height:27px;white-space:nowrap;margin-right:7px}.ecl-health-filter-item a{color:#00c;cursor:pointer;padding:0 12px 1px 13px;*padding:2px 12px 0 13px;margin-right:6px;*white-space:nowrap}.ecl-health-filter-item b{color:#d7d7d7;font-weight:normal;cursor:default;display:inline-block;*display:inline;*zoom:1;width:1px}
.ecl-health-filters-more{height:16px;color:#000;cursor:pointer;position:absolute;z-index:79;top:11px;right:0;border:1px solid #FFF;padding:1px 6px;text-decoration:none}.ecl-health-filters-more:hover{border-color:#2c99ff}.ecl-health-filters-more-btn{line-height:16px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/health/img/health_right.png') no-repeat right -14px;padding-right:10px;pointer-events:none}.ecl-health-left .expand{height:auto}.ecl-health-filters-wrapper{position:relative;margin:0 8px;height:42px;width:auto;border-bottom:1px solid #f2f2f2;overflow:hidden;_zoom:1}
.ecl-health-filters-wrapper .filter-label{line-height:42px;margin:0;font-size:12px;position:absolute;top:0;left:0}.ecl-health-filters-wrapper .upDelta{background-position:right 6px}.ecl-health-filters-wrapper .selected a{background:#2c99ff;color:#FFF}.ecl-health-poplist{width:210px;position:absolute;z-index:1000;border:1px solid #ddd;background-color:#fff;padding:5px;font-size:12px;color:#555}.ecl-health-poplist a{text-decoration:none}.ecl-health-poplist-labels,.ecl-health-poplist-panels{list-style:none;margin-top:5px;border-top:1px dashed #dedede}
.ecl-health-poplist-close{color:#b4b4b4;font:bold 12px/1.2 'Comic Sans MS';padding:0 3px;position:absolute;right:3px;top:3px;display:none}.ecl-health-poplist-labels{border-top:1px dashed #ddd;border-bottom:1px solid #ddd;padding-top:8px;margin-top:5px}.ecl-health-poplist-labels li{border:1px solid #ddd;background-color:#fff;float:left;padding:3px 5px;margin-right:10px;margin-bottom:-1px;cursor:default;color:#0069ca}.ecl-health-poplist-labels .ecl-health-poplist-active{background-color:#e8edf1}
.ecl-health-poplist-panels li{display:none;float:left;line-height:18px}.ecl-health-poplist-panels .ecl-health-poplist-active{display:block}.ecl-health-poplist-panels a{color:#555;width:50px;display:inline-block;margin:5px 0;text-align:center;text-decoration:none}.ecl-health-poplist-panels a:hover,.ecl-health-poplist-panels a.selected{background:#2c99ff;color:#FFF}.ecl-health-left .health-clearfix:before,.ecl-health-left .health-clearfix:after{display:table;line-height:0;content:""}
.ecl-health-left .health-clearfix:after{clear:both}.ecl-health-pagelist-showall{display:block;line-height:28px;text-align:center;cursor:pointer;color:#00C;border-bottom:1px solid #f3f3f3;text-decoration:none}.ecl-health-pagelist-showall i{display:inline-block;text-decoration:underline;font-style:normal}.ecl-health-pagelist-showall b{font-weight:400;font-family:'宋体';text-decoration:none}.ecl-health-pagelist-item{padding:10px 0;margin:0 8px;border-bottom:1px solid #f3f3f3}.ecl-health-pagelist-item .pagelist-tags{float:right;margin-top:1px;color:#666;line-height:18px;text-align:right}
.ecl-health-pagelist-item .pagelist-location{float:right;width:130px;text-align:right;line-height:20px;height:20px;overflow:hidden}.ecl-health-pagelist-item .pagelist-location a{color:#666;padding:1px 0 1px 2px}.ecl-health-pagelist-item .pagelist-name{margin-right:5px;font-size:14px;color:#00c}.ecl-health-pagelist-item .pagelist-bottom{line-height:20px;min-height:15px;clear:both}.ecl-health-pagelist-item .pagelist-sublinks{margin-left:-5px}.ecl-health-pagelist-item .pagelist-sublinks a{padding:2px 5px}.ecl-health-pagelist-item .pagelist-title{padding-right:3px;_height:20px;margin-top:3px}
.ecl-health-pagelist-item .pagelist-title ul{margin:0;padding:0;overflow:hidden}.ecl-health-pagelist-item .pagelist-title li{float:left;list-style:none;line-height:19px}.ecl-health-pagelist-item .pagelist-title li li{float:none}.ecl-health-pagelist-item .pagelist-creative{margin-right:80px;padding:2px 0 3px 0;line-height:18px;font-size:13px}.ecl-health-pagelist-item .pagelist-creative em{font-style:normal;color:#c00}.ecl-health-pagelist-item .pagelist-tuiguang{color:#666;text-decoration:underline;white-space:nowrap;*word-break:keep-all;margin-left:6px}
.ecl-health-pagelist-item .pagelist-review{float:right;width:128px;background-position:0 -134px;text-align:right;overflow:hidden;line-height:17px;font-size:13px}.ecl-health-pagelist-item .pagelist-review a{float:right;margin-left:5px}.ecl-health-pagelist-item .icon-head{margin-right:1px;*vertical-align:middle}.ecl-health-pagelist-item .icon-qiao,.ecl-health-pagelist-item .icon-guahao{_padding-top:3px;margin-left:9px}.ecl-health-pagelist-item .icon-qiao a,.ecl-health-pagelist-item .icon-guahao a{color:#666}.ecl-health-pagelist-item .c-icon-v{*vertical-align:-2px}
.ecl-health-idcard-wrapper{height:18px;overflow:hidden}.ecl-health-idcard-expand .ecl-health-idcard{display:block}.ecl-health-idcard{_white-space:nowrap;background:#FFF;border:1px solid #CCC;color:#666;font-size:12px;line-height:20px;padding:5px 8px 6px;position:absolute;text-align:left;z-index:160;width:325px;box-shadow:0 2px 4px rgba(0,0,0,0.2)}.ecl-health-idcard .tip-title{color:#333}.ecl-health-idcard .tip-content{margin:0;_margin-top:3px;padding:0;white-space:nowrap;zoom:1}.ecl-health-idcard .tip-content li{line-height:20px}
.ecl-health-idcard .tip-content .no-ico{margin-left:19px}.ecl-health-idcard .tip-content .no-ico span{margin-right:5px}.ecl-health-idcard .tip-content .credit-link{margin-left:6px;text-decoration:none;color:#00C;border-bottom:1px solid #00C;line-height:12px}.ecl-health-idcard .tip-content .credit-link:active{color:red;border-bottom-color:red}.ecl-health-idcard .tip-content .pan-credit{margin:5px 0 3px;background:#f5f5f5;overflow:hidden}.ecl-health-idcard .tip-content .pan-credit-value{float:left;width:66px;height:66px;text-align:center}
.ecl-health-idcard .tip-content .pan-credit-value em{display:block;font-size:38px;line-height:44px;height:44px;color:#8e8d8d}.ecl-health-idcard .tip-content .pan-credit-value span{display:block;line-height:12px}.ecl-health-idcard .tip-content .pan-credit-level{overflow:hidden;*zoom:1;line-height:22px}.ecl-health-idcard .tip-content .pan-credit-level p{padding-left:20px}.ecl-health-idcard .tip-content .pan-credit-level .credit-selected{color:#2b2a2a;font-weight:bold;padding-left:0}.ecl-health-idcard .tip-content .pan-credit-level .c-icon{margin-right:11px}
.ecl-health-idcard .tip-content .ico-credit-selected{width:21px;height:18px;vertical-align:text-bottom;display:inline-block;*display:inline;*zoom:1;background:url('http://www.baidu.com/cache/aladdin/ui/honourCard/img/honourCard.png') no-repeat 3px 2px}.ecl-health-idcard .tip-content .credit-gray .c-icon-v1{background-position:2px -16px}.ecl-health-idcard .tip-content .credit-gray .c-icon-v2{background-position:-17px -16px}.ecl-health-idcard .tip-content .credit-gray .c-icon-v3{background-position:-36px -16px}.ecl-health-idcard .tip-content .c-icon-v-noborder{border-color:#f5f5f5}
.ecl-health-idcard .tip-content .c-icon-v-noborder:active{box-shadow:none;-webkit-box-shadow:none;-moz-box-shadow:none;-o-box-shadow:none}.ecl-health-idcard .tip-dir{background:url('http://www.baidu.com/cache/biz/ecom/health/EC_tip_dir.gif') no-repeat 5px 1px;width:100%;height:8px;position:absolute;top:-7px;left:7px}.ecl-health-idcard-wrapper .c-icon-v1,.ecl-health-idcard .c-icon-v1,.ecl-health-idcard-wrapper .c-icon-v2,.ecl-health-idcard .c-icon-v2,.ecl-health-idcard-wrapper .c-icon-v3,.ecl-health-idcard .c-icon-v3{border:1px solid #FFF;cursor:default;width:20px;height:16px;background:url('http://s1.bdstatic.com/r/www/cache/static/global/img/c-icon-sp_a45b4d35.png') no-repeat;_background:url('http://s1.bdstatic.com/r/www/cache/static/global/img/c-icon-sp_e29f2ad4.gif') no-repeat}
.ecl-health-idcard-wrapper .c-icon-v1,.ecl-health-idcard .c-icon-v1{background-position:2px 0}.ecl-health-idcard-wrapper .c-icon-v2,.ecl-health-idcard .c-icon-v2{background-position:-17px 0}.ecl-health-idcard-wrapper .c-icon-v3,.ecl-health-idcard .c-icon-v3{background-position:-36px 0}.ecl-health-idcard-wrapper:hover .c-icon-v1,.ecl-health-idcard-wrapper:hover .c-icon-v2,.ecl-health-idcard-wrapper:hover .c-icon-v3{border-color:#388bff}.ecl-health-guahao-wrapper .link-guahao{color:#666;text-decoration:underline;cursor:default}
.ecl-health-idcard-expand .ecl-health-guahaopop{display:block}.ecl-health-guahaopop{_white-space:nowrap;background:#FFF;border:1px solid #CCC;color:#666;display:none;font-size:12px;line-height:18px;padding:8px;position:absolute;text-align:left;z-index:160;margin-top:-8px;margin-left:44px;padding:8px 2px 10px 10px;box-shadow:4px 4px 2px #efefef;width:auto;_width:120px}.ecl-health-guahaopop .tip-title{color:#000;margin-bottom:0}.ecl-health-guahaopop .tip-content{margin:0;padding:0;white-space:nowrap;zoom:1}.ecl-health-guahaopop .tip-content li{background-repeat:no-repeat;background-position:0 center;padding-left:26px;margin-top:5px;font-size:13px}
.ecl-health-guahaopop .tip-content li a{color:#00C}.ecl-health-guahaopop .tip-content li:first-child{margin-top:3px}.ecl-health-guahaopop .tip-dir{background:url('http://www.baidu.com/cache/biz/ecom/health/EC_tip_dir.gif') no-repeat 0 -35px;width:10px;height:22px;position:absolute;top:6px;*top:3px;left:-6px}
</style>
{%strip%}
    {%*点击统计*%} 
{%$sessionid=$extData.sessionid%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}

{%*推广链接地址*%} 
{%$spreadLinkUrl='http://e.baidu.com/'%}

<div class="ecl-health-left" data-click="{'sessionid':'{%$sessionid|escape:'html'%}','subqid':'{%$subqid|escape:'html'%}','sid':'{%$sid|escape:'html'%}'}">

{%**----------nav-----------**%}
<div class="ecl-health-nav">
    {%**----------banner-----------**%}
    <div class="nav-banner">
        
        <div class="nav-title">
            <a class="ecl-health-queryUrl" href="{%$tplData.queryUrl|escape:'html'%}" target="_blank">{%$tplData.queryTitle%}</a>
        </div>

        
        <div class="ecl-health-poplist-wrapper">
            <div class="inbox">
                <label for="ecl-health-province">
                    <i>▼</i>
                    <input type="text" id="ecl-health-province" value="{%$tplData.provName|escape:'html'%}" 
                    class="ecl-health-poplist-select OP_LOG_BTN" 
                    data-click="{'fm':'beha', 'btn-name':'poplist'}" readonly='true' onfocus="this.blur()"/>  
                </label>
            </div>
			<div id="ecl-health-poplist-layer"></div>	
        </div>
        
        
    </div>
    {%**----------end:banner-----------**%}

   
</div>
{%**----------end:nav-----------**%}

{%**----------pagelist-----------**%}
<div class="ecl-health-pagelist-wrapper">



{%**----------filters -----------**%}

{%foreach from=$tplData.filters key=idy item=f%}
    {%if $f.tagName=='region'%}
        {%$region_arr=$f%}
    {%/if%}
{%/foreach%}
{%$f=$region_arr%}
<div class="ecl-health-filters-wrapper{%if empty($f.tags)%} hidden{%/if%}">
    <a href="javascript:;" class="ecl-health-filters-more hidden OP_LOG_BTN" data-click="{'fm':'beha','btn-name':'filter-more'}">
        <div class="ecl-health-filters-more-btn">展开</div>
    </a>

    <div class="ecl-health-filter health-clearfix">
        <b class="filter-label">{%$f.tagLabel|escape:'html'%}:
        </b>
        <ul class="ecl-health-filter-list" data-field="{%$f.tagName|escape:'html'%}">
            <li class="ecl-health-filter-item selected OP_LOG_BTN" data-id="-1" data-click="{'fm':'beha','id':'-1','btn-name':'{%$f.tagName|escape:'html'%}'}">
            <a>全部</a>
            <b>|</b>
             </li>
            {%$item_num=count($f.tags)%}
            {%foreach from=$f.tags key=idx item=tag%}
                 <li class="ecl-health-filter-item OP_LOG_BTN" data-id="{%$tag.id|escape:'html'%}" data-click="{'fm':'beha','id':'{%$tag.id|escape:'html'%}','btn-name':'{%$f.tagName|escape:'html'%}'}"> 
                     <a>{%$tag.name|escape:'html'%}</a>
                     {%if $item_num neq ($idx+1)%}<b>|</b>{%/if%}
                 </li>
            {%/foreach%}
        </ul>
    </div>

</div>


{%**----------end: filters-----------**%}

    
<div class="ecl-health-pagelist" id="ecl-health-pagelist">

{%$max_idx=count($tplData.hospitals)-1%}

{%for $idx=0 to $max_idx%}
{%$h=$tplData.hospitals[$idx]%}

{%**--判断是否首行--**%}
{%if $idx eq 0%}
<div class="ecl-health-pagelist-item first" data-hid="{%$h.hospitalid|escape:'html'%}">
{%else%}
<div class="ecl-health-pagelist-item" data-hid="{%$h.hospitalid|escape:'html'%}">
{%/if%}

    <div class="pagelist-head">

        {%*--评论栏--*%}
        <div class="pagelist-review">
            {%if $h.review%}


            <a href="{%$h.review.link|escape:'html'%}" target="_blank">
                {%if $h.review.num > 0%}
                    {%if $h.review.num >= 10000%}
                        {%floor($h.review.num / 10000)|escape:'html'%}万条评论
                    {%elseif $h.review.num >= 1000%}
                        {%floor($h.review.num / 1000)|escape:'html'%}千条评论
                    {%else%}
                        {%$h.review.num|escape:'html'%}条评论
                    {%/if%}
                {%else%}
                    我要评论 
                {%/if%}
            </a>

            {%*增加rate，兼容上一版本*%}
            {%if isset($h.review.rate)%}
            {%$ratePercent=$h.review.rate*20%}
            {%else%}
            {%$ratePercent=$h.review.star*20%}
            {%/if%}
            <i class="c-icon c-icon-star-gray">
                <i class="c-icon c-icon-star" style="width:{%$ratePercent|escape:'html'%}%;"></i>
            </i>
            

            {%/if%}
        </div>

        {%*--标题栏--*%}
        <div class="pagelist-title">
            <ul>
                <li class="pagelist-name"{%if $debugon%} data-debug="{%$h.debug|escape:'html'%}"{%/if%}>
                    {%if $tplData.noEscape%}
                    <a data-click="{'hid':'{%$h.hospitalid|escape:'html'%}','idx':'{%$idx|escape:'html'%}'}" href="{%$tplData.hospitals[$idx].links.homePage%}"  target="_blank">
                        {%$tplData.hospitals[$idx].redname%}
                    </a>
                    {%else%}
                    <a data-click="{'hid':'{%$h.hospitalid|escape:'html'%}','idx':'{%$idx|escape:'html'%}'}" href="{%$h.links.homePage|escape:'html'%}"  target="_blank">
                        {%$h.redname|escape:'html'|highlight:0%}
                    </a>
                    {%/if%}
                </li>


                {%*满足一个就显示V卡图标*%}
                {%if $h.idcard && ($h.idcard.certification || ($h.spread && $h.idcard.url && $h.idcard.creditLevel) )%}
                <li class="ecl-health-idcard-wrapper" data-hid="{%$h.hospitalid|escape:'html'%}">
                    <span class="vcard-icon c-icon c-icon-v{%$h.idcard.creditLevel|escape:'html'%} OP_LOG_BTN"
                          data-click="{'fm':'beha','btn-name':'icard', 'hid':'{%$h.hospitalid|escape:'html'%}'}"
                          data-v='{
                              "title":"{%$h.oriName|escape:'html'%}",
                              "content":{
                                "spread":"{%$h.spread|escape:'html'%}",
                                "url":"{%$h.idcard.url|escape:'html'%}",
                                "certification":"{%$h.idcard.certification|escape:'html'%}",
                                "alicense":"{%$h.idcard.alicense|escape:'html'%}",
                                "creditLevel":"{%$h.idcard.creditLevel|escape:'html'%}",
                                "creditValue":"{%$h.idcard.creditValue|escape:'html'%}"
                              }
                          }'>
                    </span>
                </li>
                {%/if%}

                


                {%if $h.links.shangqiao%}
                    <li class="icon-qiao">
                        <i class="c-icon c-icon-qa icon-head"></i>
                        <a href='{%$h.links.shangqiao|escape:'html'%}'  data-click="{'btn-name':'shangqiao', 'hid':'{%$h.hospitalid|escape:'html'%}'}" target="_blank">咨询</a>
                     </li>
                {%*商桥浮出层链接*%}
                {%elseif $h.links.shangqiaolinks%}
                <li class="icon-qiao ecl-health-guahao-wrapper">
                    <div class="ecl-health-guahaopop">
                        <strong class="tip-title">您可以进入以下网站进行咨询：</strong>
                        <div class="tip-content">
                            <ul>
                                {%foreach $h.links.shangqiaolinks as $item%}
                                <li style="background:url({%$item.logo%}) 0 0 no-repeat">
                                    <a target="_blank" href="{%$item.url%}">{%$item.title%}</a>
                                </li>
                                {%/foreach%}
                            </ul>
                        </div>
                        <i class="tip-dir"></i>
                    </div>
                    <i class="c-icon c-icon-qa icon-head"></i>
                    <span class="link-guahao" data-click="{'btn-name':'shangqiao', 'hid':'{%$h.hospitalid|escape:'html'%}'}">咨询</span>
                </li>
                {%/if%}
    
                
                {%if $h.links.guahao%}
                <li class="icon-guahao">
                    <i class="c-icon c-icon-register icon-head"></i>
                    <a href='{%$h.links.guahao|escape:'html'%}'  data-click="{'btn-name':'guahao', 'hid':'{%$h.hospitalid|escape:'html'%}'}" target="_blank">挂号</a>
                </li>
                {%elseif $h.links.guahaolinks%}
                <li class="icon-guahao ecl-health-guahao-wrapper">
                    <div class="ecl-health-guahaopop">
                        <strong class="tip-title">您可以进入以下网站进行挂号：</strong>
                        <div class="tip-content">
                            <ul>
                                {%foreach $h.links.guahaolinks as $item%}
                                <li style="background:url({%$item.logo%}) 0 0 no-repeat">
                                    <a target="_blank" href="{%$item.url%}">{%$item.title%}</a>
                                </li>
                                {%/foreach%}
                            </ul>
                        </div>
                        <i class="tip-dir"></i>
                    </div>
                    <i class="c-icon c-icon-register icon-head"></i>
                    <span class="link-guahao" data-click="{'btn-name':'guahao', 'hid':'{%$h.hospitalid|escape:'html'%}'}">挂号</span>
                </li>
                {%/if%}

            </ul>
        </div>
        

    </div>

    <div class="pagelist-body">

        {%*--tag栏--*%}
        {%if isset($h.tag)%}
        <div class="pagelist-tags">
            {%explode(',', $h.tag)|@implode:'<br>'%}
        </div>
        {%/if%}

        {%*--创意栏--*%}
        <div class="pagelist-creative">
            {%if $tplData.noEscape%}
                {%$tplData.hospitals[$idx].creative%}
            {%else%}
                {%$h.creative|escape:'html'|highlight:0%}
            {%/if%}
            {%if $h.spread==1%}
                <a target="_blank" data-click="{'btn-name':'tuiguang'" class="pagelist-tuiguang" href="{%$spreadLinkUrl%}">推广</a>
            {%/if%}
        </div>

    </div>

    {%*--底部tag栏--*%}
    <div class="pagelist-bottom">

        <div class="pagelist-location">
            <i class="c-icon c-icon-location"></i>
            <a  href="{%$h.position.url|escape:'html'%}"  target="_blank">
                {%$h.position.addr|escape:'html'%}
             </a>
        </div>
        <div class="pagelist-sublinks">
            {%if $h.links.introLink %}
                <a  href="{%$h.links.introLink|escape:'html'%}"  target="_blank">医院介绍</a> 
                {%if $h.links.labLink or $h.links.expertLink %}|{%/if%}
            {%/if%}
            
            {%if $h.links.labLink %}
            <a  href="{%$h.links.labLink|escape:'html'%}"  target="_blank">科室列表</a> 
                {%if $h.links.expertLink %}|{%/if%}
            {%/if%}
            
            {%if $h.links.expertLink %}
            <a  href="{%$h.links.expertLink|escape:'html'%}"  target="_blank">专家列表</a>
            {%/if%}
        </div> 

    </div>



</div>
{%/for%}

</div>

{%**----------end:pagelist-----------**%}
<a target="_blank" href="{%$tplData.moreUrl%}" class="ecl-health-pagelist-showall" data-click="{'fm':'beha','btn-name':'showall'}" >
    <i>查看全部相关医院<b>&gt;&gt;</b></i>
</a>

</div>

{%*--end ecl-helth-left-*%}
<div class="c-showurl">
    jiankang.baidu.com 
    <a href="http://baozhang.baidu.com/guarantee/" target="_blank" class="c-icon c-icon-bao"></a>
</div>
</div>
{%/strip%}
<script>
A.setup('pageData', {
    'spreadLinkUrl': '{%$spreadLinkUrl%}',
    'ajaxAction': "{%$tplData.ajaxAction%}",
    {%if !empty($tplData.provList)%}
    "provList": {%json_encode($tplData.provList)%},
    {%/if%}
    "provName": "{%$tplData.provName%}",
    "provID": "{%$tplData.provID%}",
    "publicHospitals":"{%$tplData.publicHospitals%}",
    "originQuery": "{%$tplData.originQuery%}",
    "mixSid": "{%$tplData.mixSid%}",
    "srcID":"{%$tplData.srcID%}",
    "subqid":"{%$tplData.subqid%}",
    "sessionID":"{%$tplData.sessionID%}",
    {%if $debugon%}
    "debugon":"1",
    {%/if%}
    {%if !empty($tplData.paramData)%}
    "paramData": {%$tplData.paramData|@json_encode%}
    {%/if%}
});
A.setup('anti', function(doc){
    var Anti=function(n){function e(e){var t=window.event||e;for(p=t.target||t.srcElement;p&&"A"!=p.tagName;)if(p=p.parentNode,p===n)return!1;m=(new Date).getTime(),f=9999,v=t.clientX,d=t.clientY,l=E?m-E:0,i()&&o()}function t(){g=(new Date).getTime(),f=g-m,i()&&o()}function r(n){var e=window.event||n;T+=1,s||(s=e.clientX),w||(w=e.clientY),E=(new Date).getTime()}function i(){if(c=0,h=/\?url\=([^\.]+)\./.exec(p.href)){for(var n=0;T*L%99+9>n;++n)c+=h[1].charCodeAt(f*n%h[1].length);return!0}return!1}function o(){var n="&ck="+[c,T,f,v,d,s,w,l].join(".");
if(p.href){var e=p.href;-1==e.indexOf("&ck=")?p.href+=n:p.href=e.replace(/&ck=[\w.]*/,n)}}function u(e,t){for(var r,i=0;r=e[i];i++)window.attachEvent?n.attachEvent("on"+r,t[i]):window.addEventListener?n.addEventListener(r,t[i],!1):n["on"+r]=t[i],b[r]=t[i]}function a(e){for(var t,r=0;t=e[r];r++)window.detachEvent?n.detachEvent("on"+t,b[t]):window.removeEventListener?n.removeEventListener(t,b[t],!1):n["on"+t]=null,b[t]=null}var c,f,v,d,s,w,l,h,m,E,g,p,L=0,T=0;f=v=d=s=w=l=h=m=E=g=p=0;var b={};return{setTimesign:function(n){return L=n,this
},bind:function(){return u(["mouseover","mousedown","mouseup"],[r,e,t]),this},unbind:function(){return a(["mouseover","mousedown","mouseup"]),this},dispose:function(){n&&(this.unbind(),n=null,b=null)}}};
    var anti = new Anti( doc.getElementById('ecl-health-pagelist'));
    anti.setTimesign( +"{%$tplData.signTime%}" );
    anti.bind();
    return anti;
}(document));
</script>
<script>
    A.init(function() {
        var card = this;
        var $ = window.$;
        var isDisposed = false;
        var health;
        card.dispose = function() {
            if(!isDisposed && health) {
                isDisposed = true;
                health.anti.dispose();
                health.dispose();
                health = null;
            }
        };
        require.config({
            paths : {
                'ecom/ui': 'http://s1.bdstatic.com/r/www/cache/biz/ecom/health/ui/20131227'
             }
        });
        require(['ecom/ui/lib'],function(lib){
            function qq(n,e){return"string"==typeof n?e?lib.q(n,e)[0]:card.qq(n):n}function q(n){return card.q(n)}function contains(n,e){return lib.dom.contains(n,e)}lib.format=function(n,e){n=String(n);var t=Array.prototype.slice.call(arguments,1),r=Object.prototype.toString;return t.length?(t=1===t.length?null!==e&&/\[object Array\]|\[object Object\]/.test(r.call(e))?e:t:t,n.replace(/#\{(.+?)\}/g,function(n,e){var i=t[e];return"[object Function]"===r.call(i)&&(i=i(e)),"undefined"==typeof i?"":i})):n},lib.parseJSON=function(n){return new Function("return ("+n+")")()
},lib.remove=function(n){return n.parentNode.removeChild(n)},lib.getAttr=function(n,e){return $(lib.g(n)).attr(e)},lib.setAttr=function(n,e,t){return $(lib.g(n)).attr(e,t)},lib.children=function(n){return n=lib.g(n),$(n).children().get()},lib.ajax=function(n,e,t){$.ajax({type:"GET",url:n,data:e,dataType:"json",success:t})},lib.encodeHTML=function(n){return String(n).replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/"/g,"&quot;").replace(/'/g,"&#39;")},lib.decodeHTML=function(n){var e=String(n).replace(/&quot;/g,'"').replace(/&lt;/g,"<").replace(/&gt;/g,">").replace(/&amp;/g,"&");
return e.replace(/&#([\d]+);/g,function(n,e){return String.fromCharCode(parseInt(e,10))})},document.addEventListener||(lib.on=function(n,e,t){$(lib.g(n)).on(e,t)},lib.un=function(n,e,t){$(lib.g(n)).off(e,t)});
            function initPopList(e,t){var n=qq("ecl-health-poplist-select");n&&(n.value=health.pageData.provName),require(["ecom/ui/Poplist-20131227"],function(n){function r(e){var t=e.event,n=lib.getTarget(t);this.setTarget("INPUT"==n.tagName&&"text"==n.type?n:n.previousSibling)}function i(e){var t=health.filter;if(t){var n={field:"province",provID:e.id};this.pick(lib.getTarget(e.event)),t.onchange(n)}}var o=new n({prefix:"ecl-health-poplist",triggers:q("ecl-health-poplist-select"),title:"选择医院所在地区",dir:"br",autoFill:!1,width:120,main:"ecl-health-poplist-layer",onBeforeShow:r,onClick:i});
e&&(lib.each(e,function(e){e.id==t&&(e.selected=1)}),o.fill(e)),o.render(),health.on("dispose",function(){o.dispose()})})}
            function HealthFilter(e){function t(e){var t=lib.children(e),n=lib.getAttr(e,"data-field");o[n]||(o[n]=e.parentNode),s.push(n),r[n]=-1,c[n]={};var l=[];lib.each(t,function(e){var t=lib.getAttr(e,"data-id");c[n][t]=e,l.push(t),lib.on(e,"click",i),lib.hasClass(e,"selected")&&(c[n].selected=e)}),d.push(l.join(","))}function n(){var e=new Array(s.length);return lib.each(s,function(t,n){e[n]=r[t]}),e.join(",")}function i(){var e=this;if(!lib.hasClass(e,"exclude")){var t=lib.getAttr(e,"data-click");if(t){t=lib.parseJSON(t);
var i=t["btn-name"],l=t.id;if(i&&l){r[i]=l;var o=c[i].selected;o&&lib.removeClass(o,"selected"),c[i].selected=e,lib.addClass(e,"selected");var s=n(),d={target:e,field:i,id:l,value:s};s!==u&&(u=s,a.onchange(d))}}return!1}}var l=50,a=this,r={},o={},c={},s=[],u="",d=[];a.tagList=d;var f=qq("ecl-health-filters-more");f&&lib.on(f,"click",function(){var t=qq("ecl-health-filters-wrapper"),n=lib.hasClass(t,"expand"),i=qq("ecl-health-filters-more-btn"),l="";n?(lib.removeClass(t,"expand"),lib.removeClass(i,"upDelta"),l="展开"):(lib.addClass(t,"expand"),lib.addClass(i,"upDelta"),l="收起"),e.setText(i,l)
}),a.updateExpando=function(){var t=qq("ecl-health-filters-more");if(t){var n=q("ecl-health-filter-list");if(n.length>1||n[0].offsetHeight>l){var i=qq("ecl-health-filters-wrapper");lib.removeClass(i,"expand");var a=qq("ecl-health-filters-more-btn");lib.removeClass(a,"upDelta"),e.setText(a,"展开"),lib.removeClass(t,"hidden")}else lib.addClass(t,"hidden")}},a.init=function(){var e=q("ecl-health-filter-list");lib.each(e,function(e){t(e)});var n=qq("ecl-health-filters-more");n&&(e.length>1||e[0].offsetHeight>l?lib.removeClass(n,"hidden"):lib.addClass(n,"hidden"))
},a.onchange=function(){},a.hideField=function(e){var t=o[e];t&&lib.g(t)&&lib.hide(t)},a.showField=function(t){var n=o[t];n&&e.show(n)},a.buildField=function(e){var t="<li class=\"ecl-health-filter-item OP_LOG_BTN #{state}\" data-id=\"#{id}\" data-click=\"{fm:'beha',id:#{id},'btn-name':'#{field}'}\"><a>#{name}</a><b>#{seg}</b></li>",n=[],i=e.tags;return i.unshift({id:-1,name:"全部"}),e.value||(e.value=-1),lib.each(i,function(l,a){l.field=e.tagName,l.id==e.value&&(l.state="selected"),a<i.length-1&&(l.seg="|"),n.push(lib.format(t,l))
}),n.join("")},a.updateField=function(e){var n=e.tagName,i=o[n],l=lib.children(i);if(l&&l.length>0){var r=l[1],c=a.buildField(e);c&&c.length>3&&(r.innerHTML=c),t(r)}},a.update=function(t){var n=t.exclude,i=qq("ecl-health-filters-wrapper"),l=t.filters;if(l&&l.length>0){d=[],s=[];var r;lib.each(l,function(e){return"region"==e.tagName?(r=e,!1):void 0}),r&&r.tags[0]?(a.updateField(r),lib.removeClass(i,"hidden"),setTimeout(a.updateExpando,0)):lib.addClass(i,"hidden"),e.model.params.tagList=d.join(";")}else if(n){var o=q("exclude");
lib.each(o,function(e){lib.removeClass(e,"exclude")});for(var u in n)if("region"==u)for(var f=n[u],h=0,v=f.length;v>h;h++){var p=f[h],b=c[u][p];b&&lib.addClass(b,"exclude")}}}}
            function Template(){this.bind=function(e,t){return t.replace(/\$\{([\w.]+)\}/g,function(t,n){for(var i,l=n.split("."),r=e;null!=r&&(i=l.shift());)r=r[i];return null!=r?r:""})}}
            var vCard=function(){function e(){return"<li>具有医疗执业许可证</li>"}function t(e){return"<li>"+e+"</li>"}function i(e){return'<li>已获得<a class="credit-link" target="_blank" href="'+e+'">'+'百度信誉<i class="c-icon c-icon-v-noborder"></i>等级评定'+"</a>"+"</li>"}function n(e,t){for(var i=["","(0&nbsp;-40) 基础信誉积累，可放心访问","(41-90) 良好信誉积累，可安心交易","(91+&nbsp;&nbsp;) 充分信誉积累，可持续依赖"],n="",a=1;3>=a;a++)n+='<p class="'+(e==a?"credit-selected":"credit-gray")+'">'+(e==a?'<i class="ico-credit-selected"></i>':"")+'<i class="c-icon c-icon-v'+a+' c-icon-v-noborder"></i>'+i[a]+"</p>";
var r="";return-1!=t&&(r='<div class="pan-credit-value"><em>'+t+"</em><span>成长值</span></div>"),'<li><div class="pan-credit">'+r+'<div class="pan-credit-level">'+n+"</div>"+"</div>"+"</li>"}function a(){return'<div class="ecl-health-idcard OP_LOG_BTN" style="left:'+s+'px"></div>'}function r(a){var r=[],l=a.title||"百度提示您，该网站",c=a.content||{};return c.url&&r.push(i(c.url)),c.creditLevel&&r.push(n(+c.creditLevel,+c.creditValue)),c.certification&&r.push(t(c.certification)),c.alicense&&r.push(e()),'<strong class="tip-title">'+l+"："+"</strong>"+'<div class="tip-content">'+'<ul class="health-idcard-content">'+r.join("")+"</ul>"+"</div>"+'<i class="tip-dir"></i>'
}function l(){d=setTimeout(function(){o.css("left",s).removeClass("ecl-health-idcard-reverse")},200)}function c(){d&&clearTimeout(d),d=null}var o,d,s=-600;return{bind:function(e){e=e||{};var t=e.selector||".vcard-icon",i=$(e.viewport||document.body),n=$(e.container||document.body),d=$(e.parent||document.body);o||(o=$(a()).appendTo(d)),n.data("bounded")||(n.delegate(t,"mouseenter",function(){c(),i.offset();var e=i.outerWidth(),t=$(this).outerWidth(),n=$(this).outerHeight(),a=$(this).offset(),l=$(this).attr("data-v");
l=lib.decodeHTML(l),l=lib.parse(l),o.html(r(l));var d=o.outerWidth()-10,s=a.left-10;e-a.left-t/2<d&&(s=a.left+t/2-d+10,o.addClass("ecl-health-idcard-reverse")),o.css({top:a.top+n+8,left:s}),$(this).addClass("ecl-health-idcard-expand")}).delegate(t,"mouseleave",function(){$(this).removeClass("ecl-health-idcard-expand"),l()}),n.data("bounded",!0)),o.data("bounded")||(o.mouseenter(function(){c()}).mouseleave(l),o.data("bounded",!0))},dispose:function(e){o&&(o.off("mouseenter").off("mouseleave"),o.remove(),o=null);
var t=e.selector||".vcard-icon",i=$(e.container||document.body);i.off("mouseenter",t).off("mouseleave",t)}}}();vCard.vcardIcon={tpl:"<span data-click=\"{'fm':'beha','btn-name':'icard', 'hid':'${hospitalid}'}\" class=\"vcard-icon c-icon c-icon-v${vCardLevel}\" data-v='${vcardData}'></span>",render:function(e,t,i){if(e&&(e.certification||t.spread&&e.url&&e.creditLevel)){i=i||this.tpl;var n={};return n.hospitalid=t.hospitalid,n.vCardLevel=e.creditLevel||"",n.vcardData=lib.stringify({title:lib.encodeHTML(t.oriName||""),content:{spread:t.spread||"",url:lib.encodeHTML(e.url||""),certification:lib.encodeHTML(e.certification||""),alicense:e.alicense,creditLevel:e.creditLevel,creditValue:e.creditValue}}),i.replace(/\$\{([\w.]+)\}/g,function(e,t){return null!=n[t]?n[t]:""
})}return!1}};
            var guahaoCard={bindEvent:function(){for(var e=q("ecl-health-guahao-wrapper"),t=0,i=e.length;i>t;t++){var n=e[t];if(n){var a=lib.children(n)[0];a&&lib.hasClass(a,"ecl-health-guahaopop")&&(lib.on(n,"mouseenter",this.showCard),lib.on(n,"mouseleave",this.hideCard))}}},showCard:function(){var e=this,t="ecl-health-idcard-expand";lib.hasClass(e,t)||lib.addClass(e,t)},hideCard:function(e){var t=this,i=e.relativeTarget||e.relatedTarget||e.toElement,n="ecl-health-idcard-expand";!contains(t,i)&&lib.hasClass(t,n)&&lib.removeClass(t,n)
}};
            function getTmpl(){return{review:'<a href="${review.link}" target="_blank">${reviewText}</a><i class="c-icon c-icon-star-gray"><i class="c-icon c-icon-star" style="width:${review.ratePercent}%"></i></i>',pageitem:'<div class="ecl-health-pagelist-item"><div class="pagelist-head"><div class="pagelist-review">${reviewHtml}</div><div class="pagelist-title"><ul><li class="pagelist-name" ${debugon}> <a href="${links.homePage}" target="_blank">${redname}</a></li><li class="ecl-health-idcard-wrapper" data-hid="${hospitalid}">${vCardText}</li>${vCardMoreLink}</ul></div></div><div class="pagelist-body">${pagelistTags}<div class="pagelist-creative">${creative}</div></div><div class="pagelist-bottom">${locationHTML}<div class="pagelist-sublinks">${sublinks}</div></div></div>'}
}
            function HealthModel(e){function t(e,t){if(e)for(var i in e)void 0!==e[i]&&(t[i]=e[i])}var i={controller:"bws",action:"query",pageID:1,provID:1,field:"region",tags:"-1,-1,-1,-1"},a=this;a.params={},this.init=function(e){var n={pageID:e.pageID||1,originQuery:e.originQuery,sessionID:e.sessionID,provID:e.provID,srcID:e.srcID,mixSid:e.mixSid,action:e.ajaxAction};t(e.paramData,n),t(n,i),t(i,a.params)},this.query=function(i){t(i,a.params),lib.ajax(e.env.indexDS,a.params,function(t){isDisposed||t&&e.update(t)})},e.update=function(t){t&&(e.filter.update(t.data),e.view.update(t.data),e.view.fixUI(),e.anti.setTimesign(+t.data.signTime),guahaoCard.bindEvent())
}}
            function HealthView(e){function i(i){var a=[],n=e.temp;i.review&&(void 0===i.review.rate&&(i.review.rate=i.review.star),i.review.ratePercent=20*i.review.rate||20);var r=i.links;if(r){r.introLink&&a.push('<a href="'+r.introLink+'" target="_blank">医院介绍</a>'),r.labLink&&a.push('<a href="'+r.labLink+'" target="_blank">科室列表</a>'),r.expertLink&&a.push('<a href="'+r.expertLink+'" target="_blank">专家列表</a>');var o="";r.shangqiao?o+='<li class="icon-qiao"><i class="c-icon c-icon-qa icon-head"></i><a href="'+r.shangqiao+"\"  data-click=\"{'btn-name':'shangqiao', 'hid':'"+i.hospitalid+'\'}" target="_blank">咨询</a>'+"</li>":r.shangqiaolinks&&(o+='<li class="icon-qiao ecl-health-guahao-wrapper">'+l.getShangQiaoHTML(r.shangqiaolinks)+'<i class="c-icon c-icon-qa icon-head"></i>'+'<span class="link-guahao"'+" data-click=\"{'btn-name':'shangqiao', 'hid':'"+i.hospitalid+"'}\" >咨询</span>"+"</li>"),r.guahao?o+='<li class="icon-guahao"><i class="c-icon c-icon-register icon-head"></i><a href="'+r.guahao+"\"  data-click=\"{'btn-name':'guahao', 'hid':'"+i.hospitalid+'\'}" target="_blank">挂号</a>'+"</li>":r.guahaolinks&&(o+='<li class="icon-guahao ecl-health-guahao-wrapper">'+l.getGuaHaoHTML(r.guahaolinks)+'<i class="c-icon c-icon-register icon-head"></i>'+'<span class="link-guahao"'+" data-click=\"{'btn-name':'guahao', 'hid':'"+i.hospitalid+"'}\" >挂号</span>"+"</li>"),i.vCardMoreLink=o
}i.sublinks=a.join("| ");var c=i.review;if(c){var s="";c.num>0?(s=c.num,c.num>=1e4?s=Math.floor(c.num/1e4)+"万":c.num>=1e3&&(s=Math.floor(c.num/1e3)+"千"),s+="条评论"):s="我要评论",i.reviewText=s,i.reviewHtml=n.bind(i,t.review)}var d=vCard.vcardIcon.render(i.idcard,i);d!==!1&&(i.vCardText=d),i.position&&(i.locationHTML='<div class="pagelist-location"><i class="c-icon c-icon-location"></i><a href="'+i.position.url+'" target="_blank">'+i.position.addr+"</a></div>"),i.creative&&+i.spread&&(i.creative+='<a target="_blank" data-click="{\'btn-name\':\'tuiguang\'" class="pagelist-tuiguang" href="'+e.pageData.spreadLinkUrl+'">推广</a>'),i.tag&&(i.pagelistTags='<span class="pagelist-tags">'+i.tag.split(",").join("<br>")+"</span>"),e.pageData.debugon&&(i.debugon=' data-debug="'+(i.debug||"")+'"')
}function a(e,i){var a="";lib.each(e,function(e){a+=lib.format('<li style="background:url(#{logo}) 0 2px no-repeat"><a target="_blank" href="#{url}">#{title}</a></li>',e)});var t='<div class="ecl-health-guahaopop"><strong class="tip-title">您可以进入以下网站进行'+i+"：</strong>"+'<div class="tip-content">'+"<ul>"+a+"</ul>"+"</div>"+'<i class="tip-dir"></i>'+"</div>";return t}var t=e.temps,n=[],l=this;l.init=function(){l.fixUI()},l.update=function(a){if(a&&(n=a.hospitals,lib.extend(e.pageData,a)),a.queryTitle){var l=qq("ecl-health-queryUrl");
l.innerHTML=a.queryTitle}if(a.queryUrl){var l=qq("ecl-health-queryUrl");l.href=a.queryUrl}var r=e.temp,o=[];0===n.length&&o.push('<div class="ecl-health-empty-tip">未找到您所描述的精确信息</div>');for(var c=0,s=n.length;s>c;c++){var d=n[c];i(d),o.push(r.bind(n[c],t.pageitem))}qq("ecl-health-pagelist").innerHTML=o.join("")},l.fixUI=function(){if(e.pageData.pageNum<2){var i=q("ecl-health-pagelist-item");i&&(i=i.pop(),i.style.border="0px")}-1==e.pageData.provID&&e.filter?e.filter.hideField("region"):e.filter&&e.filter.showField("region")
},e.show=function(e){var e=qq(e);e&&(e.style.display="block")},e.setText=function(e,i){e=qq(e),e&&lib.browser.ie?e.innerHTML=i:e&&(e.textContent=i)},l.getGuaHaoHTML=function(e){return a(e,"挂号")},l.getShangQiaoHTML=function(e){return a(e,"咨询")}}
            function Health(){var e=lib.extend({},lib.observable);return e.env={indexDS:"ecomui/health"},e.init=function(){e.temp=new Template(e.temps),e.model=new HealthModel(e),e.view=new HealthView(e),e.filter=new HealthFilter(e);var i=e.filter,a=e.model,t=e.view;if(a.init(e.pageData),i.init(),a.params.tagList=i.tagList.join(";"),t.init(),vCard.bind({container:qq("ecl-health-pagelist"),parent:qq("ecl-health-left")}),guahaoCard.bindEvent(),i.onchange=function(e){var i={tags:e.value,pageID:1,field:e.field};e.provID&&(i.provID=e.provID),a.query(i)
},e.pageData.provList){var n=e.pageData.provList;initPopList(n,e.pageData.provID)}},e.dispose=function(){this.fire("dispose"),this.un(),vCard.dispose({container:qq("ecl-health-pagelist")});for(var e in this)delete this[e]},e}
            health = new Health();
            health.pageData = card.data.pageData;
            health.temps = getTmpl();
            health.anti = card.data.anti;
            health.init();
        });
    });
</script>
{%/block%}