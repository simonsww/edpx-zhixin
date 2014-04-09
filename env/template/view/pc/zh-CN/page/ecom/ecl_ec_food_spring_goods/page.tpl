{%extends 'base_div.tpl'%}
{%block name='content'%}

{%if $tplData.StdStl == 46%}
<style type="text/css">
.ecl-weigou{margin-top:8px;width:540px;position:relative;}.ecl-ec-food-spu-common{font-size:12px;}.ecl-ec-spu-showurl{margin-top:5px;}.ecl-ec-songti{font-family:simsun;}.ecl-ec-food-spu-common .fl{float:left;*display:inline;}.ecl-ec-food-spu-common .fr{float:right;*display:inline;}.ecl-ec-food-spu-common a{color:#00C;text-decoration:none;}.ecl-ec-food-spu-common .ecl-ec-category-list-item{margin-bottom:15px;width:259px;overflow:hidden;}.ecl-ec-food-spu-common .ecl-ec-sub-category{width:165px;line-height:20px;height:80px;overflow:hidden;}.ecl-ec-food-spu-common .ecl-ec-sub-category-title{font-size:12px;font-weight:bold;padding-bottom:2px;}.ecl-ec-food-spu-common .ecl-ec-sub-category-list-item{margin-right:10px;}.ecl-ec-food-spu-common .ecl-ec-sub-category-list-item a{margin-right:10px;float:left;white-space:nowrap;}.ecl-ec-food-spu-common .ecl-ec-sub-category-list-item a:hover{text-decoration:underline;}.ecl-ec-food-spu-common .ecl-ec-category-img img{width:82px;height:82px;margin-right:10px;*margin-right:0;}.ecl-ec-food-spu-common .ecl-ec-merchants-list-item{margin-right:15px;}.ecl-ec-food-spu-common .ecl-ec-merchants-list{padding-bottom:15px;border-bottom:1px solid #d1d1d1;*width:518px;*margin-top:15px;}.ecl-ec-food-spu-common .ecl-ec-category-more{padding-top:10px;text-align:center;}.ecl-ec-food-spu-common .ecl-ec-category-more a{text-decoration:none;}
</style>

{%assign var="allCategory" value = [
'category1' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/fbdf1bcfdbeb6a0b718227d45d73b778.jpg','title' => '年货备起来！','target' => 'http://weigou.baidu.com/promotions/sale_nianhuo','content' => ['糖果' => 'http://weigou.baidu.com/category?id=1007888', '黑巧克力'=>'http://weigou.baidu.com/category?q=&page_no=1&merchant_id=&sort_type=&price_max=-1&price_min=-1&only_avail=0&only_discount=0&localcode=4294967296&id=1007861&option21126=26725', '坚果'=>'http://weigou.baidu.com/category?id=1007862', '牛肉干'=>'http://weigou.baidu.com/category?id=1007854','蜜饯干果'=>'http://weigou.baidu.com/category?id=1007791', '牛奶'=>'http://weigou.baidu.com/category?id=1007516','葡萄酒'=>'http://weigou.baidu.com/category?id=1007472','普洱茶'=>'http://weigou.baidu.com/category?id=1007455']],
'category2' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/5aca524782d4c32b222e4f522599d890.jpg','title' => '有好酒，9元天天秒！','target' => 'http://weigou.baidu.com/promotions/sale_9wine','content' => ['茅台'=>'http://weigou.baidu.com/search?f=sug&q=%E8%8C%85%E5%8F%B0', '五粮液'=>'http://weigou.baidu.com/search?f=sug&q=%E4%BA%94%E7%B2%AE%E6%B6%B2','汾酒'=>'http://weigou.baidu.com/search?f=sug&q=%E6%B1%BE%E9%85%92', '二锅头'=>'http://weigou.baidu.com/search?f=sug&q=%E4%BA%8C%E9%94%85%E5%A4%B4','洋酒'=>'http://weigou.baidu.com/category?id=1007474', '葡萄酒'=>'http://weigou.baidu.com/category?id=1007472', '啤酒'=>'http://weigou.baidu.com/category?id=1007471', '保健酒'=>'http://weigou.baidu.com/category?id=1007475']],
'category3' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/6d4d414d00a55ed7cf536c0e222cdebe.jpg','title' => '有科技更贴心！','target' => 'http://weigou.baidu.com/topic/phone','content' => ['平板电脑'=>'http://weigou.baidu.com/category?id=1001248', '老人手机'=>'http://weigou.baidu.com/category?q=&page_no=1&merchant_id=&sort_type=&price_max=-1&price_min=-1&only_avail=0&only_discount=0&localcode=4294967296&id=1008427&option86=559', '数码相机'=>'http://weigou.baidu.com/category?id=1008442','取暖电器'=>'http://weigou.baidu.com/category?id=1003366','空气净化器'=>'http://weigou.baidu.com/category?id=1003364','吸尘器'=>'http://weigou.baidu.com/search?f=sug&q=%E5%B0%8F%E7%8B%97%E5%90%B8%E5%B0%98%E5%99%A8','足浴盆'=>'http://weigou.baidu.com/search?f=sug&q=%E8%B6%B3%E6%B5%B4%E7%9B%86','料理机'=>'http://weigou.baidu.com/category?id=1003243']],
'category4' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/7c92c7ebb7b089ccbdb8050e9f0f70ec.jpg','title' => '妈妈回来了~','target' => 'http://weigou.baidu.com/promotions/qinqinbaobei_nianhuo','content' => ['喂养用品' => 'http://weigou.baidu.com/category?id=1014225', '奶粉'=>'http://weigou.baidu.com/category?id=101421','玩具'=>'http://weigou.baidu.com/category?id=1008447','营养补充'=>'http://weigou.baidu.com/category?id=1014221','纸尿裤'=>'http://weigou.baidu.com/category?id=1005535','辅食添加'=>'http://weigou.baidu.com/category?id=1014220','冬季护肤'=>'http://weigou.baidu.com/category?id=1014224']]]%}

{%assign var="merchants" value=['一号店'=>'http://weigou.baidu.com/search?q=1%E5%8F%B7%E5%BA%97','当当网'=>'http://weigou.baidu.com/search?q=%E5%BD%93%E5%BD%93', '苏宁易购'=>'http://weigou.baidu.com/search?q=%E8%8B%8F%E5%AE%81', '买卖宝'=>'http://weigou.baidu.com/category?q=&page_no=1&merchant_id=277&sort_type=&price_max=-1&price_min=-1&only_avail=0&only_discount=0&localcode=4294967296&id=1008427', '知我药妆'=>'http://weigou.baidu.com/category?q=&page_no=1&merchant_id=361&sort_type=&price_max=-1&price_min=-1&only_avail=0&only_discount=0&localcode=4294967296&id=1001650', '红酒客'=>'http://weigou.baidu.com/category?q=&page_no=1&merchant_id=504&sort_type=&price_max=-1&price_min=-1&only_avail=0&only_discount=0&localcode=4294967296&id=1007468', '酒美商城'=>'http://weigou.baidu.com/search?q=%E9%85%92%E7%BE%8', '零食控'=>'http://weigou.baidu.com/category?q=&page_no=1&merchant_id=420&sort_type=&price_max=-1&price_min=-1&only_avail=0&only_discount=0&localcode=4294967296&id=1007862']%}

{%assign var="rootUrl" value="http://weigou.baidu.com/category?id="%}
{%assign var="weigou_title" value=("抢"|cat:$extData.OriginQuery|cat:"就来百度微购，年货囤起来！") %}
<h3 class="t">
    <a title="{%$weigou_title|escape:'html'%}" href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" target="_blank" class="OP_LOG_LINK" id="ecl-ec-spu-type-title">{%$weigou_title|escape:'html'|limitlen:90|highlight:0%}</a>
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
                        <a class="OP_LOG_LINK" href="{%$target|escape:'html'%}" target="_blank" title="{%$merchant|escape:'html'%}">
                            {%$merchant|escape:'html'%}
                        </a>
                    </dd>
                    {%/foreach%}
                </dl> 
                <div class="ecl-ec-category-more"><a href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" title="更多商品" target="_blank">更多商品<span class="ecl-ec-songti">&gt;&gt;</span></a></div>   
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
                'tpl': 'ecl_ec_food_spring_goods',
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

        $(document).ready(function() {
        	loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/food_spu_common-1.2.js');                    
        });
    });
</script>

{%/if%}
{%/block%}