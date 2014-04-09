{%extends 'c_base.tpl'%}
{%block name='content'%}

{%if $tplData.StdStl == 44%}
<style type="text/css">
.ecl-weigou{margin-top:8px;width:540px;position:relative;}.ecl-ec-food-spu-common{font-size:12px;}.ecl-ec-spu-showurl{margin-top:5px;}.ecl-ec-songti{font-family:simsun;}.ecl-ec-food-spu-common .fl{float:left;*display:inline;}.ecl-ec-food-spu-common .fr{float:right;*display:inline;}.ecl-ec-food-spu-common a{color:#00C;text-decoration:none;}.ecl-ec-food-spu-common .ecl-ec-category-list-item{margin-bottom:15px;width:259px;overflow:hidden;}.ecl-ec-food-spu-common .ecl-ec-sub-category{width:165px;line-height:20px;height:80px;overflow:hidden;}.ecl-ec-food-spu-common .ecl-ec-sub-category-title{font-size:12px;font-weight:bold;padding-bottom:2px;}.ecl-ec-food-spu-common .ecl-ec-sub-category-list-item{margin-right:10px;}.ecl-ec-food-spu-common .ecl-ec-sub-category-list-item a{margin-right:10px;float:left;white-space:nowrap;}.ecl-ec-food-spu-common .ecl-ec-sub-category-list-item a:hover{text-decoration:underline;}.ecl-ec-food-spu-common .ecl-ec-category-img img{width:82px;height:82px;margin-right:10px;*margin-right:0;}.ecl-ec-food-spu-common .ecl-ec-merchants-list-item{margin-right:15px;}.ecl-ec-food-spu-common .ecl-ec-merchants-list{padding-bottom:15px;border-bottom:1px solid #d1d1d1;*width:518px;*margin-top:15px;}.ecl-ec-food-spu-common .ecl-ec-category-more{padding-top:10px;text-align:center;}.ecl-ec-food-spu-common .ecl-ec-category-more a{text-decoration:none;}
</style>
{%assign var="catId" value=$tplData.front_cat_path[1]['cat_id']%}
{%if $catId==1007782%}
{%assign var="allCategory" value = [
'category1' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/c9d88c28d3ba18152d735c7a590e4020.jpg','title' => '蜜饯/果干','target' => '1007791','content' => ['菠萝干' => '1007793', '山楂'=>'1007817', '枣类制品'=>'1007831', '杏仁'=>'1007827','哈密瓜'=>'1007799', '葡萄干'=>'1007814','梅'=>'1007810','香蕉干'=>'1007826','椰子片'=>'1007828','薯类制品'=>'1007821','无花果干'=>'1007825']],
'category2' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/5c20b946fd329c96760dc942a1439dc2.jpg','title' => '饼干糕点/巧克力','target' => '1007783','content' => ['传统糕点'=>'1007785', '西式糕点'=>'1007788','饼干'=>'1007784', '小点心'=>'1007787','膨化食品'=>'1007786', '巧克力/DIY巧克力'=>'1007861']],
'category3' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/b5afde7471694d52af88f5a2f7658e05.jpg','title' => '海味即食/肉干肉脯','target' => '1007890','content' => ['裙带菜'=>'1007893', '鱼系列'=>'1007898', '蟹系列'=>'1007897','鱿鱼系列'=>'1007899','鸭肉类'=>'1007857','驴肉'=>'1007852','羊肉类'=>'1007858','鸡肉类'=>'1007851','豆干制品'=>'1007848','牛肉类'=>'1007854']],
'category4' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/875588f33cc3f67ab816f69db65234ea.jpg','title' => '坚果/炒货','target' => '1007862','content' => ['鲍鱼果' => '1007866', '杏仁'=>'1007881','花生'=>'1007872','山核桃'=>'1007876','核桃'=>'1007870','香榧'=>'1007879','松子'=>'1007877','板栗'=>'1007874','开心果'=>'1007873','长寿果'=>'1007867','核桃仁'=>'1007871','夏威夷果'=>'1007878','瓜子'=>'1007869','巴旦木'=>'1007863','银杏果'=>'1007864','腰果'=>'1007882']]]%}

{%assign var="merchants" value=['一号店'=>'56','京东商城'=>'276', '当当网'=>'279', '顺丰优选'=>'282', '苏宁易购'=>'288']%}


{%else%}
{%assign var="allCategory" value = [
'category1' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/dde8a7a0ba1a7dc55295d17e91e4057f.jpg','title' => '酒类','target' => '1007468','content' => ['威士忌/进口烈酒' => '1007474', '葡萄酒'=>'1007472', '国产白酒'=>'1007469','药酒'=>'1007475', '其他酒类'=>'1007473','黄酒'=>'1007470','啤酒'=>'1007471']],
'category2' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/442da6a0130ca92ae48f473d5243a242.jpg', 'title' => '茶叶','target' => '1007447','content' => ['绿茶'=>'1007454', '红茶'=>'1007450', '黄茶'=>'1007453','白茶'=>'1007448', '养生茶'=>'1007466','花草茶'=>'1007451','普洱茶'=>'1007455','花茶'=>'1007452','黑茶'=>'1007449','乌龙茶'=>'1007465','水果茶'=>'1007464']],
'category3' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/73e3f1efaf1de9360cf276438d4d266b.jpg','title' => '饮料/乳品','target' => '1007514','content' => ['果蔬汁' => '1007518', '果味饮料'=>'1007522','益生菌'=>'1007528', '含乳饮料'=>'1007523','碳酸饮料'=>'1007529','功能饮料'=>'1007517','茶饮料'=>'1007515','酸梅汤'=>'1007527','常温牛奶'=>'1007516']],
'category4' => ['img' => 'http://bs.baidu.com/weigou-baidu-com/d187f0c17e5963f890aff91abec3ee82.jpg','title' => '冲饮咖啡','target' => '1007477','content' => ['冲饮麦片' => '1007479', '奶茶'=>'1007485', '芝麻糊'=>'1007494', '藕粉'=>'1007490', '蜂蜜果味茶'=>'1007482','冲饮果汁'=>'1007478','豆奶'=>'1007481','即饮咖啡'=>'1007498','速溶咖啡'=>'1007511']]]%}

{%assign var="merchants" value=['一号店'=>'56','京东商城'=>'276', '当当网'=>'279', '顺丰优选'=>'282', '苏宁易购'=>'288', '酒仙网'=>'412', '酒美商城'=>'2295810,390']%}


{%/if%}


{%assign var="rootUrl" value="http://weigou.baidu.com/category?id="%}
<h3 class="t">
    <a href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" target="_blank" class="OP_LOG_LINK" id="ecl-ec-spu-type-title"><em>{%$extData.OriginQuery|limitlen:50|escape:'html'%}</em>&nbsp;&lt;限时抢购&gt;｜免运费｜货到付款&nbsp;百度微购</a>
</h3>
<div id="ecl-weigou-view-container" class="ecl-weigou-food ecl-weigou">
    <div id="ecl-weigou-view-container-placeholder">
        <div class="ecl-weigou-view-container c-border">
            <div class="ecl-ec-food-spu-common c-clearfix">
            
                <ul class="ecl-ec-category-list fl c-clearfix">
                {%foreach $allCategory as $category%}
                    {%assign var="title" value=$category['title']%}
                    <li class="ecl-ec-category-list-item fl c-clearfix">
                        <a class="ecl-ec-category-img OP_LOG_LINK fl" href="{%$rootUrl%}{%$category['target']|escape:'html'%}" target="_blank" title="{%$title|escape:'html'%}">
                            <img  src="{%$category['img']|escape:'html'%}" alt="{%$category['title']|escape:'html'%}"/>
                        </a>
                        <dl class="ecl-ec-sub-category fl c-clearfix">
                            <dt class="ecl-ec-sub-category-title">
                                <a class="OP_LOG_LINK" href="{%$rootUrl%}{%$category['target']|escape:'html'%}" title="{%$title|escape:'html'%}" target="_blank">
                                    {%$title|escape:'html'%}
                                </a>
                            </dt>

                            <dd class="ecl-ec-sub-category-list-item">
                            {%foreach from=$category['content']  key=title item=url%}
                                <a class="OP_LOG_LINK" href="{%$rootUrl%}{%$url|escape:'html'%}" title="{%$title|escape:'html'%}" target="_blank">{%$title|escape:'html'%}</a>
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
                        <a class="OP_LOG_LINK" href="http://weigou.baidu.com/category?merchant_id={%$target|escape:'url'%}&id={%$catId|escape:'url'%}" target="_blank" title="{%$merchant|escape:'html'%}">
                            {%$merchant|escape:'html'%}
                        </a>
                    </dd>
                    {%/foreach%}
                </dl> 
                <div class="ecl-ec-category-more"><a href="http://weigou.baidu.com/topic/food" target="_blank">更多分类<span class="ecl-ec-songti">&gt;&gt;</span></a></div>   
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
    A.setup(function(){
        var bds = window.bds = window.bds || {};
        bds.ecom = bds.ecom || {};
        bds.ecom.data = {
            'zhixin': {
                'tpl': 'ecl_ec_food_spu_common',
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

        bds.ready(function() {
			loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/food_spu_common-1.4.js');
        });
    });
</script>

{%/if%}
{%/block%}