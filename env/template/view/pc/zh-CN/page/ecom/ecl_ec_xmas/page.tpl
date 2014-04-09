{%extends 'c_base.tpl'%}
{%block name='content'%}

{%if $tplData.StdStl == 56%}
<style>
.ecl-ec-xmas{font-size:12px;padding-bottom:15px;overflow:hidden;}.ecl-ec-xmas-header{width:536px;height:79px;margin:-9px -9px 0;background:url(http://bs.baidu.com/weigou-baidu-com/header-fad1e4b9.png);}.ecl-ec-xmas-header a{display:block;height:79px;}.ecl-ec-xmas-top{height:145px;overflow:hidden;margin-top:5px;}.ecl-ec-xmas-items{width:540px;overflow:hidden;}.ecl-ec-xmas-item{float:left;width:121px;height:145px;margin-right:11px;position:relative;}.ecl-ec-xmas-item-image{height:104px;overflow:hidden;}.ecl-ec-xmas-item-image img{height:104px;width:121px;}.ecl-ec-xmas-item-name{height:16px;line-height:16px;_line-height:18px;overflow:hidden;background:#a6a6a6;text-align:center;color:#fff;}.ecl-ec-xmas-item-name span{display:block;margin:auto;}.ecl-ec-xmas-item-price{height:21px;overflow:hidden;margin-top:4px;line-height:21px;}
.ecl-ec-xmas-item-old-price{float:left;color:#666;border-right:1px solid #666;text-decoration:line-through;padding:0 5px;font-size:14px;}.ecl-ec-xmas-item-new-price{float:left;color:#c00;font-size:17px;font-weight:bold;padding:0 5px;}.ecl-ec-xmas-item-qiang{height:21px;width:26px;position:absolute;right:3px;bottom:0;background:url(http://bs.baidu.com/weigou-baidu-com/qiang-63d70998.png);}.ecl-ec-xmas-item-href{position:absolute;top:0;left:0;display:block;height:145px;width:121px;background:#000;opacity:0;filter:alpha(opacity=0);}.ecl-ec-xmas-tabs{margin:15px 0 8px;border-bottom:1px solid #e3e3e3;background:#0b9d23;font-size:0;position:relative;height:27px;}.ecl-ec-xmas-tabs ul{background:#0d8143;height:27px;display:inline-block;float:left;_display:inline;_zoom:1;font-size:0;line-height:27px;}.ecl-ec-xmas-tabs li{position:relative;z-index:0;cursor:pointer;vertical-align:bottom;font-size:12px;background-color:#0b9d23;color:#fff;border-left:1px solid #0b9d23;border-right:1px solid #0b9d23;display:inline-block;*display:inline;*zoom:1;width:94px;text-align:center;}
.ecl-ec-xmas-tab-link{color:#fff;text-decoration:none;}li.ecl-ec-xmas-tab-selected{z-index:1;height:26px;margin-bottom:-1px;line-height:23px;background:#fff;border-left:1px solid #e3e3e3;border-right:1px solid #e3e3e3;font-weight:bold;}li.ecl-ec-xmas-tab-selected a{color:#ff830f;}.ecl-ec-xmas-body{overflow:hidden;}.ecl-ec-xmas-tab-body{display:none;}.ecl-ec-xmas-tab-body-selected{display:block;}.ecl-ec-xmas-tab-more{line-height:27px;color:#fff;float:right;font-size:12px;margin-right:10px;_zoom:1;position:relative;z-index:2;}.ecl-ec-xmas-tab-more span{font-family:simsun;}
</style>
{%assign var="data" value=[
	"brand" => [
		[
			"id" => "181839675",
			"name" => "雅诗兰黛修护精华露",
			"imgUrl" => "http://bs.baidu.com/weigou-baidu-com/brand-1.jpg",
			"old_price" => 250,
			"price" => 95
		],
		[
			"id" => "181841352",
			"name" => "倩碧 润肤露",
			"imgUrl" => "http://bs.baidu.com/weigou-baidu-com/brand-2.jpg",
			"old_price" => 460,
			"price" => 172
		],
		[
			"id" => "181833156",
			"name" => "海蓝之谜面霜 小样",
			"imgUrl" => "http://bs.baidu.com/weigou-baidu-com/brand-3.jpg",
			"old_price" => 199,
			"price" => 85
		],
		[
			"id" => "181374973",
			"name" => "希思黎 全能乳液",
			"imgUrl" => "http://bs.baidu.com/weigou-baidu-com/brand-4.jpg",
			"old_price" => 1520,
			"price" => 888
		]
	],
	"tabs" => [
		[
			"name" => "基础护理",
			"link" => "#jichu",
			"items" => [
				[
					"id" => "181839511",
                    "name" => "兰蔻 柔肤化妆水",
                    "imgUrl" => "http://bs.baidu.com/weigou-baidu-com/basic-1.jpg",
                    "old_price" => 340,
                    "price" => 179
				],
				[
					"id" => "181841316",
                    "name" => "兰芝 锁水睡眠面膜",
                    "imgUrl" => "http://bs.baidu.com/weigou-baidu-com/basic-2.jpg",
                    "old_price" => 230,
                    "price" => 106
				],
				[
					"id" => "181832970",
                    "name" => "雅诗兰黛红石榴套装",
                    "imgUrl" => "http://bs.baidu.com/weigou-baidu-com/basic-3.jpg",
                    "old_price" => 1760,
                    "price" => 750
				],
				[
					"id" => "181808917",
                    "name" => "阿迪达斯男士2件套",
                    "imgUrl" => "http://bs.baidu.com/weigou-baidu-com/basic-4.jpg",
                    "old_price" => 168,
                    "price" => 89
				]
			]
		],
		[
			"name" => "特殊护理",
			"link" => "#teshu",
			"items" => [
				[
					"id" => "181616799",
                    "name" => "兰蔻 精华眼膜霜",
                    "imgUrl" => "http://bs.baidu.com/weigou-baidu-com/special-1.jpg",
                    "old_price" => 560,
                    "price" => 309
				],
				[
					"id" => "181632963",
                    "name" => "Rosebud玫瑰花蕾膏",
                    "imgUrl" => "http://bs.baidu.com/weigou-baidu-com/special-2.jpg",
                    "old_price" => 79,
                    "price" => 29
				],
				[
					"id" => "181375378",
                    "name" => "埃及魔法膏",
                    "imgUrl" => "http://bs.baidu.com/weigou-baidu-com/special-3.jpg",
                    "old_price" => 390,
                    "price" => 139
				],
				[
					"id" => "181385656",
                    "name" => "迪奥 真我香水",
                    "imgUrl" => "http://bs.baidu.com/weigou-baidu-com/special-4.jpg",
                    "old_price" => 99,
                    "price" => 55
				]
			]
		]
	]
] %}

{%assign var=domain_prefix value="http://weigou.baidu.com/promotions/beauty_christmas"%}
<div id="ecl-ec-xmas" class="ecl-ec-xmas c-border">
    <div class="ecl-ec-xmas-header">
        <a target="_blank" href="{%$domain_prefix|escape:'html'%}"></a>
    </div>
    <div class="ecl-ec-xmas-top">
        <div class="ecl-ec-xmas-items">
            {%foreach from=$data.brand key=index item=item%}
            <div class="ecl-ec-xmas-item">
                <div class="ecl-ec-xmas-item-image">
                    <img src="{%$item.imgUrl|escape:'html'%}"/>
                </div>
                <div class="ecl-ec-xmas-item-name">
                    <span>{%$item.name|escape:'html'%}</span>
                </div>
                <div class="ecl-ec-xmas-item-price">
                    <span class="ecl-ec-xmas-item-old-price">&yen;{%$item.old_price|escape:'html'%}</span>
                    <span class="ecl-ec-xmas-item-new-price">&yen;{%$item.price|escape:'html'%}</span>
                </div>
                <b class="ecl-ec-xmas-item-qiang"></b>
                <a class="ecl-ec-xmas-item-href" href="http://weigou.baidu.com/item?id={%$item.id|escape:'html'%}" target="_blank"></a>
            </div>
            {%/foreach%}
        </div>
    </div>
    
    <div class="ecl-ec-xmas-tabs">
        <ul>
            {%foreach from=$data.tabs key=index item=tab%}
            <li class="ecl-ec-xmas-tab {%if $index == 0%}ecl-ec-xmas-tab-selected{%/if%}" data-index="{%$index|escape:'html'%}">
                <a class="ecl-ec-xmas-tab-link" target="_blank" href="{%$domain_prefix|escape:'html'%}{%$tab.link|escape:'html'%}">{%$tab.name|escape:'html'%}</a>
            </li>
            {%/foreach%}
        </ul>
        <a target="_blank" class="ecl-ec-xmas-tab-more" href="{%$domain_prefix|escape:'html'%}">更多<span>&gt;&gt;</span></a>
    </div>
    <div class="ecl-ec-xmas-body">
        {%foreach from=$data.tabs key=index item=tab%}
        <div id="ecl-ec-xmas-tab-body-{%$index|escape:'html'%}" class="ecl-ec-xmas-tab-body {%if $index == 0%}ecl-ec-xmas-tab-body-selected{%/if%}">
            <div class="ecl-ec-xmas-items">
                {%foreach $tab.items as $item%}
                <div class="ecl-ec-xmas-item">
                    <div class="ecl-ec-xmas-item-image">
                        <img src="{%$item.imgUrl|escape:'html'%}"/>
                    </div>
                    <div class="ecl-ec-xmas-item-name">
                        <span>{%$item.name|escape:'html'%}</span>
                    </div>
                    <div class="ecl-ec-xmas-item-price">
                        <span class="ecl-ec-xmas-item-old-price">&yen;{%$item.old_price|escape:'html'%}</span>
                        <span class="ecl-ec-xmas-item-new-price">&yen;{%$item.price|escape:'html'%}</span>
                    </div>
                    <b class="ecl-ec-xmas-item-qiang"></b>
                    <a class="ecl-ec-xmas-item-href" href="http://weigou.baidu.com/item?id={%$item.id|escape:'html'%}" target="_blank"></a>
                </div>
                {%/foreach%}
            </div>
        </div>
        {%/foreach%}
    </div>
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
                'tpl': '{%$extData.tplt|escape:'javascript'%}',
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
    
        $(document).ready(function(){
            loadScript('http://www.baidu.com/cache/biz/ecom/weigou/card/x_mas-1.0.js');
        });      

    });
    
</script>
{%/if%}
{%/block%}