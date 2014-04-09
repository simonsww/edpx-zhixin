{%extends 'base_div.tpl'%}
{%block name='content'%}

<style type="text/css">
.ecl-weigou-header{border-bottom:2px solid #df1f1c;zoom:1;background:#fafafa;}.ecl-weigou-header-inner{height:35px;}.ecl-weigou-header-logo{font-size:15px;margin:10px 0 0 8px;_display:inline;_zoom:1;width:65px;height:17px;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -221px -39px;}.ecl-weigou-header-logo a{display:block;width:65px;height:17px;}.ecl-weigou-header-features{float:left;margin:10px 0 0 10px;line-height:18px;_display:inline;_zoom:1;}.ecl-weigou-header-left{float:left;}.ecl-weigou-header-right{float:right;margin:10px 8px 0 10px;_display:inline;}.ecl-weigou-header-right a{color:#7a77c8;}.ecl-weigou-header-logo{float:left;}.ecl-weigou-header-item{float:left;margin-right:10px;_zoom:1;_display:inline;}.ecl-weigou-header-item b{float:left;width:14px;height:14px;margin:2px 5px 0 0;display:inline-block;}
.ecl-weigou-header-item span{color:#AAA;float:left;}.ecl-weigou-header-quick{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -73px -10px;}.ecl-weigou-header-register{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -287px -39px;}.ecl-weigou-header-quality{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -302px -39px;}.ecl-weigou-address{position:relative;float:right;z-index:2;color:#666;width:130px;padding-bottom:6px;}.ecl-weigou-address .ecl-weigou-address-text{margin-top:11px;margin-top:12px\9;float:left;line-height:16px;}.ecl-weigou-address-selector{left:100px;cursor:pointer;float:left;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat 0 -82px;height:23px;width:75px;margin:7px 0 0 5px;_display:inline;}.ecl-weigou-address-content{display:inline-block;height:23px;width:53px;line-height:23px;_line-height:25px;text-align:center;}
.ecl-weigou-address-picker-wrapper{width:450px;overflow:hidden;}#ecl-weigou-address-picker{display:none;position:absolute;top:29px;border:1px solid #dce2fa;padding:20px 12px;color:#806f66;background:#FFF;left:-280px;}.ecl-weigou-address-picker-inner{width:460px;font-size:0;*word-spacing:-1px;}.ecl-weigou-address-picker-inner div{margin:auto;width:480px;padding:3px 2px;zoom:1;border-bottom:1px dashed #ccc;}.ecl-weigou-address-picker-inner b{position:absolute;top:3px;right:3px;width:20px;height:20px;cursor:pointer;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -27px -150px;}.ecl-weigou-address-picker-inner a{display:inline-block;_zoom:1;width:60px;height:24px;line-height:24px;overflow:hidden;cursor:pointer;font-size:12px;}.ecl-weigou-address-picker-inner .ecl-weigou-address-noborder{border:0;}
.ecl-weigou-pur{padding-bottom:10px;position:relative;}.ecl-weigou-pur-section{margin:20px 0 0;}.ecl-weigou-pur-section th{font-size:12px;}.ecl-weigou-pur-title{font-size:14px;font-weight:bold;padding:0 0 10px 5px;zoom:1;overflow:hidden;}.ecl-weigou-pur-title span{float:left;}.ecl-weigou-product-counter-wrapper{width:100px;overflow:hidden;}.ecl-weigou-counter{width:84px;margin:auto;}.ecl-weigou-counter span{float:left;}.ecl-weigou-counter .ecl-weigou-minus,.ecl-weigou-counter .ecl-weigou-plus{width:20px;height:20px;cursor:pointer;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -27px -236px;-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;}.ecl-weigou-counter .ecl-weigou-plus{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -27px -171px;}
.ecl-weigou-counter .ecl-weigou-count{width:32px;height:18px;border:1px solid #e1e1e1;margin:0 5px;overflow:hidden;}.ecl-weigou-counter input{width:32px;height:20px;line-height:20px;_line-height:18px;outline:0;border:0;text-align:center;}.ecl-weigou-pur-list table{width:540px;text-align:center;}.ecl-weigou-pur-list th{height:25px;vertical-align:middle;background:#f5f5f5;color:#666;}.ecl-weigou-pur-bottom{overflow:hidden;zoom:1;}.ecl-weigou-pur-bottom .ecl-weigou-invoice,.ecl-weigou-pur-bottom #ecl-weigou-pur-agmt{margin:-2px 3px 1px 3px;margin-top:0\9;_margin-top:-1px;height:13px;width:13px;vertical-align:middle;}.ecl-weigou-pur-bottom .ecl-weigou-invoice-text{color:#666;}.ecl-weigou-pur-bottom .ecl-weigou-invoice-tip{color:#9a9a9a;}.ecl-weigou-pur-bottom .ecl-weigou-pur-agmt-wrapper{margin-top:8px;color:#666;}
.ecl-weigou-pur-bottom .ecl-weigou-pur-agmt-wrapper a{color:#666;}.ecl-weigou-pur-bottom-left{float:left;width:200px;}.ecl-weigou-pur-bottom-right{float:right;color:#666;}.ecl-weigou-pur-bottom-right div{margin-bottom:6px;}.ecl-weigou-pur-bottom-right table{text-align:right;float:right;overflow:hidden;}.ecl-weigou-pur-bottom-right th{font-weight:normal;}.ecl-weigou-pur-bottom-right td{font-weight:bold;color:#da220c;}#ecl-weigou-view-container .ecl-weigou-pur-bottom-right .ecl-weigou-money{color:#da220c;}#ecl-weigou-pur-submit{float:right;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -32px -39px;width:120px;height:28px;color:#FFF;text-align:center;padding-top:8px;cursor:pointer;}#ecl-weigou-pur-submit-loading{float:right;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -149px -156px;width:120px;height:36px;overflow:hidden;color:#FFF;}
#ecl-weigou-pur-submit-loading img{display:block;width:10px;height:10px;margin:12px auto 0;}.ecl-weigou-pur-logo{margin:auto;height:60px;width:60px;overflow:hidden;}.ecl-weigou-pur-logo div{border:1px solid #e1e1e1;}.ecl-weigou-pur-logo img{display:block;width:58px;height:58px;}.ecl-weigou-pur-item{height:70px;}.ecl-weigou-pur-name{display:inline-block;padding:0 8px;text-align:left;word-break:break-all;word-wrap:break-word;}.ecl-weigou-pur-price{color:#da220c;display:inline-block;font-weight:bold;}.ecl-weigou-pur-delete{display:inline-block;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -76px -212px;line-height:21px;_line-height:23px;text-align:center;width:48px;height:21px;overflow:hidden;cursor:pointer;color:#666;}.ecl-weigou-pur-bottom{border-top:1px solid #e1e1e1;padding:10px 0 0;}.ecl-weigou-product-price-td,.ecl-weigou-product-counter-td,.ecl-weigou-product-op-td{vertical-align:top;}
.ecl-weigou-pur-price-wrapper,.ecl-weigou-counter,.ecl-weigou-pur-delete{margin-top:17px;}.ecl-weigou-product-errmsg{height:22px;line-height:22px;border:1px solid #f1a4a4;padding:0 5px 0 20px;color:#d00;width:55px;margin:5px auto 0;zoom:1;background:url(http://bs.baidu.com/adtest/6c0fcd727d9a0a5c1e3572128061272e.png) 4px 5px no-repeat;display:none;}#ecl-weigou-pur-total-price{font-size:18px;color:#da220c;font-weight:bold;}#ecl-weigou-pur-total-price-text{font-size:12px;display:none;}.ecl-weigou-pur-bottom-total{font-weight:bold;}#ecl-weigou-pur-return-btn{float:right;font-size:15px;cursor:pointer;text-decoration:underline;color:#7a77c8;visibility:visible;margin:18px 0 0 25px;display:none;}#ecl-weigou-pur-prices{display:none;padding-left:46px;}#ecl-weigou-pur-global-msg{position:absolute;display:none;width:258px;}
#ecl-weigou-pur-global-msg b{position:absolute;right:8px;top:8px;height:20px;width:20px;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -27px -257px;display:block;cursor:pointer;}.ecl-weigou-pur-global-wrapper{margin-bottom:4px;_margin-bottom:5px;zoom:1;border:1px solid #f99;background:#ffc;color:#df1411;}.ecl-weigou-pur-global-inner{width:200px;margin:10px 28px;}.ecl-weigou-pur-global-arrow{position:absolute;bottom:0;left:130px;height:5px;width:9px;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -91px 0;}#ecl-weigou-pur-address-link{color:#7a77c8;font-size:12px;font-weight:normal;text-decoration:none;display:none;}.ecl-weigou-pur-new-addr{background:#f9f9f9;border:1px solid #e1e1e1;position:relative;zoom:1;}.ecl-weigou-pur-new-addr b{height:21px;width:21px;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -177px -39px;}
.ecl-weigou-pur-noaddr,.ecl-weigou-pur-new-addr-expanded{border:1px solid #e80550;height:auto;}.ecl-weigou-pur-noaddr .ecl-weigou-pur-new-addr-header,.ecl-weigou-pur-new-addr-expanded .ecl-weigou-pur-new-addr-header{cursor:default;}.ecl-weigou-pur-noaddr .ecl-weigou-pur-new-addr-body,.ecl-weigou-pur-new-addr-expanded .ecl-weigou-pur-new-addr-body{display:block;}.ecl-weigou-pur-noaddr .ecl-weigou-pur-address-b,.ecl-weigou-pur-new-addr-expanded .ecl-weigou-pur-address-b{display:block;}.ecl-weigou-pur-noaddr .ecl-weigou-pur-new-addr-header{display:none;}.ecl-weigou-pur-address-b{position:absolute;right:0;bottom:0;display:none;}.ecl-weigou-pur-new-addr-header{overflow:hidden;height:26px;padding-left:236px;cursor:pointer;text-align:center;}.ecl-weigou-pur-new-addr-header b,.ecl-weigou-pur-new-addr-header span{text-align:left;float:left;font-size:12px;margin:5px 0 0 5px;width:65px;}
.ecl-weigou-pur-new-addr-header span{padding-top:2px\9;}.ecl-weigou-pur-new-addr-header b{margin:7px 0 0 0;height:12px;width:13px;overflow:hidden;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -73px -25px;}.ecl-weigou-pur-new-addr-body{display:none;}.weigou-pur-new-addr-table{margin-top:10px;color:#666;}.weigou-pur-new-addr-table tr,.weigou-pur-new-addr-table th,.weigou-pur-new-addr-table td{vertical-align:middle;height:23px;}.weigou-pur-new-addr-table th{text-align:right;font-weight:normal;width:130px;}.weigou-pur-new-addr-table td{width:495px;}.weigou-pur-new-addr-table input.ecl-weigou-pur-input{float:left;border:1px solid #d3d3d3;height:20px;line-height:20px;width:177px;padding:1px 3px;-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box;color:#000;}.weigou-pur-new-addr-table span{float:left;}
.weigou-pur-new-addr-table .ecl-weigou-pur-form-first{height:30px;vertical-align:top;}.weigou-pur-new-addr-table .ecl-weigou-pur-form-first span{color:#da220c;font-weight:bold;}.ecl-weigou-pur-address-wrapper{position:relative;zoom:1;}.ecl-weigou-pur-addresses{position:absolute;display:none;width:380px;background:#FFF;border:1px solid #e1e1e1;left:0;top:23px;_top:25px;padding-bottom:10px;z-index:1;}.ecl-weigou-pur-addresses b{position:absolute;right:0;top:0;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -27px -257px;width:20px;height:20px;cursor:pointer;}.ecl-weigou-pur-address-select{float:left;margin:10px 10px 0 10px;_display:inline;_zoom:1;}.ecl-weigou-pur-address-select select{width:100px;}#ecl-weigou-address-input{width:300px;}.ecl-weigou-pur-pick-address{height:22px;width:183px;border:1px solid #e1e1e1;background:#fff;color:#000;cursor:pointer;}
.ecl-weigou-pur-pick-address span{margin-left:5px;float:left;height:22px;line-height:22px;_line-height:24px;}.ecl-weigou-pur-pick-address b{float:right;width:11px;overflow:hidden;height:7px;margin:7px;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -118px -10px;}.ecl-weigou-pur-pick-address span{margin-left:5px;}.ecl-weigou-pur-error-message{display:none;float:left;height:22px;line-height:22px;border:1px solid #f1a4a4;padding:0 5px 0 20px;color:#d00;margin-left:10px;zoom:1;background:url(http://bs.baidu.com/adtest/6c0fcd727d9a0a5c1e3572128061272e.png) 4px 5px no-repeat;}.ecl-weigou-pur-top-addresses{width:540px;overflow:hidden;margin-bottom:6px;zoom:1;}.ecl-weigou-pur-top-addresses-inner{width:546px;overflow:hidden;margin-top:-6px;zoom:1;position:relative;}.ecl-weigou-pur-addreses-collapsed{height:88px;}
.ecl-weigou-pur-address{border:1px solid #e1e1e1;float:left;margin:6px 6px 0 0;position:relative;color:#666;cursor:pointer;}.ecl-weigou-pur-address b{position:absolute;right:0;bottom:0;_bottom:-1px;height:21px;width:21px;display:none;overflow:hidden;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -177px -39px;}.ecl-weigou-pur-address span{vertical-align:middle;}.ecl-weigou-pur-address-hover div a{display:block;}.ecl-weigou-pur-address-selected{border:1px solid #e80550;background:#ffc;}.ecl-weigou-pur-address-selected b{display:block;}.ecl-weigou-pur-address-inner{width:174px;vertical-align:middle;line-height:19px;}.ecl-weigou-pur-address-inner .ecl-addr-top{padding:10px 5px 0;word-break:break-all;word-wrap:break-word;overflow:hidden;height:40px;}.ecl-weigou-pur-address-inner .ecl-addr-bottom{margin:0 7px 8px;}
.ecl-weigou-pur-address-inner a{display:none;}.ecl-weigou-pur-address-inner:hover a{display:block;}.ecl-addr-bottom{overflow:hidden;_zoom:1;}.ecl-addr-bottom span{float:left;}.ecl-addr-bottom a{float:right;text-decoration:none;color:#7977c6;}.ecl-name{font-weight:bold;}#ecl-weigou-view-container #ecl-weigou-pur-offers td .ecl-weigou-money{color:#093;}#ecl-weigou-view-container #ecl-weigou-pur-offers td{color:#093;}.ecl-weigou-pur-address-btns{margin:10px auto;overflow:hidden;padding-left:188px;zoom:1;}#ecl-weigou-pur-address-ok{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -76px -82px;height:25px;width:72px;margin-right:20px;float:left;}.ecl-weigou-pur-noaddr #ecl-weigou-pur-address-cancel{display:none;}.ecl-weigou-pur-noaddr .ecl-weigou-pur-address-btns{padding-left:245px;}#ecl-weigou-pur-address-cancel{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -76px -186px;height:25px;width:72px;margin-right:20px;float:left;margin:0 0 0 20px;cursor:pointer;}
#ecl-weigou-pur-addresses-msg{color:#fa7600;margin:0 0 10px 3px;}.ecl-weigou-pur-pay-method strong{font-weight:normal;color:#9a9a9a;}#ecl-weigou-pur-expand-address{float:left;color:#6563d3;font-size:12px;font-weight:normal;margin-top:2px;margin:2px 27px 0 0;_margin-top:0;}.ecl-weigou-pur-add-address{border:1px solid #e1e1e1;float:left;margin:6px 6px 0 0;position:relative;cursor:pointer;width:174px;height:77px;text-align:center;}.ecl-weigou-pur-add-address span{display:inline-block;width:44px;height:44px;vertical-align:middle;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -27px -106px;margin-top:17px;}.ecl-weigou-pur-summary-button{margin-top:5px;clear:both;}.ecl-weigou-pur-summary-button span{float:left;visibility:hidden;}.ecl-weigou-pur-details{border:1px solid #f99;background:#ffc;color:#333;padding:10px;line-height:24px;overflow:hidden;zoom:1;}
.ecl-weigou-pur-details span{display:inline-block;}.ecl-weigou-pur-details div{margin:0;}.ecl-weigou-pur-details-left{float:left;overflow:hidden;width:380px;}.ecl-weigou-pur-details-right{overflow:hidden;float:right;vertical-align:bottom;}.ecl-weigou-pur-details-right .ecl-price-title{color:#000;}.ecl-weigou-pur-details-right .ecl-price{color:#e11310;font-size:16px;margin-left:4px;font-weight:bold;}.ecl-weigou-pur-details-right .ecl-price-unit{color:#e11310;font-size:12px;margin-left:10px;}.ecl-weigou-pur-details-right div{overflow:hidden;zoom:1;}.ecl-weigou-pur-details-right div span,.ecl-weigou-pur-details-right div strong{float:left;}.ecl-weigou-pur-details-right strong{color:#e11310;font-weight:normal;}#ecl-weigou-pur-change-mobile{display:none!important;}.ecl-weigou-detail{padding:10px 0 20px 0;}
.ecl-weigou-detail-left{float:left;_display:inline;width:194px;overflow:hidden;}.ecl-weigou-detail-right{float:left;padding-left:20px;_display:inline;zoom:1;width:325px;color:#666;position:relative;z-index:11;}.ecl-weigou-detail-image-container{border:1px solid #e1e1e1;background:#FFF;}.ecl-weigou-detail-image-container div{width:192px;height:192px;overflow:hidden;}.ecl-weigou-detail-image-container img{margin:1px;height:190px;width:190px;}.ecl-weigou-detail-gallery-wrapper{width:10000px;height:46px;position:absolute;left:0;}.ecl-weigou-detail-gallery-container{display:none;}.ecl-weigou-detail-gallery-container{margin-top:10px;width:194px;height:38px;overflow:hidden;display:none;position:relative;}.ecl-weigou-detail-gallery-left{cursor:pointer;position:absolute;left:0;top:0;}.ecl-weigou-detail-gallery-left div{width:10px;height:38px;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat 0 -106px;}
.ecl-weigou-detail-gallery-left div.disabled{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat 0 -184px;cursor:default;}.ecl-weigou-detail-gallery-right{width:10px;height:38px;cursor:pointer;position:absolute;right:0;top:0;}.ecl-weigou-detail-gallery-right div{width:10px;height:38px;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat 0 -223px;}.ecl-weigou-detail-gallery-right div.disabled{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat 0 -145px;cursor:default;}.ecl-weigou-detail-gallery{position:absolute;left:14px;width:167px;height:46px;overflow:hidden;_display:inline;}.ecl-weigou-detail-gallery ul{position:absolute;}.ecl-weigou-detail-gallery ul li{float:left;cursor:pointer;width:36px;height:36px;border:1px solid #e1e1e1;margin-right:5px;overflow:hidden;}.ecl-weigou-detail-gallery ul li img{width:36px;height:36px;}
.ecl-weigou-detail-gallery ul li.selected{border:1px solid #ff6767;}.ecl-weigou-detail-name{font-size:14px;line-height:24px;width:305px;}.ecl-weigou-detail-name a{font-weight:bold;cursor:default;color:#000;text-decoration:none;word-wrap:break-word;word-break:break-all;}.ecl-weigou-detail-name a.transfer{cursor:pointer;}.ecl-weigou-detail-vendor{color:#666;margin-top:7px;}.ecl-weigou-detail-vendor span{float:left;margin-top:3px;}.ecl-weigou-detail-vendor-name{color:#000;}.ecl-weigou-detail-vendor-name strong{font-weight:normal;color:#de1e1c;}.ecl-weigou-detail-price{margin-top:7px;}.ecl-weigou-detail-price span{float:left;margin-top:2px;}.ecl-weigou-detail-price .price{color:#d9230e;font-size:16px;margin:0 0 0 2px;font-weight:bold;}.ecl-weigou-detail-price s{float:left;margin:2px 0 0 10px;color:#999;}.ecl-weigou-detail-counter{margin-top:7px;}
.ecl-weigou-detail-counter span{float:left;}.ecl-weigou-detail-counter .ecl-weigou-detail-counter-title{margin-top:2px;}.ecl-weigou-detail-counter .ecl-weigou-detail-minus,.ecl-weigou-detail-counter .ecl-weigou-detail-plus{width:20px;height:20px;cursor:pointer;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -27px -236px;-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;}.ecl-weigou-detail-counter .ecl-weigou-detail-plus{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -27px -171px;}.ecl-weigou-detail-counter .ecl-weigou-detail-counter-input{width:32px;height:18px;border:1px solid #e1e1e1;margin:0 5px;overflow:hidden;}.ecl-weigou-detail-counter input{width:32px;height:20px;line-height:20px;_line-height:18px;outline:0;border:0;text-align:center;}
.ecl-weigou-detail-submit-wrapper{z-index:1;position:relative;}.ecl-weigou-detail-submit-wrapper #ecl-weigou-detail-transfer{float:left;color:#7a77c8;margin:30px 0 0 10px;}.ecl-weigou-detail-submit-wrapper .ecl-weigou-detail-transfer-disabled{display:none;}.ecl-weigou-detail-submit{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -149px -119px;width:120px;height:36px;overflow:hidden;margin-top:10px;cursor:pointer;float:left;}.ecl-weigou-detail-submit-disabled{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -149px -82px;}.ecl-weigou-detail-bottom{display:none;margin:10px 0;zoom:1;}.ecl-weigou-rcmd-container{background:#FFF;padding:15px 0;color:#666;overflow:hidden;zoom:1;}.ecl-weigou-rcmd-left{float:left;width:117px;_display:inline;_zoom:1;}.ecl-weigou-rcmd-left .ecl-weigou-rcmd-item-top img{cursor:default;}
.ecl-weigou-rcmd-left .ecl-weigou-rcmd-item-middle a{cursor:default;}.ecl-weigou-rcmd-middle{float:left;_display:inline;}.ecl-weigou-rcmd-middle b{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -153px -39px;width:23px;height:22px;display:block;margin:64px 11px 0 0;}.ecl-weigou-rcmd-right{float:left;width:376px;height:135px;}.ecl-weigou-rcmd-gallery-container{position:relative;}.ecl-weigou-rcmd-gallery-left,.ecl-weigou-rcmd-gallery-right{cursor:pointer;z-index:2;position:absolute;top:34px;}.ecl-weigou-rcmd-gallery-left div,.ecl-weigou-rcmd-gallery-right div{width:15px;height:81px;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -11px -188px;}.ecl-weigou-rcmd-gallery-right div{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -16px 0;}.ecl-weigou-rcmd-gallery-left div.disabled{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -11px -106px;cursor:default;}
.ecl-weigou-rcmd-gallery-right div.disabled{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat 0 0;cursor:default;}.ecl-weigou-rcmd-gallery-right{right:1px;_right:0;}.ecl-weigou-rcmd-gallery{width:345px;height:135px;position:absolute;overflow:hidden;border-right:1px dashed #ededed;border-left:1px dashed #ededed;left:14px;}.ecl-weigou-rcmd-gallery-wrapper{height:135px;width:5000px;position:absolute;}.ecl-weigou-rcmd-gallery-wrapper ul{position:absolute;}.ecl-weigou-rcmd-gallery-wrapper ul li{float:left;width:115px;height:135px;overflow:hidden;}.ecl-weigou-rcmd-gallery-wrapper ul li .ecl-weigou-rcmd-item{width:132px;}.ecl-weigou-rcmd-item{height:130px;}.ecl-weigou-rcmd-item-top{margin:auto;width:70px;height:70px;overflow:hidden;}.ecl-weigou-rcmd-item-top img{cursor:pointer;width:70px;height:70px;}
.ecl-weigou-rcmd-item-middle{width:95px;height:32px;line-height:16px;margin:5px auto;overflow:hidden;}.ecl-weigou-rcmd-item-middle a{display:block;width:97px;overflow:hidden;word-wrap:break-word;word-break:break-all;}.ecl-weigou-rcmd-item-name{color:#666;word-break:break-all;word-wrap:break-word;}.ecl-weigou-rcmd-item-bottom{width:95px;margin:auto;padding-left:4px;}.ecl-weigou-rcmd-item-bottom input{margin:-2px 3px 1px 3px;margin-top:0 9;_margin-top:-1px;height:13px;width:13px;vertical-align:middle;}.ecl-weigou-rcmd-item-bottom strong{color:#ff7800;}.ecl-weigou-rcmd-bottom{float:right;margin:5px 8px 0 0;_display:inline;}.ecl-weigou-rcmd-bottom span{display:inline-block;margin:6px 2px 0;_margin-top:7px;}.ecl-weigou-rcmd-count-wrapper span{color:#ff7800;display:inline-block;float:none;margin:0 3px 0;font-weight:bold;}
span.ecl-weigou-rcmd-buy{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -76px -108px;width:72px;height:25px;color:#FFF;font-weight:bold;margin-top:0;cursor:pointer;text-align:center;line-height:24px;}span.ecl-weigou-rcmd-buy-disabled{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -76px -134px;cursor:default;}.ecl-weigou-rcmd-tip{position:absolute;background:#FFF;font-size:12px;width:540px;z-index:12;}.ecl-weigou-rcmd-tip-inner{border:1px solid #e1e1e1;overflow:hidden;padding-bottom:10px;}.ecl-weigou-rcmd-tip-inner b{position:absolute;right:0;top:0;height:20px;width:20px;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -27px -257px;display:block;cursor:pointer;}.ecl-weigou-rcmd-tip-left{float:left;margin:10px;_display:inline;_zoom:1;border:1px solid #e1e1e1;}.ecl-weigou-rcmd-tip-left div{width:192px;height:192px;overflow:hidden;}
.ecl-weigou-rcmd-tip-left img{height:192px;width:192px;}.ecl-weigou-rcmd-tip-right{float:left;color:#666;width:314px;overflow:hidden;margin:10px 0 0 10px;_display:inline;_zoom:1;}.ecl-weigou-rcmd-tip-name-wrapper{font-size:14px;color:#333;line-height:24px;width:314px;word-break:break-all;word-wrap:break-word;}.ecl-weigou-rcmd-tip-vendor{margin:12px 0 8px 0;}.ecl-weigou-rcmd-tip-price strong{color:#ff7800;font-size:13px;}.ecl-weigou-rcmd-tip-attrs{margin-top:4px;}.ecl-weigou-rcmd-tip-attr{margin:4px 0 0 0;float:left;height:17px;overflow:hidden;width:140px;text-overflow:ellipsis;white-space:nowrap;_display:inline;_zoom:1;}.ecl-weigou-detail-top{zoom:1;}.ecl-attr-key{color:#666;}.ecl-attr-value{color:#000;}.ecl-weigou-detail-tabs-header{text-align:center;color:#666;overflow:hidden;zoom:1;position:relative;}
.ecl-weigou-detail-tabs-header .selected{font-weight:bold;color:#000;cursor:default;}.ecl-weigou-detail-tabs-header .selected .ecl-weigou-detail-tab-line{height:0;visibility:visible;border-top:1px solid #de1e1c;border-right:1px solid #de1e1c;}.ecl-weigou-detail-tabs-header .selected .ecl-weigou-detail-tab-text{background:#fff;border-bottom:1px solid #fff;border-top:1px solid #de1e1c;}.ecl-weigou-detail-tab-header{float:left;cursor:pointer;overflow:hidden;}.ecl-weigou-detail-tab-line{height:1px;visibility:hidden;overflow:hidden;float:left;padding:0 20px;}.ecl-weigou-detail-tab-text{background:#f7f7f7;height:23px;line-height:25px;border:1px solid #e1e1e1;border-left:none;padding:0 20px;clear:left;float:left;}.ecl-weigou-detail-first-tab .ecl-weigou-detail-tab-text{border-left:1px solid #e1e1e1;}.ecl-weigou-detail-tabs-main{margin-top:-1px;border:1px solid #e1e1e1;_zoom:1;}
.ecl-weigou-detail-tabs-main .selected{display:block;}.ecl-weigou-detail-tab-main{display:none;}.ecl-weigou-detail-rcmd{_zoom:1;}.ecl-weigou-detail-attrs{padding-top:10px;_zoom:1;overflow:hidden;}.ecl-weigou-detail-attr{height:25px;width:245px;overflow:hidden;margin:0 0 0 20px;float:left;text-overflow:ellipsis;white-space:nowrap;_zoom:1;_display:inline;}.ecl-weigou-detail-region{border-bottom:1px dashed #e6e6e6;border-top:1px dashed #e6e6e6;_zoom:1;margin-top:7px;padding:5px 0;width:325px;}.ecl-weigou-detail-region th{font-weight:normal;font-family:simsun;text-align:left;}.ecl-weigou-detail-region span{float:left;}.ecl-weigou-detail-addr-container{zoom:1;height:25px;overflow:hidden;}.ecl-weigou-detail-addr{height:22px;border:1px solid #e1e1e1;width:127px;overflow:hidden;cursor:pointer;}.ecl-weigou-detail-addr span{margin-left:5px;line-height:22px;width:97px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;}
.ecl-weigou-detail-addr b{float:right;width:11px;overflow:hidden;height:7px;margin:7px;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -118px -10px;}.ecl-weigou-detail-addr-td{position:relative;z-index:2;}.ecl-weigou-detail-addr-wrapper{position:absolute;display:none;width:380px;background:#FFF;border:1px solid #e1e1e1;left:0;top:23px;padding-bottom:10px;z-index:1;}.ecl-weigou-detail-addr-wrapper b{position:absolute;right:0;top:0;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -27px -257px;width:20px;height:20px;cursor:pointer;}.ecl-weigou-detail-addr-selector{overflow:hidden;}.ecl-weigou-detail-addr-msg{line-height:25px;height:25px;overflow:hidden;color:#60be44;font-weight:bold;margin-left:5px;}.ecl-weigou-detail-addr-msg-disabled{color:#fa7900;}.ecl-weigou-detail-pay-method{color:#de1e1c;}.ecl-weigou-detail-attr-link{display:inline-block;float:left;color:#7a77c8;margin:2px 10px 0 4px;padding:1px 5px 2px 5px;}
#ecl-weigou-detail-check-loading{height:25px;overflow:hidden;width:10px;margin:0 0 0 5px;}#ecl-weigou-detail-check-loading img{display:block;margin-top:8px;}.ecl-weigou-success{overflow:hidden;text-align:center;color:#666;margin-bottom:20px;}.ecl-weigou-success div{margin-bottom:5px;}.ecl-weigou-success a{color:#7878c6;}.ecl-weigou-success .ecl-weigou-btn{display:block;margin:8px 14px 0;float:left;cursor:pointer;text-decoration:none;line-height:32px;}.ecl-weigou-success .ecl-weigou-orderview-btn{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -149px -249px;width:73px;height:32px;}.ecl-weigou-success .ecl-weigou-success-tip{color:#df1f1c;}.ecl-weigou-success-title{margin:40px 0 0;padding-left:100px;height:48px;overflow:hidden;zoom:1;}.ecl-weigou-success-title b{float:left;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -32px 0;width:40px;height:38px;}
.ecl-weigou-success-title span{float:left;color:#333;font-size:26px;font-family:'Microsoft yahei',sans-serif;display:inline-block;height:38px;line-height:38px;margin-left:5px;}.ecl-weigou-success-op{padding-left:143px;}.ad-widget-weigou-pager{text-align:center;margin-top:10px;font-size:12px;}.ad-widget-weigou-pager a{display:inline-block;line-height:22px;text-align:center;height:22px;min-width:12px;border:1px solid #e1e1e1;margin:0 5px;text-decoration:none;padding:2px 6px;font-weight:bold;cursor:pointer;}.ad-widget-weigou-pager a.selected{border:1px solid #fafafa;font-weight:bold;color:#000;}.ad-widget-weigou-pager a.omit{border:0;margin:0;padding:0;color:#000;}.ecl-weigou-list-wrapper{line-height:1.3;overflow:hidden;width:540px;}.ecl-weigou-morebtn{font-size:12px;cursor:pointer;margin-top:13px;color:#666;padding-left:229px;zoom:1;height:15px;overflow:hidden;}
.ecl-weigou-morebtn span{float:left;}.ecl-weigou-morebtn b{float:left;zoom:1;width:17px;height:9px;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -73px 0;overflow:hidden;margin:4px 0 0 5px;}.ecl-weigou-list{padding:0;}.ecl-weigou-product-list{height:196px;width:555px;overflow:hidden;position:relative;margin-top:6px;}.ecl-weigou-product{float:left;width:129px;height:188px;overflow:hidden;_display:inline;margin:8px 8px 0 0;background:#FFF;position:relative;cursor:pointer;}.ecl-weigou-product .ecl-weigou-product-top{width:110px;margin:8px auto 0;}.ecl-weigou-product .ecl-weigou-product-top img{width:110px;height:110px;}.ecl-weigou-product .ecl-weigou-product-inner{border:1px solid #eee;height:186px;}.ecl-weigou-product .ecl-weigou-product-center{margin:0 5px;line-height:19px;height:38px;overflow:hidden;}
.ecl-weigou-product .ecl-weigou-product-bottom{margin:0 5px;line-height:19px;height:19px;overflow:hidden;}.ecl-weigou-product .ecl-weigou-product-price{font-size:12px;font-weight:bold;}.ecl-weigou-product .ecl-weigou-product-price strong{color:#ff7800;}.ecl-weigou-product .ecl-weigou-product-original-price{color:#999;margin-left:1px;height:19px;overflow:hidden;white-space:nowrap;}.ecl-weigou-product .ecl-weigou-product-image{cursor:pointer;}.ecl-weigou-product .ecl-weigou-product-name{color:#00c;word-break:break-all;word-wrap:break-word;}.ecl-weigou-product-hover .ecl-weigou-product-vendor b,.ecl-weigou-product:hover .ecl-weigou-product-vendor b{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -48px -150px;}.ecl-weigou-product-hover .ecl-weigou-product-vendor span,.ecl-weigou-product:hover .ecl-weigou-product-vendor span{background:#ff7800;}
.ecl-weigou-product-hover .ecl-weigou-product-inner,.ecl-weigou-product:hover .ecl-weigou-product-inner{border:1px solid #ff7800;}.ecl-weigou-product-vendor{position:absolute;top:0;left:0;height:17px;}.ecl-weigou-product-vendor b{float:left;height:17px;width:17px;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -199px -39px;}.ecl-weigou-product-vendor span{float:left;height:17px;line-height:18px;_line-height:19px;overflow:hidden;padding-left:3px;background:#d6d6d6;color:#fff;}.ecl-weigou-list .ecl-weigou-product-list2{height:auto;}.ecl-weigou-product-list2 .ecl-weigou-product{width:266px;height:146px;overflow:hidden;margin:8px 8px 0 0;}.ecl-weigou-product-list2 .ecl-weigou-product-inner{height:144px;color:#666;}.ecl-weigou-product-list2 .ecl-weigou-product-left{float:left;height:110px;width:110px;overflow:hidden;margin:16px 0 0 4px;_display:inline;_zoom:1;}
.ecl-weigou-product-list2 .ecl-weigou-product-right{float:left;margin-left:4px;width:130px;_display:inline;_zoom:1;}.ecl-weigou-product-list2 img{width:110px;height:110px;}.ecl-weigou-product-list2 .ecl-weigou-product-name-wrapper{font-size:12px;line-height:18px;margin-top:10px;word-wrap:break-word;word-break:break-all;}.ecl-weigou-product-list2 .ecl-weigou-product-src{margin:8px 0 8px 0;}.ecl-weigou-product-list2 .ecl-weigou-product-price{float:none;font-weight:normal;}.ecl-weigou-product-list2 .ecl-weigou-product-original-price{float:none;margin-left:0;}.ecl-weigou-product-list2 .ecl-weigou-product-detail{margin-top:8px;}.ecl-weigou-product-list2 .ecl-weigou-product-detail a{color:#00c;}.ecl-weigou-list-noresult{height:120px;padding-top:70px;text-align:center;}.ecl-weigou-pager{display:none;}.ecl-weigou-login{color:#666;padding-bottom:20px;}
.ecl-weigou-login h1{padding:0;margin:0;font-size:14px;height:38px;line-height:35px;color:#000;padding-left:5px;}.ecl-weigou-login #ecl-weigou-login-loading{text-align:center;padding:100px 0;}.ecl-weigou-login table{width:100%;border-collapse:collapse;border-spacing:0;}.ecl-weigou-login .ecl-weigou-login-section{margin:10px 0;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-login-content{background-color:#f5f5f5;border:1px solid #d3d3d3;padding:25px 0 8px 0;}.ecl-weigou-login .ecl-weigou-login-section .ecl-tips{padding-left:5px;color:#e0201e;margin-bottom:8px;}.ecl-weigou-login .ecl-weigou-login-section tr,.ecl-weigou-login .ecl-weigou-login-section th,.ecl-weigou-login .ecl-weigou-login-section td{vertical-align:middle;height:30px;}.ecl-weigou-login .ecl-weigou-login-section th{text-align:right;font-weight:normal;}
.ecl-weigou-login .ecl-weigou-login-section input{float:left;border:1px solid #d3d3d3;height:20px;line-height:19px;width:138px;padding:1px 3px;-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-verify{position:relative;height:24px;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-verify #ecl-weigou-vcode-option{position:absolute;width:20px;height:20px;left:123px;top:2px;cursor:pointer;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-verify i{display:inline-block;width:14px;height:10px;margin-top:5px;margin-left:3px;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -88px -10px;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-verify .ecl-pwd-btn i{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -103px -10px;}
.ecl-weigou-login .ecl-weigou-login-section #ecl-weigou-vcode-input{background-color:#fff;padding-right:24px;width:117px;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-get-mobile-code{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -149px -193px;height:24px;line-height:24px;*line-height:26px;width:100px;margin-left:10px;cursor:pointer;overflow:hidden;text-align:center;}.ecl-weigou-login .ecl-weigou-login-section #ecl-weigou-login-submit{background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -76px -160px;width:72px;height:25px;display:inline-block;color:#fff;font-size:14px;line-height:25px;cursor:pointer;}.ecl-weigou-login .ecl-weigou-login-section .ecl-weigou-login-tdCenter{text-align:center;height:50px;}.ecl-weigou-login .ecl-weigou-login-section span{float:left;}.ecl-weigou-login .ecl-weigou-login-section .ecl-error{color:#e0201e;line-height:24px;margin-left:10px;*padding-top:2px;*line-height:22px;}
.ecl-weigou-login .ecl-weigou-login-section #ecl-weigo-server-error{color:#e0201e;padding:10px 20px;line-height:20px;}.ecl-weigou{font-size:12px;width:540px;background:#fff;position:relative;}.ecl-weigou-font-songti{font-family:宋体;}.ecl-weigou-money{font-family:arial;font-weight:bold;color:#999;}.ecl-weigou-clear{clear:both;}#ecl-weigou-qixi-header{height:44px;line-height:44px;padding-left:10px;color:#aaa;font-size:16px;border-top:1px solid #e1e1e1;border-bottom:1px solid #e1e1e1;position:relative;}#ecl-weigou-choose-again{width:98px;height:30px;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -149px -218px;display:black;position:absolute;top:7px;right:10px;}.ecl-weigou-header{background-color:#f7f7f7;}#ecl-weigou-back-btn{position:absolute;width:20px;height:43px;background: url('http://bcscdn.baidu.com/weigou-baidu-com/e72399f9f9676eb18f568e991c9a9e1d.png') no-repeat -27px -192px;top:88px;right:0;cursor:pointer;display:none;z-index:99;}
#ecl-loading{background:url(http://bcscdn.baidu.com/weigou-baidu-com/60630d2a1025b2d1855181295e0dc963.gif);background-repeat:no-repeat;background-position:center 33%;text-align:center;position:absolute;display:none;top:0;left:0;height:300px;width:540px;z-index:200;background-color:#fff;}#ecl-loading.ecl-loading-no-image{color:#de1e1c;line-height:100px;background-image:none;}.ecl-weigou-background{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/gradient.png) 0 bottom repeat-x;padding-bottom:20px;}
</style>

<div id="ecl-weigou-flash-qixi" style="width:540px;height:320px;background:url(http://bcscdn.baidu.com/weigou-baidu-com/60630d2a1025b2d1855181295e0dc963.gif) center center no-repeat"><div id="ecl-weigou-flash-qixi-main"></div></div>
<div id="ecl-weigou-view-container" class="ecl-weigou-background ecl-weigou-pc ecl-weigou" style="display:none">
    <div id="ecl-weigou-qixi-header">
        有一种七夕叫挑礼物很难
        <a class="OP_LOG_BTN" data-click="{fm:'beha'}" href="#" id="ecl-weigou-choose-again"></a>
    </div>
    <a id="ecl-weigou-share-link" class="OP_LOG_BTN" data-click="{fm:'beha'}" href="#" target="_blank" style="display: none;"></a>
    <div id="ecl-weigou-back-btn" style="display: none"></div>
    <div id="ecl-weigou-view-container-placeholder">
        <div class="ecl-weigou-header">
            <div class="ecl-weigou-header-inner">
                <div class="ecl-weigou-header-left">
                    <div class="ecl-weigou-header-logo">
                        <a id="ecl-weigou-header-logo-link" href="http://weigou.baidu.com/?tn=www" target="_blank"></a>
                    </div>
                    <div class="ecl-weigou-header-features">
                        <div class="ecl-weigou-header-item">
                            <b class="ecl-weigou-header-quick"></b>
                            <span>快速购买</span>
                        </div>
                        <div class="ecl-weigou-header-item">
                            <b class="ecl-weigou-header-register"></b>
                            <span>无需注册</span>
                        </div>
                        <div class="ecl-weigou-header-item">
                            <b class="ecl-weigou-header-quality"></b>
                            <span>正品行货</span>
                        </div>
                    </div>
                </div>

                <div class="ecl-weigou-header-right">
                    <a href="http://weigou.baidu.com/service/user/order/list" id="ecl-weigou-header-order-list" target="_blank">
                        <span>我的订单</span>
                    </a>
                </div>

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
        <div class="ecl-weigou-view-container">
            {%if $tplData.StdStl == 0%}
            <div class="ecl-weigou-view" id="ecl-weigou-view-placeholder">
                <div class="ecl-weigou-list">
                    <div class="ecl-weigou-list-wrapper">
                    {%if $tplData.totalCount == 2%}
                        <div class="ecl-weigou-product-list ecl-weigou-product-list2">
                        {%foreach $tplData.goods as $item%}
                            <div class="ecl-weigou-product" data-id="{%$item.id%}">
                                <div class="ecl-weigou-product-inner">
                                    <div class="ecl-weigou-product-left">
                                        <img class="ecl-weigou-product-image OP_LOG_IMAGE" data-click="{fm:'beha'}" src="{%$item.logo|escape:'html'%}">
                                    </div>
                                    <div class="ecl-weigou-product-right">
                                        <div class="c-clearfix ecl-weigou-product-name-wrapper">
                                            <a class="ecl-weigou-product-name OP_LOG_LINK" data-click="{fm:'beha'}" href="javascript:;" title="{%$item.name|escape:'html'%}">{%$item.name|limitlen:36|escape:'html'%}</a>
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
                                    <span>{%$item.vendor|escape:'html'%}</span>
                                    <b></b>
                                </div>
                            </div>
                            {%/foreach%}
                        </div>
                    {%else%}
                        <div class="ecl-weigou-product-list">
                            {%foreach $tplData.goods as $item%}
                            <div class="ecl-weigou-product" data-id="{%$item.id%}">
                                <div class="ecl-weigou-product-inner">
                                    <div class="ecl-weigou-product-top">
                                        <img class="ecl-weigou-product-image OP_LOG_IMAGE" data-click="{fm:'beha'}" src="{%$item.logo%}" />
                                    </div>
                                    <div class="ecl-weigou-product-center">
                                        <a class="ecl-weigou-product-name OP_LOG_LINK" data-click="{fm:'beha'}" href="javascript:;" title="{%$item.name|escape:'html'%}">{%$item.name|limitlen:30|escape:'html'%}</a>
                                    </div>
                                    <div class="ecl-weigou-product-bottom c-clearfix">
                                        <span class="ecl-weigou-product-price">
                                            <span class="ecl-weigou-money">¥</span>
                                            <strong>{%if $item.promotion_data && $item.promotion_data.id != 0%}{%$item.promotion_data.price|string_format:"%.1f"%}{%else%}{%$item.price|string_format:"%.1f"%}{%/if%}</strong>
                                        </span>
                                        {%if $item.original_price && $item.original_price != 0 && $item.original_price > $item.price%}
                                        <span class="ecl-weigou-product-original-price">
                                            <s>原价{%$item.original_price|string_format:"%.1f"%}</s>
                                        </span>
                                        {%/if%}
                                    </div>
                                </div>
                                <div class="ecl-weigou-product-vendor">
                                    <span>{%$item.vendor%}</span>
                                    <b></b>
                                </div>
                            </div>
                            {%/foreach%}
                        </div>
                        {%/if%}
                    </div>

                    {%if $tplData.totalCount > 4%}
                    <div class="ecl-weigou-morebtn ecl-weigou-backgroud"><span class="ecl-weigou-morebtn-text"></span><b class="ecl-weigou-morebtn-icon"></b></div>
                    {%/if%}
                    <div class="ecl-weigou-pager ecl-weigou-backgroud c-clearfix"></div>
                </div>
            </div>
            {%else%}
            <div class="ecl-weigou-view" style="" id="ecl-weigou-view-placeholder">
                <div class="ecl-weigou-detail">
                    <div class="ecl-weigou-detail-top c-clearfix">
                        <div class="ecl-weigou-detail-left">
                            <div class="ecl-weigou-detail-image-container">
                                <div>
                                    {%if $tplData.need_transfer%}
                                    <a target="_blank" href="http://weigou.baidu.com/item?id={%$tplData.id|escape:'html'%}&tn=www">
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
                                <a title="{%$tplData.name|escape:'html'%}" 
                                {%if $tplData.need_transfer%}
                                target="_blank" class="transfer" href="http://weigou.baidu.com/item?id={%$tplData.id|escape:'html'%}&tn=www">
                                {%/if%}
                                    {%$tplData.name|limitlen:70|escape:'html'%}
                                </a>
                            </div> 
                            <div class="ecl-weigou-detail-price c-clearfix">                    
                                <span class="ecl-weigou-font-songti">销&nbsp;售&nbsp;价：</span>
                                <span class="ecl-weigou-money">¥</span><span class="price">{%if $tplData.promotion_data && $tplData.promotion_data.id != 0%}{%$tplData.promotion_data.price|string_format:"%.2f"%}{%else%}{%$tplData.price|string_format:"%.2f"%}{%/if%}</span>
                                {%if $tplData.original_price && $tplData.original_price != 0 && $tplData.original_price > $tplData.price%}
                                <s>市场价¥{%$tplData.original_price|string_format:"%.2f"%}</s>
                                {%/if%}
                            </div>
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
                                                <a id="ecl-weigou-detail-transfer" data-click="{fm:'beha'}" class="ecl-weigou-detail-transfer-disabled OP_LOG_BTN" href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}&tn=www" target="_blank">去看看其他商品<span class="ecl-weigou-font-songti">&gt;&gt;</span></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="ecl-weigou-detail-counter c-clearfix">
                                <span class="ecl-weigou-detail-counter-title">购买数量：</span>
                                <span class="ecl-weigou-detail-minus OP_LOG_BTN" data-click="{fm:'beha'}"></span>
                                <span class="ecl-weigou-detail-counter-input">
                                    <input id="ecl-weigou-detail-input" type="text" value="1" onclick="this.select()">
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
        <a id="ecl-weigou-nav-buy-transfer" href="http://weigou.baidu.com/search?q={%$extData.OriginQuery|escape:'url'%}&tn=www" target="_blank">查看更多关于"<span class="query-word">{%$extData.OriginQuery|escape:'html'%}</span>"的商品<span class="ecl-weigou-font-songti">&gt;&gt;</span></a>
    </div>
    {%/if%}
    <div class="op_sohu_url"><font size="-1" color="#008000">weigou.baidu.com</font></div>
</div>


<script>
    A.init(function(){
        var bds = window.bds = window.bds || {};
        bds.ecom = bds.ecom || {};
        bds.ecom.data = {
            'zhixin': {
                'isDetail': {%if $tplData.StdStl == 1%}true{%else%}false{%/if%},
                'region': '{%$tplData.address%}',
                'lo_region': '{%$tplData.lo_address%}',
                'jd_region': '{%$tplData.jd_address%}',
                'gb_region': '{%$tplData.gb_address%}',
                'localcode': '{%$tplData.localcode%}',
                'weigou_domain': '{%$tplData.weigou_domain%}',
                'need_transfer': {%if $tplData.need_transfer == 1%}true{%else%}false{%/if%},
                {%if $tplData.StdStl == 0%}
                'totalCount': '{%$tplData.totalCount%}'
                {%else%}
                'data': {
                    'id': '{%$tplData.id%}',
                    'name': '{%$tplData.name|escape:'javascript'%}',
                    'logo': '{%$tplData.logo|escape:'javascript'%}',
                    'fare': '{%$tplData.fare%}',
                    'vendor': '{%$tplData.vendor|escape:'javascript'%}',
                    'vendor_id': '{%$tplData.vendor_id%}',
                    'price': {%if $tplData.promotion_data && $tplData.promotion_data.id != 0%}{%$tplData.promotion_data.price|string_format:"%.2f"%}{%else%}{%$tplData.price|string_format:"%.2f"%}{%/if%},
                    'original_price': {%$tplData.original_price%},
                    'icons': {%json_encode($tplData.icons)%},
                    'gallery': {%json_encode($tplData.gallery)%},
                    'attributes': {%json_encode($tplData.attributes)%}
                }
                {%/if%}
            }
        };
        {%if $tplData.StdStl != 1%}
        ;(function() {
            var wrapper = baidu.q('ecl-weigou-product-list')[0];
            if(wrapper) {
                baidu.on(wrapper, 'click', function(event) {
                    event = event || window.event;
                    var target = event.srcElement || event.target;
                    var loop = 5;
                    while(loop-- > 0 && target) {
                        if(baidu.dom.hasClass(target, 'ecl-weigou-product')) {
                            bds.ecom.data.zhixin.targetId = target.getAttribute('data-id');
                            break;
                        } else {
                            target = target.parentNode;
                        }
                    }
                });
            }
        })();
        {%/if%}
        function loadScript(url) {
            var script = document.createElement('script');
            script.charset = 'utf-8';
            var head = document.getElementsByTagName('head')[0];
            head.appendChild(script);
            script.src = url;
        };

        baidu.dom.ready(function() {
            loadScript('http://weigou.baidu.com/ecomui/ad_detector.js');
            loadScript('http://s1.bdstatic.com/r/www/cache/biz/ecom/weigou/77/weigou.app_v9.js');
        });
    });
</script>
{%/block%}
