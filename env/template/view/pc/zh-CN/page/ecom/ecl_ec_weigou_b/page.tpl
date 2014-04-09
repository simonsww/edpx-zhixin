{%extends 'c_base.tpl'%}
{%block name='content'%}
{%function name=get_promo_type p1='promo_data'%}
{%if $p1.id != 0 && $p1.type != -1%}
{%if $p1.type == 0%}flash-sale{%elseif $p1.type == 1%}brand-sale{%elseif $p1.type == 2%}tuan{%/if%}
{%/if%}
{%/function%}

{%if $tplData.StdStl==5%} 

{%function name="get_char_num" str="str"%}
{%strlen(preg_replace("/[\x{4e00}-\x{9fa5}]{1}/u", '**', $str))%}
{%/function%}

{%function name=get_mer_name product="product"%}
{%if $product.product_type == 0%}
微购正品
{%else%}
{%$product.vendor|escape:'html'%}
{%/if%}
{%/function%}

{%function name=is_transfer product="product"%}
{%if $product.product_type == 1%}
data-transfer='true'
{%/if%}
{%/function%}

{%function name=get_trans_url product="product"%}
{%assign var="root_url" value="http://weigou.baidu.com/"%}
{%if $product.product_type == 1%}
{%$root_url%}site/transition?pid={%$product.id|escape:'none'%}&merchant_name={%$product.vendor|escape:'url'%}&product_url={%$product.product_url|escape:'url'%}
{%else%}
{%$root_url%}item?id={%$product.id|escape:'none'%}
{%/if%}
{%/function%}

<style type="text/css">
.ecl-weigou-header{zoom:1;}.ecl-weigou-header-inner{height:24px;}.ecl-weigou-header-logo{font-size:15px;margin:10px 0 0 8px;_display:inline;_zoom:1;width:65px;height:17px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -295px -19px;}.ecl-weigou-header-logo a{display:block;width:65px;height:17px;}.ecl-weigou-header-features{float:left;margin:10px 0 0 10px;line-height:18px;_display:inline;_zoom:1;}.ecl-weigou-header-left{float:left;}.ecl-weigou-header-left a{height:24px;line-height:24px;font-size:medium;}.ecl-weigou-header-right{float:right;margin:10px 8px 0 10px;_display:inline;}.ecl-weigou-header-right a{color:#7a77c8;}.ecl-weigou-header-logo{float:left;}.ecl-weigou-header-item{float:left;margin-right:10px;_zoom:1;_display:inline;}.ecl-weigou-header-item b{float:left;width:14px;height:14px;margin:2px 5px 0 0;display:inline-block;}
.ecl-weigou-header-item span{color:#AAA;float:left;}.ecl-weigou-header-quick{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -58px -82px;}.ecl-weigou-header-register{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -58px -52px;}.ecl-weigou-header-quality{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -58px -67px;}.ecl-weigou-address{display:none!important;position:relative;float:right;z-index:2;color:#666;width:117px;}.ecl-weigou-address .ecl-weigou-address-text{color:#000;margin-top:4px;margin-top:5px\9;float:left;line-height:16px;}.ecl-weigou-address-selector{left:100px;cursor:pointer;float:left;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -194px -96px;height:19px;width:64px;margin:2px 0 0 5px;_display:inline;}.ecl-weigou-address-content{display:inline-block;height:19px;width:53px;line-height:21px;_line-height:19px;text-align:center;}
.ecl-weigou-address-picker-wrapper{width:450px;overflow:hidden;}#ecl-weigou-address-picker{display:none;position:absolute;top:20px;right:0;border:1px solid #b5b5b5;padding:20px 12px;color:#806f66;background:#FFF;}.ecl-weigou-address-picker-inner{width:460px;font-size:0;*word-spacing:-1px;}.ecl-weigou-address-picker-inner div{margin:auto;width:480px;padding:3px 2px;zoom:1;border-bottom:1px dashed #ccc;}.ecl-weigou-address-picker-inner b{position:absolute;top:3px;right:3px;width:20px;height:20px;cursor:pointer;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -52px;}.ecl-weigou-address-picker-inner a{display:inline-block;_zoom:1;width:60px;height:24px;line-height:24px;overflow:hidden;cursor:pointer;font-size:12px;}.ecl-weigou-address-picker-inner .ecl-weigou-address-noborder{border:0;}.ecl-weigou-nav-buy{margin-top:10px;font-size:12px;}
.ecl-weigou-nav-buy #ecl-weigou-nav-buy-transfer{color:#00c;}.ecl-weigou-nav-buy #ecl-weigou-nav-buy-transfer .query-word{color:#C00;}.ecl-weigou-nav-buy .ecl-weigou-nav-buy-weigou-show-url{color:#008000;font-size:13px;}.ecl-weigou-nav-buy .ecl-weigou-nav-buy-weigou-show-url .c-icon-bao{margin:2px 0 0 3px;}.ecl-weigou-pur{padding-bottom:10px;position:relative;}.ecl-weigou-pur-section{margin:20px 0 0;}.ecl-weigou-pur-section th{font-size:12px;}.ecl-weigou-pur-title{font-size:14px;font-weight:bold;padding:0 0 10px 5px;zoom:1;overflow:hidden;}.ecl-weigou-pur-title span{float:left;}.ecl-weigou-product-counter-wrapper{width:100px;overflow:hidden;}.ecl-weigou-counter{width:84px;margin:auto;}.ecl-weigou-counter span{float:left;}.ecl-weigou-counter .ecl-weigou-minus,.ecl-weigou-counter .ecl-weigou-plus{width:20px;height:20px;cursor:pointer;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -95px -133px;-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;}
.ecl-weigou-counter .ecl-weigou-plus{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat 0 -52px;}.ecl-weigou-counter .ecl-weigou-count{width:32px;height:18px;border:1px solid #e1e1e1;margin:0 5px;overflow:hidden;}.ecl-weigou-counter input{width:32px;height:20px;line-height:20px;_line-height:18px;outline:0;border:0;text-align:center;}.ecl-weigou-pur-list table{width:540px;text-align:center;}.ecl-weigou-pur-list th{height:25px;vertical-align:middle;background:#f5f5f5;color:#666;}.ecl-weigou-pur-bottom{overflow:hidden;zoom:1;}.ecl-weigou-pur-bottom .ecl-weigou-invoice,.ecl-weigou-pur-bottom #ecl-weigou-pur-agmt{margin:-2px 3px 1px 3px;margin-top:0\9;_margin-top:-1px;height:13px;width:13px;vertical-align:middle;}.ecl-weigou-pur-bottom .ecl-weigou-invoice-text{color:#666;}.ecl-weigou-pur-bottom .ecl-weigou-invoice-tip{color:#9a9a9a;}
.ecl-weigou-pur-bottom .ecl-weigou-pur-agmt-wrapper{margin-top:8px;color:#666;}.ecl-weigou-pur-bottom .ecl-weigou-pur-agmt-wrapper a{color:#666;}.ecl-weigou-pur-bottom-left{float:left;width:200px;}.ecl-weigou-pur-bottom-right{float:right;color:#666;}.ecl-weigou-pur-bottom-right div{margin-bottom:6px;}.ecl-weigou-pur-bottom-right table{text-align:right;float:right;overflow:hidden;}.ecl-weigou-pur-bottom-right th{font-weight:normal;}.ecl-weigou-pur-bottom-right td{font-weight:bold;color:#da220c;}#ecl-weigou-view-container .ecl-weigou-pur-bottom-right .ecl-weigou-money{color:#da220c;}#ecl-weigou-pur-submit{float:right;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -377px -74px;width:120px;height:28px;color:#FFF;text-align:center;padding-top:8px;cursor:pointer;}#ecl-weigou-pur-submit-loading{float:right;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -377px -37px;width:120px;height:36px;overflow:hidden;color:#FFF;}
#ecl-weigou-pur-submit-loading img{display:block;width:10px;height:10px;margin:12px auto 0;}.ecl-weigou-pur-logo{margin:auto;height:60px;width:60px;overflow:hidden;}.ecl-weigou-pur-logo div{border:1px solid #e1e1e1;}.ecl-weigou-pur-logo img{display:block;width:58px;height:58px;}.ecl-weigou-pur-item{height:70px;}.ecl-weigou-pur-name{display:inline-block;padding:0 8px;text-align:left;word-break:break-all;word-wrap:break-word;}.ecl-weigou-pur-price{color:#da220c;display:inline-block;font-weight:bold;}.ecl-weigou-pur-delete{display:inline-block;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -194px -116px;line-height:21px;_line-height:23px;text-align:center;width:48px;height:21px;overflow:hidden;cursor:pointer;color:#666;}.ecl-weigou-pur-bottom{border-top:1px solid #e1e1e1;padding:10px 0 0;}.ecl-weigou-product-price-td,.ecl-weigou-product-counter-td,.ecl-weigou-product-op-td{vertical-align:top;}
.ecl-weigou-pur-price-wrapper,.ecl-weigou-counter,.ecl-weigou-pur-delete{margin-top:17px;}.ecl-weigou-product-errmsg{height:22px;line-height:22px;border:1px solid #f1a4a4;padding:0 5px 0 20px;color:#d00;width:55px;margin:5px auto 0;zoom:1;background:url(http://bs.baidu.com/adtest/6c0fcd727d9a0a5c1e3572128061272e.png) 4px 5px no-repeat;display:none;}#ecl-weigou-pur-total-price{font-size:18px;color:#da220c;font-weight:bold;}#ecl-weigou-pur-total-price-text{font-size:12px;display:none;}.ecl-weigou-pur-bottom-total{font-weight:bold;}#ecl-weigou-pur-return-btn{float:right;font-size:15px;cursor:pointer;text-decoration:underline;color:#7a77c8;visibility:visible;margin:18px 0 0 25px;display:none;}#ecl-weigou-pur-prices{display:none;padding-left:46px;}#ecl-weigou-pur-global-msg{position:absolute;display:none;width:258px;}
#ecl-weigou-pur-global-msg b{position:absolute;right:8px;top:8px;height:20px;width:20px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -117px;display:block;cursor:pointer;}.ecl-weigou-pur-global-wrapper{margin-bottom:4px;_margin-bottom:5px;zoom:1;border:1px solid #f99;background:#ffc;color:#df1411;}.ecl-weigou-pur-global-inner{width:200px;margin:10px 28px;}.ecl-weigou-pur-global-arrow{position:absolute;bottom:0;left:130px;height:5px;width:9px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat 0 -90px;}#ecl-weigou-pur-address-link{color:#7a77c8;font-size:12px;font-weight:normal;text-decoration:none;display:none;}.ecl-weigou-pur-new-addr{background:#f9f9f9;border:1px solid #e1e1e1;position:relative;zoom:1;}.ecl-weigou-pur-new-addr b{height:21px;width:21px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -73px -133px;}
.ecl-weigou-pur-noaddr,.ecl-weigou-pur-new-addr-expanded{border:1px solid #e80550;height:auto;}.ecl-weigou-pur-noaddr .ecl-weigou-pur-new-addr-header,.ecl-weigou-pur-new-addr-expanded .ecl-weigou-pur-new-addr-header{cursor:default;}.ecl-weigou-pur-noaddr .ecl-weigou-pur-new-addr-body,.ecl-weigou-pur-new-addr-expanded .ecl-weigou-pur-new-addr-body{display:block;}.ecl-weigou-pur-noaddr .ecl-weigou-pur-address-b,.ecl-weigou-pur-new-addr-expanded .ecl-weigou-pur-address-b{display:block;}.ecl-weigou-pur-noaddr .ecl-weigou-pur-new-addr-header{display:none;}.ecl-weigou-pur-address-b{position:absolute;right:0;bottom:0;display:none;}.ecl-weigou-pur-new-addr-header{overflow:hidden;height:26px;padding-left:236px;cursor:pointer;text-align:center;}.ecl-weigou-pur-new-addr-header b,.ecl-weigou-pur-new-addr-header span{text-align:left;float:left;font-size:12px;margin:5px 0 0 5px;width:65px;}
.ecl-weigou-pur-new-addr-header span{padding-top:2px\9;}.ecl-weigou-pur-new-addr-header b{margin:7px 0 0 0;height:12px;width:13px;overflow:hidden;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -302px;}.ecl-weigou-pur-new-addr-body{display:none;}.weigou-pur-new-addr-table{margin-top:10px;color:#666;}.weigou-pur-new-addr-table tr,.weigou-pur-new-addr-table th,.weigou-pur-new-addr-table td{vertical-align:middle;height:23px;}.weigou-pur-new-addr-table th{text-align:right;font-weight:normal;width:130px;}.weigou-pur-new-addr-table td{width:495px;}.weigou-pur-new-addr-table input.ecl-weigou-pur-input{float:left;border:1px solid #d3d3d3;height:20px;line-height:20px;width:177px;padding:1px 3px;-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box;color:#000;}.weigou-pur-new-addr-table span{float:left;}
.weigou-pur-new-addr-table .ecl-weigou-pur-form-first{height:30px;vertical-align:top;}.weigou-pur-new-addr-table .ecl-weigou-pur-form-first span{color:#da220c;font-weight:bold;}.ecl-weigou-pur-address-wrapper{position:relative;zoom:1;}.ecl-weigou-pur-addresses{position:absolute;display:none;width:380px;background:#FFF;border:1px solid #e1e1e1;left:0;top:23px;_top:25px;padding-bottom:10px;z-index:1;}.ecl-weigou-pur-addresses b{position:absolute;right:0;top:0;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -117px;width:20px;height:20px;cursor:pointer;}.ecl-weigou-pur-address-select{float:left;margin:10px 10px 0 10px;_display:inline;_zoom:1;}.ecl-weigou-pur-address-select select{width:100px;}#ecl-weigou-address-input{width:300px;}.ecl-weigou-pur-pick-address{height:22px;width:183px;border:1px solid #e1e1e1;background:#fff;color:#000;cursor:pointer;}
.ecl-weigou-pur-pick-address span{margin-left:5px;float:left;height:22px;line-height:22px;_line-height:24px;}.ecl-weigou-pur-pick-address b{float:right;width:11px;overflow:hidden;height:7px;margin:7px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -315px;}.ecl-weigou-pur-pick-address span{margin-left:5px;}.ecl-weigou-pur-error-message{display:none;float:left;height:22px;line-height:22px;border:1px solid #f1a4a4;padding:0 5px 0 20px;color:#d00;margin-left:10px;zoom:1;background:url(http://bs.baidu.com/adtest/6c0fcd727d9a0a5c1e3572128061272e.png) 4px 5px no-repeat;}.ecl-weigou-pur-top-addresses{width:540px;overflow:hidden;margin-bottom:6px;zoom:1;}.ecl-weigou-pur-top-addresses-inner{width:546px;overflow:hidden;margin-top:-6px;zoom:1;position:relative;}.ecl-weigou-pur-addreses-collapsed{height:88px;}
.ecl-weigou-pur-address{border:1px solid #e1e1e1;float:left;margin:6px 6px 0 0;position:relative;color:#666;cursor:pointer;}.ecl-weigou-pur-address b{position:absolute;right:0;bottom:0;_bottom:-1px;height:21px;width:21px;display:none;overflow:hidden;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -73px -133px;}.ecl-weigou-pur-address span{vertical-align:middle;}.ecl-weigou-pur-address-hover div a{display:block;}.ecl-weigou-pur-address-selected{border:1px solid #e80550;background:#ffc;}.ecl-weigou-pur-address-selected b{display:block;}.ecl-weigou-pur-address-inner{width:174px;vertical-align:middle;line-height:19px;}.ecl-weigou-pur-address-inner .ecl-addr-top{padding:10px 5px 0;word-break:break-all;word-wrap:break-word;overflow:hidden;height:40px;}.ecl-weigou-pur-address-inner .ecl-addr-bottom{margin:0 7px 8px;}
.ecl-weigou-pur-address-inner a{display:none;}.ecl-weigou-pur-address-inner:hover a{display:block;}.ecl-addr-bottom{overflow:hidden;_zoom:1;}.ecl-addr-bottom span{float:left;}.ecl-addr-bottom a{float:right;text-decoration:none;color:#7977c6;}.ecl-name{font-weight:bold;}#ecl-weigou-view-container #ecl-weigou-pur-offers td .ecl-weigou-money{color:#093;}#ecl-weigou-view-container #ecl-weigou-pur-offers td{color:#093;}.ecl-weigou-pur-address-btns{margin:10px auto;overflow:hidden;padding-left:188px;zoom:1;}#ecl-weigou-pur-address-ok{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat 0 -26px;height:25px;width:72px;margin-right:20px;float:left;}.ecl-weigou-pur-noaddr #ecl-weigou-pur-address-cancel{display:none;}.ecl-weigou-pur-noaddr .ecl-weigou-pur-address-btns{padding-left:245px;}#ecl-weigou-pur-address-cancel{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -377px -111px;height:25px;width:72px;margin-right:20px;float:left;margin:0 0 0 20px;cursor:pointer;}
#ecl-weigou-pur-addresses-msg{color:#fa7600;margin:0 0 10px 3px;}.ecl-weigou-pur-pay-method strong{font-weight:normal;color:#d9230e;}#ecl-weigou-pur-expand-address{float:left;color:#6563d3;font-size:12px;font-weight:normal;margin-top:2px;margin:2px 27px 0 0;_margin-top:0;}.ecl-weigou-pur-add-address{border:1px solid #e1e1e1;float:left;margin:6px 6px 0 0;position:relative;cursor:pointer;width:174px;height:77px;text-align:center;}.ecl-weigou-pur-add-address span{display:inline-block;width:44px;height:44px;vertical-align:middle;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -73px -89px;margin-top:17px;}.ecl-weigou-pur-summary-button{margin-top:5px;clear:both;}.ecl-weigou-pur-summary-button span{float:left;visibility:hidden;}.ecl-weigou-pur-details{border:1px solid #f99;background:#ffc;color:#333;padding:10px;line-height:24px;overflow:hidden;zoom:1;}
.ecl-weigou-pur-details span{display:inline-block;}.ecl-weigou-pur-details div{margin:0;}.ecl-weigou-pur-details-left{float:left;overflow:hidden;width:380px;}.ecl-weigou-pur-details-right{overflow:hidden;float:right;vertical-align:bottom;}.ecl-weigou-pur-details-right .ecl-price-title{color:#000;}.ecl-weigou-pur-details-right .ecl-price{color:#e11310;font-size:16px;margin-left:4px;font-weight:bold;}.ecl-weigou-pur-details-right .ecl-price-unit{color:#e11310;font-size:12px;margin-left:10px;}.ecl-weigou-pur-details-right div{overflow:hidden;zoom:1;}.ecl-weigou-pur-details-right div span,.ecl-weigou-pur-details-right div strong{float:left;}.ecl-weigou-pur-details-right strong{color:#e11310;font-weight:normal;}#ecl-weigou-pur-change-mobile{display:none!important;}.ecl-weigou-pur-promo-no{vertical-align:middle;}
.ecl-weigou-pur-name-td{vertical-align:top;text-align:left;padding-top:5px;}.ecl-weigou-pur-name-td b{display:block;width:81px;height:18px;margin:2px 0 0 9px;}.ecl-weigou-pur-name-td .brand-sale{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -194px -25px;}.ecl-weigou-pur-name-td .flash-sale{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -295px 0;}.ecl-weigou-pur-name-td .tuan{width:53px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -73px -70px;}.ecl-weigou-detail{padding:10px 0 0;}.ecl-weigou-detail-left{float:left;_display:inline;width:194px;overflow:hidden;}.ecl-weigou-detail-right{float:left;padding-left:20px;_display:inline;zoom:1;width:325px;color:#666;position:relative;z-index:11;}.ecl-weigou-detail-image-container{border:1px solid #e1e1e1;background:#FFF;}.ecl-weigou-detail-image-container div{width:192px;height:192px;overflow:hidden;}
.ecl-weigou-detail-image-container img{margin:1px;height:190px;width:190px;}.ecl-weigou-detail-gallery-wrapper{width:10000px;height:46px;position:absolute;left:0;}.ecl-weigou-detail-gallery-container{display:none;}.ecl-weigou-detail-gallery-container{margin-top:10px;width:194px;height:38px;overflow:hidden;display:none;position:relative;}.ecl-weigou-detail-gallery-left{cursor:pointer;position:absolute;left:0;top:0;}.ecl-weigou-detail-gallery-left div{width:10px;height:38px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -21px -223px;}.ecl-weigou-detail-gallery-left div.disabled{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -21px -262px;cursor:default;}.ecl-weigou-detail-gallery-right{width:10px;height:38px;cursor:pointer;position:absolute;right:0;top:0;}.ecl-weigou-detail-gallery-right div{width:10px;height:38px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -21px -145px;}
.ecl-weigou-detail-gallery-right div.disabled{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -21px -184px;cursor:default;}.ecl-weigou-detail-gallery{position:absolute;left:14px;width:167px;height:46px;overflow:hidden;_display:inline;}.ecl-weigou-detail-gallery ul{position:absolute;}.ecl-weigou-detail-gallery ul li{float:left;cursor:pointer;width:36px;height:36px;border:1px solid #e1e1e1;margin-right:5px;overflow:hidden;}.ecl-weigou-detail-gallery ul li img{width:36px;height:36px;}.ecl-weigou-detail-gallery ul li.selected{border:1px solid #ff6767;}.ecl-weigou-detail-name{font-size:14px;line-height:24px;width:305px;}.ecl-weigou-detail-name a{font-weight:bold;cursor:default;color:#000;text-decoration:none;word-wrap:break-word;word-break:break-all;}.ecl-weigou-detail-name a.transfer{cursor:pointer;}
.ecl-weigou-detail-vendor{color:#666;margin-top:7px;}.ecl-weigou-detail-vendor span{float:left;margin-top:3px;}.ecl-weigou-detail-vendor-name{color:#000;}.ecl-weigou-detail-vendor-name strong{font-weight:normal;color:#de1e1c;}.ecl-weigou-detail-price{margin-top:7px;}.ecl-weigou-detail-price span{float:left;margin-top:2px;}.ecl-weigou-detail-price .price{color:#d9230e;font-size:16px;margin:0 10px 0 2px;font-weight:bold;}.ecl-weigou-detail-price .price-old{color:#999;text-decoration:line-through;margin-right:10px;}.ecl-weigou-detail-price s{float:left;margin:2px 0 0;color:#999;}.ecl-weigou-countdown{margin:2px 0 0 5px;color:#000;}.ecl-weigou-detail-limit-buy{margin:3px 0 0 10px;color:#d9230e;}.ecl-weigou-detail-promo div{margin-top:7px;overflow:hidden;_zoom:1;}.ecl-weigou-detail-promo .promo-price{color:#d9230e;font-size:14px;}
.ecl-weigou-detail-promo span{float:left;}.ecl-weigou-detail-promo .promo-tag{height:18px;width:81px;}.ecl-weigou-detail-promo .brand-sale{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -194px -25px;}.ecl-weigou-detail-promo .flash-sale{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -295px 0;}.ecl-weigou-detail-promo .tuan{width:53px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -73px -70px;}.ecl-weigou-detail-lite-title{margin-top:2px;}.ecl-weigou-detail-counter{margin-top:7px;}.ecl-weigou-detail-counter span{float:left;}.ecl-weigou-detail-counter .ecl-weigou-detail-counter-title{margin-top:2px;}.ecl-weigou-detail-counter .ecl-weigou-detail-minus,.ecl-weigou-detail-counter .ecl-weigou-detail-plus{width:20px;height:20px;cursor:pointer;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -95px -133px;-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;}
.ecl-weigou-detail-counter .ecl-weigou-detail-plus{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat 0 -52px;}.ecl-weigou-detail-counter .ecl-weigou-detail-counter-input{width:32px;height:18px;border:1px solid #e1e1e1;margin:0 5px;overflow:hidden;}.ecl-weigou-detail-counter input{width:32px;height:20px;line-height:20px;_line-height:18px;outline:0;border:0;text-align:center;}.ecl-weigou-detail-pay-method{width:130px;}#ecl-weigou-detail-transfer{float:left;color:#7a77c8;margin-left:5px;width:98px;}#ecl-weigou-detail-transfer span{float:none;}.ecl-weigou-detail-transfer-disabled{display:none;}.ecl-weigou-detail-submit-wrapper{z-index:1;position:relative;}.ecl-weigou-detail-submit{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -377px 0;width:120px;height:36px;overflow:hidden;margin-top:10px;cursor:pointer;float:left;}
.ecl-weigou-detail-submit-disabled{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -73px 0;}.ecl-weigou-detail-bottom{display:none;margin:10px 0;zoom:1;}.ecl-weigou-rcmd-container{background:#FFF;padding:15px 0;color:#666;overflow:hidden;zoom:1;}.ecl-weigou-rcmd-left{float:left;width:117px;_display:inline;_zoom:1;}.ecl-weigou-rcmd-left .ecl-weigou-rcmd-item-top img{cursor:default;}.ecl-weigou-rcmd-left .ecl-weigou-rcmd-item-middle a{cursor:default;}.ecl-weigou-rcmd-middle{float:left;_display:inline;}.ecl-weigou-rcmd-middle b{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -147px -76px;width:23px;height:22px;display:block;margin:64px 11px 0 0;}.ecl-weigou-rcmd-right{float:left;width:376px;height:135px;}.ecl-weigou-rcmd-gallery-container{position:relative;}.ecl-weigou-rcmd-gallery-left,.ecl-weigou-rcmd-gallery-right{cursor:pointer;z-index:2;position:absolute;top:34px;}
.ecl-weigou-rcmd-gallery-left div,.ecl-weigou-rcmd-gallery-right div{width:15px;height:81px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -138px;}.ecl-weigou-rcmd-gallery-right div{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -21px -52px;}.ecl-weigou-rcmd-gallery-left div.disabled{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -73px -155px;cursor:default;}.ecl-weigou-rcmd-gallery-right div.disabled{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -220px;cursor:default;}.ecl-weigou-rcmd-gallery-right{right:1px;_right:0;}.ecl-weigou-rcmd-gallery{width:345px;height:135px;position:absolute;overflow:hidden;border-right:1px dashed #ededed;border-left:1px dashed #ededed;left:14px;}.ecl-weigou-rcmd-gallery-wrapper{height:135px;width:5000px;position:absolute;}
.ecl-weigou-rcmd-gallery-wrapper ul{position:absolute;}.ecl-weigou-rcmd-gallery-wrapper ul li{float:left;width:115px;height:135px;overflow:hidden;}.ecl-weigou-rcmd-gallery-wrapper ul li .ecl-weigou-rcmd-item{width:132px;}.ecl-weigou-rcmd-item{height:130px;}.ecl-weigou-rcmd-item-top{margin:auto;width:70px;height:70px;overflow:hidden;}.ecl-weigou-rcmd-item-top img{cursor:pointer;width:70px;height:70px;}.ecl-weigou-rcmd-item-middle{width:95px;height:32px;line-height:16px;margin:5px auto;overflow:hidden;}.ecl-weigou-rcmd-item-middle a{display:block;width:97px;overflow:hidden;word-wrap:break-word;word-break:break-all;}.ecl-weigou-rcmd-item-name{color:#666;word-break:break-all;word-wrap:break-word;}.ecl-weigou-rcmd-item-bottom{width:95px;margin:auto;padding-left:4px;}.ecl-weigou-rcmd-item-bottom input{margin:-2px 3px 1px 3px;margin-top:0 9;_margin-top:-1px;height:13px;width:13px;vertical-align:middle;}
.ecl-weigou-rcmd-item-bottom strong{color:#ff7800;}.ecl-weigou-rcmd-bottom{float:right;margin:5px 8px 0 0;_display:inline;}.ecl-weigou-rcmd-bottom span{display:inline-block;margin:6px 2px 0;_margin-top:7px;}.ecl-weigou-rcmd-count-wrapper span{color:#ff7800;display:inline-block;float:none;margin:0 3px 0;font-weight:bold;}span.ecl-weigou-rcmd-buy{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat 0 0;width:72px;height:25px;color:#FFF;font-weight:bold;margin-top:0;cursor:pointer;text-align:center;line-height:24px;}span.ecl-weigou-rcmd-buy-disabled{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -194px -70px;cursor:default;}.ecl-weigou-rcmd-tip{position:absolute;background:#FFF;font-size:12px;width:540px;z-index:12;}.ecl-weigou-rcmd-tip-inner{border:1px solid #e1e1e1;overflow:hidden;padding-bottom:10px;}
.ecl-weigou-rcmd-tip-inner b{position:absolute;right:0;top:0;height:20px;width:20px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -117px;display:block;cursor:pointer;}.ecl-weigou-rcmd-tip-left{float:left;margin:10px;_display:inline;_zoom:1;border:1px solid #e1e1e1;}.ecl-weigou-rcmd-tip-left div{width:192px;height:192px;overflow:hidden;}.ecl-weigou-rcmd-tip-left img{height:192px;width:192px;}.ecl-weigou-rcmd-tip-right{float:left;color:#666;width:314px;overflow:hidden;margin:10px 0 0 10px;_display:inline;_zoom:1;}.ecl-weigou-rcmd-tip-name-wrapper{font-size:14px;color:#333;line-height:24px;width:314px;word-break:break-all;word-wrap:break-word;}.ecl-weigou-rcmd-tip-vendor{margin:12px 0 8px 0;}.ecl-weigou-rcmd-tip-price strong{color:#ff7800;font-size:13px;}.ecl-weigou-rcmd-tip-attrs{margin-top:4px;}
.ecl-weigou-rcmd-tip-attr{margin:4px 0 0 0;float:left;height:17px;overflow:hidden;width:140px;text-overflow:ellipsis;white-space:nowrap;_display:inline;_zoom:1;}.ecl-weigou-detail-top{zoom:1;}.ecl-attr-key{color:#666;}.ecl-attr-value{color:#000;}.ecl-weigou-detail-tabs-header{text-align:center;color:#666;overflow:hidden;zoom:1;position:relative;}.ecl-weigou-detail-tabs-header .selected{font-weight:bold;color:#000;cursor:default;}.ecl-weigou-detail-tabs-header .selected .ecl-weigou-detail-tab-line{height:0;visibility:visible;border-top:1px solid #de1e1c;border-right:1px solid #de1e1c;}.ecl-weigou-detail-tabs-header .selected .ecl-weigou-detail-tab-text{background:#fff;border-bottom:1px solid #fff;border-top:1px solid #de1e1c;}.ecl-weigou-detail-tab-header{float:left;cursor:pointer;overflow:hidden;}.ecl-weigou-detail-tab-line{height:1px;visibility:hidden;overflow:hidden;float:left;padding:0 20px;}
.ecl-weigou-detail-tab-text{background:#f7f7f7;height:23px;line-height:25px;border:1px solid #e1e1e1;border-left:none;padding:0 20px;clear:left;float:left;}.ecl-weigou-detail-first-tab .ecl-weigou-detail-tab-text{border-left:1px solid #e1e1e1;}.ecl-weigou-detail-tabs-main{margin-top:-1px;border:1px solid #e1e1e1;_zoom:1;}.ecl-weigou-detail-tabs-main .selected{display:block;}.ecl-weigou-detail-tab-main{display:none;}.ecl-weigou-detail-rcmd{_zoom:1;}.ecl-weigou-detail-attrs{padding-top:10px;_zoom:1;overflow:hidden;}.ecl-weigou-detail-attr{height:25px;width:245px;overflow:hidden;margin:0 0 0 20px;float:left;text-overflow:ellipsis;white-space:nowrap;_zoom:1;_display:inline;}.ecl-weigou-detail-region{border-bottom:1px dashed #e6e6e6;border-top:1px dashed #e6e6e6;_zoom:1;margin-top:7px;padding:5px 0;width:325px;}
.ecl-weigou-detail-region th{font-weight:normal;font-family:simsun;text-align:left;}.ecl-weigou-detail-region span{float:left;}.ecl-weigou-detail-addr-container{zoom:1;height:25px;overflow:hidden;}.ecl-weigou-detail-addr{height:22px;border:1px solid #e1e1e1;width:127px;overflow:hidden;cursor:pointer;}.ecl-weigou-detail-addr span{margin-left:5px;line-height:22px;width:97px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;}.ecl-weigou-detail-addr b{float:right;width:11px;overflow:hidden;height:7px;margin:7px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -315px;}.ecl-weigou-detail-addr-td{position:relative;z-index:2;}.ecl-weigou-detail-addr-wrapper{position:absolute;display:none;width:380px;background:#FFF;border:1px solid #e1e1e1;left:0;top:23px;padding-bottom:10px;z-index:1;}.ecl-weigou-detail-addr-wrapper b{position:absolute;right:0;top:0;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -117px;width:20px;height:20px;cursor:pointer;}
.ecl-weigou-detail-addr-selector{overflow:hidden;}.ecl-weigou-detail-addr-msg{line-height:25px;height:25px;overflow:hidden;color:#60be44;font-weight:bold;margin-left:5px;}.ecl-weigou-detail-addr-msg-disabled{color:#fa7900;}.ecl-weigou-detail-pay-method{color:#de1e1c;}.ecl-weigou-detail-attr-link{display:inline-block;float:left;color:#7a77c8;margin:2px 10px 0 4px;padding:1px 5px 2px 5px;}.ecl-weigou-detail-attr-more{text-align:center;float:left;width:528px;}.ecl-weigou-detail-attr-more a{line-height:30px;}#ecl-weigou-detail-check-loading{height:25px;overflow:hidden;width:10px;margin:0 0 0 5px;}#ecl-weigou-detail-check-loading img{display:block;margin-top:8px;}.ecl-weigou-success{overflow:hidden;text-align:center;color:#666;margin-bottom:20px;}.ecl-weigou-success div{margin-bottom:5px;}.ecl-weigou-success a{color:#7878c6;}
.ecl-weigou-success .ecl-weigou-btn{display:block;margin:8px 14px 0;float:left;cursor:pointer;text-decoration:none;line-height:32px;}.ecl-weigou-success .ecl-weigou-orderview-btn{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -73px -37px;width:73px;height:32px;}.ecl-weigou-success .ecl-weigou-success-tip{color:#df1f1c;}.ecl-weigou-success-title{margin:40px 0 0;padding-left:100px;height:48px;overflow:hidden;zoom:1;}.ecl-weigou-success-title b{float:left;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -147px -37px;width:40px;height:38px;}.ecl-weigou-success-title span{float:left;color:#333;font-size:26px;font-family:'Microsoft yahei',sans-serif;display:inline-block;height:38px;line-height:38px;margin-left:5px;}.ecl-weigou-success-op{padding-left:143px;}.ad-widget-weigou-pager{text-align:center;margin-top:10px;font-size:12px;}
.ad-widget-weigou-pager a{display:inline-block;line-height:22px;text-align:center;height:22px;min-width:12px;border:1px solid #e1e1e1;margin:0 5px;text-decoration:none;padding:2px 6px;font-weight:bold;cursor:pointer;}.ad-widget-weigou-pager a.selected{border:1px solid #fafafa;font-weight:bold;color:#000;}.ad-widget-weigou-pager a.omit{border:0;margin:0;padding:0;color:#000;}.ecl-weigou-list-wrapper{line-height:1.3;overflow:hidden;width:540px;_width:520px;}.ecl-weigou-morebtn{font-size:12px;cursor:pointer;margin-top:3px;padding-top:8px;color:#666;padding-left:240px;zoom:1;height:15px;overflow:hidden;border-top:1px solid #ececec;}.ecl-weigou-morebtn span{float:left;color:#00C;}.ecl-weigou-morebtn b{float:left;zoom:1;overflow:hidden;margin:2px 0 0 0;*margin-top:0;}.ecl-weigou-list{padding:0;}.ecl-weigou-product-list{height:196px;width:540px;overflow:hidden;position:relative;}
.ecl-weigou-product-link{position:absolute;left:0;top:0;width:129px;height:186px;background:#000;opacity:0;filter:alpha(opacity=0);}.ecl-weigou-product{float:left;width:121px;height:188px;overflow:hidden;_display:inline;margin:8px 10px 0 0;background:#FFF;position:relative;cursor:pointer;}.ecl-weigou-product .ecl-weigou-product-top img{width:121px;height:121px;}.ecl-weigou-product .ecl-weigou-product-inner{height:186px;}.ecl-weigou-product .ecl-weigou-product-center{margin:0 5px;line-height:19px;height:38px;overflow:hidden;}.ecl-weigou-product .ecl-weigou-product-bottom{margin:0 5px;line-height:19px;height:19px;overflow:hidden;}.ecl-weigou-product .ecl-weigou-product-price{font-size:12px;font-weight:bold;}.ecl-weigou-product .ecl-weigou-product-price strong{color:#ff7800;}.ecl-weigou-product .ecl-weigou-product-original-price{color:#999;margin-left:1px;height:19px;overflow:hidden;white-space:nowrap;}
    .ecl-weigou-product .ecl-weigou-product-image{cursor:pointer;}.ecl-weigou-product .ecl-weigou-product-name{color:#00c;word-break:break-all;word-wrap:break-word;}.ecl-weigou-product-vendor{position:absolute;top:104px;right:0;height:17px;}.ecl-weigou-product-vendor .ecl-weigou-product-protection-icon{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat 0 -73px;width:16px;height:16px;position:absolute;top:-104px;right:103px;}.ecl-weigou-product-vendor span{position:absolute;height:17px;line-height:18px;_line-height:19px;overflow:hidden;color:#fff;right:4px;top:0;z-index:1;}.ecl-weigou-product-vendor .ecl-weigou-product-vendor-bg{background:#000;color:#000;float:left;height:17px;line-height:18px;opacity:.6;padding:0 3px;overflow:hidden;filter:alpha(opacity=60);}.ecl-weigou-list .ecl-weigou-product-list2{height:auto;}
.ecl-weigou-product-list2 .ecl-weigou-product-link{width:255px;height:146px;}.ecl-weigou-product-list2 .ecl-weigou-product{width:255px;height:146px;overflow:hidden;margin:8px 8px 0 0;}.ecl-weigou-product-list2 .ecl-weigou-product-inner{height:144px;color:#666;}.ecl-weigou-product-list2 .ecl-weigou-product-left{float:left;height:110px;width:110px;margin:16px 0 0 4px;_display:inline;_zoom:1;position:relative;}.ecl-weigou-product-list2 .ecl-weigou-product-left .ecl-promo-brand-sale-tag,.ecl-weigou-product-list2 .ecl-weigou-product-left .ecl-promo-flash-sale-tag,.ecl-weigou-product-list2 .ecl-weigou-product-left .ecl-promo-tuan-tag{top:-13px;}.ecl-weigou-product-list2 .ecl-weigou-product-right{float:left;margin-left:4px;width:130px;_display:inline;_zoom:1;}.ecl-weigou-product-list2 img{display:block;width:110px;height:110px;}
.ecl-weigou-product-list2 .ecl-weigou-product-name-wrapper{font-size:12px;line-height:18px;margin-top:10px;word-wrap:break-word;word-break:break-all;}.ecl-weigou-product-list2 .ecl-weigou-product-src{margin:8px 0 8px 0;}.ecl-weigou-product-list2 .ecl-weigou-product-price{float:none;font-weight:normal;}.ecl-weigou-product-list2 .ecl-weigou-product-original-price{float:none;margin-left:0;}.ecl-weigou-product-list2 .ecl-weigou-product-detail{margin-top:8px;}.ecl-weigou-product-list2 .ecl-weigou-product-detail a{color:#00c;}.ecl-weigou-product-list2 .ecl-weigou-product-vendor{right:141px;top:108px;}.ecl-weigou-product-list2 .ecl-weigou-product-vendor .ecl-weigou-product-protection-icon{top:-92px;right:244px;}.ecl-weigou-list-noresult{height:120px;padding-top:70px;text-align:center;}.ecl-weigou-pager{display:none;}
.ecl-weigou-filters{margin:-5px 0 0 0;_margin-bottom:-3px;}.ecl-weigou-filter-wrapper{width:465px;float:left;}.ecl-weigou-filter-wrapper a{display:inline-block;cursor:pointer;text-decoration:none;color:#00c;padding:0 5px;border:1px solid #fff;}.ecl-weigou-filter-wrapper a:hover{text-decoration:underline;}.ecl-weigou-filter-wrapper span{display:inline-block;}.ecl-weigou-filter-wrapper .selected{background:#569df4;color:#fff;}.ecl-weigou-filter-wrapper a,.ecl-weigou-filter-wrapper span{height:18px;line-height:19px;_line-height:20px;margin:6px 0 0;float:left;white-space:nowrap;}.ecl-weigou-filter-first{margin-left:0;}.ecl-weigou-filter-name{width:65px;overflow:hidden;text-align:right;font-weight:bold;float:left;}.ecl-weigou-filter-more{float:right;width:42px;overflow:hidden;margin-top:9px;_display:inline;_zoom:1;cursor:pointer;}
.ecl-weigou-filter-more span{float:left;}.ecl-weigou-filter-more b{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat 0 -96px;float:left;width:7px;height:4px;overflow:hidden;margin:6px 0 0 3px;}.ecl-weigou-filter-more .ecl-weigou-collapse{display:none;}.ecl-weigou-filter-more-expanded .ecl-weigou-expand{display:none;}.ecl-weigou-filter-more-expanded .ecl-weigou-collapse{display:block;}.ecl-weigou-filter-more-expanded b{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat 0 -101px;}.ecl-weigou-filter-line{border-top:1px solid #ddd;position:relative;background:#f7f7f7;height:3px;overflow:hidden;display:none;}.ecl-weigou-filter-items-wrapper{overflow:hidden;height:27px;float:left;width:400px;}.ecl-weigou-filter-items{padding-bottom:6px;}.ecl-weigou-login{color:#666;padding-bottom:20px;}.ecl-weigou-login h1{padding:0;margin:0;font-size:14px;height:38px;line-height:35px;color:#000;padding-left:5px;}
.ecl-weigou-login #ecl-weigou-login-loading{text-align:center;padding:100px 0;}.ecl-weigou-login table{width:100%;border-collapse:collapse;border-spacing:0;}.ecl-weigou-login .ecl-weigou-login-section{margin:10px 0;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-login-content{background-color:#f5f5f5;border:1px solid #d3d3d3;padding:25px 0 8px 0;}.ecl-weigou-login .ecl-weigou-login-section .ecl-tips{padding-left:5px;color:#e0201e;margin-bottom:8px;}.ecl-weigou-login .ecl-weigou-login-section tr,.ecl-weigou-login .ecl-weigou-login-section th,.ecl-weigou-login .ecl-weigou-login-section td{vertical-align:middle;height:30px;}.ecl-weigou-login .ecl-weigou-login-section th{text-align:right;font-weight:normal;}.ecl-weigou-login .ecl-weigou-login-section input{float:left;border:1px solid #d3d3d3;height:20px;line-height:19px;width:138px;padding:1px 3px;-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box;}
.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-verify{position:relative;height:24px;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-verify #ecl-weigou-vcode-option{position:absolute;width:20px;height:20px;left:123px;top:2px;cursor:pointer;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-verify i{display:inline-block;width:14px;height:10px;margin-top:5px;margin-left:3px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -21px -134px;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-verify .ecl-pwd-btn i{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -58px -97px;}.ecl-weigou-login .ecl-weigou-login-section #ecl-weigou-vcode-input{background-color:#fff;padding-right:24px;width:117px;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-get-mobile-code{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -194px 0;height:24px;line-height:24px;*line-height:26px;width:100px;margin-left:10px;cursor:pointer;overflow:hidden;text-align:center;}
.ecl-weigou-login .ecl-weigou-login-section #ecl-weigou-login-submit{background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -194px -44px;width:72px;height:25px;display:inline-block;color:#fff;font-size:14px;line-height:25px;cursor:pointer;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-login-tdCenter{text-align:center;height:50px;}.ecl-weigou-login .ecl-weigou-login-section span{float:left;}.ecl-weigou-login .ecl-weigou-login-section .ecl-error{color:#e0201e;line-height:24px;margin-left:10px;*padding-top:2px;*line-height:22px;}.ecl-weigou-login .ecl-weigou-login-section #ecl-weigo-server-error{color:#e0201e;padding:10px 20px;line-height:20px;}.ecl-weigou-header{margin-bottom:5px;}.ecl-weigou{font-size:12px;width:540px;background:#fff;position:relative;}.ecl-weigou-font-songti{font-family:simsun;}.ecl-weigou-money{font-family:arial;font-weight:bold;color:#999;}
.ecl-weigou-left{float:left;}.ecl-weigou-right{float:right;}.ecl-weigou-line-through{text-decoration:line-through;}.ecl-weigou-clear{clear:both;}#ecl-weigou-back-btn{position:absolute;width:20px;height:43px;background: url('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_dynamic_filter-1.3.png') no-repeat -37px -73px;top:42px;right:0;cursor:pointer;display:none;z-index:99;}.ecl-weigou-background{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/gradient.png) 0 bottom repeat-x;padding-bottom:20px;}.ecl-promo-notag{display:none;}.ecl-promo-flash-sale-tag,.ecl-promo-brand-sale-tag,.ecl-promo-tuan-tag{width:39px;height:39px;position:absolute;right:3px;top:3px;}.ecl-promo-flash-sale-tag{background:url(http://bs.baidu.com/weigou-baidu-com/80fdac88f8380274eeb31c1a8a0c8a4a.png) no-repeat;_background:0;_filter:progid:dximagetransform.microsoft.alphaimageloader(enabled=true,sizingMethod=noscale,src='http://bs.baidu.com/weigou-baidu-com/80fdac88f8380274eeb31c1a8a0c8a4a.png');}
.ecl-promo-brand-sale-tag{background:url(http://bcscdn.baidu.com/weigou-baidu-com/993d95bfcdcdf3fe763ae669124256dd.png) no-repeat;_background:0;_filter:progid:dximagetransform.microsoft.alphaimageloader(enabled=true,sizingMethod=noscale,src='http://bs.baidu.com/weigou-baidu-com/993d95bfcdcdf3fe763ae669124256dd.png');}.ecl-promo-tuan-tag{background:url(http://bs.baidu.com/weigou-baidu-com/a06791e34368118c1d82758d4343f2fb.png) no-repeat;_background:0;_filter:progid:dximagetransform.microsoft.alphaimageloader(enabled=true,sizingMethod=noscale,src='http://bs.baidu.com/weigou-baidu-com/a06791e34368118c1d82758d4343f2fb.png');}
</style>

<div id="ecl-weigou-view-container" class="ecl-weigou-pc ecl-weigou">
    <div id="ecl-weigou-back-btn" style="display: none"></div>
    <div id="ecl-weigou-view-container-placeholder">
        <div class="ecl-weigou-header">
            <div class="ecl-weigou-header-inner">
                <h3 class="t">
                    {%assign var="query_length" value={%call name=get_char_num str=$extData.OriginQuery%}%}
                    {%if $query_length > 12%}
                    {%assign var="weigou_title" value=($extData.OriginQuery|cat:"（共"|cat:$tplData.totalCount|cat:"款商品"|cat:"）"|cat:"报价_参数_评论_百度微购") %}
                    {%elseif $query_length <= 12 && $query_length >= 8%}
                    {%assign var="weigou_title" value=($extData.OriginQuery|cat:"（共"|cat:$tplData.totalCount|cat:"款商品"|cat:"）"|cat:$extData.OriginQuery|cat:"报价_参数_评论_百度微购") %}
                    {%else%}
                    {%assign var="weigou_title" value=($extData.OriginQuery|cat:"（共"|cat:$tplData.totalCount|cat:"款"|cat:$extData.OriginQuery|cat:"）"|cat:$extData.OriginQuery|cat:"报价_参数_评论_百度微购") %}
                    {%/if%}
                    <a href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" title="{%$weigou_title|escape:'html'%}" target="_blank">{%$weigou_title|escape:'html'|limitlen:70|highlight:0%}</a>
                </h3>
                <div id="ecl-weigou-address" class="ecl-weigou-address c-clearfix" style="display:{%if $tplData.StdStl == 1%}none{%else%}block{%/if%}">
                    <span class="ecl-weigou-address-text">收货地区</span>
                    <div class="ecl-weigou-address-selector OP_LOG_BTN" data-click="{fm:'beha'}">
                        <span class="ecl-weigou-address-content">{%if $tplData.lo_address%}{%$tplData.lo_address%}{%else%}{%if $tplData.address%}{%$tplData.address%}{%else%}请选择{%/if%}{%/if%}</span>
                    </div>
                    <div id="ecl-weigou-address-picker">
                        <div class="ecl-weigou-address-picker-wrapper">
                            <div class="ecl-weigou-address-picker-inner">
                                <b class="OP_LOG_BTN" data-click="{fm:'beha'}"></b>
                                {%if $tplData.address%}
                                <div class="ecl-weigou-address-items">
                                    <a class="ecl-region">全国</a>
                                </div>
                                {%/if%}
                                <div class="ecl-weigou-address-items">
                                    <a class="ecl-region">北京</a>
                                    <a class="ecl-region">上海</a>
                                    <a class="ecl-region">天津</a>
                                    <a class="ecl-region">重庆</a>
                                </div>
                                <div class="ecl-weigou-address-items ecl-weigou-address-noborder">
                                    <a class="ecl-region">河北</a>
                                    <a class="ecl-region">山西</a>
                                    <a class="ecl-region">内蒙古</a>
                                    <a class="ecl-region">辽宁</a>
                                    <a class="ecl-region">吉林</a>
                                    <a class="ecl-region">黑龙江</a>
                                    <a class="ecl-region">江苏</a>
                                    <a class="ecl-region">浙江</a>
                                    <a class="ecl-region">安徽</a>
                                    <a class="ecl-region">福建</a>
                                    <a class="ecl-region">江西</a>
                                    <a class="ecl-region">山东</a>
                                    <a class="ecl-region">河南</a>
                                    <a class="ecl-region">湖北</a>
                                    <a class="ecl-region">湖南</a>
                                    <a class="ecl-region">广东</a>
                                    <a class="ecl-region">广西</a>
                                    <a class="ecl-region">海南</a>
                                    <a class="ecl-region">四川</a>
                                    <a class="ecl-region">贵州</a>
                                    <a class="ecl-region">云南</a>
                                    <a class="ecl-region">西藏</a>
                                    <a class="ecl-region">陕西</a>
                                    <a class="ecl-region">甘肃</a>
                                    <a class="ecl-region">青海</a>
                                    <a class="ecl-region">宁夏</a>
                                    <a class="ecl-region">新疆</a>
                                    <a class="ecl-region">台湾</a>
                                    <a class="ecl-region">香港</a>
                                    <a class="ecl-region">澳门</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ecl-weigou-view-container c-border">
            {%if $tplData.StdStl == 5%}
            <div class="ecl-weigou-view" id="ecl-weigou-view-placeholder">
                <div class="ecl-weigou-list">
                    <div class="ecl-weigou-filters" style="{%if $tplData.options && $tplData.options|@count > 0 && $tplData.totalCount > 8%}{%else%}display:none{%/if%}">
                        {%assign var="filter_count" value=0%}
                        {%foreach from=$tplData.options key=index item=option%}
                        {%if $option.items|@count <= 1%}{%continue%}{%/if%}
                        {%assign var="filter_count" value=($filter_count+1)%}
                        {%if $filter_count > 3%}
                        {%break%}
                        {%/if%}
                        <div class="ecl-weigou-filter c-clearfix">
                            <div class="ecl-weigou-filter-wrapper">
                                <span class="ecl-weigou-filter-name">{%$option.name|escape:'html'%}：</span>
                                <div class="ecl-weigou-filter-items-wrapper">
                                    <div class="ecl-weigou-filter-items c-clearfix" data-id="{%$option.id|escape:'html'%}">
                                        <a class="ecl-weigou-filter-link ecl-weigou-filter-first selected">全部</a>
                                        {%foreach $option.items as $opt%}
                                        <a class="ecl-weigou-filter-link" {%if $option.id==1000002%}data-max="{%$opt.max|escape:'html'%}" data-min="{%$opt.min|escape:'html'%}"{%else%}data-value="{%$opt.id|escape:'html'%}"{%/if%}>{%$opt.name|escape:'html'%}</a>
                                        {%/foreach%}
                                    </div>
                                </div>
                            </div>
                            <div class="ecl-weigou-filter-more OP_LOG_BTN" data-click="{fm:'beha'}" style="display:none">
                                <span class="ecl-weigou-expand">更多</span>
                                <span class="ecl-weigou-collapse">收起</span>
                                <b></b>
                            </div>
                        </div>
                        {%/foreach%}
                        <div class="ecl-weigou-filters-bottom">
                            <div class="ecl-weigou-filter-line"></div>
                        </div>
                    </div>
                    <div class="ecl-weigou-list-wrapper">
                    {%if $tplData.totalCount == 2%}
                        <div class="ecl-weigou-product-list ecl-weigou-product-list2">
                        {%foreach $tplData.goods as $item%}
                            {%assign var="product_name" value=(($item.promotion_data.id != 0 && $item.promotion_data.type != -1 && $item.promotion_data.title) ? $item.promotion_data.title : $item.name)%}
                            <div class="ecl-weigou-product" data-vendor="{%$item.vendor%}" data-id="{%$item.id%}" {%is_transfer product=$item%}>
                                <div class="ecl-weigou-product-inner">
                                    <div class="ecl-weigou-product-left">
                                        <img class="ecl-weigou-product-image OP_LOG_IMAGE" data-click="{fm:'beha'}" src="{%$item.logo|escape:'html'%}">
                                        <b class="ecl-promo-{%get_promo_type p1=$item.promotion_data%}-tag"></b>
                                    </div>
                                    <div class="ecl-weigou-product-right">
                                        <div class="c-clearfix ecl-weigou-product-name-wrapper">
                                            <a class="ecl-weigou-product-name OP_LOG_LINK" data-click="{fm:'beha'}" href="javascript:;" title="{%$product_name|escape:'html'%}">{%$product_name|limitlen:36|escape:'html'%}</a>
                                        </div>
                                        <div class="c-clearfix ecl-weigou-product-src">
                                            <span>商品来源：</span><span>{%$item.vendor|escape:'html'%}</span>
                                        </div>
                                        <div class="c-clearfix ecl-weigou-product-price">
                                            <span>现价：</span>
                                            <span><strong>{%if $item.promotion_data && $item.promotion_data.id != 0%}{%$item.promotion_data.price|string_format:"%.1f"%}{%else%}{%$item.price|string_format:"%.1f"%}{%/if%}</strong></span>
                                        </div>
                                        {%if $item.original_price && $item.original_price != 0 && $item.original_price > $item.price%}
                                        <div class="c-clearfix ecl-weigou-product-original-price">
                                            <s>原价：{%$item.original_price|string_format:"%.1f"%}</s>
                                        </div>
                                        {%/if%}
                                        <div class="c-clearfix ecl-weigou-product-detail">
                                            <a href="javascript:;" class="OP_LOG_LINK" data-click="{fm:'beha'}"><span class="ecl-weigou-product-detail-text">查看详情</span><span class="ecl-weigou-font-songti">&gt;&gt;</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="ecl-weigou-product-vendor">
                                    <!--消费者保障计划-->
                                    {%$protectionItems = array(101, 103, 104)%}
                                    {%if count($item.specialTags) > 0 && count(array_intersect($protectionItems, $item.specialTags))>0%}
                                     <b class="ecl-weigou-product-protection-icon"></b>
                                    {%/if%}


                                    <span>{%get_mer_name product=$item%}</span>
                                    <b class="ecl-weigou-product-vendor-bg">{%get_mer_name product=$item%}</b>
                                </div>
                                {%if $tplData.need_transfer%}<a href="{%get_trans_url product=$item%}" target="_blank" title="{%$product_name|escape:'html'%}" class="ecl-weigou-product-link"></a>{%/if%}
                            </div>
                            {%/foreach%}
                        </div>
                    {%else%}
                        <div class="ecl-weigou-product-list">
                            {%foreach $tplData.goods as $item%}
                            {%assign var="product_name" value=(($item.promotion_data.id != 0 && $item.promotion_data.type != -1 && $item.promotion_data.title) ? $item.promotion_data.title : $item.name)%}
                            <div class="ecl-weigou-product" data-id="{%$item.id%}" data-vendor="{%$item.vendor%}"  {%is_transfer product=$item%}>
                                <div class="ecl-weigou-product-inner">
                                    <div class="ecl-weigou-product-top">
                                        <img class="ecl-weigou-product-image OP_LOG_IMAGE" data-click="{fm:'beha'}" src="{%$item.logo%}" />
                                        <b class="ecl-promo-{%get_promo_type p1=$item.promotion_data%}-tag"></b>
                                    </div>
                                    <div class="ecl-weigou-product-center">
                                        <a class="ecl-weigou-product-name OP_LOG_LINK" data-click="{fm:'beha'}" href="javascript:;" title="{%$product_name|escape:'html'%}">{%$product_name|limitlen:30|escape:'html'%}</a>
                                    </div>
                                    <div class="ecl-weigou-product-bottom c-clearfix">
                                        <span class="ecl-weigou-product-price">
                                            <strong>¥{%if $item.promotion_data && $item.promotion_data.id != 0%}{%$item.promotion_data.price|string_format:"%.1f"%}{%else%}{%$item.price|string_format:"%.1f"%}{%/if%}</strong>
                                        </span>
                                        {%if $item.original_price && $item.original_price != 0 && $item.original_price > $item.price%}
                                        <span class="ecl-weigou-product-original-price">
                                            <s>原价{%$item.original_price|string_format:"%.1f"%}</s>
                                        </span>
                                        {%/if%}
                                    </div>
                                </div>
                                <div class="ecl-weigou-product-vendor">
                                    <!--消费者保障计划-->
                                    {%$protectionItems = array(101, 103, 104)%}
                                    {%if count($item.specialTags) > 0 && count(array_intersect($protectionItems, $item.specialTags))>0%}
                                     <b class="ecl-weigou-product-protection-icon"></b>
                                    {%/if%}

                                    <span>{%get_mer_name product=$item%}</span>
                                    <b class="ecl-weigou-product-vendor-bg">{%get_mer_name product=$item%}</b>
                                </div>
                                {%if $tplData.need_transfer%}<a href="{%get_trans_url product=$item%}" target="_blank" class="ecl-weigou-product-link" title="{%$product_name|escape:'html'%}"></a>{%/if%}
                            </div>
                            {%/foreach%}
                        </div>
                        {%/if%}
                    </div>

                    {%if $tplData.totalCount > 4%}
                    <div class="ecl-weigou-morebtn OP_LOG_BTN" data-click="{fm:'beha'}"><span class="ecl-weigou-morebtn-text">展开</span><b class="ecl-weigou-morebtn-icon c-icon c-icon-triangle-down"></b></div>
                    {%/if%}
                    <div class="ecl-weigou-pager ecl-weigou-backgroud c-clearfix"></div>
                </div>
            </div>
            {%else%}
            {%assign var="is_promo" value=($tplData.promotion_data.id != 0&&$tplData.promotion_data.type!=-1)%}
            <div class="ecl-weigou-view" style="" id="ecl-weigou-view-placeholder">
                <div class="ecl-weigou-detail">
                    <div class="ecl-weigou-detail-top c-clearfix">
                        <div class="ecl-weigou-detail-left">
                            <div class="ecl-weigou-detail-image-container">
                                <div>
                                    {%if $tplData.need_transfer%}
                                    <a target="_blank" href="http://weigou.baidu.com/item?id={%$tplData.id|escape:'html'%}">
                                    {%/if%}
                                    <img src="{%if $tplData.gallery%}{%$tplData.gallery[0]|escape:'html'%}{%/if%}" class="ecl-weigou-detail-image" id="ecl-weigou-detail-image" />
                                    {%if $tplData.need_transfer%}
                                    </a>
                                    {%/if%}
                                </div>
                            </div> 
                            {%if $tplData.gallery|@count > 1%}
                            <div class="ecl-weigou-detail-gallery-container c-clearfix" style="display: block;">
                                <div class="ecl-weigou-detail-gallery">
                                    <div class="ecl-weigou-detail-gallery-wrapper">
                                        <ul class="c-clearfix">
                                            {%foreach from=$tplData.icons key=index item=icon%}
                                            <li{%if $index==0%} class="selected"{%/if%} data-src="{%$tplData.gallery[$index]|escape:'html'%}"><img src="{%$icon|escape:'html'%}"/></li>
                                            {%/foreach%}
                                        </ul>
                                    </div>
                                </div>
                                <div id="ecl-weigou-detail-gallery-left" class="ecl-weigou-detail-gallery-left OP_LOG_BTN" data-click="{fm:'beha'}"><div class="disabled"></div></div>
                                <div id="ecl-weigou-detail-gallery-right" class="ecl-weigou-detail-gallery-right OP_LOG_BTN" data-click="{fm:'beha'}"><div {%if $tplData.gallery|@count<5%}class="disabled"{%/if%}></div></div>
                            </div>
                            {%/if%}
                        </div> 
                        <div class="ecl-weigou-detail-right">  
                            <div class="ecl-weigou-detail-name"> 
                                {%assign var="product_name" value=(($is_promo && $tplData.promotion_data.title) ? $tplData.promotion_data.title : $tplData.name)%}
                                <a title="{%$product_name|escape:'html'%}" {%if $tplData.need_transfer%} target="_blank" class="transfer" href="http://weigou.baidu.com/item?id={%$tplData.id|escape:'html'%}"{%/if%}>
                                {%$product_name|limitlen:70|escape:'html'%}
                                </a>
                            </div> 
                            <div class="ecl-weigou-detail-price c-clearfix">                    
                                {%if $is_promo%}
                                {%if $tplData.price > $tplData.promotion_data.price%}
                                <span class="ecl-weigou-font-songti">销&nbsp;售&nbsp;价：</span>
                                <span class="price-old">¥{%$price|string_format:"%.2f"%}</span>
                                {%else%}
                                {%assign var="noPrice" value=1%}
                                {%/if%}
                                {%else%}
                                <span class="ecl-weigou-font-songti">销&nbsp;售&nbsp;价：</span>
                                <span class="ecl-weigou-money">¥</span>
                                <span class="price">{%$tplData.price|string_format:"%.2f"%}</span>
                                {%/if%}
                                {%if $tplData.original_price && $tplData.original_price != 0 && $tplData.original_price > $tplData.price%}
                                    {%if $noPrice == 1%}
                                <span class="original-price ecl-weigou-font-songti">市&nbsp;场&nbsp;价：</span>
                                    {%else%}
                                <span class="original-price">市场价：</span>
                                    {%/if%}
                                <s>¥{%$tplData.original_price|string_format:"%.2f"%}</s>
                                {%/if%}
                            </div>
                            {%if $is_promo%}
                            <div class="ecl-weigou-detail-promo">
                                <div>
                                    <span class="ecl-weigou-detail-lite-title ecl-weigou-font-songti">促&nbsp;销&nbsp;价：</span>
                                    <span class="promo-price">¥<strong>{%$tplData.promotion_data.price|string_format:"%.2f"%}</strong></span>
                                </div>
                                <div>
                                    <span class="ecl-weigou-detail-lite-title">促销类型：</span>
                                    {%if $tplData.promotion_data.type == 0%}
                                    <span class="promo-tag flash-sale"></span>
                                    <span id="ecl-weigou-detail-countdown" class="ecl-weigou-countdown" data-start="{%$tplData.promotion_data.start_time%}" data-end="{%$tplData.promotion_data.end_time%}"></span>
                                    {%elseif $tplData.promotion_data.type == 1%}
                                    <span class="promo-tag brand-sale"></span>
                                    {%elseif $tplData.promotion_data.type == 2%}
                                    <span class="promo-tag tuan"></span>
                                    {%/if%}
                                </div>
                            </div>
                            {%/if%}
                            <div class="ecl-weigou-detail-vendor c-clearfix">                   
                                <span>发货商家：</span> 
                                <span class="ecl-weigou-detail-vendor-name"><strong>{%$tplData.vendor|escape:'html'%}</strong></span> 
                                {%if $tplData.attributes|@count > 0%}
                                <a class="ecl-weigou-detail-attr-link" href="javascript:;">商品详情</a>
                                {%/if%}
                            </div> 
                            <div class="ecl-weigou-detail-region">
                                <table>                        
                                    <tbody>
                                        <tr>                           
                                            <th>配&nbsp;送&nbsp;至：</th>                           
                                            <td>                               
                                                <div class="ecl-weigou-detail-addr-td">
                                                    <div class="ecl-weigou-detail-addr-container c-clearfix">
                                                        <span class="ecl-weigou-detail-addr OP_LOG_BTN" data-click="{fm:'beha'}">
                                                            <span id="ecl-weigou-detail-addr-text" data-ids="" data-names="{%if $tplData.lo_address%}{%$tplData.lo_address%}{%else%}{%if $tplData.address%}{%$tplData.address%}{%else%}北京{%/if%}{%/if%}">{%if $tplData.lo_address%}{%$tplData.lo_address%}{%else%}{%if $tplData.address%}{%$tplData.address%}{%else%}请选择{%/if%}{%/if%}</span>
                                                            <b></b>
                                                        </span>
                                                        <span id="ecl-weigou-detail-check-loading" style="display:none">
                                                            <img src="http://www.baidu.com/cache/biz/ecom/weigou/loading-small-1.0.0.gif" />
                                                        </span>
                                                        <span id="ecl-weigou-detail-addr-msg" class="ecl-weigou-detail-addr-msg" style="display:none"></span>
                                                    </div>
                                                    <div class="ecl-weigou-detail-addr-wrapper">
                                                        <b></b>
                                                        <div class="ecl-weigou-detail-addr-selector"></div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>支付方式：</th>
                                            <td>
                                                <span class="ecl-weigou-detail-pay-method">货到付款</span>
                                                <a id="ecl-weigou-detail-transfer" data-click="{fm:'beha'}" class="ecl-weigou-detail-transfer-disabled OP_LOG_BTN" href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" target="_blank">去看看其他商品<span class="ecl-weigou-font-songti">&gt;&gt;</span></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="ecl-weigou-detail-counter c-clearfix">
                                <span class="ecl-weigou-detail-counter-title">购买数量：</span>
                                <span class="ecl-weigou-detail-minus OP_LOG_BTN" data-click="{fm:'beha'}"></span>
                                <span class="ecl-weigou-detail-counter-input">
                                    <input id="ecl-weigou-detail-input" type="text" value="1" onclick="this.select()" {%if $is_promo%}data-limit="{%$tplData.promotion_data.limit_num%}"{%/if%}>
                                </span>
                                <span class="ecl-weigou-detail-plus OP_LOG_BTN" data-click="{fm:'beha'}"></span>
                            </div>
                            <div class="ecl-weigou-detail-submit-wrapper">
                                <div id="ecl-weigou-detail-submit" class="ecl-weigou-detail-submit OP_LOG_BTN" data-click="{fm:'beha'}"></div>
                            </div>
                        </div>
                    </div>
                    <div class="ecl-weigou-detail-bottom">
                        <div class="ecl-weigou-detail-tabs">
                            <div id="ecl-weigou-detail-tabs-header" class="ecl-weigou-detail-tabs-header"></div>
                            <div id="ecl-weigou-detail-tabs-main" class="ecl-weigou-detail-tabs-main"></div>
                        </div>
                    </div>
                </div>
            </div>
            {%/if%}
        </div>
    </div>
</div>
<div class="ecl-weigou-nav-buy OP_LOG_BTN" data-click="{fm:'beha'}">
    {%if $tplData.need_transfer%}
    <div>
        <a id="ecl-weigou-nav-buy-transfer" href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}" target="_blank">查看更多关于"<span class="query-word">{%$extData.OriginQuery|escape:'html'%}</span>"的商品<span class="ecl-weigou-font-songti">&gt;&gt;</span></a>
    </div>
    {%/if%}
    <span class="ecl-weigou-nav-buy-weigou-show-url">weigou.baidu.com<a target="_blank" class="c-icon c-icon-bao" href="http://baozhang.baidu.com/guarantee/"></a></span>        
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
                'tpl': 'ecl_ec_weigou_b',
                'isDetail': {%if $tplData.StdStl == 1%}true{%else%}false{%/if%},
                'region': '{%$tplData.address%}',
                'lo_region': '{%$tplData.lo_address%}',
                'jd_region': '{%$tplData.jd_address%}',
                'gb_region': '{%$tplData.gb_address%}',
                'localcode': '{%$tplData.localcode%}',
                'weigou_domain': '{%$tplData.weigou_domain%}',                
                'logData': {
                    'cat_ids': '{%implode(',', $cat_ids)%}',
                    'cat_names': '{%implode(',', $cat_names)%}'
                },
                'need_transfer': {%if $tplData.need_transfer == 1%}true{%else%}false{%/if%},
                {%if $tplData.StdStl == 5%}
                'totalCount': {%$tplData.totalCount%}
                {%else%}
                'data': {
                    'id': '{%$tplData.id%}',
                    'name': '{%if $is_promo && $tplData.promotion_data.title%}{%$tplData.promotion_data.title|escape:'javascript'%}{%else%}{%$tplData.name|escape:'javascript'%}{%/if%}',
                    'logo': '{%$tplData.logo|escape:'javascript'%}',
                    'fare': '{%$tplData.fare%}',
                    'vendor': '{%$tplData.vendor|escape:'javascript'%}',
                    'vendor_id': '{%$tplData.vendor_id%}',
                    'price': {%$tplData.price|string_format:"%.2f"%},
                    'original_price': {%$tplData.original_price%},
                    'promotionId': '{%$tplData.promotion_data.id%}',
                    'promotionType': {%$tplData.promotion_data.type%},
                    'promotionPrice': {%$tplData.promotion_data.price%},
                    {%if $is_promo%}'limitBuy': '{%$tplData.promotion_data.limit_num%}',{%/if%}
                    'icons': {%json_encode($tplData.icons)%},
                    'gallery': {%json_encode($tplData.gallery)%},
                    'attributes': {%json_encode($tplData.attributes)%}
                }
                {%/if%}
            }
        };
        bds.ecom.data.zhixin.bdServerTime = window.bdServerTime;
        if(window.bdServerTime) {
            setInterval(function(){
                bds.ecom.data.zhixin.bdServerTime++;
            }, 1000);
        }

         $('.ecl-weigou-filter .ecl-weigou-filter-items').each(function(index, elem) {
            var $elem = $(elem);
        	if(elem.offsetHeight>34) {
                 $('.ecl-weigou-filter-more', $elem.parents('.ecl-weigou-filter')).show();   
            }  
        }); 


        {%if $tplData.StdStl == 5%}
        ;(function(){        
        	$('.ecl-weigou-product-list').bind('click', function(event) {
            	var loop = 5;
                var target = event.target;
                while(loop-- > 0 && target) {
                    if($(target).hasClass('.ecl-weigou-product')) {
                		bds.ecom.data.zhixin.targetId = target.getAttribute('data-id');
                        break;
                	} else {
                		target = target.parentNode;
                	}
                }
           	 });
        })();        
        {%/if%}
        function loadScript(url) {
            var script = document.createElement('script');
            script.charset = 'utf-8';
            var head = document.getElementsByTagName('head')[0];
            head.appendChild(script);
            script.src = url;
        };

        bds.ready(function() {
            loadScript('http://weigou.baidu.com/ecomui/ad_detector.js');
            loadScript('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/weigou_filter-2.1.js');                      
        });
    });
</script>
{%/if%}
{%/block%}