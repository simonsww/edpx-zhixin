{%extends 'base.tpl'%}
{%block name='content'%}

{%if $tplData.StdStl == 46%}
<style type="text/css">
    .ecl-ec-spu-showurl{margin-top:2px;}.ecl-ec-food-spu-common{font-size:1em;}.ecl-ec-food-spu-common dl,.ecl-ec-food-spu-common dt,.ecl-ec-food-spu-common dd{margin:0;}.ecl-ec-food-spu-common .fl{float:left;}.ecl-ec-food-spu-common .fr{float:right;}.ecl-ec-food-spu-common a{color:#00C;text-decoration:none;}.ecl-ec-food-spu-common .ecl-ec-category-list-item{margin-bottom:8px;overflow:hidden;}.ecl-ec-food-spu-common .ecl-ec-sub-category{width:200px;line-height:20px;height:80px;overflow:hidden;}.ecl-ec-food-spu-common .ecl-ec-sub-category-title{font-size:1em;font-weight:bold;padding-bottom:2px;}.ecl-ec-food-spu-common .ecl-ec-sub-category-list-item a{margin-right:10px;float:left;white-space:nowrap;}.ecl-ec-food-spu-common .ecl-ec-category-img img{width:78px;height:78px;display:block;margin-right:10px;}.ecl-ec-food-spu-common .ecl-ec-merchants-list-item a{float:left;white-space:nowrap;margin-right:10px;}    
.ecl-ec-food-spu-common .ecl-ec-merchants-list{padding-bottom:10px;border-bottom:1px solid #d1d1d1;}.ecl-ec-food-spu-common .ecl-ec-category-more{padding-top:7px;line-height:15px;text-align:center;}.ecl-ec-food-spu-common .ecl-ec-category-more a{text-decoration:none;}
</style>

{%assign var="allCategory" value = [
'category1' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/ec98f10d0df965c61e8b056303a0928b.jpg','title' => '女人节热门活动！','target' => 'http://weigou.baidu.com/promotions/sale_38','content' => ['轻松做女人9.9元敞开抢！' => 'http://weigou.baidu.com/promotions/sale_38', '辣妈护肤品 5折封顶！'=>'http://weigou.baidu.com/promotions/KangarooMummy_38', '雾霾甲醛一扫空 3折起！'=>'http://weigou.baidu.com/promotions/skg_smog', '女同胞的营养师！ '=>'http://weigou.baidu.com/promotions/99kt_38']],
'category2' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/5600299a06c2094b4cfb1ce53a9d338a.jpg','title' => '送给俺娘~','target' => 'http://weigou.baidu.com/promotions/skg_smog','content' => ['平板电脑'=>'http://weigou.baidu.com/category?id=1001248', '老人手机'=>'http://weigou.baidu.com/category?q=&page_no=1&merchant_id=&sort_type=&price_max=-1&price_min=-1&only_avail=0&only_discount=0&localcode=4294967296&product_types=0%2C1&id=1008427&option86=559','豆浆机'=>'http://weigou.baidu.com/category?id=1003240', '电动牙刷'=>'http://weigou.baidu.com/search?f=sug&q=%E7%94%B5%E5%8A%A8%E7%89%99%E5%88%B7','保健品'=>'http://weigou.baidu.com/category?id=1007210', '吸尘器'=>'http://weigou.baidu.com/category?id=1003392', '净化器'=>'http://weigou.baidu.com/category?id=1003364', '染发烫发'=>'http://weigou.baidu.com/category?id=1014136']],
'category3' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/90592b79baf30b5ea82b759b09cb4af1.jpg','title' => '老婆,拿什么满足你！！','target' => 'http://weigou.baidu.com/promotions/sale_38','content' => ['Iphone5S'=>'http://weigou.baidu.com/search?f=init&q=5S', '阿胶'=>'http://weigou.baidu.com/search?f=sug&q=%E9%98%BF%E8%83%B6', '娇韵诗护理'=>'http://weigou.baidu.com/search?f=init&q=%E5%A8%87%E9%9F%B5%E8%AF%97','茱莉蔻精华'=>'http://weigou.baidu.com/search?f=init&q=%E8%8C%B1%E8%8E%89%E8%94%BB','咖啡机'=>'http://weigou.baidu.com/category?id=1003245','榨汁机'=>'http://weigou.baidu.com/search?id=1003310&q=%E6%A6%A8%E6%B1%81%E6%9C%BA','情趣内衣'=>'http://weigou.baidu.com/category?id=1000084','女性用品'=>'http://weigou.baidu.com/category?id=1000048']],
'category4' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/432233ae9c2823df80fba3604f27776a.jpg','title' => '女朋友想要的~','target' => 'http://weigou.baidu.com/promotions/99kt_38','content' => ['ipad' => 'http://weigou.baidu.com/search?f=init&q=ipad', '魔声耳机'=>'http://weigou.baidu.com/search?f=init&q=%E9%AD%94%E5%A3%B0','燕窝'=>'http://weigou.baidu.com/search?f=init&q=%E7%87%95%E7%AA%9D','桃花姬'=>'http://weigou.baidu.com/search?f=init&q=%E6%A1%83%E8%8A%B1%E5%A7%AC','松露巧克力'=>'http://weigou.baidu.com/search?f=sug&q=%E6%9D%BE%E9%9C%B2%E5%B7%A7%E5%85%8B%E5%8A%9B','香水套装'=>'http://weigou.baidu.com/search?f=init&q=%E9%A6%99%E6%B0%B4%E5%A5%97%E8%A3%85','美丽日记'=>'http://weigou.baidu.com/search?f=init&q=%E7%BE%8E%E4%B8%BD%E6%97%A5%E8%AE%B0', '欧舒丹'=>'http://weigou.baidu.com/search?f=init&q=%E6%AC%A7%E8%88%92%E4%B8%B9']]]%}

{%assign var="merchants" value=['苹果'=>'http://weigou.baidu.com/search?f=init&q=%E8%8B%B9%E6%9E%9C','三星'=>'http://weigou.baidu.com/search?f=sug&q=%E4%B8%89%E6%98%9F', '华为'=>'http://weigou.baidu.com/search?f=init&q=%E5%8D%8E%E4%B8%BA', '九阳'=>'http://weigou.baidu.com/search?f=sug&q=%E4%B9%9D%E9%98%B3', '飞利浦'=>'http://weigou.baidu.com/search?id=1003218&q=%E9%A3%9E%E5%88%A9%E6%B5%A6', '东阿阿胶'=>'http://weigou.baidu.com/search?id=1007532&q=%E4%B8%9C%E9%98%BF%E9%98%BF%E8%83%B6', '费列罗'=>'http://weigou.baidu.com/search?f=init&q=%E8%B4%B9%E5%88%97%E7%BD%97', '倩碧'=>'http://weigou.baidu.com/search?f=init&q=%E5%80%A9%E7%A2%A7', '兰蔻'=>'http://weigou.baidu.com/search?f=sug&q=%E5%85%B0%E8%94%BB', '玉兰油'=>'http://weigou.baidu.com/search?f=init&q=%E7%8E%89%E5%85%B0%E6%B2%B9']%}

{%assign var="rootUrl" value="http://weigou.baidu.com/category?id="%}
{%assign var="weigou_title" value=($extData.OriginQuery|cat:"  <限时抢购>｜免运费｜货到付款  百度微购") %}
<h3 class="t c-gap-bottom-small">
    <a title="{%$weigou_title|escape:'html'%}" href="http://weigou.baidu.com/promotions/sale_38" target="_blank" class="OP_LOG_LINK" id="ecl-ec-spu-type-title">{%$weigou_title|escape:'html'|limitlen:90|highlight:0%}</a>
</h3>
<div id="ecl-weigou-view-container" class="ecl-weigou-food ecl-weigou">
    <div id="ecl-weigou-view-container-placeholder">
        <div class="ecl-weigou-view-container c-border">
            <div class="ecl-ec-food-spu-common c-clearfix">
            
                <ul class="ecl-ec-category-list fl  c-clearfix">
                {%foreach from=$allCategory key=temp item=category name=cate%}
                    {%assign var="title" value=$category['title']%}
                    {%assign var="no_margin" value=$smarty.foreach.cate.index%2%}
                    <li class="ecl-ec-category-list-item fl c-span12 {%if $no_margin%}c-span-last{%/if%} c-clearfix">
                        <a class="ecl-ec-category-img OP_LOG_LINK fl" href="{%$category['target']|escape:'html'%}" title="{%$title|escape:'html'%}" target="_blank">
                            <img  src="{%$category['img']|escape:'html'%}" alt="{%$category['title']|escape:'html'%}"/>
                        </a>
                        <dl class="ecl-ec-sub-category fl c-clearfix">
                            <dt class="ecl-ec-sub-category-title">
                                <a class="OP_LOG_LINK" data-click="{'fm': 'alop'}" href="{%$category['target']|escape:'html'%}" title=" {%$title|escape:'html'%}" target="_blank">
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
                    <dt class="fl title">热门品牌：</dt>
                    <dd class="ecl-ec-merchants-list-item c-span20 c-span-last fl">
                    {%foreach from=$merchants key=merchant item=target%}
                    	<a class="OP_LOG_LINK" href="{%$target|escape:'html'%}" target="_blank" title="{%$merchant|escape:'html'%}">
                            {%$merchant|escape:'html'%}
                        </a>                   
                    {%/foreach%}
                    </dd>
                </dl> 
                <div class="ecl-ec-category-more"><a href="http://weigou.baidu.com/promotions/sale_38" title="更多商品" target="_blank">更多商品<span class="ecl-ec-songti">&gt;&gt;</span></a></div>   
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
                'tpl': 'ecl_ec_food_womens_day',
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