{%extends 'base_div.tpl'%}
{%block name='content'%}

<style type="text/css">
.ecl-health-left{font-size:12px;width:600px}.ecl-health-pagelist-item{*z-index:1}.ecl-health-nav .ly-banner{height:30px;line-height:30px}.ecl-health-nav .nav-banner{height:30px;line-height:30px}.ecl-health-nav .nav-title{font-size:16px;width:520px;float:left;overflow:hidden}.ecl-health-nav .nav-title em{color:#cf0000;text-decoration:none}.ecl-health-poplist-wrapper{float:right;height:24px;line-height:24px;cursor:pointer}.ecl-health-poplist-wrapper input{border:1px solid #d8d8d8;border-top-color:#999;border-left-color:#b2b2b2;padding-left:6px;background:0;padding-right:25px;width:75px;*width:45px;cursor:pointer;height:24px;line-height:24px}
.ecl-health-poplist-wrapper i{color:#bfbfbf;font-style:normal;border-left:1px solid #d9d9d9;position:absolute;right:5px;width:18px;height:24px;line-height:24px;text-indent:-9999px;background-color:#fff;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/city-triangle.png') no-repeat center center}.ecl-health-poplist-wrapper .inbox{position:relative}.ecl-health-pagelist-wrapper{border:1px solid #ebebeb;border-top:0;border-bottom:0;width:100%}.ecl-health-empty-tip{text-align:center;line-height:30px;color:#ccc;background-color:#fff8e7}
.ecl-health-pagelist-pager{text-align:center;display:none;border-bottom:1px solid #f3f3f3}.ecl-health-pagelist-pager .ecl-health-pager{padding:5px 0;*zoom:1}.ecl-health-queryUrl{color:#00c;text-decoration:none;border-bottom:1px solid #00c;padding-bottom:1px}.ecl-health-queryUrl:visited{color:#00c}.ecl-health-filter-list{padding:0;margin:0 80px 0 40px;list-style:none;overflow:hidden}.ecl-health-filter-list .exclude a{color:#d8d8d8;cursor:text}.ecl-health-filter-list .exclude a:hover{border:#fdfdfd 1px solid;background:0}
.ecl-health-filter{position:relative;padding:0 10px;_zoom:1}.ecl-health-filter-item{float:left;list-style:none;text-decoration:none;line-height:30px;padding-right:5px;white-space:nowrap}.ecl-health-filter-item a{color:#00c;cursor:pointer;padding:0 3px 1px;margin:0 2px;border:#fdfdfd 1px solid;background:#fdfdfd}.ecl-health-filter-item a:hover{border:#b6d7ff 1px solid;background:#d4e8ff}.ecl-health-filter-item b{color:#d8d8d8;font-weight:normal;cursor:default}.ecl-health-filters-more{padding-right:10px;height:20px;line-height:20px;color:#888;cursor:pointer;position:absolute;z-index:79;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/health/img/health_right.png') no-repeat right -13px;bottom:4px;right:10px}
.ecl-health-left .expand{height:auto}.ecl-health-filters-wrapper{background:#fdfdfd;position:relative;height:30px;width:100%;overflow:hidden;border:1px solid #ebebeb;_zoom:1}.ecl-health-filters-wrapper .filter-label{line-height:30px;margin:0;font-size:12px;position:absolute;top:0;left:10px}.ecl-health-filters-wrapper .upDelta{background-position:right 6px}.ecl-health-filters-wrapper .selected a{background:#5a9ff1;border:#418ce5 1px solid;color:#FFF;border-radius:2px;-moz-border-radius:2px;-webkit-border-radius:2px;-ms-border-radius:2px}
.ecl-health-poplist{width:210px;position:absolute;z-index:1000;border:1px solid #ddd;background-color:#fff;padding:5px;font-size:12px;color:#555}.ecl-health-poplist a{text-decoration:none}.ecl-health-poplist-labels,.ecl-health-poplist-panels{list-style:none;margin-top:5px;border-top:1px dashed #dedede}.ecl-health-poplist-close{color:#b4b4b4;font:bold 12px/1.2 'Comic Sans MS';padding:0 3px;position:absolute;right:3px;top:3px;display:none}.ecl-health-poplist-labels{border-top:1px dashed #ddd;border-bottom:1px solid #ddd;padding-top:8px;margin-top:5px}
.ecl-health-poplist-labels li{border:1px solid #ddd;background-color:#fff;float:left;padding:3px 5px;margin-right:10px;margin-bottom:-1px;cursor:default;color:#0069ca}.ecl-health-poplist-labels .ecl-health-poplist-active{background-color:#e8edf1}.ecl-health-poplist-panels li{display:none;float:left;line-height:18px}.ecl-health-poplist-panels .ecl-health-poplist-active{display:block}.ecl-health-poplist-panels a{color:#555;width:50px;display:inline-block;padding:5px 0;text-align:center;text-decoration:none}.ecl-health-left .health-clearfix:before,.ecl-health-left .health-clearfix:after{display:table;line-height:0;content:""}
.ecl-health-left .health-clearfix:after{clear:both}.ecl-health-pagelist-showall{line-height:30px;text-align:center;cursor:pointer;color:#666;border-bottom:1px solid #f3f3f3}.ecl-health-pagelist-showall span{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/health/img/health_right.png') no-repeat right -7px;display:inline-block;padding-right:10px}.ecl-health-pagelist-item{padding:10px 0;border-bottom:1px solid #f3f3f3;position:relative;width:100%}.ecl-health-pagelist-item .pagelist-lside{margin-right:140px;padding-left:10px}.ecl-health-pagelist-item .pagelist-rside{width:135px;float:right;padding-right:10px}
.ecl-health-pagelist-item .pagelist-tags{color:#666;line-height:18px;text-align:right;margin-bottom:20px}.ecl-health-pagelist-item .pagelist-location{width:130px;text-align:right;line-height:20px;height:20px;overflow:hidden;position:absolute;bottom:10px;right:10px}.ecl-health-pagelist-item .pagelist-location a{color:#666;background:url('http://www.baidu.com/cache/biz/ecom/health/img/health_left_0-1.gif') no-repeat 0 -110px;*background-position:0 -112px;display:inline-block;padding-left:15px}.ecl-health-pagelist-item .pagelist-name{margin-right:5px;font-size:14px;color:#00c}
.ecl-health-pagelist-item .pagelist-bottom{line-height:20px;min-height:10px}.ecl-health-pagelist-item .pagelist-bottom a{padding:2px 5px}.ecl-health-pagelist-item .pagelist-title{padding:0 3px;_height:20px}.ecl-health-pagelist-item .pagelist-title ul{margin:0;padding:0;overflow:hidden}.ecl-health-pagelist-item .pagelist-title li{float:left;list-style:none;line-height:18px}.ecl-health-pagelist-item .pagelist-title li li{float:none}.ecl-health-pagelist-item .pagelist-creative{padding:5px 3px;line-height:18px;font-size:13px}
.ecl-health-pagelist-item .pagelist-creative em{font-style:normal;color:#c00}.ecl-health-pagelist-item .pagelist-tuiguang{color:#666;text-decoration:underline;white-space:nowrap;*word-break:keep-all;margin-left:6px}.ecl-health-pagelist-item .pagelist-review{background-position:0 -134px;text-align:right;overflow:hidden;line-height:18px;height:18px;margin-bottom:5px;font-size:13px;display:block;*zoom:1;*clear:both}.ecl-health-pagelist-item .pagelist-review :after{content:".";display:block;height:0;clear:both;visibility:hidden}
.ecl-health-pagelist-item .pagelist-review a{float:right}.ecl-health-pagelist-item .icon-qiao{background:url('http://www.baidu.com/cache/biz/ecom/health/img/health_left_0-1.gif') no-repeat 0 -294px;padding-left:15px;margin-left:10px}.ecl-health-pagelist-item .icon-qiao a{color:#666}.ecl-health-pagelist-item .icon-guahao{background:url('http://www.baidu.com/cache/biz/ecom/health/img/health_left_0-1.gif') no-repeat 0 -232px;padding-left:14px;margin-left:10px}.ecl-health-pagelist-item .icon-guahao a{color:#666}.ecl-health-pagelist-item .star{width:60px;height:18px;margin-right:5px;background-image:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/health/img/health_icon_0-1.png');background-position:0 -71px;background-repeat:no-repeat;float:right}
.ecl-health-pagelist-item .star0{width:0;background-position:0 -71px}.ecl-health-pagelist-item .star1{width:12px;background-position:0 -56px}.ecl-health-pagelist-item .star2{width:22px;background-position:0 -41px}.ecl-health-pagelist-item .star3{width:35px;background-position:0 -26px}.ecl-health-pagelist-item .star4{width:48px;background-position:0 -11px}.ecl-health-pagelist-item .star5{background-position:0 4px}.ecl-health{display:inline-block;*display:inline}.ecl-health a{display:block;float:left;margin:3px;text-decoration:none;border:1px solid #CCC;overflow:hidden;padding:2px 5px;color:#03C;font:normal 12px/1.2 Arial,Helvetica,sans-serif;text-align:center}
.ecl-health a em{vertical-align:middle;border:5px solid #fff;font-size:0;margin:auto 3px;*zoom:1}.ecl-health a:hover{background-color:#eff4fa}.ecl-health a:hover em{border-color:#eff4fa}.ecl-health a.ecl-health-ellipsis{border:0}.ecl-health .ecl-health-current{font-weight:700;border:0;color:#666;cursor:default}.ecl-health .ecl-health-current:hover,.ecl-health .ecl-health-ellipsis:hover,.ecl-health .ecl-health-disabled:hover{background:0}.ecl-health .ecl-health-current:hover em,.ecl-health .ecl-health-ellipsis:hover em,.ecl-health .ecl-health-disabled:hover em{border-color:#FFF}
.ecl-health .ecl-health-prev em,.ecl-health .ecl-health-prev:hover em{border-right-color:#999;border-left:none}.ecl-health .ecl-health-next em,.ecl-health .ecl-health-next:hover em{border-left-color:#999;border-right:0}.ecl-health .ecl-health-disabled{color:#999;cursor:default}.ecl-health-idcard-expand .ecl-health-idcard{display:block}.ecl-health-idcard-icon{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/health/img/health_icon_0-1.png') no-repeat 0 -95px;width:16px;height:16px;display:inline-block}.ecl-health-idcard{_white-space:nowrap;background:#FFF;border:1px solid #CCC;color:#575757;display:none;font-size:12px;line-height:16px;padding:8px;width:auto!important;width:120px;position:absolute;text-align:left;z-index:160;margin-top:20px;box-shadow:1px 1px 1px #dfdfdf}
.ecl-health-idcard .EC_tip_title{display:inline-block;height:14px;line-height:14px;margin-bottom:8px;color:#575757}.ecl-health-idcard .EC_tip_content{margin:0;padding:0;line-height:16px;white-space:nowrap;vertical-align:middle;zoom:1}.ecl-health-idcard .EC_tip_content li{height:18px;line-height:18px;font-size:12px}.ecl-health-idcard .EC_tip_content li .EC_safeguard_tip_logo{vertical-align:top;margin-right:5px}.ecl-health-idcard .EC_tip_content .EC_vshenfen .icon{display:inline-block;width:16px;height:16px;line-height:16px;vertical-align:text-top;background:url(http://a.baidu.com/xianzhi/wholeIconNew.gif) no-repeat 0 -117px;margin:1px 5px 0 0}
.ecl-health-idcard .EC_tip_content .EC_vshenfen .level{margin-left:5px;padding-right:38px;background-image:url(http://a.baidu.com/xianzhi/wholeIconNew.gif);background-repeat:no-repeat;background-position:76px -529px;display:none;display:inline}.ecl-health-idcard .EC_tip_content .EC_vshenfen .level0{background-position:76px -529px;padding-right:38px}.ecl-health-idcard .EC_tip_content .EC_vshenfen .level1{background-position:76px -570px;padding-right:15px}.ecl-health-idcard .EC_tip_content .EC_vshenfen .level2{background-position:76px -610px;padding-right:26px}
.ecl-health-idcard .EC_tip_content .EC_vshenfen .level3{background-position:76px -650px;padding-right:38px}.ecl-health-idcard .EC_tip_content .EC_vshenfen .level4{background-position:76px -690px;padding-right:48px}.ecl-health-idcard .EC_tip_content .EC_vshenfen .level5{background-position:76px -730px;padding-right:59px}.ecl-health-idcard .EC_tip_content .ecl-health-certification{position:relative;top:3px}.ecl-health-idcard .EC_tip_dir{background:url('http://www.baidu.com/cache/biz/ecom/health/EC_tip_dir.gif') no-repeat 5px 5px;width:100%;height:14px;position:absolute;top:-11px;left:0}
.ecl-health-guahao-wrapper .link-guahao{color:#666;text-decoration:underline;cursor:default}.ecl-health-guahaopop{margin-top:-8px;margin-left:29px;padding:8px 2px 10px 10px;box-shadow:4px 4px 2px #efefef}.ecl-health-guahaopop .EC_tip_title{color:#000;margin-bottom:0}.ecl-health-guahaopop .EC_tip_content li{background-repeat:no-repeat;background-position:0 center;padding-left:26px;margin-top:7px;font-size:13px}.ecl-health-guahaopop .EC_tip_content li a{color:#00C}.ecl-health-guahaopop .EC_tip_content li:first-child{margin-top:5px}
.ecl-health-guahaopop .EC_tip_dir{background:url('http://www.baidu.com/cache/biz/ecom/health/EC_tip_dir.gif') no-repeat 0 -40px;width:10px;height:14px;top:10px;left:-6px}.ecl-health-certification{margin-right:5px}.ecl-health-pagelist-item{*position:static;*height:84px}.ecl-health-pagelist-item .pagelist-rside{*position:relative}.ecl-health-pagelist-item .pagelist-location{*right:auto;*bottom:auto;*top:65px;*right:10px}
</style>

<script data-compress="off">
{%if $tplData.pageData%}
A.setup('pageData', {%$tplData.pageData%});
{%/if%}
A.setup('temps', {review:[' [%a href="', '$review.link', '" target="_blank"%] ', '$reviewText', ' [%/a%] [%div class="star star', '$review.star', '"%][%/div%] '],
vcard:[' [%div class="ecl-health-idcard" id="ecl-health-idcard-', '$hospitalid', '"%] [%strong class="EC_tip_title"%]百度提示您，该网站：[%/strong%] [%div class="EC_tip_content"%] [%ul%] ', '$vCardContent', ' [%/ul%] [%/div%] [%i class="EC_tip_dir"%][%/i%] [%/div%] [%span class="ecl-health-idcard-icon"%][%/span%] '],
pageitem:[' [%div class="ecl-health-pagelist-item"%] [%div class="pagelist-rside"%] [%div class="pagelist-review"%] ', '$reviewHtml', ' [%/div%] [%div class="pagelist-tags"%] ', '$tag', ' [%/div%] [%div class="pagelist-location"%] [%a href="', '$position.url', '" target="_blank" %]', '$position.addr', '[%/a%] [%/div%] [%/div%] [%div class="pagelist-lside"%] [%div class="pagelist-title"%] [%ul%] [%li class="pagelist-name"%] [%a href="', '$links.homePage', '" target="_blank" %]', '$redname', '[%/a%] [%/li%] [%li class="ecl-health-idcard-wrapper" data-hid="', '$hospitalid', '"%] ', '$vCardText', ' [%/li%]', '$vCardMoreLink', '[%/ul%] [%/div%] [%div class="pagelist-creative"%] ', '$creative', ' [%/div%] [%div class="pagelist-bottom"%] [%div class="pagelist-sublinks"%] ', '$sublinks', ' [%/div%] [%/div%] [%/div%] [%/div%] ']} );
</script>

{%*点击统计*%} 
{%$sessionid=$extData.sessionid%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}
{%$tplName='ecl-health'%}

<div class="{%$tplName|escape:'html'%}-left" data-click="{'sessionid':'{%$sessionid|escape:'html'%}','subqid':'{%$subqid|escape:'html'%}','sid':'{%$sid|escape:'html'%}'}">
{%**----------nav-----------**%}
<div class="{%$tplName|escape:'html'%}-nav">
    {%**----------banner-----------**%}
    <div class="nav-banner">
        <div class="nav-title">
            {%if $tplData.queryTitle1%}
            <a class="{%$tplName|escape:'html'%}-queryUrl" href="{%$tplData.queryUrl|escape:'html'%}" target="_blank">{%$tplData.queryTitle1%}</a>
            {%else%}
             <a class="{%$tplName|escape:'html'%}-queryUrl" href="{%$tplData.queryUrl|escape:'html'%}" target="_blank">
             百度健康：<em>{%$tplData.termWord|truncate:9:".."|escape:'html'%}</em>优质医院大全(
             <span class="{%$tplName|escape:'html'%}-total">{%$tplData.totalCount|escape:'html'%}</span>家
             <em>{%$tplData.termWord|truncate:7:".."|escape:'html'%}</em>医院
             )
             </a>
            {%/if%}
        </div>
        <div class="{%$tplName|escape:'html'%}-poplist-wrapper">
            <div class="inbox">
                <label for="{%$tplName|escape:'html'%}-province">
                    <i>▼</i>
                    <input type="text" id="{%$tplName|escape:'html'%}-province" value="{%$tplData.provName|escape:'html'%}" 
                    class="{%$tplName|escape:'html'%}-poplist-select OP_LOG_BTN" 
                    data-click="{'fm':'beha', 'btn-name':'poplist'}" readOnly='true'/>  
                </label>
            </div>
        </div>
    </div>
    {%**----------end:banner-----------**%}
{%**----------filters -----------**%}
<div class="{%$tplName|escape:'html'%}-filters-wrapper">
    <div class="{%$tplName|escape:'html'%}-filters-more OP_LOG_BTN" data-click="{'fm':'beha','btn-name':'filter-more'}"  >展开</div>
    {%foreach from=$tplData.filters key=idy item=f%}
    <div class="{%$tplName|escape:'html'%}-filter health-clearfix">
        <b class="filter-label">{%$f.tagLabel|escape:'html'%}:
        </b>
        <ul class="{%$tplName|escape:'html'%}-filter-list" data-field="{%$f.tagName|escape:'html'%}">
            <li class="{%$tplName|escape:'html'%}-filter-item selected OP_LOG_BTN" data-id="-1" data-click="{'fm':'beha','id':'-1','btn-name':'{%$f.tagName|escape:'html'%}'}">
            <a>全部</a>
            <b>|</b>
             </li>
            {%$item_num=count($f.tags)%}
            {%foreach from=$f.tags key=idx item=tag%}
                 <li class="{%$tplName|escape:'html'%}-filter-item OP_LOG_BTN" data-id="{%$tag.id|escape:'html'%}" data-click="{'fm':'beha','id':'{%$tag.id|escape:'html'%}','btn-name':'{%$f.tagName|escape:'html'%}'}"> 
                     <a>{%$tag.name|escape:'html'%}</a>
                     {%if $item_num neq ($idx+1)%}<b>|</b>{%/if%}
                 </li>
            {%/foreach%}
        </ul>
    </div>
    {%/foreach%}
</div>
{%**----------end: filters-----------**%}
   
</div>
{%**----------end:nav-----------**%}

{%**----------pagelist-----------**%}
<div class="{%$tplName|escape:'html'%}-pagelist-wrapper">
<div class="{%$tplName|escape:'html'%}-pagelist">
{%$show_idx=$tplData.showNum[0]%}
{%$max_idx=$tplData.showNum[1]-1%}

{%$list_num=count($tplData.hospitals)%}
{%for $idx=0 to $max_idx%}
{%$h=$tplData.hospitals[$idx]%}

{%if $idx>=$list_num%}
    {%break%}
{%/if%}

{%**--判断是否会显示更多--**%}
{%if $idx eq $show_idx%}
    {%$ismore=true%}
    <div class="{%$tplName|escape:'html'%}-pagelist-showall OP_LOG_BTN" data-click="{'fm':'beha','btn-name':'showall'}" ><span>查看更多相关医院</span></div>
{%**--更多部分用包裹方式隐藏--**%}
    <div class="{%$tplName|escape:'html'%}-pagelist-more" style="display:none">
{%/if%}

{%**--判断是否首行--**%}
{%if $idx eq 0%}
<div class="{%$tplName|escape:'html'%}-pagelist-item first" data-hid="{%$h.hospitalid|escape:'html'%}">
{%else%}
<div class="{%$tplName|escape:'html'%}-pagelist-item" data-hid="{%$h.hospitalid|escape:'html'%}">
{%/if%}
    <div class="pagelist-rside">
         <div class="pagelist-review health-clearfix">
            {%if $h.review%}
            <a href="{%$h.review.link|escape:'html'%}" target="_blank">
                {%if $h.review.num > 0%}
                    {%if $h.review.num < 10000%}
                        {%$h.review.num|escape:'html'%}条评论
                    {%else%}
                        {%floor($h.review.num / 10000)|escape:'html'%}万条评论
                    {%/if%}
                {%else%}
                    我要评论 
                {%/if%}
            </a>
            
            {%*增加rate，兼容上一版本*%}
            {%if isset($h.review.rate)%}
            <div class="star star{%$h.review.rate|escape:'html'%}"></div>
            {%else%}
            <div class="star star{%$h.review.star|escape:'html'%}"></div>
            {%/if%}

            {%/if%}
        </div>
        
        <div class="pagelist-tags">
            {%$h.tag|escape:'html'%}
        </div>
        
        <div class="pagelist-location">
            <a  href="{%$h.position.url|escape:'html'%}"  target="_blank">
                {%$h.position.addr|escape:'html'%}
             </a>
        </div>
    </div>
    
    <div class="pagelist-lside">
        <div class="pagelist-title">
            <ul>
                <li class="pagelist-name">
                    <a data-click="{'hid':'{%$h.hospitalid|escape:'html'%}','idx':'{%$idx|escape:'html'%}'}" href="{%$h.links.homePage|escape:'html'%}"  target="_blank">
                    {%$h.redname|escape:'html'|highlight:0%}
                    </a>
                </li>
                {%if $h.idcard%}
                <li class="{%$tplName|escape:'html'%}-idcard-wrapper" data-hid="{%$h.hospitalid|escape:'html'%}">
                    <div class="{%$tplName|escape:'html'%}-idcard" id="{%$tplName|escape:'html'%}-idcard-{%$h.hospitalid|escape:'html'%}" >
                        <strong class="EC_tip_title">百度提示您，该网站：</strong>
                        <div class="EC_tip_content">
                            <ul>
                                {%if $h.idcard.certification%}
                                <li>
                                    <img class="{%$tplName|escape:'html'%}-certification" src="http://s1.bdstatic.com/r/www/cache/certification/img/hospital-logo.png" alt="" height="16" width="16">
                                    {%$h.idcard.certification|escape:'html'%}
                                </li>
                                {%/if%}
                            </ul>
                        </div>
                        <i class="EC_tip_dir"></i>

                    </div>
                    <span class="{%$tplName|escape:'html'%}-idcard-icon OP_LOG_BTN"
                          data-click="{'fm':'beha','btn-name':'icard', 'hid':'{%$h.hospitalid|escape:'html'%}'}"
                          data-hid="{%$h.hospitalid|escape:'html'%}">
                    </span>
                </li>
                {%/if%}

                {%if $h.links.shangqiao%}
                    <li class="icon-qiao">
                           <a href='{%$h.links.shangqiao|escape:'html'%}'  data-click="{'btn-name':'shangqiao', 'hid':'{%$h.hospitalid|escape:'html'%}'}" target="_blank">咨询</a>
                     </li>
                {%*商桥浮出层链接*%}
                {%elseif $h.links.shangqiaolinks%}
                <li class="icon-guahao {%$tplName|escape:'html'%}-guahao-wrapper">
                    <div class="{%$tplName|escape:'html'%}-idcard {%$tplName|escape:'html'%}-guahaopop">
                        <strong class="EC_tip_title">您可以进入以下网站进行咨询：</strong>
                        <div class="EC_tip_content">
                            <ul>
                                {%foreach $h.links.shangqiaolinks as $item%}
                                <li style="background:url({%$item.logo%}) 0 2px no-repeat">
                                    <a target="_blank" href="{%$item.url%}">{%$item.title%}</a>
                                </li>
                                {%/foreach%}
                            </ul>
                        </div>
                        <i class="EC_tip_dir"></i>
                    </div>
                    <span class="link-guahao" data-click="{'btn-name':'shangqiao', 'hid':'{%$h.hospitalid|escape:'html'%}'}">咨询</span>
                </li>
                {%/if%}

                {%if $h.links.guahao%}
                <li class="icon-guahao">
                    <a href='{%$h.links.guahao|escape:'html'%}'  data-click="{'btn-name':'guahao', 'hid':'{%$h.hospitalid|escape:'html'%}'}" target="_blank">挂号</a>
                </li>
                {%elseif $h.links.guahaolinks%}
                <li class="icon-guahao {%$tplName|escape:'html'%}-guahao-wrapper">
                    <div class="{%$tplName|escape:'html'%}-idcard {%$tplName|escape:'html'%}-guahaopop">
                        <strong class="EC_tip_title">您可以进入以下网站进行挂号：</strong>
                        <div class="EC_tip_content">
                            <ul>
                                {%foreach $h.links.guahaolinks as $item%}
                                <li style="background:url({%$item.logo%}) 0 2px no-repeat">
                                    <a target="_blank" href="{%$item.url%}">{%$item.title%}</a>
                                </li>
                                {%/foreach%}
                            </ul>
                        </div>
                        <i class="EC_tip_dir"></i>
                    </div>
                    <span class="link-guahao" data-click="{'btn-name':'guahao', 'hid':'{%$h.hospitalid|escape:'html'%}'}">挂号</span>
                </li>
                {%/if%}
                
            </ul>
        </div>

        <div class="pagelist-creative">
           {%$h.creative|escape:'html'|highlight:0%}
        </div>
        
        <div class="pagelist-bottom">
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
</div>
{%/for%}

{%**-包裹的结尾---**%}
{%if $ismore%}
    </div>
{%/if%}

</div>
{%**----------end:pagelist-----------**%}

{%**----------pager-----------**%}
{%$page_count=$tplData.pageNum%}
<div class="{%$tplName|escape:'html'%}-pagelist-pager OP_LOG_BTN" data-click="{'fm':'beha','btn-name':'pager'}">
   <div class="{%$tplName|escape:'html'%}-pager"></div>
</div>
{%**----------enc:pager-----------**%}
</div>
{%*--end ecl-helth-left-*%}
</div>


<script type="text/javascript" data-compress="off">
    A.init(function() {
        var card = this;

        card.ready(function() {
            function initPopList(e){var t=health.qq("ecl-health-poplist-select");t&&(t.value=health.pageData.provName),require(["ecom/health/poplist"],function(t){function i(e){var t=e.event,i=T.event.getTarget(t);this.setTarget("INPUT"==i.tagName&&"text"==i.type?i:i.previousSibling)}function l(e){var t=health.filter;if(t){var i={field:"province",provID:e.id};t.onchange(i)}}var a=new t({prefix:"ecl-health-poplist",triggers:health.q("ecl-health-poplist-select"),title:"选择医院所在地区",dir:"br",autoFill:!1,width:120,onBeforeShow:i,onClick:l});
e&&a.fill(e),a.render()})}
            function HealthFilter(e){function a(e){var a=baidu.dom.children(e),i=baidu.getAttr(e,"data-field");n[i]||(n[i]=e.parentNode),u.push(i),d[i]=-1,r[i]={};var l=[];baidu.each(a,function(e){var a=baidu.getAttr(e,"data-id");r[i][a]=e,l.push(a),baidu.on(e,"click",t),baidu.dom.hasClass(e,"selected")&&(r[i].selected=e)}),s.push(l.join(","))}function i(){var e=new Array(u.length);return baidu.each(u,function(a,i){e[i]=d[a]}),e.join(",")}function t(){var e=this;if(!baidu.dom.hasClass(e,"exclude")){var a=baidu.getAttr(e,"data-click");
if(a){a=baidu.json.parse(a);var t=a["btn-name"],n=a.id;if(t&&n){d[t]=n;var u=r[t].selected;u&&baidu.dom.removeClass(u,"selected"),r[t].selected=e,baidu.dom.addClass(e,"selected");var s=i(),c={target:e,field:t,id:n,value:s};s!==o&&(o=s,l.onchange(c))}}return!1}}var l=this,d={},n={},r={},u=[],o="",s=[];l.tagList=s;var c=e.qq("ecl-health-filters-more");c&&baidu.on(c,"click",function(){var a=e.qq("ecl-health-filters-wrapper"),i=baidu.dom.hasClass(a,"expand"),t="";i?(baidu.dom.removeClass(a,"expand"),baidu.dom.removeClass(c,"upDelta"),t="展开"):(baidu.dom.addClass(a,"expand"),baidu.dom.addClass(c,"upDelta"),t="收起"),e.setText(c,t)
}),l.init=function(){var i=e.q("ecl-health-filter-list");baidu.each(i,function(e){a(e)})},l.onchange=function(e){console.log(e)},l.hideField=function(e){var a=n[e];a&&baidu.hide(a)},l.showField=function(a){var i=n[a];i&&e.show(i)},l.buildField=function(e){var a="<li class=\"ecl-health-filter-item OP_LOG_BTN #{state}\" data-id=\"#{id}\" data-click=\"{fm:'beha',id:#{id},'btn-name':'#{field}'}\"><a>#{name}</a><b>#{seg}</b></li>",i=[],t=e.tags;return t.unshift({id:-1,name:"全部"}),e.value||(e.value=-1),baidu.each(t,function(l,d){l.field=e.tagName,l.id==e.value&&(l.state="selected"),d<t.length-1&&(l.seg="|"),i.push(baidu.string.format(a,l))
}),i.join("")},l.updateField=function(e){var i=e.tagName,t=n[i],d=baidu.dom.children(t);if(d&&d.length>0){var r=d[1],u=l.buildField(e);u&&u.length>3&&(r.innerHTML=u),a(r)}},l.update=function(a){var i=a.exclude,t=a.filters;if(t&&t.length>0)s=[],u=[],baidu.each(t,function(e){l.updateField(e)}),e.model.params.tagList=s.join(";");else if(i){var d=e.q("exclude");baidu.each(d,function(e){baidu.dom.removeClass(e,"exclude")});for(var n in i)for(var o=i[n],c=0,h=o.length;h>c;c++){var f=o[c],v=r[n][f];v&&baidu.dom.addClass(v,"exclude")
}}}}
            function HealthModel(e){function a(e,a){if(e)for(var i in e)void 0!==e[i]&&(a[i]=e[i])}var i={controller:"bws",action:"query",pageID:1,provID:1,field:"region",tags:"-1,-1,-1,-1"},t=this;t.params={},this.init=function(e){var n={pageID:e.pageID||1,originQuery:e.originQuery,sessionID:e.sessionID,cityID:e.cityID,provID:e.provID,srcID:e.srcID,ipCityID:e.ipCityID,ipProvID:e.ipProvID};a(n,i),a(i,t.params)},this.query=function(i){a(i,t.params);var n=e.jsonToQuery(t.params),d=e.env.indexDS+"?"+n;baidu.ajax.get(d,function(a){if(a&&a.responseText){var i=baidu.json.parse(a.responseText);
e.update(i)}})},e.jsonToQuery=function(e){var a=[];for(var i in e)a.push(i+"="+encodeURIComponent(e[i]));return a.join("&")},e.update=function(a){a&&(e.filter.update(a.data),e.view.update(a.data),e.view.fixUI(),vCard.bindEvent(),guahaoCard.bindEvent())}}
            function Template(e){function a(e,a,i){for(var t=e.shift(),n=a;t in n;){if(n[t],"string"==typeof n[t]||"number"==typeof n[t]||"boolean"==typeof n[t]){i.push(n[t]);break}if(void 0===n[t][e[0]]){i.push("");break}e.length>0&&(n=n[t],t=e.shift())}}for(var i in e)for(var t=e[i],n=0,r=t.length;r>n;n++){var o=t[n].replace(/%\]/g,">");t[n]=o.replace(/\[%/g,"<")}this.bind=function(e,i){for(var t=[],n=0,r=i.length;r>n;n++){var o=i[n],d=o.charAt(0);if("$"==d){o=i[n].substr(1);var l=o.split(".");l.length>1?a(l,e,t):o in e&&t.push(e[o])
}else"/"!=d&&t.push(o)}return t.join("")}}
            function HealthView(a){function e(e){var i=[],t=a.temp;e.review&&void 0===e.review.rate&&(e.review.rate=e.review.star);var r=e.links;if(r){r.introLink&&i.push('<a href="'+r.introLink+'" target="_blank">医院介绍</a>'),r.labLink&&i.push('<a href="'+r.labLink+'" target="_blank">科室列表</a>'),r.expertLink&&i.push('<a href="'+r.expertLink+'" target="_blank">专家列表</a>');var o="";r.shangqiao?o+='<li class="icon-qiao"><a href="'+r.shangqiao+"\"  data-click=\"{'btn-name':'shangqiao', 'hid':'"+e.hospitalid+'\'}" target="_blank">咨询</a>'+"</li>":r.shangqiaolinks&&(o+='<li class="icon-guahao ecl-health-guahao-wrapper">'+l.getShangQiaoHTML(r.shangqiaolinks)+'<span class="link-guahao"'+" data-click=\"{'btn-name':'shangqiao', 'hid':'"+e.hospitalid+"'}\" >咨询</a>"+"</li>"),r.guahao?o+='<li class="icon-guahao"><a href="'+r.guahao+"\"  data-click=\"{'btn-name':'guahao', 'hid':'"+e.hospitalid+'\'}" target="_blank">挂号</a>'+"</li>":r.guahaolinks&&(o+='<li class="icon-guahao ecl-health-guahao-wrapper">'+l.getGuaHaoHTML(r.guahaolinks)+'<span class="link-guahao"'+" data-click=\"{'btn-name':'guahao', 'hid':'"+e.hospitalid+"'}\" >挂号</a>"+"</li>"),e.vCardMoreLink=o
}e.sublinks=i.join("| ");var s=e.review;if(s){var u="";if(s.num>0){var d=parseInt(s.num/1e3,10);u=s.num>999?d+"万":s.num,u+="条评论"}else u="我要评论";e.reviewText=u,e.reviewHtml=t.bind(e,n.review)}e.idcard&&(e.vCardContent=vCard.getFloatContent(e.idcard),e.vCardText=t.bind(e,n.vcard))}function i(e){return"string"==typeof e?a.qq(e):e}function t(a,e){var i="";baidu.each(a,function(a){i+=baidu.format('<li style="background:url(#{logo}) 0 2px no-repeat"><a target="_blank" href="#{url}">#{title}</a></li>',a)});var t='<div class="ecl-health-idcard ecl-health-guahaopop"><strong class="EC_tip_title">您可以进入以下网站进行'+e+"：</strong>"+'<div class="EC_tip_content">'+"<ul>"+i+"</ul>"+"</div>"+'<i class="EC_tip_dir"></i>'+"</div>";
return t}var n=a.temps,r=[],l=this;l.update=function(i){if(i&&(r=i.hospitals,a.pageData=i,a.show("ecl-health-pagelist-pager")),i.queryTitle1){var t=a.qq("ecl-health-queryUrl");t.innerHTML=i.queryTitle1}else if(i.totalCount||0===i.totalCount){var t=a.qq("ecl-health-total");t&&a.setText(t,i.totalCount)}if(i.queryUrl){var t=a.qq("ecl-health-queryUrl");t.href=i.queryUrl}var l=a.temp,o=[];0===r.length&&o.push('<div class="ecl-health-empty-tip">未找到您所描述的精确信息</div>');for(var s=0,u=r.length;u>s;s++){var d=r[s];e(d),o.push(l.bind(r[s],n.pageitem))
}var h=a.pager;if(h){i.pageID=parseInt(i.pageID,10),h.total=parseInt(i.pageNum,10),h.setPage(i.pageID-1),h.render();var c=a.qq("ecl-health-nav");c&&h.pageid&&(c.scrollIntoView(),h.pageid=null)}a.qq("ecl-health-pagelist").innerHTML=o.join("")},l.fixUI=function(){if(a.pageData.pageNum<2){var e=a.q("ecl-health-pagelist-item");e&&(e=e.pop(),e.style.border="0px")}-1==a.pageData.provID&&a.filter?a.filter.hideField("region"):a.filter&&a.filter.showField("region")},a.show=function(a){var a=i(a);a&&(a.style.display="block")
},a.setText=function(a,e){a=i(a),a&&baidu.browser.ie?a.innerHTML=e:a&&(a.textContent=e)};var o=a.qq("ecl-health-pagelist-showall");o&&baidu.event.on(o,"click",function(){a.show("ecl-health-pagelist-more"),a.show("ecl-health-pagelist-pager"),baidu.hide(o)}),l.getGuaHaoHTML=function(a){return t(a,"挂号")},l.getShangQiaoHTML=function(a){return t(a,"咨询")}}
            var prefix="ecl-health",vCard={bindEvent:function(){for(var a=health.q(prefix+"-idcard-wrapper"),e=0,i=a.length;i>e;e++){var t=a[e];if(t){var n=this.getHID(t);if(null!==n){var r=baidu.G(prefix+"-idcard-"+n);r&&(baidu.setAttr(r,"data-rid",n),t.onmouseover=this.showCard,t.onmouseout=this.hideCard)}}}},getHID:function(a){var e=baidu.getAttr(a,"data-hid");return null==e||""===e?null:e},showCard:function(){var a=this,e=prefix+"-idcard-expand";baidu.dom.hasClass(a,e)||baidu.addClass(a,e)},hideCard:function(a){var e=this,i=prefix+"-idcard-expand",t=a||window.event,n=t.relatedTarget||t.toElement;
!baidu.dom.contains(e,n)&&baidu.dom.hasClass(e,i)&&baidu.removeClass(e,i)},getFloatContent:function(a){var e=[];return a.certification&&(e[e.length]='<li><img class="ecl-health-certification" src="http://s1.bdstatic.com/r/www/cache/certification/img/hospital-logo.png" alt="" height="16" width="16">'+a.certification+"</li>"),e.join("")}};
            var guahaoCard={bindEvent:function(){for(var a=health.q(prefix+"-guahao-wrapper"),e=0,i=a.length;i>e;e++){var t=a[e];if(t){var n=baidu.dom.children(t)[0];n&&baidu.dom.hasClass(n,prefix+"-guahaopop")&&(t.onmouseover=vCard.showCard,t.onmouseout=vCard.hideCard)}}}};
            function Health(){function a(){if(require(["ecom/ui/pager"],function(a){var e=health.qq("ecl-health-pager"),t=health.pageData;e&&(health.pager=new a({main:e,page:t.pageID-1,prefix:"ecl-health",showAlways:!1,total:t.pageNum,onChange:function(a){health.model.query({pageID:a.page+1}),health.pager.pageid=a.page+1}}),health.pager.render())}),health.pageData.provList){var a=health.pageData.provList;initPopList(a)}}health=this,health.env={indexDS:"ecomui/health"},health.init=function(){health.temp=new Template(health.temps),health.model=new HealthModel(health),health.view=new HealthView(health),health.filter=new HealthFilter(health);
var e=health.filter,t=health.model,i=health.view;t.init(health.pageData),e.init(),t.params.tagList=e.tagList.join(";"),i.fixUI(),vCard.bindEvent(),guahaoCard.bindEvent(),e.onchange=function(a){var e={tags:a.value,pageID:1,field:a.field};a.provID&&(e.provID=a.provID),t.query(e)},a()}}var health={};
            var hh = new Health();
            hh.pageData = card.data.pageData;
            hh.temps = card.data.temps;
            for (var item in card) {
                hh[item] = card[item];
            }
			
            hh.init();
        });

    });

</script>
{%/block%}
