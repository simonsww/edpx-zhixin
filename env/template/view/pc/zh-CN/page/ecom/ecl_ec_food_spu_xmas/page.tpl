{%extends 'base_div.tpl'%}
{%block name='content'%}

{%if $tplData.StdStl == 46%}
<style type="text/css">
.ecl-weigou{margin-top:8px;width:540px;position:relative;}.ecl-ec-food-spu-common{font-size:12px;}.ecl-ec-spu-showurl{margin-top:5px;}.ecl-ec-songti{font-family:simsun;}.ecl-ec-food-spu-common .fl{float:left;*display:inline;}.ecl-ec-food-spu-common .fr{float:right;*display:inline;}.ecl-ec-food-spu-common a{color:#00C;text-decoration:none;}.ecl-ec-food-spu-common .ecl-ec-category-list-item{margin-bottom:15px;width:259px;overflow:hidden;}.ecl-ec-food-spu-common .ecl-ec-sub-category{width:165px;line-height:20px;height:80px;overflow:hidden;}.ecl-ec-food-spu-common .ecl-ec-sub-category-title{font-size:12px;font-weight:bold;padding-bottom:2px;}.ecl-ec-food-spu-common .ecl-ec-sub-category-list-item{margin-right:10px;}.ecl-ec-food-spu-common .ecl-ec-sub-category-list-item a{margin-right:10px;float:left;white-space:nowrap;}.ecl-ec-food-spu-common .ecl-ec-sub-category-list-item a:hover{text-decoration:underline;}.ecl-ec-food-spu-common .ecl-ec-category-img img{width:82px;height:82px;margin-right:10px;*margin-right:0;}.ecl-ec-food-spu-common .ecl-ec-merchants-list-item{margin-right:15px;}.ecl-ec-food-spu-common .ecl-ec-merchants-list{padding-bottom:15px;border-bottom:1px solid #d1d1d1;*width:518px;*margin-top:15px;}.ecl-ec-food-spu-common .ecl-ec-category-more{padding-top:10px;text-align:center;}.ecl-ec-food-spu-common .ecl-ec-category-more a{text-decoration:none;}
</style>

{%assign var="allCategory" value = [
'category1' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/36b7728bef9b835f9057e019f57f384c.jpg','title' => '圣诞Hao给力  S5000免费拿','target' => 'http://weigou.baidu.com/promotions/sale_christmas','content' => ['20元封顶' => 'http://weigou.baidu.com/promotions/sale_christmas', '兰蔻小黑瓶'=>'http://weigou.baidu.com/search?f=init&q=%E5%B0%8F%E9%BB%91%E7%93%B6', '美即面膜'=>'http://weigou.baidu.com/search?f=init&q=%E7%BE%8E%E5%8D%B3%E9%9D%A2%E8%86%9C','小狗吸尘器'=>'http://weigou.baidu.com/search?f=sug&q=%E5%B0%8F%E7%8B%97%E5%90%B8%E5%B0%98%E5%99%A8', '三星Note3'=>'http://weigou.baidu.com/search?f=init&q=Note3','空气净化器'=>'http://weigou.baidu.com/category?id=1003364','百利甜酒'=>'http://weigou.baidu.com/search?f=sug&q=%E7%99%BE%E5%88%A9%E7%94%9C%E9%85%92']],
'category2' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/7049ba0bd8be54c31c4e47470e89851d.jpg', 'title' => '美味High翻天全场3折起','target' => 'http://weigou.baidu.com/promotions/food_christmas','content' => ['糖果'=>'http://weigou.baidu.com/category?id=1007888', '黑巧克力'=>'http://weigou.baidu.com/category?q=&page_no=1&merchant_id=&sort_type=&price_max=-1&price_min=-1&only_avail=0&only_discount=0&localcode=4294967296&id=1007861&option21126=26725', '坚果'=>'http://weigou.baidu.com/category?id=1007862','牛肉干'=>'http://weigou.baidu.com/category?id=1007854', '蜜饯干果'=>'http://weigou.baidu.com/category?id=1007791','牛奶'=>'http://weigou.baidu.com/category?id=1007516','葡萄酒'=>'http://weigou.baidu.com/category?id=1007472','普洱茶'=>'http://weigou.baidu.com/category?id=1007455']],
'category3' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/4133211327f8b784fa356ed9628d3e86.jpg','title' => '3C添“Hao”礼 创新小家电','target' => 'http://weigou.baidu.com/promotions/3C_christmas','content' => ['手机' => 'http://weigou.baidu.com/category?id=1008427', '笔记本'=>'http://weigou.baidu.com/category?id=1000919','路由器'=>'http://weigou.baidu.com/category?id=1001292', '平板电脑'=>'http://weigou.baidu.com/category?id=1001248','数码相机'=>'http://weigou.baidu.com/category?id=1008442','取暖电器'=>'http://weigou.baidu.com/category?id=1003366','空气净化器'=>'http://weigou.baidu.com/category?id=1003364','电视'=>'http://weigou.baidu.com/category?id=1003333']],
'category4' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/115e90bb398f093ceeed197e022ee2ff.jpg','title' => '浓情圣诞 美不胜搜','target' => 'http://weigou.baidu.com/promotions/Beauty_christmas','content' => ['乳液/面霜' => 'http://weigou.baidu.com/category?id=1001650', '面膜/面膜粉'=>'http://weigou.baidu.com/category?id=1001647', '化妆水/爽肤水'=>'http://weigou.baidu.com/category?id=1001631', '眼部护理'=>'http://weigou.baidu.com/category?id=1001655', '面部精华'=>'http://weigou.baidu.com/category?id=1001645','身体护理'=>'http://weigou.baidu.com/category?id=1014134','洁面'=>'http://weigou.baidu.com/category?id=1001632','香水'=>'http://weigou.baidu.com/category?id=1001600']]]%}

{%assign var="merchants" value=['一号店'=>'1号店','京东商城'=>'京东', '当当网'=>'当当', '顺丰优选'=>'顺丰优选', '苏宁易购'=>'苏宁', '酒仙网'=>'酒仙', '酒美商城'=>'酒美']%}

<h3 class="t">
    <a href="http://weigou.baidu.com/promotions/sale_christmas" target="_blank" class="OP_LOG_LINK" id="ecl-ec-spu-type-title">圣诞“hao”给力_平板电脑免费拿_尽在百度微购</a>
</h3>
<div id="ecl-weigou-view-container" class="ecl-weigou-food ecl-weigou">
    <div id="ecl-weigou-view-container-placeholder">
        <div class="ecl-weigou-view-container c-border">
            <div class="ecl-ec-food-spu-common c-clearfix">
            
                <ul class="ecl-ec-category-list fl c-clearfix">
                {%foreach $allCategory as $category%}
                    {%assign var="title" value=$category['title']%}
                    <li class="ecl-ec-category-list-item fl c-clearfix">
                        <a class="ecl-ec-category-img OP_LOG_LINK fl" href="{%$category['target']|escape:'html'%}" title="{%$title|escape:'html'%}" target="_blank">
                            <img  src="{%$category['img']|escape:'html'%}" alt="{%$category['title']|escape:'html'%}"/>
                        </a>
                        <dl class="ecl-ec-sub-category fl c-clearfix">
                            <dt class="ecl-ec-sub-category-title">
                                <a class="OP_LOG_LINK" href="{%$category['target']|escape:'html'%}" title=" {%$title|escape:'html'%}" target="_blank">
                                    {%$title|escape:'html'%}
                                </a>
                            </dt>

                            <dd class="ecl-ec-sub-category-list-item">
                            {%foreach from=$category['content']  key=title item=url%}
                                <a class="OP_LOG_LINK" href="{%$url|escape:'html'%}" title="{%$title|escape:'html'%}" target="_blank">{%$title|escape:'html'%}</a>
                            {%/foreach%}
                            </dd>
                        </dl>
                    </li>
                {%/foreach%} 

                </ul>

                <dl class="ecl-ec-merchants-list c-clearfix">
                    <dt class="fl title">热门商家：</dt>
                    {%foreach from=$merchants key=merchant item=target%}
                    <dd class="fl ecl-ec-merchants-list-item">
                        <a class="OP_LOG_LINK" href="http://weigou.baidu.com/search?q={%$target|escape:'url'%}" target="_blank" title="{%$merchant|escape:'html'%}">
                            {%$merchant|escape:'html'%}
                        </a>
                    </dd>
                    {%/foreach%}
                </dl> 
                <div class="ecl-ec-category-more"><a href="http://weigou.baidu.com/topic/food" target="_blank">更多商品<span class="ecl-ec-songti">&gt;&gt;</span></a></div>   
            </div>
        </div>
    </div>
</div>
<div class="ecl-ec-spu-showurl">
    <span class="c-showurl">weigou.baidu.com
    <a target="_blank" class="c-icon c-icon-bao" href="http://baozhang.baidu.com/guarantee/"></a>
    </span>
</div>

{%assign var="cat_ids" value=array()%}
{%assign var="cat_names" value=array()%}
{%foreach $tplData.front_cat_path as $cat%}
{%array_push($cat_ids, $cat['cat_id'])|truncate:0:""%}
{%array_push($cat_names, $cat['cat_name'])|truncate:0:""%}
{%/foreach%}

<script>
    A.init(function(){
        var bds = window.bds = window.bds || {};
        bds.ecom = bds.ecom || {};
        bds.ecom.data = {
            'zhixin': {
                'tpl': 'ecl_ec_food_spu_xmas',
                'localcode': '{%$tplData.localcode%}',
                'weigou_domain': '{%$tplData.weigou_domain%}',
                 'logData': {
                    'cat_ids': '{%implode(',', $cat_ids)%}',
                    'cat_names': '{%implode(',', $cat_names)%}'
                }
            }
        };
        function loadScript(url) {
            var script = document.createElement('script');
            script.charset = 'utf-8';
            var head = document.getElementsByTagName('head')[0];
            head.appendChild(script);
            script.src = url;
        };

        baidu.dom.ready(function() {
            loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/food_spu_common-1.1.js');
        });
    });
</script>

{%/if%}
{%/block%}