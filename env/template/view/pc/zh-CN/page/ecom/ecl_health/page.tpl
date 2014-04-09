{%extends 'base_div.tpl'%}
{%block name='content'%}

<style type="text/css">
.ecl-health-left{font-size:12px;width:600px;border:1px solid #f5f5f5}.ecl-health-icon-wrapper{width:15px;height:15px;margin:2px 5px 2px 2px}.ecl-health-icon-img{width:14px;height:14px}.ecl-health-banner{height:30px;line-height:30px;padding:1px 5px;border-bottom:1px dashed #f0f0f0}.ecl-health-nav-title{font-size:15px;width:350px;float:left;font-weight:bold}.ecl-health-nav-title em{color:#cf0000;font-weight:bold;padding:0 3px}.ecl-health-nav-view{float:right;padding:2px 5px}.ecl-health-regions{position:relative;padding:5px;border-bottom:1px solid #ebebeb;background:#fdfdfd;_zoom:1}
.ecl-health-regions h1{line-height:20px;margin:0;font-size:12px;position:absolute;top:10px;left:8px}.ecl-health-regions-all{line-height:28px;display:block;*zoom:1;*clear:both}.ecl-health-regions-all:after{content:".";display:block;height:0;clear:both;visibility:hidden}.ecl-health-regions-part{height:30px}.ecl-health-nav-check{float:left;display:inline}.ecl-health-nav-check input{vertical-align:middle}.ecl-health-nav-check label{vertical-align:middle;_position:relative;_top:2px}
.ecl-health-regions ul{padding:0;margin:0 80px 0 40px;list-style:none;overflow:hidden}.ecl-health-regions li{float:left;list-style:none;text-decoration:none;line-height:30px;padding-right:5px;white-space:nowrap}.ecl-health-regions li a{color:#00c;cursor:pointer;padding:0 3px 1px;margin:0 2px;border:#fdfdfd 1px solid;background:#fdfdfd}.ecl-health-regions li i{color:#d8d8d8;cursor:default}.ecl-health-regions li .selected{background:#5a9ff1;border:#418ce5 1px solid;color:#FFF;border-radius:2px;-moz-border-radius:2px;-webkit-border-radius:2px;-ms-border-radius:2px}
.ecl-health-regions-more{padding-left:23px;height:20px;line-height:20px;cursor:pointer;position:absolute;top:10px;right:15px;color:#00c;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/health/img/health_right.png') no-repeat right -11px;padding-right:10px}.ecl-health-regions-more-all{background-position:right 8px}.ecl-health-pagelist-notfound{color:#666;font-size:16px;line-height:25px;height:25px;text-align:center;margin:15px 5px;background-color:#ffdcdc}.ecl-health-empty-tip{text-align:center;line-height:30px;color:#ccc;background-color:#fff8e7}
.ecl-health-pagelist-pager{margin:15px 0;text-align:center;display:none}.ecl-health-pagelist-pager .ecl-health-pager{*zoom:1}.ecl-health-pagelist-item{padding:7px 0;overflow:hidden;display:inline-block;border-bottom:1px solid #f3f3f3;position:relative;width:100%}.ecl-health-pagelist-item .ecl-health-pagelist-lside{margin-right:140px;padding-left:5px}.ecl-health-pagelist-item .ecl-health-pagelist-rside{width:135px;float:right;padding-right:10px}.ecl-health-pagelist-item .ecl-health-pagelist-tags{color:#666;line-height:18px;text-align:right}
.ecl-health-pagelist-item .ecl-health-pagelist-location{width:130px;text-align:right;line-height:20px;position:absolute;bottom:12px;right:10px}.ecl-health-pagelist-item .ecl-health-pagelist-location a{color:#666;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/health/img/health_left.png') no-repeat 0 -110px;*background-position:0 -112px;display:inline-block;padding-left:15px}.ecl-health-pagelist-item .ecl-health-pagelist-name{margin-right:5px;font-size:14px;color:#00c}.ecl-health-pagelist-item .ecl-health-pagelist-address{line-height:20px}
.ecl-health-pagelist-item .ecl-health-pagelist-address a{padding:2px 5px}.ecl-health-pagelist-item .ecl-health-pagelist-title{padding:0 3px;_height:20px}.ecl-health-pagelist-item .ecl-health-pagelist-title ul{margin:0;padding:0;overflow:hidden}.ecl-health-pagelist-item .ecl-health-pagelist-title li{float:left;list-style:none;line-height:18px}.ecl-health-pagelist-item .ecl-health-pagelist-creative{padding:5px 3px;line-height:18px;font-size:13px}.ecl-health-pagelist-item .ecl-health-pagelist-creative em{font-style:normal;color:#c00}
.ecl-health-pagelist-item .ecl-health-icon-qiao{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/health/img/health_left.png') no-repeat 0 -82px;padding-left:18px;margin-left:5px}.ecl-health-pagelist-item .ecl-health-icon-qiao a{color:#666}.ecl-health-pagelist-showall{line-height:30px;text-align:center;cursor:pointer;color:#666}.ecl-health-pagelist-showall span{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/health/img/health_right.png') no-repeat right -7px;display:inline-block;padding-right:10px}.ecl-health{display:inline-block;*display:inline}.ecl-health a{display:block;float:left;margin:3px;text-decoration:none;border:1px solid #CCC;overflow:hidden;padding:2px 5px;color:#03C;font:normal 12px/1.2 Arial,Helvetica,sans-serif;text-align:center}
.ecl-health a em{vertical-align:middle;border:5px solid #fff;font-size:0;margin:auto 3px;*zoom:1}.ecl-health a:hover{background-color:#eff4fa}.ecl-health a:hover em{border-color:#eff4fa}.ecl-health a.ecl-health-ellipsis{border:0}.ecl-health .ecl-health-current{font-weight:700;border:0;color:#666;cursor:default}.ecl-health .ecl-health-current:hover,.ecl-health .ecl-health-ellipsis:hover,.ecl-health .ecl-health-disabled:hover{background:0}.ecl-health .ecl-health-current:hover em,.ecl-health .ecl-health-ellipsis:hover em,.ecl-health .ecl-health-disabled:hover em{border-color:#FFF}
.ecl-health .ecl-health-prev em,.ecl-health .ecl-health-prev:hover em{border-right-color:#999;border-left:none}.ecl-health .ecl-health-next em,.ecl-health .ecl-health-next:hover em{border-left-color:#999;border-right:0}.ecl-health .ecl-health-disabled{color:#999;cursor:default}
</style>

<script data-compress="off">
{%if $tplData.pageData%}
A.setup('pageData', {%$tplData.pageData%});
{%/if%}
A.setup('temps', {pageitem:[' [%div class="ecl-health-pagelist-item"%] [%div class="ecl-health-pagelist-rside"%] [%div class="ecl-health-pagelist-tags"%] ', '$tag', ' [%/div%] [%div class="ecl-health-pagelist-location"%] [%a href="http://map.baidu.com/?latlng=', '$position.coordinate', '&title=', '$name', '&content=', '$position.address', '&autoOpen=true&l=" target="_blank" %]', '$position.addr', '[%/a%] [%/div%] [%/div%] [%div class="ecl-health-pagelist-lside"%] [%div class="ecl-health-pagelist-title"%] [%ul%] [%li class="ecl-health-pagelist-name"%] [%a href="', '$links.homePage', '" target="_blank" %]', '$redname', '[%/a%] [%/li%] [%/ul%] [%/div%] [%div class="ecl-health-pagelist-creative"%] ', '$creative', ' [%/div%] [%div class="ecl-health-pagelist-address"%] [%div class="ecl-health-pagelist-sublinks"%] [%a href="', '$links.introLink', '" target="_blank"%]医院介绍[%/a%] | [%a href="', '$links.labLink', '" target="_blank"%]科室列表[%/a%] | [%a href="', '$links.expertLink', '" target="_blank"%]专家列表[%/a%] [%/div%] [%/div%] [%/div%] [%/div%] '],
pager_list:[' [%div class="ecl-health-pager ecl-health-pagelist-pager"%] [%ul%]', '$data/pager_item', '[%/ul%] [%/div%] '],
pager_item:[' ', '!state:1', '[%li class="ecl-health-page-item selected" data-pid="', '$idx', '"%]', '$idx', '[%/li%]', '/state', ' ', '!state:0', '[%li class="ecl-health-page-item" data-pid="', '$idx', '"%]', '$idx', '[%/li%]', '/state', ' ']} );
</script>

<div class="ecl-health-left">
 <div class="ecl-health-nav">
    <div class="ecl-health-banner">
        <div class="ecl-health-nav-view">
            <div class="ecl-health-nav-check OP_LOG_BTN" data-click="{'fm':'behz','btn-name':'yibao'}">
                <input type="checkbox" class="ecl-health-val-yib"><label>医保定点</label>
            </div>
        </div>
        
        <div class="ecl-health-nav-title">
         <em>
         {%$tplData.termWord|escape:'html'%}
         </em> 相关医院
        </div>


    </div>
    <div class="ecl-health-regions ecl-health-clearfix">
     <h1>区域:</h1>
        {%$region_num=count($tplData.regions)%}
        <ul class="ecl-health-regions-all ecl-health-regions-part">
            <li class="OP_LOG_BTN" data-click="{'fm':'behz','rid':'-1'}">
                <a class="ecl-health-regions-item selected" data-rid="-1">全部</a>
                <i>|</i>
             </li>
            {%foreach from=$tplData.regions key=idx item=region%}
                 <li class="OP_LOG_BTN" data-click="{'fm':'behz','rid':'{%$region.id|escape:'html'%}','btn-name':'region-item'}" > 
                     <a class="ecl-health-regions-item" data-rid="{%$region.id|escape:'html'%}">{%$region.name|escape:'html'%}</a>
                     {%if $region_num neq ($idx+1)%}
                     <i>|</i>
                     {%/if%}
                 </li>
            {%/foreach%}
        </ul>
        
        {%if $region_num >9 %}
       <div class="ecl-health-regions-more OP_LOG_BTN" data-click="{'fm':'behz','btn-name':'region-more'}"  >更多</div>
        {%/if%}
   </div>
   
</div>


<!------------template:pagelist-------->
<div class="ecl-health-pagelist-wrapper">
<div class="ecl-health-pagelist">
{%$list_num=count($tplData.hospitals)%}
{%for $idx=0 to 7%}
{%$h=$tplData.hospitals[$idx]%}

{%if $idx>=$list_num%}
    {%break%}
{%/if%}

{%if $idx eq 3%}
    {%$ismore=true%}
    <div class="ecl-health-pagelist-showall OP_LOG_BTN" data-click="{'fm':'behz','btn-name':'showall'}" ><span>查看更多相关医院</span></div>
    <div class="ecl-health-pagelist-more" style="display:none">
{%/if%}

    {%if $idx eq 0%}
<div class="ecl-health-pagelist-item ecl-health-first" data-hid="{%$h.hospitalid|escape:'html'%}">
{%else%}

<div class="ecl-health-pagelist-item" data-hid="{%$h.hospitalid|escape:'html'%}">
{%/if%}

    <div class="ecl-health-pagelist-rside">
        <div class="ecl-health-pagelist-tags">
            {%$h.tag|escape:'html'%}
        </div>
        
        <div class="ecl-health-pagelist-location">
            <a  data-click="{'hid':'{%$h.hospitalid|escape:'html'%}','idx':'{%$idx|escape:'html'%}'}" href="http://map.baidu.com/?latlng={%$h.position.coordinate|escape:'html'%}&title={%$h.name|escape:'html'%}&content={%$h.position.address|escape:'html'%}&autoOpen=true&l="  target="_blank" >
                {%$h.position.addr|escape:'html'%}
             </a>
        </div>
    </div>
    
    <div class="ecl-health-pagelist-lside">
        <div class="ecl-health-pagelist-title">
            <ul>
                <li class="ecl-health-pagelist-name">
                <a  data-click="{'hid':'{%$h.hospitalid|escape:'html'%}','idx':'{%$idx|escape:'html'%}'}" href="{%$h.links.homePage|escape:'html'%}"  target="_blank">
                {%$h.redname|escape:'html'|highlight:0%}
                </a>
                </li> 
            </ul>
        </div>

        <div class="ecl-health-pagelist-creative">
           {%$h.creative|escape:'html'|highlight:0%}
        </div>
        
        <div class="ecl-health-pagelist-address">
            <div class="ecl-health-pagelist-sublinks">
                <a  href="{%$h.links.introLink|escape:'html'%}"  target="_blank">医院介绍</a> |
                <a  href="{%$h.links.labLink|escape:'html'%}"  target="_blank">科室列表</a> |
                <a  href="{%$h.links.expertLink|escape:'html'%}"  target="_blank">专家列表</a>
            </div>
            
        </div>
    </div>
</div>
{%/for%}

{%if $ismore%}
    </div>
{%/if%}
</div>
<!----end:pagelist-->
{%if $ismore%}
{%$page_count=$tplData.pageNum%}
<div class="ecl-health-pagelist-pager OP_LOG_BTN" data-click="{'fm':'behz','btn-name':'pager'}">
   <div class="ecl-health-pager">
   </div>
</div>
{%/if%}
</div>
</div>

<script type="text/javascript" data-compress="off">
    A.init(function(){var a=this;require(["./ecom/health/index_0-1"],function(t){var e=new t;e.pageData=a.data.pageData,e.temps=a.data.temps;for(var i in a)e[i]=a[i];e.init()})});
</script>
{%/block%}
