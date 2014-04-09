{%extends 'base.tpl'%}
{%block name='content'%}

<style type="text/css">
.ecl-weigou-header{border-bottom:2px solid #df1f1c;zoom:1;background:#fafafa}.ecl-weigou-header-inner{height:35px}.ecl-weigou-header-logo{font-size:15px;margin:10px 0 0 8px;_display:inline;_zoom:1;width:65px;height:17px;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) -1px -544px}.ecl-weigou-header-logo a{display:block;width:65px;height:17px}.ecl-weigou-header-features{float:left;margin:10px 0 0 10px;line-height:18px;_display:inline;_zoom:1}.ecl-weigou-header-left{float:left}.ecl-weigou-header-right{float:right;margin:10px 8px 0 10px;_display:inline}.ecl-weigou-header-right a{color:#7a77c8}.ecl-weigou-header-logo{float:left}.ecl-weigou-header-item{float:left;margin-right:10px;_zoom:1;_display:inline}.ecl-weigou-header-item b{float:left;width:14px;height:14px;margin:2px 5px 0 0;display:inline-block}
.ecl-weigou-header-item span{color:#AAA;float:left}.ecl-weigou-header-quick,.ecl-weigou-header-register,.ecl-weigou-header-quality{background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif)}.ecl-weigou-header-register{background-position:-17px 0}.ecl-weigou-header-quality{background-position:-34px 0}.ecl-weigou-address{float:right;position:relative;z-index:2;color:#666;width:130px;display:none}.ecl-weigou-address .ecl-weigou-address-text{margin-top:11px;margin-top:12px\9;float:left;line-height:16px}.ecl-weigou-address-selector{left:100px;cursor:pointer;float:left;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -268px;height:23px;width:75px;margin:7px 0 0 5px;_display:inline}.ecl-weigou-address-content{display:inline-block;height:23px;width:53px;line-height:23px;_line-height:25px;text-align:center}
.ecl-weigou-address-picker-wrapper{width:295px;overflow:hidden}#ecl-weigou-address-picker{position:absolute;top:29px;right:-71px;border:1px solid #dce2fa;padding:10px;color:#806f66;display:none;background:#FFF}.ecl-weigou-address-picker-inner{width:320px}.ecl-weigou-address-picker-inner div{margin:auto;width:310px;padding:3px 2px;zoom:1;border-bottom:1px dashed #ccc}.ecl-weigou-address-picker-inner b{position:absolute;top:0;right:0;width:20px;height:20px;cursor:pointer;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -481px}.ecl-weigou-address-picker-inner a{display:inline-block;_zoom:1;width:56px;height:24px;line-height:24px;overflow:hidden;cursor:pointer}.ecl-weigou-address-picker-inner .ecl-weigou-address-noborder{border:0}#ecl-weigou-back-btn{position:absolute;width:23px;height:64px;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -172px;top:60px;left:0;cursor:pointer;display:none}
.ecl-region{text-decoration:none;color:#806f66}.ecl-weigou-pur{padding-bottom:10px;border-bottom:1px solid #ccc;position:relative}.ecl-weigou-pur-section{margin:20px 0 0}.ecl-weigou-pur-section th{font-size:12px}.ecl-weigou-pur-title{font-size:14px;font-weight:bold;padding:0 0 5px 5px;zoom:1}.ecl-weigou-product-counter-wrapper{width:100px;overflow:hidden}.ecl-weigou-counter{width:84px;margin:auto}.ecl-weigou-counter span{float:left}.ecl-weigou-counter .ecl-weigou-minus,.ecl-weigou-counter .ecl-weigou-plus{width:20px;height:20px;cursor:pointer;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -64px;-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.ecl-weigou-counter .ecl-weigou-plus{background-position:-24px -64px}
.ecl-weigou-counter .ecl-weigou-count{width:32px;height:18px;border:1px solid #e1e1e1;margin:0 5px;overflow:hidden}.ecl-weigou-counter input{width:32px;height:20px;line-height:20px;_line-height:18px;outline:0;border:0;text-align:center}.ecl-weigou-pur-list table{width:540px;text-align:center}.ecl-weigou-pur-list th{height:25px;vertical-align:middle;background:#f5f5f5;color:#666}.ecl-weigou-pur-bottom{overflow:hidden;zoom:1}.ecl-weigou-pur-bottom .ecl-weigou-invoice,.ecl-weigou-pur-bottom #ecl-weigou-pur-agmt{margin:-2px 3px 1px 3px;margin-top:0\9;_margin-top:-1px;height:13px;width:13px;vertical-align:middle}.ecl-weigou-pur-bottom .ecl-weigou-invoice-text{color:#666}.ecl-weigou-pur-bottom .ecl-weigou-invoice-tip{color:#9a9a9a}.ecl-weigou-pur-bottom .ecl-weigou-pur-agmt-wrapper{margin-top:8px;color:#666}
.ecl-weigou-pur-bottom .ecl-weigou-pur-agmt-wrapper a{color:#666}.ecl-weigou-pur-bottom-left{float:left;width:250px}.ecl-weigou-pur-bottom-right{float:right;color:#666;width:220px}.ecl-weigou-pur-bottom-right div{margin-bottom:6px}.ecl-weigou-pur-button span{float:left;visibility:hidden}#ecl-weigou-pur-submit{float:right;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) -279px -21px;width:120px;height:28px;color:#FFF;text-align:center;font-size:16px;font-family:宋体;font-weight:bold;padding-top:9px;cursor:pointer;display:none}#ecl-weigou-pur-submit.submitting{background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -21px;cursor:pointer}.ecl-weigou-pur-address-wrapper{position:relative;zoom:1}.ecl-weigou-pur-addresses{position:absolute;display:none;width:380px;background:#FFF;border:1px solid #e1e1e1;left:0;top:23px;_top:25px;padding-bottom:10px}
.ecl-weigou-pur-addresses b{position:absolute;right:0;top:0;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -481px;width:20px;height:20px;cursor:pointer}.ecl-weigou-pur-addresses .ecl-weigou-pur-address{float:left;margin:10px 10px 0 10px;_display:inline;_zoom:1}.ecl-weigou-pur-addresses .ecl-weigou-pur-address select{width:100px}.ecl-weigou-pur-error-message{display:none;float:left;height:22px;line-height:22px;border:1px solid #f1a4a4;padding:0 5px 0 20px;color:#d00;margin-left:10px;zoom:1;background:url(http://bs.baidu.com/adtest/6c0fcd727d9a0a5c1e3572128061272e.png) 4px 5px no-repeat}.ecl-weigou-pur-item-success{display:none;float:left;line-height:22px;height:22px;margin-left:10px;zoom:1;width:29px;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -664px}.ecl-weigou-pur-form-container{padding-top:10px;color:#666}
.ecl-weigou-pur-form-container tr,.ecl-weigou-pur-form-container th,.ecl-weigou-pur-form-container td{vertical-align:middle;height:23px}.ecl-weigou-pur-form-container th{text-align:right;font-weight:normal;width:100px}.ecl-weigou-pur-form-container td{width:495px}.ecl-weigou-pur-form-container input{float:left;border:1px solid #d3d3d3;height:20px;line-height:20px;width:177px;padding:1px 3px;-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box}.ecl-weigou-pur-form-container span{float:left}.ecl-weigou-pur-form-container .ecl-weigou-pur-form-first{height:30px;vertical-align:top}.ecl-weigou-pur-form-container .ecl-weigou-pur-form-first span{color:#ff7800;font-weight:bold}.ecl-weigou-get-mobile-code{background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -354px;height:23px;line-height:23px;_line-height:25px;width:109px;margin-left:10px;cursor:pointer;overflow:hidden;text-align:center}
.ecl-weigou-get-mobile-code span{display:inline-block}.ecl-weigou-change-phone{line-height:23px;margin-left:10px;display:none;cursor:pointer}.ecl-weigou-pur-selector,.ecl-weigou-pur-pick-address{height:22px;width:183px;border:1px solid #e1e1e1;background:#fff;color:#000;cursor:pointer}.ecl-weigou-pur-selector span,.ecl-weigou-pur-pick-address span{margin-left:5px;float:left;height:22px;line-height:22px;_line-height:24px}.ecl-weigou-pur-selector b,.ecl-weigou-pur-pick-address b{float:right;width:11px;overflow:hidden;height:7px;margin:7px;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -382px}.ecl-weigou-pur-pick-address span{margin-left:5px}.ecl-weigou-pur-selector-wrapper{position:relative;z-index:2;zoom:1}.ecl-weigou-pur-selector-wrapper .active{visibility:visible}.ecl-weigou-pur-selector{visibility:hidden}
#ecl-weigou-pur-address-wrapper{width:435px;position:absolute;background:#FFF;border:1px solid #e1e1e1;display:none;left:0;z-index:2}#ecl-weigou-pur-address-wrapper b{position:absolute;display:inline-block;height:20px;width:20px;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -481px;right:0;top:0;cursor:pointer}#ecl-weigou-pur-address-wrapper a{text-decoration:none;display:block;border-bottom:1px solid #e1e1e1;cursor:pointer;color:#666;padding:10px;line-height:20px}#ecl-weigou-pur-address-wrapper a:hover{background:#f5f5f5}#ecl-weigou-pur-address-wrapper a.ecl-last{border-bottom:0}#ecl-weigou-pur-address-wrapper span{float:none;display:inline-block}#ecl-weigou-pur-address-wrapper .ecl-name{font-weight:bold}#ecl-weigou-pur-address-wrapper .ecl-address{word-wrap:break-word;word-break:break-all;display:block}
.ecl-weigou-pur-range{margin-left:10px;height:24px;_height:25px}.ecl-weigou-pur-range b{float:left;height:15px;width:10px;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -392px;margin-top:4px}.ecl-weigou-pur-range span{float:left;line-height:23px;_line-height:25px;margin-left:5px}#ecl-weigou-address-input{width:300px}tr.ecl-weigou-pur-address-tr th{padding-top:3px}.ecl-weigou-pur-logo{margin:auto;height:60px;width:60px;overflow:hidden}.ecl-weigou-pur-logo div{border:1px solid #e1e1e1}.ecl-weigou-pur-logo img{display:block;width:58px;height:58px}.ecl-weigou-pur-item{height:70px}.ecl-weigou-pur-name{display:inline-block;padding:0 8px;text-align:left;word-break:break-all;word-wrap:break-word}.ecl-weigou-pur-price{color:#ff7800;display:inline-block;font-weight:bold}.ecl-weigou-pur-delete{display:inline-block;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) -119px -354px;line-height:21px;_line-height:23px;text-align:center;width:48px;height:21px;overflow:hidden;cursor:pointer;color:#666}
.ecl-weigou-pur-bottom{border-top:1px solid #e1e1e1;margin-top:15px;padding-top:20px}.ecl-weigou-product-price-td,.ecl-weigou-product-counter-td,.ecl-weigou-product-op-td{vertical-align:top}.ecl-weigou-pur-price-wrapper,.ecl-weigou-counter,.ecl-weigou-pur-delete{margin-top:17px}.ecl-weigou-product-errmsg{height:22px;line-height:22px;border:1px solid #f1a4a4;padding:0 5px 0 20px;color:#d00;width:55px;margin:5px auto 0;zoom:1;background:url(http://bs.baidu.com/adtest/6c0fcd727d9a0a5c1e3572128061272e.png) 4px 5px no-repeat;display:none}.ecl-weigou-pur-top-price{border-top:1px solid #e1e1e1;color:#666;padding:8px 8px 0 0}.ecl-weigou-pur-top-price span{float:right}.ecl-weigou-pur-top-price .ecl-weigou-pur-top-totalprice{color:#ff7800;font-weight:bold;margin-left:2px}#ecl-weigou-pur-total-price{font-size:18px;color:#ff7800;font-weight:bold}
#ecl-weigou-pur-total-price-text{font-size:12px;display:none}.ecl-weigou-pur-bottom-total{font-weight:bold}#ecl-weigou-pur-return-btn{float:right;font-size:15px;cursor:pointer;text-decoration:underline;color:#7a77c8;visibility:visible;margin:18px 0 0 25px}#ecl-weigou-pur-prices{display:none;padding-left:46px}#ecl-weigou-pur-check,#ecl-weigou-pur-submit-loading{float:right;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) -638px -22px;width:150px;height:28px;color:#FFF;text-align:center;font-size:16px;font-family:宋体;font-weight:bold;padding-top:9px;cursor:pointer}#ecl-weigou-pur-submit-loading{display:none;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) -804px -22px;width:150px;cursor:default;vertical-align:middle}#ecl-weigou-pur-submit-loading img{width:10px;height:10px;margin:0 auto}#ecl-weigou-pur-global-msg{position:absolute;display:none;width:258px}
#ecl-weigou-pur-global-msg b{position:absolute;right:8px;top:8px;height:20px;width:20px;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -481px;display:block;cursor:pointer}.ecl-weigou-pur-global-wrapper{border:1px solid #f1a4a4;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;margin-bottom:10px;_margin-bottom:15px;zoom:1;background:#fff;color:#d00}.ecl-weigou-pur-global-inner{width:200px;margin:10px 28px}.ecl-weigou-pur-global-arrow{position:absolute;bottom:0;left:120px;height:11px;width:21px;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) -21px -637px}#ecl-weigou-pur-vcode-verify{width:49px;height:23px;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -510px;cursor:pointer;text-align:center;line-height:23px;margin-left:10px}#ecl-weigou-pur-vcode-verify img{display:none;width:10px;height:10px;margin:6px auto 0}
#ecl-weigou-pur-vcode-verify span{float:none;display:inline-block}#ecl-weigou-pur-vcode-verify.loading{cursor:default}#ecl-weigou-pur-vcode-verify.loading span{display:none}#ecl-weigou-pur-vcode-verify.loading img{display:block}#ecl-weigou-pur-mask{position:absolute;width:540px;background:#fff;top:0;z-index:100;opacity:0;filter:alpha(opacity=0)}.ecl-weigou-detail{padding:10px 0 20px 0}.ecl-weigou-detail-left{float:left;_display:inline;width:194px;overflow:hidden}.ecl-weigou-detail-right{float:left;padding-left:20px;_display:inline;zoom:1;width:325px;height:194px;color:#666;position:relative;z-index:11}.ecl-weigou-detail-image-container{border:1px solid #e1e1e1;background:#FFF}.ecl-weigou-detail-image-container div{width:192px;height:192px;overflow:hidden}.ecl-weigou-detail-image-container img{margin:1px;height:190px;width:190px}
.ecl-weigou-detail-gallery-wrapper{width:10000px;height:46px;position:absolute;left:0}.ecl-weigou-detail-name{font-size:14px;line-height:24px}.ecl-weigou-detail-name a{cursor:default;color:#000;text-decoration:none;word-wrap:break-word;word-break:break-all}.ecl-weigou-detail-vendor{color:#666;margin-top:7px;position:relative;z-index:10}.ecl-weigou-detail-vendor span{float:left;margin-top:3px}.ecl-weigou-detail-vendor a{display:inline-block;float:left;color:#7a77c8;margin:2px 10px 0 4px;padding:1px 5px 2px 5px;position:relative;z-index:4}.ecl-weigou-detail-price{margin-top:7px}.ecl-weigou-detail-price span{float:left;margin-top:2px}.ecl-weigou-detail-price .price{color:#ff7800;font-size:16px;margin:0 0 0 2px;font-weight:bold}.ecl-weigou-detail-price .tag{margin:0 0 0 10px;height:20px;width:66px;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -610px}
.ecl-weigou-detail-counter{margin-top:7px}.ecl-weigou-detail-counter span{float:left}.ecl-weigou-detail-counter .ecl-weigou-detail-counter-title{margin-top:2px}.ecl-weigou-detail-counter .ecl-weigou-detail-minus,.ecl-weigou-detail-counter .ecl-weigou-detail-plus{width:20px;height:20px;cursor:pointer;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -64px}.ecl-weigou-detail-counter .ecl-weigou-detail-plus{background-position:-24px -64px}.ecl-weigou-detail-counter .ecl-weigou-detail-counter-input{width:32px;height:18px;border:1px solid #e1e1e1;margin:0 5px;overflow:hidden}.ecl-weigou-detail-counter input{width:32px;height:20px;line-height:20px;_line-height:18px;outline:0;border:0;text-align:center}.ecl-weigou-detail-submit-wrapper{position:absolute;left:20px;bottom:2px;z-index:1}.ecl-weigou-detail-submit-wrapper span{position:absolute;top:29px;left:144px;font-size:15px;cursor:pointer;text-decoration:underline;color:#7a77c8;width:50px}
.ecl-weigou-detail-submit{background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) -139px -21px;width:120px;height:28px;color:#FFF;text-align:center;font-size:16px;font-family:宋体;font-weight:bold;padding-top:9px;margin-top:10px;cursor:pointer}.ecl-weigou-detail-bottom{display:none;margin:10px 0;zoom:1}.ecl-weigou-rcmd-title{height:15px;padding:5px 0 0 20px;font-weight:bold;font-size:14px;color:#666;z-index:2;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -297px;position:relative}.ecl-weigou-rcmd-container{border:1px solid #e1e1e1;background:#FFF;margin-top:-1px;padding:15px 0;color:#666;overflow:hidden;zoom:1}.ecl-weigou-rcmd-left{float:left;width:117px;_display:inline;_zoom:1}.ecl-weigou-rcmd-left .ecl-weigou-rcmd-item-top img{cursor:default}.ecl-weigou-rcmd-left .ecl-weigou-rcmd-item-middle a{cursor:default}
.ecl-weigou-rcmd-middle{float:left;_display:inline}.ecl-weigou-rcmd-middle b{background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -327px;width:23px;height:22px;display:block;margin:64px 11px 0 0}.ecl-weigou-rcmd-right{float:left;width:376px;height:135px}.ecl-weigou-rcmd-gallery-container{position:relative}.ecl-weigou-rcmd-gallery-left,.ecl-weigou-rcmd-gallery-right{cursor:pointer;z-index:2;position:absolute;top:34px}.ecl-weigou-rcmd-gallery-left div,.ecl-weigou-rcmd-gallery-right div{width:15px;height:81px;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) -34px -87px}.ecl-weigou-rcmd-gallery-right div{background-position:-51px -87px}.ecl-weigou-rcmd-gallery-left div.disabled{background-position:0 -87px;cursor:default}.ecl-weigou-rcmd-gallery-right div.disabled{background-position:-17px -87px;cursor:default}
.ecl-weigou-rcmd-gallery-right{right:1px;_right:0}.ecl-weigou-rcmd-gallery{width:345px;height:135px;position:absolute;overflow:hidden;border-right:1px dashed #ededed;border-left:1px dashed #ededed;left:14px}.ecl-weigou-rcmd-gallery-wrapper{height:135px;width:5000px;position:absolute}.ecl-weigou-rcmd-gallery-wrapper ul{position:absolute}.ecl-weigou-rcmd-gallery-wrapper ul li{float:left;width:115px;height:135px;overflow:hidden}.ecl-weigou-rcmd-gallery-wrapper ul li .ecl-weigou-rcmd-item{width:132px}.ecl-weigou-rcmd-item{height:130px}.ecl-weigou-rcmd-item-top{margin:auto;width:70px;height:70px;overflow:hidden}.ecl-weigou-rcmd-item-top img{cursor:pointer;width:70px;height:70px}.ecl-weigou-rcmd-item-middle{width:95px;height:32px;line-height:16px;margin:5px auto;overflow:hidden}.ecl-weigou-rcmd-item-middle a{display:block;width:100px;overflow:hidden;word-wrap:break-word;word-break:break-all}
.ecl-weigou-rcmd-item-name{color:#666;word-break:break-all;word-wrap:break-word}.ecl-weigou-rcmd-item-bottom{width:95px;margin:auto;padding-left:4px}.ecl-weigou-rcmd-item-bottom input{margin:-2px 3px 1px 3px;margin-top:0 9;_margin-top:-1px;height:13px;width:13px;vertical-align:middle}.ecl-weigou-rcmd-item-bottom strong{color:#ff7800}.ecl-weigou-rcmd-add-wrapper{width:95px;margin:auto;overflow:hidden}.ecl-weigou-rcmd-add{background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -240px;width:82px;height:21px;cursor:pointer}.ecl-weigou-rcmd-add .ecl-weigou-rcmd-select{display:block;text-align:center;line-height:21px;padding-left:12px;_line-height:23px}.ecl-weigou-rcmd-add .ecl-weigou-rcmd-noselect{display:none;text-align:center;line-height:21px;_line-height:23px}.ecl-weigou-rcmd-add.selected{background-position:-87px -240px}
.selected .ecl-weigou-rcmd-select{display:none}.selected .ecl-weigou-rcmd-noselect{display:block}.ecl-weigou-rcmd-bottom{float:right;margin:5px 8px 0 0;_display:inline}.ecl-weigou-rcmd-bottom span{display:inline-block;margin:6px 2px 0;_margin-top:7px}.ecl-weigou-rcmd-count-wrapper span{color:#ff7800;display:inline-block;float:none;margin:0 3px 0;font-weight:bold}span.ecl-weigou-rcmd-buy{background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) -416px -22px;width:72px;height:25px;color:#FFF;font-weight:bold;margin-top:0;cursor:pointer;text-align:center;line-height:24px;_line-height:28px}.ecl-weigou-rcmd-tip{position:absolute;background:#FFF;font-size:12px;width:540px;z-index:12}.ecl-weigou-rcmd-tip-inner{border:1px solid #e1e1e1;overflow:hidden;padding-bottom:10px}.ecl-weigou-rcmd-tip-inner b{position:absolute;right:0;top:0;height:20px;width:20px;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -481px;display:block;cursor:pointer}
.ecl-weigou-rcmd-tip-left{float:left;margin:10px;_display:inline;_zoom:1;border:1px solid #e1e1e1}.ecl-weigou-rcmd-tip-left div{width:192px;height:192px;overflow:hidden}.ecl-weigou-rcmd-tip-left img{height:192px;width:192px}.ecl-weigou-rcmd-tip-right{float:left;color:#666;width:314px;overflow:hidden;margin:10px 0 0 10px;_display:inline;_zoom:1}.ecl-weigou-rcmd-tip-name-wrapper{font-size:14px;color:#333;line-height:24px;width:314px;word-break:break-all;word-wrap:break-word}.ecl-weigou-rcmd-tip-vendor{margin:12px 0 8px 0}.ecl-weigou-rcmd-tip-price strong{color:#ff7800;font-size:13px}.ecl-weigou-rcmd-tip-attrs{margin-top:4px}.ecl-weigou-rcmd-tip-attr{margin:4px 0 0 0;float:left;height:17px;overflow:hidden;width:140px;_display:inline;_zoom:1}.ecl-weigou-detail-top{height:196px;zoom:1}#ecl-weigou-detail-attr{position:absolute;z-index:3;top:-5px;left:195px}
#ecl-weigou-detail-attr b{cursor:pointer;display:inline-block;position:absolute;top:4px;right:4px;height:20px;width:20px;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -481px;z-index:3}#ecl-weigou-detail-attr .ecl-weigou-attr-key{color:#666}#ecl-weigou-detail-attr iframe{position:absolute;top:0;left:10px;border:0;opacity:0;filter:alpha(opacity=0);z-index:0;height:0;width:0}.ecl-tip-arrow{position:absolute;top:5px;left:0;height:21px;width:11px;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 0 -637px;z-index:3}.ecl-weigou-detail-attr-inner{margin:0 20px;padding:10px 0;width:360px;overflow:auto}.ecl-weigou-detail-attr-wrapper{border:1px solid #ccc;background:#fff;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;margin-left:10px;zoom:1;z-index:2;position:relative}.ecl-weigou-pur-attr-item{float:left;width:180px;height:20px;overflow:hidden;word-wrap:break-word;word-break:break-all}
.ecl-attr-value{color:#333}.ecl-weigou-success{height:215px;overflow:hidden;text-align:center;color:#666;border-bottom:1px solid #ccc}.ecl-weigou-success div{margin-bottom:5px}.ecl-weigou-success a{color:#7878c6}.ecl-weigou-success-title{margin:40px 0 10px 0;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) 175px -418px;padding-left:40px}.ecl-weigou-success-title span{color:#000;font-size:18px;font-weight:bold;font-family:Microsoft yahei ui;display:inline-block;height:30px;line-height:30px}.ecl-weigou-success-btn{display:block;margin:15px auto 0;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) -503px -21px;width:120px;height:28px;color:#FFF;text-align:center;font-size:16px;font-family:宋体;font-weight:bold;padding-top:9px;cursor:pointer}.ecl-weigou-success-tip{color:#df1f1c}.ecl-weigou-list-wrapper{width:636px;line-height:1.3;overflow:hidden}
.ecl-weigou-filter{margin-top:5px}.ecl-weigou-filter .ecl-weigou-filter-name{float:left}.ecl-weigou-filter ul,.ecl-weigou-filter li{float:left}.ecl-weigou-filter li{display:inline;margin:0 5px;padding:2px 5px;cursor:pointer}.ecl-weigou-filter li.selected{background:#6ba2f5;color:#FFF;cursor:default}.ecl-weigou-morebtn{font-size:12px;text-align:center;height:25px;line-height:25px;cursor:pointer;background:#FFF;border:1px solid #CCC;margin:13px auto 0;color:#AAA}.ecl-weigou-list{padding:0 0 10px}.ecl-weigou-product-list{height:196px;width:656px;overflow:hidden;position:relative;margin-top:6px}.ecl-weigou-product{float:left;width:129px;height:188px;overflow:hidden;_display:inline;margin:8px 8px 0 0;background:#FFF;position:relative;cursor:pointer}.ecl-weigou-product .ecl-weigou-product-top{width:110px;margin:8px auto 0}
.ecl-weigou-product .ecl-weigou-product-top img{width:110px;height:110px}.ecl-weigou-product .ecl-weigou-product-inner{border:1px solid #eee;height:186px}.ecl-weigou-product .ecl-weigou-product-center{margin:0 5px;line-height:19px;height:38px;overflow:hidden}.ecl-weigou-product .ecl-weigou-product-bottom{margin:0 5px;line-height:19px;height:19px;overflow:hidden}.ecl-weigou-product .ecl-weigou-product-price{font-size:12px;font-weight:bold}.ecl-weigou-product .ecl-weigou-product-price strong{color:#ff7800}.ecl-weigou-product .ecl-weigou-product-original-price{color:#999;margin-left:1px;height:19px;overflow:hidden;white-space:nowrap}.ecl-weigou-product .ecl-weigou-product-image{cursor:pointer}.ecl-weigou-product .ecl-weigou-product-name{color:#00c;word-break:break-all;word-wrap:break-word}.mouseover .ecl-weigou-product-vendor b{background-position:0 -458px}
.mouseover .ecl-weigou-product-vendor span{background:#ff7800}.mouseover .ecl-weigou-product-inner{border:1px solid #ff7800}.ecl-weigou-product-vendor{position:absolute;top:0;left:0;height:17px}.ecl-weigou-product-vendor b{float:left;height:17px;width:17px;background:url(//www.baidu.com/cache/biz/ecom/weigou/weigou-1bb6f55a.gif) -31px -458px}.ecl-weigou-product-vendor span{float:left;height:17px;line-height:17px;_line-height:19px;overflow:hidden;padding-left:3px;background:#d6d6d6;color:#fff}.ecl-weigou-pager{text-align:center;margin-top:10px;display:none}.ecl-weigou-pager a{display:inline-block;line-height:22px;text-align:center;height:22px;width:22px;border:1px solid #e1e1e1;margin:0 5px;text-decoration:none}.ecl-weigou-pager a.selected{border:1px solid #fafafa;font-weight:bold;color:#000}.ecl-weigou-list .ecl-weigou-product-list2{height:auto}
.ecl-weigou-product-list2 .ecl-weigou-product{width:266px;height:146px;overflow:hidden;margin:8px 8px 0 0}.ecl-weigou-product-list2 .ecl-weigou-product-inner{height:144px;color:#666}.ecl-weigou-product-list2 .ecl-weigou-product-left{float:left;height:110px;width:110px;overflow:hidden;margin:16px 0 0 4px;_display:inline;_zoom:1}.ecl-weigou-product-list2 .ecl-weigou-product-right{float:left;margin-left:4px;width:130px;_display:inline;_zoom:1}.ecl-weigou-product-list2 img{width:110px;height:110px}.ecl-weigou-product-list2 .ecl-weigou-product-name-wrapper{font-size:12px;line-height:18px;margin-top:10px;word-wrap:break-word;word-break:break-all}.ecl-weigou-product-list2 .ecl-weigou-product-src{margin:8px 0 8px 0}.ecl-weigou-product-list2 .ecl-weigou-product-price{float:none;font-weight:normal}.ecl-weigou-product-list2 .ecl-weigou-product-original-price{float:none;margin-left:0}
.ecl-weigou-product-list2 .ecl-weigou-product-detail{margin-top:8px}.ecl-weigou-product-list2 .ecl-weigou-product-detail a{color:#00c}.ecl-weigou-list-noresult{height:120px;padding-top:70px;text-align:center}.ecl-weigou{font-size:12px;width:540px;background:#fff;position:relative}.ecl-weigou-font-songti{font-family:宋体}.ecl-weigou-money{font-family:arial;font-weight:bold;color:#999}.ecl-weigou-clear{clear:both}.ecl-weigou{font-size:14px}.ecl-weigou-detail-name{font-size:16px}.ecl-weigou-detail-price{margin-top:0}.ecl-weigou-detail-price .price{font-size:18px}.ecl-weigou-detail-vendor{margin-top:0}.ecl-weigou-detail-counter{margin-top:0}.ecl-weigou-detail-counter .ecl-weigou-detail-minus,.ecl-weigou-detail-counter .ecl-weigou-detail-plus{display:none}.ecl-weigou-detail-counter .ecl-weigou-detail-counter-input{margin:0 auto}
.ecl-weigou-detail-counter input{width:25px;font-size:13px}.ecl-weigou-detail-submit-wrapper span{font-size:17px}.ecl-weigou-detail-submit{font-size:18px}.ecl-weigou-rcmd-title{font-size:16px}.ecl-weigou-rcmd-tip{font-size:14px}.ecl-weigou-rcmd-tip-name-wrapper{font-size:16px}.ecl-weigou-rcmd-tip-price strong{font-size:15px}.ecl-weigou-rcmd-tip-attr{width:155px}.ecl-weigou-detail-attr-inner{width:380px}.ecl-weigou-pur-attr-item{width:190px}.ecl-weigou-morebtn{font-size:14px}.ecl-weigou-product .ecl-weigou-product-price{font-size:14px}.ecl-weigou-product-list2 .ecl-weigou-product-name-wrapper{font-size:14px;height:34px;overflow:hidden}.ecl-weigou-product-list2 .ecl-weigou-product-src{margin:5px 0 0 0}.ecl-weigou-pur-section th{font-size:14px}.ecl-weigou-pur-title{font-size:16px}.ecl-weigou-counter .ecl-weigou-minus,.ecl-weigou-counter .ecl-weigou-plus{display:none}
.ecl-weigou-counter .ecl-weigou-count{margin:0 auto;float:none;display:inline-block}.ecl-weigou-counter input{width:25px;font-size:13px}.ecl-weigou-pur-list td{font-size:14px}#ecl-weigou-username-input{width:194px}#ecl-weigou-pur-submit{font-size:18px}.ecl-weigou-pur-form-container th{width:120px}.ecl-weigou-pur-form-container td{font-size:14px}.ecl-weigou-pur-form-container input{width:166px;font-size:13px}.ecl-weigou-get-mobile-code{font-size:12px}.ecl-weigou-pur-selector,.ecl-weigou-pur-pick-address{width:200px}#ecl-weigou-pur-total-price{font-size:20px}#ecl-weigou-pur-total-price-text{font-size:14px}#ecl-weigou-pur-return-btn{font-size:17px}#ecl-weigou-pur-check,#ecl-weigou-pur-submit-loading{font-size:18px}#ecl-weigou-pur-vcode-verify span{font-size:12px}.ecl-weigou-success-title span{font-size:20px}
.ecl-weigou-success-btn{font-size:18px}.ecl-weigou-header-logo{font-size:17px;margin:10px 0 0 5px}.ecl-weigou-header-item{margin-right:5px}.ecl-weigou-address{width:136px}#ecl-weigou-back-btn{right:0;top:38px;left:auto;z-index:100;width:20px!important;height:38px!important;padding-top:7px;line-height:16px!important;font-size:13px;color:#fff!important;background:#df1f1c;text-align:center;-webkit-border-top-left-radius:5px;-webkit-border-bottom-left-radius:5px;border-top-left-radius:5px;border-bottom-left-radius:5px}#ecl-weigou-pur-return-btn,#ecl-weigou-detail-return-btn{display:none}.ecl-weigou-detail-right{width:300px}.ecl-weigou-rcmd-item-bottom label{width:70px;display:inline-block}.ecl-weigou-rcmd-gallery-left{width:27px;left:-11px;direction:rtl}.ecl-weigou-rcmd-gallery-right{width:27px;right:-11px}
.ecl-weigou-product-errmsg{background:0;padding-left:5px;width:65px}
</style>

<div id="ecl-weigou-view-container" class="ecl-weigou-pc ecl-weigou">
    <div id="ecl-weigou-back-btn" style="display: none"></div>
    <div id="ecl-weigou-view-container-placeholder">
        <div class="ecl-weigou-header">
            <div class="ecl-weigou-header-inner">
                <div class="ecl-weigou-header-left">
                    <div class="ecl-weigou-header-logo">
                        <a id="ecl-weigou-header-logo-link" href="{%build_search_url params="wd=百度微购&rsv_dl=1_left_ec_{%$extData.resourceid%}"%}" target="_blank"></a>
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
                            <span>100%正品</span>
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
                    <div class="ecl-weigou-address-selector OP_LOG_BTN" data-click="{fm:'behz'}">
                        <span class="ecl-weigou-address-content">{%if $tplData.address%}{%$tplData.address%}{%else%}请选择{%/if%}</span>
                    </div>
                    <div id="ecl-weigou-address-picker">
                        <div class="ecl-weigou-address-picker-wrapper">
                            <div class="ecl-weigou-address-picker-inner">
                                <b class="OP_LOG_BTN" data-click="{fm:'behz'}"></b>
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
{%*
                    <div class="ecl-weigou-filters" style="display: none">
                        <div class="ecl-weigou-filter c-clearfix" data-key="category">
                            <div class="ecl-weigou-filter-name">香水容量：</div>
                            <ul>
                                <li class="selected">全部</li>
                                <li>爱情</li>
                                <li>喜剧</li>
                            </ul>
                        </div>
                        <div class="ecl-weigou-filter c-clearfix" data-key="brand">
                            <div class="ecl-weigou-filter-name">香水香味：</div>
                            <ul>
                                <li class="selected">全部</li>
                                <li>草莓</li>
                                <li>橙花</li>
                                <li>柑橘</li>
                            </ul>
                        </div>
                    </div>
*%}

<!-- 商品列表 -->
                    <div class="ecl-weigou-list-wrapper">
                    {%if $tplData.totalCount == 2%}
                        <div class="ecl-weigou-product-list ecl-weigou-product-list2">
                        {%foreach $tplData.goods as $item%}
                            <div class="ecl-weigou-product" data-id="{%$item.id%}">
                                <div class="ecl-weigou-product-inner">
                                    <div class="ecl-weigou-product-left">
                                        <img class="ecl-weigou-product-image OP_LOG_IMAGE" data-click="{fm:'behz'}" src="{%$item.logo|escape:'html'%}">
                                    </div>
                                    <div class="ecl-weigou-product-right">
                                        <div class="c-clearfix ecl-weigou-product-name-wrapper">
                                            <a class="ecl-weigou-product-name OP_LOG_LINK" data-click="{fm:'behz'}" href="javascript:;" title="{%$item.name|escape:'html'%}">{%$item.name|limitlen:36|escape:'html'%}</a>
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
                                            <a href="javascript:;" class="OP_LOG_LINK" data-click="{fm:'behz'}"><span class="ecl-weigou-product-detail-text">查看详情</span><span class="ecl-weigou-font-songti">&gt;&gt;</span></a>
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
                                        <img class="ecl-weigou-product-image OP_LOG_IMAGE" data-click="{fm:'behz'}" src="{%$item.logo%}" />
                                    </div>
                                    <div class="ecl-weigou-product-center">
                                        <a class="ecl-weigou-product-name OP_LOG_LINK" data-click="{fm:'behz'}" href="javascript:;" title="{%$item.name|escape:'html'%}">{%$item.name|limitlen:30|escape:'html'%}</a>
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
                    <div class="ecl-weigou-morebtn OP_LOG_BTN" data-click="{fm:'behz'}">查看更多商品</div>
                    {%/if%}
                    <div class="ecl-weigou-pager"></div>
                </div>
            </div>
            {%else%}
            <div class="ecl-weigou-view" style="" id="ecl-weigou-view-placeholder">
                <div class="ecl-weigou-detail">
                    <div class="ecl-weigou-detail-top c-clearfix">
                        <div class="ecl-weigou-detail-left">
                            <div class="ecl-weigou-detail-image-container">
                                <div>
                                    <img src="{%if $tplData.gallery%}{%$tplData.gallery[0]|escape:'html'%}{%/if%}" class="ecl-weigou-detail-image" />
                                </div>
                            </div>
                        </div>
                        <div class="ecl-weigou-detail-right">
                            <div class="ecl-weigou-detail-name">
                                <a href="javascript:;" title="{%$tplData.name|escape:'html'%}">{%$tplData.name|limitlen:64|escape:'html'%}</a>
                            </div>
                            <div class="ecl-weigou-detail-vendor c-clearfix">
                                <span>商品来源：</span>
                                <span class="ecl-weigou-detail-verdor-name">{%$tplData.vendor|escape:'html'%}</span>
                                {%if $tplData.attributes && $tplData.attributes|@count neq 0%}
                                <a id="ecl-weigou-detail-attr-link" href="javascript:;" class="OP_LOG_BTN" data-click="{fm:'behz'}">查看详情</a>
                                <div id="ecl-weigou-detail-attr" style="display: none;">
                                    <iframe></iframe>
                                    <span class="ecl-tip-arrow"></span>
                                    <b class="OP_LOG_BTN" data-click="{fm:'behz'}"></b>
                                    <div class="ecl-weigou-detail-attr-wrapper">
                                        <div class="ecl-weigou-detail-attr-inner" {%if $tplData.attributes|@count < 9%}style="width:180px"{%/if%}>
                                            {%foreach $tplData.attributes as $item%}
                                            <div class="ecl-weigou-pur-attr-item" title="{%$item.key|escape:'html'%}：{%$item.value|escape:'html'%}">{%$item.key|cat:$item.value|limitlen:24|escape:'html'%}</div>
                                            {%/foreach%}
                                        </div>
                                    </div>
                                </div>
                                {%/if%}
                            </div>
                            <div class="ecl-weigou-detail-price c-clearfix">
                                <span>现　　价：¥</span>
                                <span class="price">{%if $tplData.promotion_data && $tplData.promotion_data.id != 0%}{%$tplData.promotion_data.price|string_format:"%.2f"%}{%else%}{%$tplData.price|string_format:"%.2f"%}{%/if%}</span>
                                <span class="tag"></span>
                            </div>
                            {%if $tplData.original_price && $tplData.original_price != 0 && $tplData.original_price > $tplData.price%}
                            <div class="ecl-weigou-detail-original-price c-clearfix">
                                <span>原　　价：</span>
                                <s>¥{%$tplData.original_price|string_format:"%.2f"%}</s>
                            </div>
                            {%/if%}
                            <div class="ecl-weigou-detail-counter c-clearfix">
                                <span class="ecl-weigou-detail-counter-title">购买数量：</span>
                                <span class="ecl-weigou-detail-minus OP_LOG_BTN" data-click="{fm:'behz'}"></span>
                                <span class="ecl-weigou-detail-counter-input">
                                    <input id="ecl-weigou-detail-input" type="text" value="1" />
                                </span>
                                <span class="ecl-weigou-detail-plus OP_LOG_BTN" data-click="{fm:'behz'}"></span>
                            </div>
                            <div class="ecl-weigou-detail-submit-wrapper">
                                <div class="ecl-weigou-detail-submit OP_LOG_BTN" data-click="{fm:'behz'}"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {%/if%}
        </div>
    </div>
</div>

<script>
    A.init(function(){
        var bds = window.bds = window.bds || {};
        bds.ecom = bds.ecom || {};
        bds.ecom.data = {
            'zhixin': {
                'isDetail': {%if $tplData.StdStl == 1%}true{%else%}false{%/if%},
                'region': '{%$tplData.address%}',
                {%if $tplData.StdStl == 0%}
                'totalCount': {%$tplData.totalCount%}
                {%else%}
                'data': {
                    'id': '{%$tplData.id%}',
                    'name': '{%$tplData.name|escape:'javascript'%}',
                    'logo': '{%$tplData.logo|escape:'javascript'%}',
                    'fare': '{%$tplData.fare%}',
                    'vendor': '{%$tplData.vendor|escape:'javascript'%}',
                    'vendor_id': '{%$tplData.vendor_id%}',
                    'price': {%if $tplData.promotion_data && $tplData.promotion_data.id != 0%}{%$tplData.promotion_data.price|string_format:"%.2f"%}{%else%}{%$tplData.price|string_format:"%.2f"%}{%/if%},
                    'original_price': {%$tplData.original_price%}
                }
                {%/if%}
            }
        };

        document.addEventListener('DOMContentLoaded', function(){
            var script = document.createElement('script');
            script.charset = 'utf-8';
            var head = document.getElementsByTagName('head')[0];
            head.appendChild(script);
            script.src = 'http://www.baidu.com/cache/biz/ecom/weigou/weigou-ipad-1.2.js';
        }, false);
    });
</script>
{%/block%}
