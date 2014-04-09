{%extends 'c_base.tpl'%}
{%block name="title"%}{%/block%}
{%block name="foot"%}{%/block%}
{%block name='content'%}
<style type="text/css">
    .ecl-tg-weigou-exp{position:relative;width:537px;font-size:12px;font-family:arial}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-hidden{display:none}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-title{height:24px;margin:0;padding:4px 0 0;line-height:1;font-size:16px;color:#00c;font-weight:normal;text-decoration:underline}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-warpper{border:1px solid #e4e4e4;width:535px;-moz-box-shadow:1px 2px 3px #e2e2e2;-webkit-box-shadow:1px 2px 3px #e2e2e2;-o-box-shadow:1px 2px 3px #e2e2e2;-icab-box-shadow:1px 2px 3px #e2e2e2;-khtml-box-shadow:1px 2px 3px #e2e2e2;background:#FFF\9;filter:"progid:DXImageTransform.Microsoft.Shadow(Strength=3, Direction=135, Color='#E2E2E2')";-ms-box-shadow:1px 2px 3px #e2e2e2;box-shadow:1px 2px 3px #e2e2e2;zoom:1}
.ecl-tg-weigou-exp .ecl-tg-weigou-exp-category-filter{position:relative}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-category-filter .ecl-tg-weigou-exp-filter{margin-right:60px}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-category-filter .ecl-tg-filter-more{position:absolute;right:4px;top:2px;height:19px;line-height:19px;width:41px;padding-left:6px;text-align:left;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -132px;cursor:pointer;display:none}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-category-filter .ecl-tg-filter-more span{line-height:18px;text-align:left;cursor:pointer}
.ecl-tg-weigou-exp .ecl-tg-weigou-exp-category-filter .ecl-tg-filter-more .ecl-tg-filter-expand-wrap{display:none}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-category-filter .ecl-tg-filter-more:hover{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -92px}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-category-filter.collapsed{background:0}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-category-filter.collapsed .ecl-tg-filter-more{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -112px}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-category-filter.collapsed .ecl-tg-filter-more .ecl-tg-filter-expand-wrap{display:block}
.ecl-tg-weigou-exp .ecl-tg-weigou-exp-category-filter.collapsed .ecl-tg-filter-more .ecl-tg-filter-collapse-wrap{display:none}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-category-filter.collapsed .ecl-tg-filter-more:hover{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -72px}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-category-filter.collapsed .ecl-tg-weigou-exp-filter{height:22px;overflow:hidden}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-category-filter.collapsed .compute-height{height:auto}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-title em{color:#c00;font-style:normal;text-decoration:underline}
.ecl-tg-weigou-exp .ecl-tg-weigou-exp-filter-label{position:absolute;top:4px;left:9px;font-weight:bold;color:#666}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-filter{position:relative;padding-left:49px;color:#d8d8d8;margin-top:6px;word-wrap:break-word;word-break:break-word;white-space:pre-wrap}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-filter.compute-height{position:absolute;width:475px;visibility:hidden}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-filter a{padding:2px 4px;margin:0 8px;line-height:18px;font-size:12px;text-decoration:none;cursor:pointer;white-space:nowrap;color:#00c;display:inline-block}
.ecl-tg-weigou-exp .ecl-tg-weigou-exp-filter a.ecl-tg-weigou-exp-filter-active{background-color:#388bff;color:#fff}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-filter a.ecl-tg-weigou-exp-filter-disable{color:#ccc;cursor:default}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-price-filter{margin-bottom:2px;-moz-user-select:none;user-select:none}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-price-filter .ecl-tg-weigou-exp-filter{zoom:1}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-recommend{background:#fff4c9;margin:3px 9px 6px 9px;color:#666;line-height:16px;text-align:center;display:none;_padding:2px 0 0 0;_line-height:1}
.ecl-tg-weigou-exp .ecl-tg-weigou-exp-recommend a{color:#00c}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-table-ct{padding-top:0;border-top:1px solid #ebebeb;_width:600px\9;_overflow:hidden;position:relative;left:7px;top:2px;border:0}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-table-ct td{border:0;padding:0;line-height:normal;width:133px}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-table-ct .ecl-tg-weigou-exp-table{table-layout:fixed;border-collapse:collapse;border-spacing:0}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-item{position:relative;width:130px;height:auto;overflow:hidden;padding-bottom:9px}
.ecl-tg-weigou-exp .ecl-tg-weigou-exp-item-ext{position:absolute;top:0;left:0;width:121px;height:91px;overflow:hidden;z-index:1;display:block;border:0;text-decoration:none;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-bg.png') -115px -130px;_background:0}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-item-ext-lucency,.ecl-tg-weigou-exp .ecl-tg-weigou-exp-item-ext-bg{position:absolute;width:111px;top:75px;left:0;height:91px;color:#FFF;padding:0 5px;cursor:pointer;text-decoration:none}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-item-ext-bg{filter:alpha(opacity=65);-moz-opacity:.65;-khtml-opacity:.65;opacity:.65;background:#000}
.ecl-tg-weigou-exp .ecl-tg-weigou-exp-item-ext-lucency-num{_margin-top:2px}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-item-ext-lucency-refer{line-height:30px}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-item-ext-lucency-btn{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-bg.png') -2px -96px;text-indent:-5000px;display:block;position:absolute;left:5px;height:26px;width:111px;bottom:4px}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-item-ext-lucency-btn:hover{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-bg.png') -2px -127px}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-item-ext-lucency-btn:active{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-bg.png') -2px -158px}
.ecl-tg-weigou-exp .ecl-tg-weigou-exp-item-image{position:relative;width:121px;height:91px;overflow:hidden}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-item-desc{line-height:21px;overflow:hidden;width:121px;height:40px;color:#00C;font-size:13px;display:block;margin-top:6px;text-decoration:none}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-item-desc:hover{text-decoration:underline}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-item-price{font-size:14px;line-height:17px;display:block;height:17px;color:#666;font-family:"宋体",'SimSun';background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-bg.png') -158px -102px #fff;padding:0 0 0 11px;margin-right:10px;margin-top:3px;color:#ff7b14;font-weight:bold;text-decoration:none}
.ecl-tg-weigou-exp .ecl-tg-weigou-exp-item-price strong{font-weight:normal;color:#666;text-decoration:line-through;display:inline-block;padding-left:1px;font-size:12px;cursor:pointer}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-see-more{line-height:30px;text-align:center;border-top:1px solid #e3e3e3;margin:7px 9px 2px 9px}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-see-more a{color:#666;text-decoration:none}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-see-more a:hover{text-decoration:underline}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-loading{height:378px;background:#FFF;text-align:center}
.ecl-tg-weigou-exp .ecl-tg-weigou-exp-loading span{position:relative;top:160px}.ecl-tg-weigou-exp .ecl-tg-weigou-exp-showurl{color:#229122;margin:8px 0 0 0}
</style>
{%strip%}
{%$tplData.subcate = false%}
{%foreach from=$tplData.category.options item=item%}
    {%if $item.checked%}
        {%$tplData.subcate = $item.subcate%}
        {%break%}
    {%/if%}
{%/foreach%}
<div class="ecl-tg-weigou-exp" data-ajax="{%$tplData.ajax_url%}" data-category="{%$tplData.categoryid%}">
    <h4 class="ecl-tg-weigou-exp-title"><a href="{%$tplData.title_url%}&priceid=0" target="_blank" data-href="{%$tplData.title_url%}" data-click="{rsv_click_type:'title'}">{%$tplData.title%}</a></h4>
    <div class="ecl-tg-weigou-exp-warpper">
        <div class="ecl-tg-weigou-exp-category-filter collapsed" {%if !$tplData.subcate%}style="display:none"{%/if%} unselectable="on" onselectstart="return false;">
            <a class="ecl-tg-filter-more" data-click="{rsv_click_type:'dist_more'}">
                <span class="ecl-tg-filter-expand-wrap">更多</span>
                <span class="ecl-tg-filter-collapse-wrap">收起</span>
            </a>
            <div class="ecl-tg-weigou-exp-filter" data-click="{rsv_click_type:'category',fm:'beha'}">
                <span class="ecl-tg-weigou-exp-filter-label">类别：&nbsp;</span>
                {%foreach $tplData.subcate as $category%}
                    {%if $category.count > 0 || $category.id == 0%}
                        <a href="#" hidefocus="true" class="{%if $category@index == 0%}ecl-tg-weigou-exp-filter-all{%/if%}{%if $category.checked%} ecl-tg-weigou-exp-filter-active{%/if%}" data-id="{%$category.id|escape:'html'%}" data-click="{rsv_click_value:'{%$category.id|escape:'html'%}'}">{%$category.text|escape:'html'%}</a>
                        {%if !$category@last%}|{%/if%}
                    {%/if%}
                {%/foreach%}
            </div>
            <div class="ecl-tg-weigou-exp-filter compute-height"></div>
        </div>
        <div class="ecl-tg-weigou-exp-price-filter" unselectable="on" onselectstart="return false;">
            <div class="ecl-tg-weigou-exp-filter" data-click="{rsv_click_type:'price',fm:'beha'}">
                <span class="ecl-tg-weigou-exp-filter-label">价格：&nbsp;</span>
                {%foreach $tplData.price as $price%}
                    <a href="#" hidefocus="true" class="{%if $price@index == 0%}ecl-tg-weigou-exp-filter-all{%/if%}{%if $price.checked%} ecl-tg-weigou-exp-filter-active{%/if%}{%*if !$price.count%} ecl-tg-weigou-exp-filter-disable{%/if*%}" data-id="{%$price.id|escape:'html'%}" data-click="{rsv_click_value:'{%$price.id|escape:'html'%}'}">{%$price.text|escape:'html'%}</a>{%if !$price@last%}|{%/if%}
                {%/foreach%}
            </div>
        </div>
        <div class="ecl-tg-weigou-exp-recommend">对不起！没有找到相关商品，为您推荐以下<a target="_blank" href="#">类似商品</a></div>
        <div class="ecl-tg-weigou-exp-table-ct" data-click="{rsv_click_type:'list'}">
            <table class="ecl-tg-weigou-exp-table" data-count="{%$tplData.list|@count%}">
                {%for $i = 0 to $tplData.list|@count/4 - 1%}
                <tr>
                {%for $j = 0 to 3%}
                    <td>
                    {%if ($i * 4 + $j) < count($tplData.list)%}
                        {%$item = $tplData.list[$i * 4 + $j]%}
                        {%$index = $i * 4 + $j%}
                        <div class="ecl-tg-weigou-exp-item">
                            {%* 卡片图片 *%}
                            <div class="ecl-tg-weigou-exp-item-image">
                                <a href="{%$item.url%}" target="_blank" data-click="{rsv_click_value:'{%$index%}'}">
                                    <img class="ecl-tg-weigou-exp-item-image-m" src="{%$item.img|escape:'html'%}" width="121" height="91" />
                                </a>
                            </div>
                            {%* 卡片描述 *%}
                            <a href="{%$item.url%}" class="ecl-tg-weigou-exp-item-desc" target="_blank" data-click="{rsv_click_value:'{%$index%}'}" title="{%$item.title|escape:'html'%}" hidefocus="true">{%$item.description|escape:'html'%}</a>
                            {%* 价格相关 *%}
                            <a class="ecl-tg-weigou-exp-item-price" href="{%$item.url%}" target="_blank" data-click="{rsv_click_value:'{%$index%}'}" hidefocus="true">
                                {%$item.price|escape:'html'%}
                                <strong>{%$item.original_price%}</strong>
                            </a>
                            {%* 透明浮层 *%}
                            <a class="ecl-tg-weigou-exp-item-ext" target="_blank" href="{%$item.url%}" data-click="{rsv_click_value:'{%$index%}'}" hidefocus="true">
                                <div class="ecl-tg-weigou-exp-item-ext-bg"></div>
                                <div class="ecl-tg-weigou-exp-item-ext-lucency">
                                    <div class="ecl-tg-weigou-exp-item-ext-lucency-num">{%$item.purchased|escape:'html'%}人已团</div>
                                    <div class="ecl-tg-weigou-exp-item-ext-lucency-refer">来源：&nbsp;{%$item.source|escape:'html'%}</div>
                                    <span class="ecl-tg-weigou-exp-item-ext-lucency-btn">去看看</span>
                                </div>
                            </a>
                        </div>
                    {%/if%}
                    </td>
                {%/for%}
                </tr>
                {%/for%}
            </table>
        </div>
        <div class="ecl-tg-weigou-exp-see-more"><a href="{%$tplData.title_url%}" target="_blank" data-click="{rsv_click_type:'see_more'}">查看更多团购信息&gt;&gt;</a><span></span></div>
        <div class="ecl-tg-weigou-exp-loading ecl-tg-weigou-exp-hidden">
            <span class="ecl-tg-weigou-exp-loading-text">加载中...</span>
        </div>
    </div>
    <p class="ecl-tg-weigou-exp-showurl">tejia.baidu.com</p>
</div>
{%/strip%}
<script type="text/javascript">
    A.init(function(){var e={},t=$(".ecl-tg-weigou-exp");t.init=function(){return e.ajax=this.data("ajax"),e.token=0,e.request={categoryid:this.data("category"),subcateid:0,priceid:0},e.params={categoryid:0,pid:0,subcateid:0},e.element={node:$("<em></em>"),title:this.find(".ecl-tg-weigou-exp-title A"),price:this.find(".ecl-tg-weigou-exp-price-filter .ecl-tg-weigou-exp-filter"),compute:this.find(".compute-height"),category:this.find(".ecl-tg-weigou-exp-category-filter .ecl-tg-weigou-exp-filter"),table:this.find(".ecl-tg-weigou-exp-table-ct"),see:this.find(".ecl-tg-weigou-exp-see-more"),recommend:this.find(".ecl-tg-weigou-exp-recommend"),more:this.find(".ecl-tg-filter-more"),loading:this.find(".ecl-tg-weigou-exp-loading")},t._initEvent(!0),this
},t.request=function(){e.token++;var i=e.ajax,a=e.request,c=a.t=e.token,r=function(e){e=e||{expected:!0};var i={priceList:e.price||!1,classList:!1,cardList:e.list||!1,recommend:e.recommend?e.url_info||{}:!1},a=null,r=null;a=e.category||{},a=e.category.options||[];for(var s=0,l=a.length;l>s;s++)if(r=a[s],r.checked){i.classList=a=r.options||r.subcate||null;break}t._repaint(i,c)};$.getJSON(i,a,r),t._showLoading(!0)},t._repaint=function(i,a){var c=e.element,r=e.params,s=null;if(e.token==a){if(i.priceList?(s=t._repaint.getPrice(i.priceList),c.price.html(s),c.price.parent().show()):c.price.parent().hide(),i.classList?(i.recommend||(s=t._repaint.getCategory(i.classList),c.category.html(s)),c.category.parent().show()):c.category.parent().hide(),i.cardList){s=t._repaint.getCards(i.cardList),c.table.html(s);
var l=c.title.data("href");c.title.attr("href",l+"&categoryid="+r.categoryid),i.recommend&&delete r.priceid,c.see.find("A").attr("href",l+"&"+$.param(r)),t._showLoading(!1)}else t._showLoading(!0,"抱歉，没有找到满足条件的团购。您可以尝试更改筛选条件。");if(i.recommend){var n={href:i.recommend.url,title:i.recommend.title};c.recommend.show().find("A").attr(n)}else c.recommend.hide();t._initEvent(!1)}},t._repaint.getPrice=function(e){for(var t='<span class="ecl-tg-weigou-exp-filter-label">价格：&nbsp;</span>',i=[],a=0;a<e.length;a++){var c=e[a];
i.push('<a href="#" hidefocus="true" class="'+(c.checked?" ecl-tg-weigou-exp-filter-active ":"")+'" data-id="'+c.id+'" data-click="{rsv_click_value:\''+c.id+"'}\">"+c.text+"</a>")}return t+i.join("|")},t._repaint.getCategory=function(e){for(var t='<span class="ecl-tg-weigou-exp-filter-label">类目：&nbsp;</span>',i=[],a=0;a<e.length;a++){var c=e[a];(c.count>0||0===c.id)&&i.push('<a href="#" hidefocus="true" class="'+(c.checked?" ecl-tg-weigou-exp-filter-active ":"")+'" data-id="'+c.id+'" data-click="{rsv_click_value:\''+c.id+"'}\">"+c.text+"</a>")
}return t+i.join("|")},t._repaint.getCards=function(t){for(var i,a=['<table class="ecl-tg-weigou-exp-table">'],c=e.element.node,r=t.length>4?2:1,s=0;r>s;s++){a.push("<tr>");for(var l=0;4>l;l++){if(a.push("<td>"),4*s+l<t.length){i=t[4*s+l];var n=c.text(i.title).html();a.push('<div class="ecl-tg-weigou-exp-item">    <div class="ecl-tg-weigou-exp-item-image">        <a href="'+i.url+'" target="_blank" data-click="{rsv_click_value:'+(4*s+l)+'}"><img class="ecl-tg-weigou-exp-item-image-m" src="'+i.img+'" width="121" height="91" /></a>    </div>    <a href="'+i.url+'" target="_blank" class=" ecl-tg-weigou-exp-item-desc" data-click="{rsv_click_value:'+(4*s+l)+'}" title="'+n+'" hidefocus="true">'+i.description+'</a>    <a class="ecl-tg-weigou-exp-item-price" href="'+i.url+'" target="_blank" data-click="{rsv_click_value:'+(4*s+l)+'}" hidefocus="true">'+i.price+"<strong>"+i.original_price+'</strong></a>    <a class="ecl-tg-weigou-exp-item-ext" target="_blank" href="'+i.url+'" data-click="{rsv_click_value:'+(4*s+l)+'}" hidefocus="true">    <div class="ecl-tg-weigou-exp-item-ext-bg"></div>    <div class="ecl-tg-weigou-exp-item-ext-lucency"><span class="ecl-tg-weigou-exp-item-ext-lucency-num">'+i.purchased+' 人已团</span>    <div class="ecl-tg-weigou-exp-item-ext-lucency-refer">来源：&nbsp;'+i.source+'</div><span class="ecl-tg-weigou-exp-item-ext-lucency-btn">去看看</span></div></a></div>')
}a.push("</td>")}a.push("</tr>")}return a.push("</table>"),a.join("")},t._initEvent=function(i){var a=e.element,c=e.request,r=e.params,s=a.more.parent();if(i){var l="ecl-tg-weigou-exp-filter-active";a.price.delegate("A","click",function(e){var i=$(this);/disable/.test(this.className)||(a.price.find("A").removeClass(l),i.addClass(l),c.pid=r.priceid=i.data("id"),t.request()),e.preventDefault()}),a.category.delegate("A","click",function(e){var i=$(this);/disable/.test(this.className)||(a.category.find("A").removeClass(l),i.addClass(l),c.subcateid=r.categoryid=i.data("id"),t.request()),e.preventDefault()
}),a.more.click(function(e){s.toggleClass("collapsed"),e.stopPropagation()}),a.compute.html(a.category.html())}return a.compute.height()<30?a.more.hide():(a.more.show(),s.addClass("collapsed")),this},t._showLoading=function(t,i){var a=e.element;a.loading.html('<span class="ecl-tg-weigou-exp-loading-text">'+(i||"加载中...")+"</span>"),a.table[t?"hide":"show"](),a.see[t?"hide":"show"](),a.loading[t?"show":"hide"]()},this.dispose=function(){e.token++},t.init()});
</script>
{%/block%}