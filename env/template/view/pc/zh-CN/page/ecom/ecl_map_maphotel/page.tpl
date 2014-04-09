{%extends 'base_div.tpl'%}

{%block name='content'%}
<style type="text/css">
.ecl-ecl_map_hotel-paddL{padding-left:10px}
.ecl-ecl_map_hotel-main{width:600px;padding:5px 0 0;font-size:12px;border:1px solid #f6f6f6}
.ecl-ecl_map_hotel-main a{outline:0;text-decoration:none}
.ecl-ecl_map_hotel-main .c-title a{text-decoration:underline;margin-left:10px}
.ecl-ecl_map_hotel-main a em{text-decoration:none}
.ecl-ecl_map_hotel-main strong{font-size:inherit;font-weight:400}
.ecl-ecl_map_hotel-main h3,.ecl-ecl_map_hotel-main h4,.ecl-ecl_map_hotel-main h5{margin:0;font-weight:400;line-height:inherit;font-size:12px}
.ecl-ecl_map_hotel-highlight{color:red}
.ecl-ecl_map_hotel-error{background-color:#c30;color:#fff}
.ecl-ecl_map_hotel-hide,.ecl-ecl_map_hotel-cond-hide{display:none!important}
.ecl-ecl_map_hotel-clearfix{zoom:1}
.ecl-ecl_map_hotel-title{margin:0 0 8px}
.ecl-ecl_map_hotel-main-query{text-decoration:underline}
.ecl-ecl_map_hotel-clearfix:after{clear:both;content:".";display:block;height:0;visibility:hidden}
.ecl-ecl_map_hotel-cond-row,.ecl-ecl_map_hotel-query-row{padding-left:10px;height:20px;line-height:25px}
.ecl-ecl_map_hotel-query-row{margin:10px 0;height:25px}
.ecl-ecl_map_hotel-query-item{float:left;padding-right:10px}
.ecl-ecl_map_hotel-query-item h5{display:inline;float:left;margin-right:7px}
.ecl-ecl_map_hotel-query-item b{display:block;width:17px;height:17px;margin-top:4px;float:left;cursor:pointer}
.ecl-ecl_map_hotel-input,.ecl-ecl_map_hotel-cal{float:left;border:1px solid #b5b5b5;background:#FFF}
.ecl-ecl_map_hotel-input input,.ecl-ecl_map_hotel-cal input{float:left;padding-left:4px;height:24px;line-height:24px;border:0;outline:0;font-size:12px}
.ecl-ecl_map_hotel-input b{border:0;background:0;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/hotel_icon.png) 0 -29px no-repeat;overflow:hidden}
.ecl-ecl_map_hotel-more-loc{float:right;margin-right:24px;line-height:20px;position:relative}
.ecl-ecl_map_hotel-more-loc .ecl-ecl_map_hotel-more-loc-icon{width:9px;height:5px;display:block;position:absolute;top:0;left:-9px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/hotel_icon.png) -22px -14px no-repeat;margin-top:9px;cursor:pointer}
.ecl-ecl_map_hotel-more-brand{float:right;margin-right:24px;line-height:20px;position:relative;display:block;margin-top:2px;display:none}
.ecl-ecl_map_hotel-more-brand-icon{cursor:pointer;width:9px;height:5px;display:block;position:absolute;top:0;left:-9px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/hotel_icon.png) -22px -14px no-repeat;margin-top:9px}
.ecl-ecl_map_hotel-city{width:101px}
.ecl-ecl_map_hotel-city input{width:81px;*width:77px;padding-left:4px}
.ecl-ecl_map_hotel-cal{width:195px}
.ecl-ecl_map_hotel-cal input{width:175px;*width:171px;cursor:pointer;-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none;-khtml-user-select:none;user-select:none}
.ecl-ecl_map_hotel-cal b{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/hotel_icon.png) 0 -29px no-repeat}
.ecl-ecl_map_hotel-dist{width:294px;position:relative}
.ecl-ecl_map_hotel-dist input{width:274px;*width:270px;padding-left:4px}
.ecl-ecl_map_hotel-submit{display:block;width:82px;line-height:26px;height:26px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/button_sprites.png) no-repeat;overflow:hidden;text-align:center;text-decoration:none;color:#000;cursor:pointer;-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none;-khtml-user-select:none;user-select:none}
.ecl-ecl_map_hotel-submit.ecl-ecl_map_hotel-submit-hover{background-position:-84px 0}
.ecl-ecl_map_hotel-submit.ecl-ecl_map_hotel-submit-press{background-position:-168px 0}
.ecl-ecl_map_hotel-cond-row{line-height:20px;padding:3px 0 2px 10px;width:590px}
.ecl-ecl_map_hotel-cond-row h4{float:left;width:24px;margin-right:7px}
.ecl-ecl_map_hotel-cond-row strong{height:18px;line-height:18px;_padding-top:2px;width:35px;margin:0 3px 0 0;float:left;background:#67a5eb;color:#FFF;border-radius:2px;text-align:center;cursor:pointer}
.ecl-ecl_map_hotel-cond-row strong.ecl-ecl_map_hotel-unselect{background:0;color:#555}
.ecl-ecl_map_hotel-cond-price{position:relative}
.ecl-ecl_map_hotel-filter-trigger{height:24px;line-height:24px;cursor:pointer;color:#00c;float:left;margin-left:12px;*width:39px;_position:relative}
.ecl-ecl_map_hotel-filter-trigger .ecl-ecl_map_hotel-trigger-cond-icon{width:3px;height:6px;line-height:6px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/hotel_icon.png) -33px -2px no-repeat;padding:0 4px;display:inline-block;margin-left:4px;_position:absolute;_top:10px}
.ecl-ecl_map_hotel-filter-trigger .ecl-ecl_map_hotel-more-cond-icon{width:3px;height:6px;line-height:6px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/hotel_icon.png) -20px -2px no-repeat;padding:0 4px;display:inline-block;margin-left:4px;_position:absolute;_top:10px;overflow:hidden}
.ecl-ecl_map_hotel-opt,.ecl-ecl_map_hotel-opt ul{float:left}
.ecl-ecl_map_hotel-opt li{float:left;width:88px;height:18px;line-height:18px;padding:1px 3px 1px 0;overflow:hidden}
.ecl-ecl_map_hotel-opt .ecl-ecl_map_hotel-opt-hover label{color:#00c}
.ecl-ecl_map_hotel-opt input{vertical-align:top;width:15px;height:15px;margin:0;margin-top:2px;*margin-top:1px}
.ecl-ecl_map_hotel-opt label{font-family:tahoma;cursor:pointer;padding:0 1px 3px 2px;padding:0 2px 3px 0 url(0);_padding:2px;height:18px;line-height:18px;_line-height:14px;overflow:hidden;word-wrap:break-word;word-break:break-all;width:68px;width:autourl(0);display:inline-block;display:inlineurl(0);color:#333}
.ecl-ecl_map_hotel-empty-value{color:#bababa}
.ecl-ecl_map_hotel-sort i{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/hotel_icon.png) 0 0 no-repeat;margin-left:4px;display:inline-block}
.ecl-ecl_map_hotel-ctrl{height:20px;_height:31px;overflow:hidden;line-height:20px;text-align:left;padding:5px 10px 6px;margin:5px 0 0;position:relative;border-bottom:1px solid #f5f5f5}
.ecl-ecl_map_hotel-ctrl .ecl-ecl_map_hotel-info{margin-left:10px}
.ecl-ecl_map_hotel-ctrl .ecl-ecl_map_hotel-info span{color:#ff6c00;font-weight:700}
.ecl-ecl_map_hotel-sort{float:left;height:20px;width:195px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/button_sprites.png) 0 -138px no-repeat;position:relative}
.ecl-ecl_map_hotel-sort a{display:block;float:left;width:62px;height:20px;line-height:20px;color:#666;text-align:center;_text-align:left;cursor:pointer;-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none;-khtml-user-select:none;user-select:none;position:relative}
.ecl-ecl_map_hotel-sort .ecl-ecl_map_hotel-sort-default{width:70px;text-align:center}
.ecl-ecl_map_hotel-sort-default span{position:absolute;top:0;left:0;width:70px;line-height:20px}
.ecl-ecl_map_hotel-sort-dianp span{position:absolute;right:23px;line-height:20px}
.ecl-ecl_map_hotel-sort-price span{position:absolute;right:24px;line-height:20px}
.ecl-ecl_map_hotel-sort-price i{width:7px;height:10px;line-height:10px;position:absolute;background-position:-10px -14px;top:5px;right:12px}
.ecl-ecl_map_hotel-sort-dianp i{width:7px;height:9px;line-height:9px;position:absolute;background-position:-10px 0;top:6px;right:12px}
.ecl-ecl_map_hotel-list{color:#333;display:none}
.ecl-ecl_map_hotel-sort a.ecl-ecl_map_hotel-defaultcur{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/button_sprites.png) 0 -168px no-repeat;width:71px}
.ecl-ecl_map_hotel-sort a.ecl-ecl_map_hotel-cur{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/button_sprites.png) -82px -168px no-repeat;width:63px}
.ecl-ecl_map_hotel-sort-dianp.ecl-ecl_map_hotel-cur i{background-position:0 0}
.ecl-ecl_map_hotel-cur.ecl-ecl_map_hotel-sort-desc i{background-position:-10px -78px}
.ecl-ecl_map_hotel-cur.ecl-ecl_map_hotel-sort-asc i{background-position:0 -78px}
.ecl-ecl_map_hotel-list li{height:75px;padding:5px;border-bottom:1px solid #f6f6f6;overflow:hidden;float:left;width:590px}
.ecl-ecl_map_hotel-list li.ecl-ecl_map_hotel-nodata{border:0 none;height:auto;padding:25px 0;text-align:center;width:600px}
.ecl-ecl_map_hotel-img,.ecl-ecl_map_hotel-intro,.ecl-ecl_map_hotel-rate,.ecl-ecl_map_hotel-price{float:left;padding-right:10px}
.ecl-ecl_map_hotel-img{width:70px;padding:0 5px;margin-top:5px}
.ecl-ecl_map_hotel-img a{display:block}
.ecl-ecl_map_hotel-img a,.ecl-ecl_map_hotel-img img{width:64px;height:64px;border:1px solid rgba(0,0,0,.1)}
.ecl-ecl_map_hotel-intro{width:280px}
.ecl-ecl_map_hotel-intro h5{margin:0;padding:0;margin-bottom:2px;font-weight:400;line-height:25px}
.ecl-ecl_map_hotel-intro h5 a{font-size:13px;text-decoration:none;color:#00c;word-wrap:break-word;word-break:break-all}
.ecl-ecl_map_hotel-intro h5 a:hover{text-decoration:underline}
.ecl-ecl_map_hotel-intro h5 i{margin-left:10px;color:#666;font-style:normal;font-size:12px}
.ecl-ecl_map_hotel-intro p{width:260px;*width:270px;height:32px;line-height:16px;overflow:hidden;*position:relative;word-wrap:break-word;word-break:break-all}
.ecl-ecl_map_hotel-intro a{color:#333}
.ecl-ecl_map_hotel-rate{margin-top:18px;width:120px;height:36px;text-align:center;line-height:18px;padding:0}
.ecl-ecl_map_hotel-rate a{color:#00c;display:block}
.ecl-ecl_map_hotel-rate a:hover{text-decoration:underline}
.ecl-ecl_map_hotel-rate .ecl-ecl_map_hotel-rate-recommend{color:#333;margin-top:2px}
.ecl-ecl_map_hotel-rate .ecl-ecl_map_hotel-rate-recommend:hover{text-decoration:none}
.ecl-ecl_map_hotel-rate p{padding-left:35px;text-align:left}
.ecl-ecl_map_hotel-price{width:100px;padding-right:0;margin-top:15px;text-align:center;position:relative;height:50px}
.ecl-ecl_map_hotel-map .ecl-ecl_map_hotel-price{margin-top:4px}
.ecl-ecl_map_hotel-price a{cursor:pointer}
.ecl-ecl_map_hotel-price .ecl-ecl_map_hotel-priceLink{display:block;font-weight:700;color:#ff6c00;position:absolute;top:2px;left:0;right:0;text-align:center;width:100px}
.ecl-ecl_map_hotel-price .ecl-ecl_map_hotel-priceLink span{font-weight:400;color:#666}
.ecl-ecl_map_hotel-price .ecl-ecl_map_hotel-lasttime{margin-top:6px;display:inline-block}
.ecl-ecl_map_hotel-detailLink{margin-top:6px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/button_sprites.png) 0 -28px no-repeat;overflow:hidden;display:block;width:66px;height:24px;line-height:24px;color:#666;position:absolute;bottom:3px;left:17px}
.ecl-ecl_map_hotel-list .ecl-ecl_map_hotel-detailLink{background-position:0 -52px;color:#FFF}
.ecl-ecl_map_hotel-map .ecl-ecl_map_hotel-detailLink{left:0!important}
.ecl-ecl_map_hotel-detailLink span{width:66px;line-height:18px;top:3px;position:absolute;left:0;cursor:pointer;text-align:center}
.ecl-ecl_map_hotel-detailLink:hover{background-position:-68px -28px}
.ecl-ecl_map_hotel-list .ecl-ecl_map_hotel-detailLink:hover{background-position:0 -76px}
.ecl-ecl_map_hotel-detailLink:active{background-position:-136px -28px}
.ecl-ecl_map_hotel-list .ecl-ecl_map_hotel-detailLink:active{background-position:0 -76px}
.ecl-ecl_map_hotel-pg{background:#fff;height:21px;padding-top:15px;text-align:left;font-size:12px}
.ecl-ecl_map_hotel-static{position:absolute;top:1px;right:1px;z-index:10;width:300px;height:321px}
.ecl-ecl_map_hotel-mode-sel{position:absolute;right:15px;top:5px;line-height:20px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/button_sprites.png) 0 -198px no-repeat;width:161px;height:20px}
.ecl-ecl_map_hotel-cond-hide{display:none}
.ecl-ecl_map_hotel-list-mode,.ecl-ecl_map_hotel-ditu-mode{display:block;width:80px;height:20px;text-align:center;cursor:pointer;top 0;position:absolute}
.ecl-ecl_map_hotel-list-mode{left:0;right:auto}
.ecl-ecl_map_hotel-ditu-mode{left:auto;right:0}
.ecl-ecl_map_hotel-mode-cur{cursor:default;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/button_sprites.png) 0 -226px no-repeat;width:81px}
.ecl-ecl_map_hotel-list-mode span{display: block;height: 20px;line-height: 20px;position: absolute;left:24px;top:0px;-moz-user-select: none; -webkit-user-select: none; -ms-user-select: none; -khtml-user-select: none; user-select: none;}
.ecl-ecl_map_hotel-ditu-mode span{display: block;height: 20px;line-height: 20px;position: absolute;right:9px;top:0px;-moz-user-select: none; -webkit-user-select: none; -ms-user-select: none; -khtml-user-select: none; user-select: none;}
.ecl-ecl_map_hotel-list-mode i,.ecl-ecl_map_hotel-ditu-mode i{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/hotel_icon.png) 0 -66px no-repeat;width:10px;height:8px;position:absolute;display:block;left:8px;top:6px;overflow:hidden}
.ecl-ecl_map_hotel-ditu-mode i{background-position:0 -51px;width:9px;height:12px;right:60px;top:4px}
.ecl-ecl_map_hotel-mode-cur .ecl-ecl_map_hotel-ditu-icon{background-position:-12px -51px}
.ecl-ecl_map_hotel-mode-cur .ecl-ecl_map_hotel-list-icon{background-position:-12px -66px}
.ecl-ecl_map_hotel-lihover{background:#f9f9f9}
.ecl-ecl_map_hotel-lihover .ecl-ecl_map_hotel-index{color:#ff6c00}
.ecl-ecl_map_hotel-mapContainter{width:298px;height:319px;position:absolute;top:0;right:0;border:1px solid rgba(0,0,0,.1)}
.ecl-ecl_map_hotel-map{position:relative;min-height:321px;width:100%}
* html .ecl-ecl_map_hotel-map{height:321px}
.ecl-ecl_map_hotel-map .ecl-ecl_map_hotel-index{width:16px;float:left;margin-top:5px;text-align:center}
.ecl-ecl_map_hotel-map .ecl-ecl_map_hotel-intro{width:174px}
.ecl-ecl_map_hotel-map .ecl-ecl_map_hotel-intro p{width:174px;height:20px}
.ecl-ecl_map_hotel-map li{clear:both;height:54px;padding:5px;_height:54px;float:left;width:290px;border-bottom:1px solid #f6f6f6}
.ecl-ecl_map_hotel-map .ecl-ecl_map_hotel-item-sel{background:#f9f9f9}
.ecl-ecl_map_hotel-map .ecl-ecl_map_hotel-price{width:90px;text-align:center}
.ecl-ecl_map_hotel-map .ecl-ecl_map_hotel-price .ecl-ecl_map_hotel-priceLink{display:block;font-weight:700;color:#ff6c00}
.ecl-ecl_map_hotel-map .ecl-ecl_map_hotel-price .ecl-ecl_map_hotel-detailLink{margin-left:16px}
.ecl-ecl_map_hotel-map .ecl-ecl_map_hotel-dianp{margin-right:10px}
.ecl-ecl_map_hotel-item-sel .ecl-ecl_map_hotel-index{color:#ff6c00}
.ecl-ecl_map_hotel-list li.last{border-bottom:0}
.ecl-ecl_map_hotel-map-list li.last{border-bottom:0}
.ecl-ecl_map_hotel-ui-pager{display:inline-block;text-align:left;zoom:1}
.ecl-ecl_map_hotel-ui-pager a{text-decoration:underline;color:#00C}
.ecl-ecl_map_hotel-m-lp,.ecl-ecl_map_hotel-m-dlp{line-height:19px;font-size:12px;display:block;clear:both;cursor:pointer}
.ecl-ecl_map_hotel-m-dlp{line-height:21px}
.ecl-ecl_map_hotel-m-lp span,.ecl-ecl_map_hotel-m-dlp span{color:#FFF}
.ecl-ecl_map_hotel-m-l,.ecl-ecl_map_hotel-m-l-c,.ecl-ecl_map_hotel-m-l-r,.ecl-ecl_map_hotel-m-c,.ecl-ecl_map_hotel-m-r{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/m.png) -27px 0 no-repeat;display:inline-block;float:left}
.ecl-ecl_map_hotel-m-lp .ecl-ecl_map_hotel-m-l{background-position:-27px 0;width:9px;height:26px}
.ecl-ecl_map_hotel-m-lp .ecl-ecl_map_hotel-m-l-c{background-position:0 -145px;min-width:5px;height:19px;padding-right:5px}
.ecl-ecl_map_hotel-m-lp .ecl-ecl_map_hotel-m-l-r{background-position:-41px 0;width:4px;height:19px}
.ecl-ecl_map_hotel-m-lp .ecl-ecl_map_hotel-m-c{background-position:0 -63px;height:19px;min-width:35px;padding-right:5px;text-align:center}
.ecl-ecl_map_hotel-m-lp .ecl-ecl_map_hotel-m-r{background-position:-50px 0;width:4px;height:19px}
.ecl-ecl_map_hotel-m-dlp .ecl-ecl_map_hotel-m-l{background-position:-85px 0;width:9px;height:28px}
.ecl-ecl_map_hotel-m-dlp .ecl-ecl_map_hotel-m-l-c{background-position:-132px -143px;min-width:5px;height:21px;padding-right:5px}
.ecl-ecl_map_hotel-m-dlp .ecl-ecl_map_hotel-m-l-r{background-position:-99px 0;width:4px;height:21px}
.ecl-ecl_map_hotel-m-dlp .ecl-ecl_map_hotel-m-c{background-position:0 -118px;height:21px;min-width:60px;padding-right:5px}
.ecl-ecl_map_hotel-m-dlp .ecl-ecl_map_hotel-m-r{background-position:-109px 0;width:3px;height:21px}
.ecl-ecl_map_hotel_cityarea{position:relative;width:400px;border:1px dotted #CCC;padding-right:20px}
.ecl-ecl_map_hotel_hotcitylist{position:absolute;top:26px;left:-1px;width:320px;border:1px solid #bbb;background:#fff;padding-bottom:0}
.ecl-ecl_map_hotel_ecl-ecl_map_hotel_cityTopclose{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/hotel_icon.png) -22px -30px no-repeat;overflow:hidden;width:9px;height:9px;float:right;margin:9px 2px auto auto;cursor:pointer}
.ecl-ecl_map_hotel_hotcitylist-close{margin:10px 10px auto auto}
.ecl-ecl_map_hotel_regionlist-close2{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/hotel_icon.png) -22px -30px no-repeat;overflow:hidden;width:9px;height:9px;float:left;margin:4px 10px auto 8px;cursor:pointer;display:inline}
.ecl-ecl_map_hotel_cityTop{border-bottom:1px solid #f5f5f5;background:#fff;padding-left:5px;font-size:11px;line-height:25px}
.ecl-ecl_map_hotel_hotcitylist ul{margin-left:0;padding:6px;zoom:1;margin-top:0}
.ecl-ecl_map_hotel_hotcitylist ul li{float:left;list-style:none;width:20%;line-height:20px;text-align:center;font-size:10px}
.ecl-ecl_map_hotel_cityItem{height:20px;line-height:20px;color:#00c;cursor:pointer;display:block;font-size:12px}
.ecl-ecl_map_hotel_cityItemSel{cursor:pointer;background:#E1EEFB;padding:5px}
.ecl-ecl_map_hotel_hide{display:none}
.ecl-ecl_map_hotel_cityItem:hover{background:#E1EEFB;border-radius:2px}
.ecl-ecl_map_hotel_clear{clear:both}
.ecl-ecl_map_hotel_cityarea2{position:relative;width:400px;border:1px dotted #CCC;padding-right:20px}
.ecl-ecl_map_hotel_regionlist{position:absolute;top:66px;left:158px;width:422px;border:1px solid #bbb;background:#fff;z-index:10;padding-bottom:10px}
.ecl-ecl_map_hotel_cityTop2{background:#fff;font-size:13px;border-bottom:1px solid #f5f5f5;padding:0 8px}
.ecl-ecl_map_hotel_cityTop2 .ecl-ecl_map_hotel_cityTop2ul{margin:0;padding:6px 0;list-style:none;float:left;width:370px}
.ecl-ecl_map_hotel_cityTop2 .ecl-ecl_map_hotel_cityTop2ul li{float:left;padding:0;margin-right:6px;white-space:nowrap;text-align:center}
.ecl-ecl_map_hotel_cityTopItem{height:20px;line-height:20px;cursor:pointer;text-align:center;padding:2px 6px;display:inline}
.ecl-ecl_map_hotel_cityTopItemSel{color:#fff;background:#67A5EB;cursor:pointer;border-radius:2px}
.ecl-ecl_map_hotel_cityTopItem:hover{color:#fff;background:#66A5EA;cursor:pointer;border-radius:2px}
.ecl-ecl_map_hotel_regionlist ul{display:block;clear:both;padding-left:10px}
.ecl-ecl_map_hotel_regionlist ul.ecl-ecl_map_hotel_regionlist-ul{margin-left:0;padding:0 8px;zoom:1;margin-top:0;clear:both}
.ecl-ecl_map_hotel_regionlist .ecl-ecl_map_hotel_regionlist-ul li{float:left;list-style:none;text-align:center;font-size:10px;padding-top:8px;margin-left:0;margin-right:6px;display:inline}
.ecl-ecl_map_hotel_cityItem2{height:20px;line-height:20px;color:#00c;cursor:pointer;white-space:nowrap;padding:2px 6px;display:inline;font-size:12px}
.ecl-ecl_map_hotel_cityItem2:hover{background:#E1EEFB;cursor:pointer;border-radius:3px;color:#00c}
.ecl-ecl_map_hotel_cityItem2dtzLine{height:25px;line-height:25px;color:#00c;cursor:pointer;white-space:nowrap;display:inline;font-size:12px}
.ecl-ecl_map_hotel_cityItem2dtzLine:hover{background:#E1EEFB;cursor:pointer;border-radius:3px}
.ecl-ecl_map_hotel_cityItem2dtzLineSel{background:#E1EEFB;cursor:pointer;border-radius:3px}
.ecl-ecl_map_hotel_regionlist-uldtzLine{margin-left:0;padding-left:0;zoom:1;margin-top:0;clear:both;border-top:1px solid #f5f5f5}
.ecl-ecl_map_hotel_regionlist-uldtzLine li{float:left;list-style:none;text-align:center;font-size:12px;padding-top:5px;margin-right:6px;display:inline}
.ecl-ecl_map_hotel_cityItem2Sel{background:#E1EEFB;padding:5px;cursor:pointer;border-radius:3px;color:#666}
.ecl-ecl_map_hotel-city,.ecl-ecl_map_hotel-dist{position:relative}
.ecl-ecl_map_hotel-city-searchlist{position:absolute;border:#d0d0d0 solid 1px;background:#fff;z-index:10;width:180px;top:26px;left:-1px}
.ecl-ecl_map_hotel_sugItem{padding:2px;padding-right:5px;color:#414141;cursor:default;white-space:nowrap}
.ecl-ecl_map_hotel_sugItem:hover,.ecl-ecl_map_hotel_sugItem-selected{background-color:#36c!important;color:#fff!important}
.ecl-ecl_map_hotel_Item_hilight{color:red}
li..ecl-ecl_map_hotel_sug_hilight{background-color:#36c;color:#fff}
.ecl-ecl_map_hotel_error{background-color:#c30;color:#fff;padding-left:2px}
.ecl-ecl_map_hotel_regionlist-brand{border-top:1px solid #f5f5f5;margin-top:6px;width:422px}
.ecl-ecl_map_hotel_regionlist-brand-w{border-top-width:0};
</style>

<div class="c-title ecl-ecl_map_hotel-title"><a href="{%$tplData.url|escape:'html'%}" target="_blank"><em class="ecl-ecl_map_hotel-main-query">{%$tplData.name|escape:'html'%}</em>查询与预订<span class="ecl-ecl_map_hotel-main-count">(共{%$tplData.count|escape:'html'%}家酒店)</span>_百度地图</a></div>    
<div class="ecl-ecl_map_hotel-main">
    
    <div> 
    <div class="ecl-ecl_map_hotel-query-row">
        <div class="ecl-ecl_map_hotel-query-item">
            <h5>城市</h5>
            <div class="ecl-ecl_map_hotel-input ecl-ecl_map_hotel-city">
                <input autocomplete="off" type="text" maxlength="10" value='{%$tplData.cityname|escape:"html"%}' data-id='{%$tplData.cityid|escape:"html"%}' class="ecl-ecl_map_hotel-city-input OP_LOG_BTN" data-click="{fm:'beha'}">
                <b class="OP_LOG_BTN ecl-ecl_map_hotel-city-sel" data-click="{fm:'beha'}"></b>
                <div class="ecl-ecl_map_hotel_hotcitylist" style="display:none;"><!--城市浮层-->
                   <span class="ecl-ecl_map_hotel_ecl-ecl_map_hotel_cityTopclose ecl-ecl_map_hotel_hotcitylist-close OP_LOG_BTN" data-click="{fm:'beha'}"></span>
                    <div class="ecl-ecl_map_hotel_cityTop">Top&nbsp;20热门城市(直接输入可搜索22699个城市)</div>
                    <ul class="c-clearfix ecl-ecl_map_hotel_hotcitylist-ul"></ul>
                </div>
               <ul class="ecl-ecl_map_hotel-city-searchlist" style="display:none;"></ul>
            </div>
        </div>
        <div class="ecl-ecl_map_hotel-query-item">
        	<h5>关键词</h5>
            <div class="ecl-ecl_map_hotel-input ecl-ecl_map_hotel-dist">
                <input autocomplete="off" type="text" maxlength="40" value="{%$tplData.name|escape:'html'%}" empty-placeholder="可输入酒店位置、地标等（可选）" class="ecl-ecl_map_hotel-region-input OP_LOG_BTN" data-click="{fm:'beha'}" />
                <b data-query="dist" class="OP_LOG_BTN ecl-ecl_map_hotel-region-sel" data-click="{fm:'beha'}"></b>
                
                <div class="ecl-ecl_map_hotel_regionlist" style="display:none;">
                    <div class="ecl-ecl_map_hotel_cityTop2 c-clearfix">
                        <ul class="ecl-ecl_map_hotel_cityTop2ul"></ul>
                        <span class="ecl-ecl_map_hotel_ecl-ecl_map_hotel_cityTopclose ecl-ecl_map_hotel_regionlist-close OP_LOG_BTN" data-click="{fm:'beha'}"></span>
                    </div>
                    <ul class="ecl-ecl_map_hotel_regionlist-ul ecl-ecl_map_hotel_regionlist-ul-xzq c-clearfix"></ul>
                    <ul class="ecl-ecl_map_hotel_regionlist-ul ecl-ecl_map_hotel_regionlist-ul-sq c-clearfix" style="display:none;"></ul>
                    <ul class="ecl-ecl_map_hotel_regionlist-ul ecl-ecl_map_hotel_regionlist-ul-czjc c-clearfix" style="display:none;"></ul>
                    <ul class="ecl-ecl_map_hotel_regionlist-ul ecl-ecl_map_hotel_regionlist-ul-dt c-clearfix" style="display:none;"></ul>
                    <ul class="ecl-ecl_map_hotel_regionlist-ul ecl-ecl_map_hotel_regionlist-ul-jd c-clearfix" style="display:none;"> </ul>
                    <ul class="ecl-ecl_map_hotel_regionlist-ul ecl-ecl_map_hotel_regionlist-ul-dx c-clearfix" style="display:none;"> </ul>
                     
                    <ul class="ecl-ecl_map_hotel_regionlist-uldtzLine ecl-ecl_map_hotel_regionlist-ul-dt-sub c-clearfix" style="display:none;"></ul>

                    <div class="ecl-ecl_map_hotel_regionlist-brand">
                        <div style="padding: 0 0 0 14px;"><div style="display:block; width:381px;float:left;">热门品牌</div><div class="ecl-ecl_map_hotel_regionlist-close2 OP_LOG_BTN"></div></div>
                        <ul class="ecl-ecl_map_hotel_regionlist-ul ecl-ecl_map_hotel_regionlist-ul-rmpp c-clearfix"> </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="ecl-ecl_map_hotel-submit OP_LOG_BTN" data-click="{fm:'beha'}">快速查询</div> 
    </div>

    
    <div class="ecl-ecl_map_hotel-cond-row ecl-ecl_map_hotel-brand-row" data-filter="pl_band_section">
        <h4>品牌</h4>
        <strong class="OP_LOG_OTHERS" data-click="{fm:'beha'}">不限</strong>
        <div class="ecl-ecl_map_hotel-opt ecl-ecl_map_hotel-opt-brand">
            <ul>
                <li class="OP_LOG_OTHERS" data-click="{fm:'beha'}">
                    <input type="radio" name="brand" value="如家快捷"><label>如家快捷</label>
                </li>
                <li class="OP_LOG_OTHERS" data-click="{fm:'beha'}">
                    <input type="radio" name="brand" value="7天连锁"><label>7天连锁</label>
                </li>
                <li class="OP_LOG_OTHERS" data-click="{fm:'beha'}">
                    <input type="radio" name="brand" value="汉庭酒店"><label>汉庭酒店</label>
                </li>
                <li class="OP_LOG_OTHERS" data-click="{fm:'beha'}">
                    <input type="radio" name="brand" value="格林豪泰"><label>格林豪泰</label>
                </li>
                <li class="OP_LOG_OTHERS" data-click="{fm:'beha'}">
                    <input type="radio" name="brand" value="速8"><label>速8</label>
                </li>   
                
            </ul>
        </div>
        <div class="ecl-ecl_map_hotel-filter-trigger OP_LOG_BTN" data-click="{fm:'beha'}"><span class="ecl-ecl_map_hotel-more-desc">更多</span><span title="更多" class="OP_LOG_BTN ecl-ecl_map_hotel-trigger-cond-icon ecl-ecl_map_hotel-more-cond-icon" data-click="{fm:'beha'}">&nbsp;&nbsp;</span></div>
        <div title="更多" class="OP_LOG_BTN ecl-ecl_map_hotel-more-brand" data-click="{fm:'beha'}"><span class="OP_LOG_BTN ecl-ecl_map_hotel-more-brand-icon" data-click="{fm:'beha'}"></span></div>
    </div>
        
    <div class="ecl-ecl_map_hotel-cond-more ecl-ecl_map_hotel-cond-hide">
        <div class="ecl-ecl_map_hotel-cond-row ecl-ecl_map_hotel-loc-row">
            <h4>位置</h4>
            <strong class="OP_LOG_OTHERS" data-click="{fm:'beha'}">不限</strong>
            <div class="ecl-ecl_map_hotel-opt ecl-ecl_map_hotel-opt-loc">
                <ul>
                    
                </ul>
            </div>
            <div class="ecl-ecl_map_hotel-more-loc"><span title="更多" class="OP_LOG_BTN ecl-ecl_map_hotel-more-loc-icon" data-click="{fm:'beha'}"></span></div>
        </div>
        <div class="ecl-ecl_map_hotel-cond-row ecl-ecl_map_hotel-cond-price" data-filter="pl_price_section">
            <h4>价格</h4>
            <strong class="OP_LOG_OTHERS" data-click="{fm:'beha'}">不限</strong>
            <div class="ecl-ecl_map_hotel-opt">
                <ul>
                    <li class="OP_LOG_OTHERS" data-click="{fm:'beha'}"><input type="radio" value="10,200" name="price"><label>200元以下</label></li>
                    <li class="OP_LOG_OTHERS" data-click="{fm:'beha'}"><input type="radio" value="200,300" name="price"><label>200-300元</label></li>
                    <li class="OP_LOG_OTHERS" data-click="{fm:'beha'}"><input type="radio" value="300,500" name="price"><label>300-500元</label></li>
                    <li class="OP_LOG_OTHERS" data-click="{fm:'beha'}"><input type="radio" value="500,1073741820" name="price"><label>500元以上</label></li>
                </ul>
            </div>
        </div>
        <div class="ecl-ecl_map_hotel-cond-row" data-filter="pl_level_section">
            <h4>星级</h4>
            <strong class="OP_LOG_OTHERS" data-click="{fm:'beha'}">不限</strong>
            <div class="ecl-ecl_map_hotel-opt">
                <ul>
                    <li class="OP_LOG_OTHERS" data-click="{fm:'beha'}"><input type="radio" value="0|1" name="level"><label>经济型</label></li>
                    <li class="OP_LOG_OTHERS" data-click="{fm:'beha'}"><input type="radio" value="2" name="level"><label>二星及其他</label></li>
                    <li class="OP_LOG_OTHERS" data-click="{fm:'beha'}"><input type="radio" value="3" name="level"><label>三星/舒适</label></li>
                    <li class="OP_LOG_OTHERS" data-click="{fm:'beha'}"><input type="radio" value="4" name="level"><l name="level"abel>四星/高档</label></li>
                    <li class="OP_LOG_OTHERS" data-click="{fm:'beha'}"><input type="radio" value="5" name="level"><label>五星/豪华</label></li>
                </ul>
            </div>
        </div>

        
    </div>
    
</div>
    <div class="ecl-ecl_map_hotel-ctrl">
        <div class="ecl-ecl_map_hotel-sort">
            <a class="ecl-ecl_map_hotel-defaultcur ecl-ecl_map_hotel-sort-default" data-orderby="default" data-order="desc" data-click="{fm:'beha'}"><span>默认排序</span></a>
            <a class="ecl-ecl_map_hotel-sort-dianp" data-orderby="total_score" data-order="desc" title="按点评从高到低" data-click="{fm:'beha'}"><span>点评</span><i>&nbsp;</i></a>
            <a class="ecl-ecl_map_hotel-sort-price" data-orderby="price" data-order="asc" title="按价格从低到高" data-click="{fm:'beha'}"><span>价格</span><i>&nbsp;</i></a>
        </div>
        <span class="ecl-ecl_map_hotel-info"><span>{%$tplData.count|escape:'html'%}</span>家酒店满足条件</span>
        <div class="ecl-ecl_map_hotel-mode-sel">
            <a class="ecl-ecl_map_hotel-list-mode" data-click="{fm:'beha'}"><i class="ecl-ecl_map_hotel-list-icon">&nbsp;</i><span>酒店列表</span></a><a class="ecl-ecl_map_hotel-ditu-mode ecl-ecl_map_hotel-mode-cur" data-click="{fm:'beha'}"><i class="ecl-ecl_map_hotel-ditu-icon">&nbsp;</i><span>地图查看</span></a>
        </div>
    </div>
    
    <ul class="ecl-ecl_map_hotel-list ecl-ecl_map_hotel-clearfix">
                                          
    </ul>
    <div class="ecl-ecl_map_hotel-map">
        {%$loop_maxcount2=count($tplData.hotel)%}
        <ul class="ecl-ecl_map_hotel-map-list">
            {%for $count=0 to 5%}{%if $count<$loop_maxcount2%}
            {%$url=$tplData.hotel[$count]['viewurl']|escape:'html'%}
            {%$cmurl=$tplData.hotel[$count]['commenturl']|escape:'html'%}
            {%$uid=$tplData.hotel[$count]['uid']|escape:'html'%}
            <li data-outid="{%$tplData.hotel[$count]['out_id']|escape:'html'%}" uid="{%$uid|escape:'html'%}" class="OP_LOG_LINK">
                <div class="ecl-ecl_map_hotel-index"><span>{%$count+1%}</span></div>
                <div class="ecl-ecl_map_hotel-intro">
                    <h5><a target="_blank" href="{%$url%}" title="{%$tplData.hotel[$count]['title']|escape:'html'%}">{%$tplData.hotel[$count]['title']|limitlen:12|escape:'html'|highlight:0%}</a></h5>
                    <p><a target="_blank" href="{%$url%}" class="ecl-ecl_map_hotel-dianp">{%$tplData.hotel[$count]['commentcount']|escape:'html'%}条点评</a><a  target="_blank" href="{%$url%}">{%if $tplData.hotel[$count]['recommend']%}{%$tplData.hotel[$count]['recommend']|escape:'html'%}%入住后推荐{%else%}暂无推荐数据{%/if%}</a></p>
                </div>
                <div class="ecl-ecl_map_hotel-price">
                    <a target="_blank" href="{%$url%}" class="ecl-ecl_map_hotel-priceLink">{%if $tplData.hotel[$count]['price']%}<span>参考价</span> ¥{%$tplData.hotel[$count]['price']|string_format:"%d"|escape:'html'%}{%else%}暂无报价{%/if%}</a>
                    <a target="_blank" href="{%$url%}" class="ecl-ecl_map_hotel-detailLink">预 订</a>
                </div>
            </li>
            {%/if%}{%/for%}
        </ul>
        <div id="mapContainter" class="ecl-ecl_map_hotel-mapContainter OP_LOG_OTHERS" data-click="{fm:'beha'}"></div>
    </div>
            
    
   
</div>
<div class="ecl-ecl_map_hotel-pg">
        <div class="ecl-ecl_map_hotel-ui-pager OP_LOG_BTN" style=""><a href="{%$tplData.url|escape:'html'%}" target="_blank">查看更多酒店>></a></div>
    </div>
<script data-compress="off">
A.setup("MAP_HOTEL_LEFT", {
    ORIGIN_QUERY: "{%$extData.originQuery|escape:'html'%}",
    QUERY_NAME : "{%$tplData.name|escape:'html'%}",
    COUNT : {%$tplData.count%},
    CITYNAME: '{%$tplData.cityname|escape:"html"%}',
    CITYID: '{%$tplData.cityid|escape:"html"%}',
    HOTELDATA : {%json_encode($tplData.hotel)%},
    CITYDATA_URL : 'http://map.baidu.com/?qt=scity',
    HOTELDATA_URL : 'http://map.baidu.com/?qt=sdata',
    REALPRICE_URL : 'http://map.baidu.com/detail?qt=hotelprice',
    DEFAULT_IMGSRC : "http://s1.bdstatic.com/r/www/cache/biz/ecom/maphotel/d.png",
    SESSION_ID: '{%$sessionid|escape:"javascript"%}',
    STATIC_SUBQID: '{%$subqid|escape:"javascript"%}',
    STATIC_SID: '{%$sid|escape:"javascript"%}',
    STATIC_PSSID: '{%$pssid|escape:"javascript"%}'   
});
</script>
<script type="text/javascript">
A.init(function(){function e(){}function t(){}function n(){var e=document.createElement("img"),t=l.qq(o+"map");e.className=o+"static",t.appendChild(e),e.src="http://sp.map.baidu.com/it?qt=spg&c="+d+"&prices="+f.sDefaultPrice+"&coord=H|"+f.sDefaultPoint}function a(e,t,n,a,l,i){function r(){c(),f(a),_()}function c(){var n=e.qq("ecl-ecl_map_hotel_hotcitylist").getElementsByTagName("ul")[0],i="",o=function(e){i+='<li><span class="ecl-ecl_map_hotel_cityItem OP_LOG_OTHERS" data-id="'+e.slice(e.indexOf("|")+1)+'" data-click="{fm:\'beha\'}">'+e.slice(0,e.indexOf("|"))+"</span></li>"
},r=!1;t.array.each(a.hot_city,function(e,t){if(19>t)o(e);else if("长沙"===e.slice(0,e.indexOf("|")))return o(e),r=!0,!1}),a.hot_city.length>=20&&!r&&o(a.hot_city[19]),n.innerHTML=i,t.on(n,"click",function(e){var e=e||window.event,n=e.srcElement||e.target;n&&t.dom.hasClass(n,"ecl-ecl_map_hotel_cityItem")&&(x.value=n.innerHTML,s(t.getAttr(n,"data-id")),l.clickSq=!0,p())})}function s(e){l.hasMatchedCity=!0,t.dom.setAttr(x,"data-id",e),t.dom.setAttr(L,"data-geo",""),t.dom.setAttr(L,"data-radius",""),n.getCityData({c:e},f),i.reset(!1)
}function d(n,a){if(t.getAttr(x,"data-id")&&D||"brand"==a){"none"!=M.style.display?((n!==!0||"brand"!=a&&!D)&&u(),E.style.display="none"):(t.dom.setStyle(e.qq(o+"dist"),"z-index",1e5),t.dom.setStyle(e.qq(o+"more-loc"),"z-index",99999),t.dom.setStyle(e.qq(o+"more-brand"),"z-index",99999),M.style.display="block");var l=e.qq("ecl-ecl_map_hotel_cityTop2"),i=e.qq("ecl-ecl_map_hotel_regionlist-ul-xzq"),r=e.qq("ecl-ecl_map_hotel_regionlist-brand"),c=e.qq("ecl-ecl_map_hotel_regionlist-close2");g("xzq"),"loc"==a?(t.dom.setStyle(e.qq(o+"more-brand"),"z-index",10),l.style.display="block",i.style.display="block",r.style.display="none"):"brand"==a?(t.dom.setStyle(e.qq(o+"more-brand"),"z-index",99999),t.dom.setStyle(e.qq(o+"more-loc"),"z-index",10),l.style.display="none",i.style.display="none",r.style.display="block",c.style.display="block",t.dom.addClass(r,"ecl-ecl_map_hotel_regionlist-brand-w")):(l.style.display="block",i.style.display="block",r.style.display="none",c.style.display="none",t.dom.removeClass(r,"ecl-ecl_map_hotel_regionlist-brand-w"))
}else u();q()}function u(){M.style.display="none",t.dom.setStyle(e.qq(o+"dist"),"z-index",10),t.dom.setStyle(e.qq(o+"more-loc"),"z-index",10),t.dom.setStyle(e.qq(o+"more-brand"),"z-index",10)}function m(){t.dom.setStyle(e.qq(o+"city"),"z-index",1e5),C.style.display="block"}function p(){t.dom.setStyle(e.qq(o+"city"),"z-index",10),C.style.display="none"}function f(n){var a=n.content;D=!1;var l="",i=function(e,t){l+='<li><span class="OP_LOG_OTHERS ecl-ecl_map_hotel_cityTopItem ecl-ecl_map_hotel_region_category_title-'+e+'" data-category="'+e+'" data-click="{fm:\'beha\'}">'+t+"</span></li>"
},r=function(t,n,a){var l=e.qq("ecl-ecl_map_hotel_regionlist-ul-"+n),o="",r=function(e){null==e.geo&&(e.geo=""),null==e.radius&&(e.radius=""),o+='<li><span class="OP_LOG_OTHERS ecl-ecl_map_hotel_cityItem2" data-geo="'+e.geo+'" data-radius="'+e.radius+'" data-click="{fm:\'beha\'}">'+e.name+"</span></li>"};if(t.length)for(var c=0;c<t.length;c++)r(t[c]);else r(t);l.innerHTML=o,a&&i(n,a)},c=function(n){var a=[""];l=[""],t.array.each(n,function(e,n){a[n]="",l[n]=e.name,t.array.each(e.content,function(e){a[n]+='<li><span class="ecl-ecl_map_hotel_cityItem2 OP_LOG_OTHERS" data-geo="'+e.geo+'" data-radius="'+e.radius+'" data-click="{fm:\'beha\'}">'+e.name+"</span></li>"
})});var l=e.qq("ecl-ecl_map_hotel_regionlist-ul-dt").getElementsByTagName("span");t.array.each(l,function(e,n){t.on(e,"click",function(){q(),t.dom.addClass(e,"ecl-ecl_map_hotel_cityItem2dtzLineSel"),E.innerHTML=a[n],E.style.display="block"})})};if(a&&a.length){D=!0;for(var s=0;s<a.length;s++){var d=a[s],u=d.name;switch(u){case"行政区":r(d.content,"xzq",u);break;case"商圈":r(d.content,"sq",u);break;case"车站/机场":r(d.content,"czjc",u);break;case"地铁":r(d.content,"dt",u),c(d.content);break;case"景点":r(d.content,"jd",u);
break;case"大学":r(d.content,"dx",u)}}var m=[{name:"如家快捷"},{name:"7天连锁"},{name:"莫泰"},{name:"速8"},{name:"汉庭酒店"},{name:"锦江之星"},{name:"格林豪泰"},{name:"飘HOME"},{name:"宜必思"},{name:"维也纳"},{name:"星程"},{name:"布丁"},{name:"99连锁"},{name:"智选假日"}];r(m,"rmpp"),e.qq(o+"loc-row").style.display="block"}else e.qq(o+"loc-row").style.display="none";var p=e.qq("ecl-ecl_map_hotel_cityTop2ul");p.innerHTML=l}function g(n){var a=e.qq("ecl-ecl_map_hotel_cityTopItemSel");a&&t.dom.removeClass(a,"ecl-ecl_map_hotel_cityTopItemSel");
var l=e.qq("ecl-ecl_map_hotel_region_category_title-"+n);l&&t.dom.addClass(l,"ecl-ecl_map_hotel_cityTopItemSel"),t.array.each(e.q("ecl-ecl_map_hotel_regionlist-ul"),function(e){t.dom.hasClass(e,"ecl-ecl_map_hotel_regionlist-ul-rmpp")||(e.style.display="none")}),e.qq("ecl-ecl_map_hotel_regionlist-ul-"+n).style.display="block","dt"!==n&&(e.qq("ecl-ecl_map_hotel_regionlist-uldtzLine").style.display="none",q())}function h(e,n,a){t.getAttr(e,n)?t.setAttr(a,n,t.getAttr(e,n)):t.setAttr(a,n,"")}function v(){var e=t.string.trim(x.value);
e.length>0?(k(e),("市"==e.charAt(e.length-1)||"县"==e.charAt(e.length-1)||"州"==e.charAt(e.length-1)&&e.length>2)&&(e=e.substring(0,e.length-1)),N=e,t.sio.callByServer("http://map.baidu.com/su?wd="+encodeURIComponent(N)+"&cid=131&type=1&callback=fn_city2",V)):""==e&&(t.dom.setAttr(x,"data-id",""),B.innerHTML="",B.style.display="none")}function y(){var e='<li class="ecl-ecl_map_hotel_error">对不起，不支持该目的地</li>';B.innerHTML=e,B.style.display="block",I=!0}function _(){i.event.on("nocitymatch",function(){y()
}),i.event.on("updateCity",function(e){var a=t.getAttr(x,"data-id");""!==a&&(a=parseInt(a,10)),e&&e.cityid&&""!==e.cityid&&e.cityid!==a&&e.up_cityid!==a&&(x.value=e.cityname,t.dom.setAttr(x,"data-id",e.cityid),n.getCityData({c:e.cityid},f,!1))}),t.on(B,"click",function(e){var e=e||window.event,t=e.srcElement||e.target;w(t)});var a=e.qq(o+"more-loc-icon");a&&t.on(a,"click",function(){t.dom.insertAfter(M,a),"-413px"!=t.dom.getStyle(M,"left")||"26px"!=t.dom.getStyle(M,"top")?(t.dom.setStyle(M,"top","26px"),t.dom.setStyle(M,"left","-413px"),d(!0,"loc")):d(!1,"loc"),t.getAttr(x,"data-id")||y()
});var r=e.qq(o+"more-brand-icon");r&&t.on(r,"click",function(){t.dom.insertAfter(M,r),"-413px"!=t.dom.getStyle(M,"left")||"25px"!=t.dom.getStyle(M,"top")?(t.dom.setStyle(M,"top","25px"),t.dom.setStyle(M,"left","-413px"),d(!0,"brand")):d(!1,"brand")});var c=e.qq("ecl-ecl_map_hotel_hotcitylist-close");t.on(c,"click",function(){p()});var s=e.qq("ecl-ecl_map_hotel_regionlist-close");t.on(s,"click",function(){u()});var h=e.qq("ecl-ecl_map_hotel_regionlist-close2");t.on(h,"click",function(){u()}),t.on(T,"click",function(){"none"!==C.style.display?p():m()
}),T.onselectstart="return false";var v=e.qq("ecl-ecl_map_hotel_cityTop2ul");t.on(v,"click",function(e){var e=e||window.event,n=e.srcElement||e.target;n&&t.dom.hasClass(n,"ecl-ecl_map_hotel_cityTopItem")&&g(t.dom.getAttr(n,"data-category"))}),t.on(A,"click",function(){t.dom.insertAfter(M,A),"-1px"!=t.dom.getStyle(M,"left")?(t.dom.setStyle(M,"top","26px"),t.dom.setStyle(M,"left","-1px"),d(!0)):d(),t.getAttr(x,"data-id")||y()});var _=function(){var e=l.predefinedRegionValue;null!==e&&L.value!==e&&(e=null,t.dom.setAttr(L,"data-geo",""),t.dom.setAttr(L,"data-radius","")),setTimeout(_,50)
};setTimeout(_,50),b("xzq"),b("sq"),b("czjc"),b("jd"),b("dx"),b("dt-sub"),b("rmpp"),t.event.on(L,"keypress",function(e){t.removeClass(L,o+"empty-value");var n=e.keyCode?e.keyCode:e.which;13===n&&(t.string.trim(L.value),p(),u(),l.clickSq=!0,i.event.fire("change"),l.needSetView=!0)}),t.event.on(L,"blur",function(){""==L.value&&(t.addClass(L,o+"empty-value"),L.value=L.getAttribute("empty-placeholder"))}),t.event.on(L,"focus",function(){L.value==L.getAttribute("empty-placeholder")&&(t.removeClass(L,o+"empty-value"),L.value=""),t.dom.insertAfter(M,A),"-1px"!=t.dom.getStyle(M,"left")?(t.dom.setStyle(M,"top","26px"),t.dom.setStyle(M,"left","-1px"),d(!0)):d()
}),t.event.on(x,"focus",function(){m()})}function b(n){var a="ecl-ecl_map_hotel_regionlist-ul-"+n;t.on(e.qq(a),"click",function(a){var a=a||window.event,r=a.srcElement||a.target;if(t.dom.hasClass(r,"ecl-ecl_map_hotel_cityItem2")){var c=t.dom.contains(e.qq(o+"dist"),M);(c||"rmpp"!==n)&&(t.removeClass(L,o+"empty-value"),l.predefinedRegionValue=L.value=r.innerHTML),"rmpp"!==n&&(h(r,"data-geo",L),h(r,"data-radius",L));var s={value:r.innerHTML,replace:c};"rmpp"===n?i.event.fire("selectrmpp",s):("xzq"!==n&&(s.geo=t.dom.getAttr(L,"data-geo"),s.radius=t.dom.getAttr(L,"data-radius")),i.event.fire("selectwz",s)),"xzq"!==n&&"rmpp"!==n&&S.setBounds(null),l.clickSq=!0,i.event.fire("change"),l.needSetView=!0,u(),"dt-sub"===n&&q()
}})}function q(){var n=e.qq("ecl-ecl_map_hotel_regionlist-ul-dt").getElementsByTagName("span");t.array.each(n,function(e){t.dom.hasClass(e,"ecl-ecl_map_hotel_cityItem2dtzLineSel")&&t.dom.removeClass(e,"ecl-ecl_map_hotel_cityItem2dtzLineSel")})}function w(e){t.dom.hasClass(e,"ecl-ecl_map_hotel_sugItem")&&(x.value=t.dom.getAttr(e,"data-name"),k(x.value)),B.style.display="none",O=!1}function k(e){var n=function(e){e.content&&7!==e.content.level&&0!==e.content.level?s(e.content.code):(t.dom.setAttr(x,"data-id",""),l.hasMatchedCity=!1)
};t.sio.callByServer("http://map.baidu.com/?newmap=1&qt=cur&wd="+encodeURIComponent(e)+"&callback=onResult",n)}var x=e.qq(o+"city-input"),T=e.qq(o+"city-sel"),C=e.qq("ecl-ecl_map_hotel_hotcitylist"),L=e.qq(o+"region-input"),A=e.qq(o+"region-sel"),M=e.qq("ecl-ecl_map_hotel_regionlist"),E=e.qq("ecl-ecl_map_hotel_regionlist-ul-dt-sub"),B=e.qq(o+"city-searchlist"),D=!1,I=!1;r(),t.on(document.body,"click",function(n){var n=n||window.event,a=n.srcElement||n.target;a&&(t.dom.hasClass(a,o+"city-input")||C===a||t.dom.contains(C,a)||e.qq(o+"city-sel")===a||p(),t.dom.hasClass(a,o+"region-sel")||t.dom.hasClass(a,o+"more-loc-icon")||t.dom.hasClass(a,o+"more-brand-icon")||t.dom.hasClass(a,o+"region-input")||M===a||t.dom.contains(M,a)||u(),B===a||t.dom.contains(B,a)||I||(B.style.display="none"),I=!1)
});var N="",P=-1,O=!1;t.event.on(x,"keyup",function(n){for(var a=e.q("ecl-ecl_map_hotel_sugItem"),o=a.length,r=0;o>r;r++)t.dom.removeClass(a[r],"ecl-ecl_map_hotel_sugItem-selected");var c=n.keyCode?n.keyCode:n.which;if(38!==c&&40!==c||!O||"none"===B.style.display)if(13===c){if(P>=0)w(a[P]),B.style.display="none";else{B.style.display="none";var s=t.string.trim(x.value);""!==s&&(p(),u(),l.clickSq=!0,i.event.fire("change"),l.needSetView=!0)}P=-1}else v();else O&&(38===c?0===P?P=-1:-1===P?(P=o-1,t.dom.addClass(a[P],"ecl-ecl_map_hotel_sugItem-selected")):t.dom.addClass(a[--P],"ecl-ecl_map_hotel_sugItem-selected"):P===o-1?P=-1:-1===P?(P=0,t.dom.addClass(a[P],"ecl-ecl_map_hotel_sugItem-selected")):t.dom.addClass(a[++P],"ecl-ecl_map_hotel_sugItem-selected"));
p(),u()});var V=function(e){var n=e.s,a=n.length;if(0!=a){var l="";t.array.each(n,function(e,t){if(10>t){var n=e.split("$").join("");n.substr(0,1);var a=n.search(N),i="",o="",r=a+N.length;-1!=a?(i='<span class="ecl-ecl_map_hotel_Item_hilight ">'+N.substr(a,r)+"</span>",0==a&&(o=i+n.substr(r,n.length-1)),a<n.length&&a>0&&(o=n.substr(0,r)+i+n.substr(r+1)),r==n.length&&(o=i),l+='<li class="OP_LOG_OTHERS ecl-ecl_map_hotel_sugItem" data-name='+n+" data-click=\"{fm:'beha'}\">"+o+"</li>"):l+='<li class="OP_LOG_OTHERS ecl-ecl_map_hotel_sugItem" data-name='+n+" data-click=\"{fm:'beha'}\">"+n+"</li>"
}}),O=!0,B.innerHTML=l}else y(),I=!1,O=!1;P=-1,B.style.display="block"}}var l=this,i=A.baidu,o="ecl-ecl_map_hotel-",r=l.data.MAP_HOTEL_LEFT||{},c=r.CITYNAME||"北京",s=r.QUERY_NAME,d=r.CITYID||131,u=r.COUNT||0,m=r.HOTELDATA,p={},f={};f.CITYDATA_URL=r.CITYDATA_URL,f.HOTELDATA_URL=r.HOTELDATA_URL,f.REALPRICE_URL=r.REALPRICE_URL,f.DEFAULT_IMGSRC=r.DEFAULT_IMGSRC,f.bInitCity=!1,f.bNotSetView=!0,f.defaultMode=o+"map",f.on_gel=!0,f.needSetView=!0,f.hasMatchedCity=!0,f.predefinedRegionValue=null,f.currCityId=d,f.sDefaultPoint="",f.sDefaultPrice="",t.prototype=new e,i.extend(t,{LLBAND:[75,60,45,30,15,0],LL2MC:[[-.0015702102444,111320.7020616939,0x60e374c3105a3,-0x24bb4115e2e164,0x5cc55543bb0ae8,-0x7ce070193f3784,0x5e7ca61ddf8150,-0x261a578d8b24d0,0x665d60f3742ca,82.5],[.0008277824516172526,111320.7020463578,647795574.6671607,-4082003173.641316,10774905663.51142,-15171875531.51559,12053065338.62167,-5124939663.577472,913311935.9512032,67.5],[.00337398766765,111320.7020202162,4481351.045890365,-23393751.19931662,79682215.47186455,-115964993.2797253,97236711.15602145,-43661946.33752821,8477230.501135234,52.5],[.00220636496208,111320.7020209128,51751.86112841131,3796837.749470245,992013.7397791013,-1221952.21711287,1340652.697009075,-620943.6990984312,144416.9293806241,37.5],[-.0003441963504368392,111320.7020576856,278.2353980772752,2485758.690035394,6070.750963243378,54821.18345352118,9540.606633304236,-2710.55326746645,1405.483844121726,22.5],[-.0003218135878613132,111320.7020701615,.00369383431289,823725.6402795718,.46104986909093,2351.343141331292,1.58060784298199,8.77738589078284,.37238884252424,7.45]],convertLL2MC:function(e){var t,n;
e.lng=this.getLoop(e.lng,-180,180),e.lat=this.getRange(e.lat,-74,74),t={lng:e.lng,lat:e.lat};for(var a=0;a<this.LLBAND.length;a++)if(t.lat>=this.LLBAND[a]){n=this.LL2MC[a];break}if(!n)for(var a=this.LLBAND.length-1;a>=0;a--)if(t.lat<=-this.LLBAND[a]){n=this.LL2MC[a];break}var l=this.convertor(e,n),e={x:l.x,y:l.y};return e},convertor:function(e,t){if(e&&t){var n=t[0]+t[1]*Math.abs(e.lng),a=Math.abs(e.lat)/t[9],l=t[2]+t[3]*a+t[4]*a*a+t[5]*a*a*a+t[6]*a*a*a*a+t[7]*a*a*a*a*a+t[8]*a*a*a*a*a*a;return n*=e.lng<0?-1:1,l*=e.lat<0?-1:1,{x:n,y:l}
}},getRange:function(e,t,n){return null!=t&&(e=Math.max(e,t)),null!=n&&(e=Math.min(e,n)),e},getLoop:function(e,t,n){for(;e>n;)e-=n-t;for(;t>e;)e+=n-t;return e}});for(var g=0;g<m.length;g++)if(m[g].point){var h=m[g].point;if(m[g].price&&(m[g].price=Math.floor(m[g].price)),void 0===h.x){var v=h.split(",");h={x:v[1],y:v[0],isGeo:!0};var y={lng:v[0],lat:v[1]},_=t.convertLL2MC(y);f.clickSq=!0,f.hasNoSq=!0,f.sDefaultPoint+=_.x+","+_.y+";",f.sDefaultPrice+=""==f.sDefaultPrice?m[g].price:","+m[g].price}m[g].point=h
}n();var b=String.prototype;b.byteLength=function(){return this.replace(/[^\x00-\xff]/g,"--").length},b.subByte=function(e){var t=this;if(t.byteLength()<=e)return t.toString();for(var n=Math.floor((e-=2)/2),a=t.length;a>n;n++)if(t.substr(0,n).byteLength()>=e)return t.substr(0,n)+"…";return t.toString()},b.subByte2=function(e){var t=this;if(t.byteLength()<=e)return t.toString();for(var n=Math.floor(e/2),a=t.length;a>n;n++)if(t.substr(0,n).byteLength()>=e)return t.substr(0,n);return t.toString()},i.dom.getAncestorByTag=function(e,t){for(t=t.toUpperCase(),e=baidu.dom.g(e);(e=e.parentNode)&&1==e.nodeType;)if(e.tagName.toUpperCase()==t)return e;
return null},i.dom.prev=function(e){return baidu.dom._matchNode(e,"previousSibling","previousSibling")};var q=function(){function e(){this.events={}}var t={},n=[];return t.addIniter=function(e){n.push(e)},t.init=function(){t.event.on("change",function(){f.changing=!0,q.refreshData()});for(var e=0,a=n.length;a>e;e++){var l=n[e];"function"==typeof l&&l()}},t.inArray=function(e,t){for(var n=0,a=e.length;a>n;n++)if(e[n]==t)return!0;return!1},t.reset=function(e){k.resetFilter(),S.resetOrder(),e!==!1&&q.refreshData()
},e.prototype={constructor:e,on:function(e,t){this.events[e]instanceof Array||(this.events[e]=[]),this.events[e].push(t)},un:function(e,t){for(var n=this.events[e],a=n instanceof Array&&n.length;a--;)n[a]===t&&n.splice(a,1)},fire:function(e,t){var n=this.events[e],a=this;n instanceof Array&&i.each(n,function(e){"function"==typeof e&&e.call(a,t)})}},t.event=new e,t.getValue=function(){var e=w.getValue(),t=k.getValue(),n=S.getOrderValue(),a=S.getPageValue(),l=S.getBounds();return e=i.extend(e,t),e=i.extend(e,n),e=i.extend(e,a),l&&(e=i.extend(e,{b:l}),f.listMode==o+"map"&&f.on_gel&&(e=i.extend(e,{on_gel:1}))),e
},t.refreshData=function(){if(""==i.string.trim(l.qq(o+"city-input").value)&&(i.dom.setAttr(l.qq(o+"city-input"),"data-id",""),f.hasMatchedCity=!1),!f.hasMatchedCity)return q.event.fire("nocitymatch"),S.render({biz_count:0,count:0,currPage:0,hotel:[]}),void 0;var e=this.getValue();f.currCityId=e.c,x.getData(e,function(e){S.render(e)})},t}(),w=function(){function e(){var e=l.qq(o+"submit");i.on(e,"click",function(){f.clickSq=!0,q.event.fire("change"),f.needSetView=!0}),i.on(e,"mouseover",function(){i.addClass(this,o+"submit-hover")
}),i.on(e,"mouseout",function(){i.removeClass(this,o+"submit-hover")}),i.on(e,"mousedown",function(){i.addClass(this,o+"submit-press")}),i.on(e,"mouseup",function(){i.removeClass(this,o+"submit-press")}),i.browser.ie&&(e.onselectstart=function(){return!1}),e=null}var t={};return q.addIniter(function(){e()}),t.getDistValue=function(){var e=l.qq(o+"region-input");return e.value==e.getAttribute("empty-placeholder")?"":e.value},t.getValue=function(){l.qq(o+"city").getElementsByTagName("input")[0].value;
var e=l.qq(o+"city").getElementsByTagName("input")[0].getAttribute("data-id"),n=t.getDistValue();n=i.string.trim(n);var a,r=l.qq(o+"loc-row");i.each(r.getElementsByTagName("li"),function(e){var t=e.getElementsByTagName("input")[0];if(t&&t.checked){var n=t.value.split("|");return 1===n.length&&(a=n[0]),!1}}),a&&n!==a&&(n+=" "+a);var c=l.qq(o+"dist").getElementsByTagName("input")[0].getAttribute("data-geo");n=""==n?"酒店":c?"酒店":n.indexOf("酒店")>-1?n:n+" 酒店";var s=k.getBrandValue();return s&&(n="酒店"==n?s:n.indexOf(s)>-1?n:n+" "+s),{c:e,wd:n}
},t}(),k=function(){function e(){var e=l.q(o+"cond-row");i.each(e,function(e){var r=e.getAttribute("data-filter");i.event.on(e,"click",function(e){var c,s=i.event.getTarget(e),d=!1;switch(s.tagName.toUpperCase()){case"LABEL":var u=i.dom.prev(s);if("radio"==u.type&&1==u.checked)break;u.checked=!u.checked,c=1;break;case"INPUT":c=1;break;case"STRONG":t(this)&&(c=1),d=!0}if(c){var m=n(this);if(a(this.getElementsByTagName("strong")[0],m.length),!r){var p=l.qq(o+"dist").getElementsByTagName("input")[0],g=["","",""];
if(m[0]){var h=m[0].split("|");h.length>2&&(g=h)}i.removeClass(p,o+"empty-value"),f.predefinedRegionValue=p.value=g[0],p.setAttribute("data-geo",g[1]),p.setAttribute("data-radius",g[2])}f.clickSq=!0,q.event.fire("change"),f.needSetView=!0}})}),e=null}function t(e){var t=!1;return i.each(e.getElementsByTagName("input"),function(e){("checkbox"==e.type||"radio"==e.type)&&(t=t||e.checked,e.checked=!1)}),t}function n(e){var t=[];return i.each(e.getElementsByTagName("input"),function(e){"checkbox"!=e.type&&"radio"!=e.type||!e.checked||t.push(e.value)
}),t}function a(e,t){var n="removeClass";t&&(n="addClass"),i[n](e,o+"unselect")}function r(){var e=l.qq(o+"filter-trigger");i.event.on(e,"click",function(){l.qq(o+"trigger-cond-icon"),l.qq(o+"more-desc");var t=l.qq(o+"cond-more"),n=o+"cond-hide";i.dom.hasClass(t,n)?i.dom.removeClass(t,n):i.dom.addClass(t,n),e.style.display="none",l.qq(o+"more-brand").style.display="block"})}var c={};return q.addIniter(function(){e(),r(),q.event.on("selectwz",function(e){var t=e.value,n=l.qq(o+"loc-row"),r=!1;i.each(n.getElementsByTagName("li"),function(n,a){var l=n.getElementsByTagName("input")[0];
if(l)if(4==a){if(!r){l.value=e.geo&&e.radius?[t,e.geo,e.radius].join("|"):t;var i=n.getElementsByTagName("label")[0];t.byteLength()>10?(i.innerHTML=t.subByte2(10),i.title=t):(i.innerHTML=t,i.title=null),l.checked=!0,r=!0}}else l.value.split("|")[0]==t?(r=!0,l.checked=!0):l.checked=!1}),a(n.getElementsByTagName("strong")[0],r)}),q.event.on("selectrmpp",function(e){var t=e.value,n=l.qq(o+"opt-brand"),r=!1;i.each(n.getElementsByTagName("li"),function(e,n){var a=e.getElementsByTagName("input")[0];4==n?r||(a.value=t,e.getElementsByTagName("label")[0].innerHTML=t,a.checked=!0,r=!0):a.value.split("|")[0]==t?(r=!0,a.checked=!0):a.checked=!1
}),a(n.parentNode.getElementsByTagName("strong")[0],r)})}),c.resetFilter=function(){var e=l.q(o+"cond-row");i.each(e,function(e){var t=e.getElementsByTagName("input");i.each(t,function(e){e.checked=!1}),a(e.getElementsByTagName("strong")[0],0)})},c.drawLocSection=function(){if(!p.content)return l.qq(o+"loc-row").style.display="none",void 0;for(var e=[],t=[],n=[],a=[],i=[],r=[],c=[],s=p.content.length,d=0;s>d;d++)switch(p.content[d].name){case"商圈":t=p.content[d].content;break;case"车站/机场":n=p.content[d].content;
break;case"景点":a=p.content[d].content;break;case"大学":i=p.content[d].content;break;case"行政区":r=p.content[d].content;break;case"地铁":c=p.content[d].content[0];break;default:c=[]}f.sq=t,e=e.concat(a,n,t,i,r,c);var u=e.length,m="";0==u&&(l.qq(o+"loc-row").style.display="none");for(var d=0;u>d&&5>d;d++)m+='<li class="OP_LOG_OTHERS" data-click="{fm:\'beha\'}"><input type="radio" name="location" value="'+e[d].name+"|"+e[d].geo+"|"+e[d].radius+'"><label',m+=e[d].name.byteLength()>10?' title="'+e[d].name+'">'+e[d].name.subByte2(10)+"</label></li>":">"+e[d].name+"</label></li>";
l.qq(o+"opt-loc").getElementsByTagName("ul")[0].innerHTML=m,l.qq(o+"loc-row").style.display="block"},c.getValue=function(){var e=l.q(o+"cond-row"),t={};return i.each(e,function(e){var a=n(e),l=e.getAttribute("data-filter");l&&"pl_band_section"!=l&&a.length>0&&(t[l]=a.join("|"))}),t.pl_price_section||(t.pl_price_section="10,1073741820"),t},c.getBrandValue=function(){var e=l.qq(o+"opt-brand"),t=n(e);return t[0]},c}(),x=function(){var e={};return q.addIniter(function(){e.getCityData({c:d},null,!f.hasNoSq)
}),e.getCityData=function(t,n,o){function r(t){p=t,n&&n(t),f.bInitCity||(a(l,i,e,p,f,q),f.bInitCity=!0),k.drawLocSection()}i.sio.callByServer(f.CITYDATA_URL+"&"+i.url.jsonToQuery(t,function(e){return/[^\x00-\xFF]/.test(e)?encodeURIComponent(e):e})+"&callback=setCityData",r),o!==!1&&(f.clickSq=!1)},e.getData=function(e,t){var n=f.HOTELDATA_URL+"&pl_data_type=hotel&pl_sub_type=%E9%85%92%E5%BA%97&tn=B_NORMAL_MAP&ie=utf-8&biz=1&rn=5&t="+Math.random()+"&"+i.url.jsonToQuery(e,function(e){return/[^\x00-\xFF]/.test(e)?encodeURIComponent(e):e
});i.sio.callByServer(n,t)},e.getLowPrice=function(e,t){for(var n=[],a=0,l=e.length;l>a;a++)if(e[a].out_id)for(var o=e[a].out_id.split(","),r=0;r<o.length;r++)o[r].indexOf("qunar")<=-1||n.push(o[r]);var c=i.extend({ids:n.join(",")},S.getRealPriceTime()),s=f.REALPRICE_URL+"&"+i.url.jsonToQuery(c,function(e){return/[^\x00-\xFF]/.test(e)?encodeURIComponent(e):e})+"&callback=updataList";i.sio.callByServer(s,t)},e}(),T=['<li data-outid="#{out_id}" uid="#{uid}" class="OP_LOG_LINK #{last}">','<div class="ecl-ecl_map_hotel-img">','<a target="_blank" href="#{viewurl}"><img width="" height="" src="#{imgsrc}"></a>',"</div>",'<div class="ecl-ecl_map_hotel-intro">',"<h5>",'<a target="_blank" href="#{viewurl}" title="#{alltitle}">#{title}</a>',"</h5>",'<p><a target="_blank" href="#{viewurl}" title="#{allcomment}">#{newcomment}</a></p>',"</div>",'<div class="ecl-ecl_map_hotel-rate">','<a target="_blank" href="#{commenturl}">#{commentcount}条评论</a>','<a target="_blank" href="#{viewurl}" class="ecl-ecl_map_hotel-rate-recommend">#{newrecommend}</a>',"</div>",'<div class="ecl-ecl_map_hotel-price">','<a target="_blank" class="ecl-ecl_map_hotel-priceLink" href="#{orderurl}">#{newprice}</a>','<a target="_blank" class="ecl-ecl_map_hotel-detailLink" href="#{orderurl}">预 订</a>',"</div>","</li>"].join(""),C=['<li data-outid="#{out_id}" uid="#{uid}" class="OP_LOG_LINK #{last}">','<div class="ecl-ecl_map_hotel-index"><span>#{count}</span></div>','<div class="ecl-ecl_map_hotel-intro">','<h5><a target="_blank" href="#{viewurl}" title="#{alltitle}">#{title}</a></h5>','<p><a target="_blank" href="#{commenturl}" class="ecl-ecl_map_hotel-dianp">#{commentcount}条点评</a><a  target="_blank" href="#{viewurl}">#{newrecommend}</a></p>',"</div>",'<div class="ecl-ecl_map_hotel-price">','<a target="_blank" href="#{orderurl}" class="ecl-ecl_map_hotel-priceLink">#{newprice}</a>','<a target="_blank" href="#{orderurl}" class="ecl-ecl_map_hotel-detailLink">预 订</a>',"</div>","</li>"].join(""),L='<a class="ecl-ecl_map_hotel-m-lp" data-click="{fm:\'alxl\'}"><span class="ecl-ecl_map_hotel-m-l"></span><span class="ecl-ecl_map_hotel-m-l-c">#{index}</span><span class="ecl-ecl_map_hotel-m-l-r"></span><span class="ecl-ecl_map_hotel-m-c">#{desc}</span><span class="ecl-ecl_map_hotel-m-r"></span></a>',M='<a class="ecl-ecl_map_hotel-m-dlp" href="#{viewurl}" target="_blank" data-click="{fm:\'alxl\'}"><span class="ecl-ecl_map_hotel-m-l"></span><span class="ecl-ecl_map_hotel-m-l-c">#{index}</span><span class="ecl-ecl_map_hotel-m-l-r"></span><span class="ecl-ecl_map_hotel-m-c">#{desc}</span><span class="ecl-ecl_map_hotel-m-r"></span></a>',S=function(){function e(e,t){return new Date(e.getFullYear(),e.getMonth(),e.getDate()+t)
}function t(e){var t=l.qq(e),n=t.getElementsByTagName("li");i.each(n,function(t,n){i.event.on(t,"mouseover",function(){if(i.addClass(t,o+"lihover"),e==o+"map"){if(!f.clickSq)return;if(f.changing)return;if(0==f.aDiv.length)return;f.aDiv[n].style.visibility="hidden",f.aHotelDetailDiv[n].style.visibility="visible",f.aHotelDetailDiv[n].style.zIndex=10}}),i.event.on(t,"mouseout",function(){if(i.removeClass(t,o+"lihover"),e==o+"map"){if(!f.clickSq)return;if(f.changing)return;if(0==f.aDiv.length)return;
f.aHotelDetailDiv[n].style.visibility="hidden",f.aDiv[n].style.visibility="visible"}})})}function n(e){var t=l.qq(e),n=t.getElementsByTagName("li");i.each(n,function(e){i.event.un(e,"mouseover"),i.event.un(e,"mouseout"),i.event.un(e,"click")})}function a(e){function t(e){this.w=e.w,this.tpl=e.tpl,this.detailPoint=e.detailPoint,this.data=e.data}function n(e,n,a){e.price=e.price?e.price:"暂无报价",e.price="暂无报价"==e.price||(e.price+"").indexOf("¥")>-1?e.price:"¥"+e.price;var l={data:{point:n,viewurl:e.viewurl,price:e.price,desc:e.title,index:a+1},w:"100px",tpl:L},i={data:{point:n,viewurl:e.viewurl,price:e.price,desc:e.title,index:a+1},w:"240px",tpl:M,detailPoint:!0},o=new t(l),r=new t(i);
mp.addOverlay(o),mp.addOverlay(r)}mp=e,f.aDiv=[],f.aHotelDetailDiv=[],mp.clearOverlays(),t.prototype=new BMap.Overlay,t.prototype.initialize=function(e){function t(e){for(var t=0,n=0;e.offsetParent;)t+=e.offsetLeft,n+=e.offsetTop,e=e.offsetParent;return t+=e.offsetLeft,n+=e.offsetTop,{x:t,y:n}}function n(e){var t=window.event?window.event.clientX+(document.documentElement.scrollLeft?document.documentElement.scrollLeft:document.body.scrollLeft):e.pageX,n=window.event?window.event.clientY+(document.documentElement.scrollTop?document.documentElement.scrollTop:document.body.scrollTop):e.pageY;
return{x:t,y:n}}this._map=e;var a=this._div=document.createElement("div");a.style.position="absolute",a.style.width=this.w,a.style.height="28px",a.style.zIndex=BMap.Overlay.getZIndex(this.data.point.lat);var l=this,o=function(e){function a(e){for(var t=f.aDiv.length,n=0;t>n;n++)if(e==f.aDiv[n])return f.aHotelDetailDiv[n]}var o=a(e);i.each(f.aHotelDetailDiv,function(e){e!==o&&(e.style.visibility="hidden")}),i.each(f.aDiv,function(e){e!==o&&(e.style.visibility="visible")}),i.browser.isWebkit||i.browser.safari?e.onmouseout=function(a){var a=window.event||a,l=a.relatedTarget||a.toElement;
if(!i.dom.contains(o,l)){var c=n(a),s=t(e);(c.x-s.x>=100||c.y-s.y>=28||c.x<s.x||c.y<s.y)&&(r(o),e.onmouseout=null)}}:e.onmouseleave=function(a){a=window.event||a;var l=n(a),i=t(e);(l.x-i.x>=100||l.y-i.y>=28||l.x<i.x||l.y<i.y)&&(r(o),e.onmouseleave=null)},e.style.visibility="hidden",o.style.visibility="visible",o.style.zIndex=10,v.focusItem(l.data.index)},r=function(e){function t(e){for(var t=f.aHotelDetailDiv.length,n=0;t>n;n++)if(e==f.aHotelDetailDiv[n])return f.aDiv[n]}var n=t(e);e.style.visibility="hidden",n.style.visibility="visible",isOnMove=!1,v.blurItem(l.data.index)
};return this.data.index?l.detailPoint?(f.aHotelDetailDiv.push(a),a.innerHTML=i.format(this.tpl,{viewurl:this.data.viewurl,index:E[this.data.index-1],desc:this.data.price+" "+this.data.desc}),i.browser.isWebkit||i.browser.safari?a.onmouseout=function(e){var e=window.event||e,t=e.relatedTarget||e.toElement;i.dom.contains(a,t)||r(a)}:a.onmouseleave=function(){r(a)},a.style.visibility="hidden"):(f.aDiv.push(a),a.innerHTML=i.format(this.tpl,{index:E[this.data.index-1],desc:this.data.price}),i.browser.isWebkit||i.browser.safari?a.onmouseover=function(e){var e=window.event||e,l=e.relatedTarget||e.fromElement;
if(!i.dom.contains(a,l)){var r=n(e),c=t(a);r.x-c.x<100&&r.y-c.y<20&&r.x>=c.x&&r.y>=c.y&&o(a)}}:a.onmouseenter=function(e){var e=window.event||e,l=e.relatedTarget||e.fromElement;if(!i.dom.contains(a,l)){var r=n(e),c=t(a);r.x-c.x<100&&r.y-c.y<40&&r.x>=c.x&&r.y>=c.y&&o(a)}}):(a.innerHTML=i.format(this.tpl,{desc:this.data.desc}),a.onclick=function(){var e=mp.getMapType().getProjection().lngLatToPoint(l.data.point),t=new BMap.Pixel(e.x-l.data.radius,e.y-l.data.radius),n=new BMap.Pixel(e.x+l.data.radius,e.y+l.data.radius),a=mp.getMapType().getProjection().pointToLngLat(t),i=mp.getMapType().getProjection().pointToLngLat(n),o=new BMap.Bounds(a,i);
v.setBounds(o),f.clickSq=!0,f.needSetView=!0,q.event.fire("change")}),mp.getPanes().labelPane.appendChild(a),a},t.prototype.draw=function(){var e=this._map,t=e.pointToOverlayPixel(this.data.point);this._div.style.left=t.x-2+"px",this._div.style.top=t.y-30+"px",this._detailDiv&&(this._detailDiv.style.left=t.x-2+"px",this._detailDiv.style.top=t.y-30+"px")};for(var a=[],r=0;r<m.length&&5>r;r++)if(m[r].point){var c;if(m[r].point.isGeo)c={lat:m[r].point.x,lng:m[r].point.y};else{var s=new BMap.Pixel(m[r].point.x,m[r].point.y);
c=mp.getMapType().getProjection().pointToLngLat(s)}n(m[r],c,r),a.push(c)}f.needSetView&&(f.bNotSetView=!1,mp.setViewport(a,{margins:[53,50,53,50],offset:new BMap.Size(15,-11)}),mp.addEventListener("tilesloaded",function(){var e=l.qq(o+"static"),t=l.qq(o+"map");l.qq("BMap_stdMpCtrl").style.zIndex=10,e&&(e.style.display="none",t.removeChild(e))}),f.bNotSetView=!0,f.needSetView=!1)}function r(){var e=l.qq(o+"list"),t=l.qq(o+"map"),n=l.qq(o+"list-mode"),a=l.qq(o+"ditu-mode"),r=o+"mode-cur";i.event.on(n,"click",function(){i.dom.hasClass(n,r)||(e.style.display="block",i.hide(t),i.addClass(n,r),i.removeClass(a,r),f.listMode=o+"list",q.event.fire("change"))
}),i.event.on(a,"click",function(){i.dom.hasClass(a,r)||(t.style.display="block",i.hide(e),i.addClass(a,r),i.removeClass(n,r),f.listMode=o+"map",q.event.fire("change"),f.needSetView=!0)}),i.event.on(l.qq(o+"sort"),"click",function(e){e=window.event||e;var t,n=e.srcElement||e.target;if(t="A"==n.tagName.toUpperCase()?n:i.dom.getAncestorByTag(n,"a"),!i.dom.hasClass(t,o+"cur")&&!i.dom.hasClass(t,o+"defaultcur")||i.dom.hasClass(t,o+"sort-price")){var a=l.qq(o+"sort").children;if(i.each(a,function(e){i.dom.hasClass(e,o+"sort-default")?i.removeClass(e,o+"defaultcur"):i.removeClass(e,o+"cur")
}),i.dom.hasClass(t,o+"sort-default")?i.addClass(t,o+"defaultcur"):i.addClass(t,o+"cur"),i.dom.hasClass(t,o+"sort-price")){var r=t.getAttribute("data-order"),c="asc"==r?"desc":"asc",s="asc"==r?"按价格从高到低":"按价格从低到高";i.removeClass(t,o+"sort-desc"),i.removeClass(t,o+"sort-asc"),i.addClass(t,o+"sort-"+c),t.setAttribute("data-order",c),t.setAttribute("title",s),r=c=null}y=t.getAttribute("data-order"),_=t.getAttribute("data-orderby"),f.clickSq=!0,q.event.fire("change"),f.needSetView=!0}})}function d(e){if(e.result){for(var t=e.result,n=[],l=[],r=0,c=m.length;c>r;r++){var s=m[r].out_id,d=s.split(","),u=!1;
i.each(t,function(e){q.inArray(d,e.id)&&(u=!0,0==e.status?l.push(m[r]):(m[r].price=Math.floor(e.price),m[r].newprice="¥"+Math.floor(e.price)+"起",m[r].newrecommend=e.bookingTime?e.bookingTime+"前有人预订":"",n.push(m[r])))}),u||l.push(m[r])}n=n.concat(l),m=n,h(n),f.listMode==o+"map"&&(f.needSetView=!0,a(bds.ecom.map),v.setBounds(null))}else f.needSetView=!0,a(bds.ecom.map),v.setBounds(null);f.changing=!1}function p(e){var t="addClass";e.count>5&&(t="removeClass"),i[t](l.qq(o+"pg"),o+"hide")}function g(e){l.qq(o+"info").getElementsByTagName("span")[0].innerHTML=e.count||0
}function h(e){var a=[],r=o+"list";f.listMode!=o+"list"&&(r=o+"map"),n(r);var c,s,d=e.length;f.listMode==o+"list"?(c=T,s=l.qq(f.listMode)):(c=C,s=l.qq(f.listMode).getElementsByTagName("ul")[0]);var u=l.qq(o+"dist").getElementsByTagName("input")[0],m=u.getAttribute("data-geo"),p=[];m&&(p=m.split(","));for(var g,h=w.getDistValue(),v=0;g=e[v];){g.alltitle||(g.alltitle=g.title),g.imgsrc||(g.imgsrc=f.DEFAULT_IMGSRC),g.imgsrc="http://map.baidu.com/maps/services/thumbnails?width=64&height=64&src="+encodeURIComponent(g.imgsrc),g.title=f.listMode==o+"list"?g.title.subByte(30):g.title.subByte(24),g.orderurl=g.viewurl+"#otalist",g.newprice||(g.newprice=g.price?"<span>参考价</span>¥"+Math.floor(g.price):"暂无报价");
var y="";g.short_comm?g.newcomment=g.short_comm:0==p.length?g.newcomment="地址:"+g.addr+(g.di_review_keyword||""):(y=Math.sqrt(Math.pow(g.point.x-p[0],2)+Math.pow(g.point.y-p[1],2)),y=Math.round(y),g.newcomment="距离"+h+"直线距离"+y+"米",g.newcomment+=g.di_review_keyword?"；"+g.di_review_keyword:"。"),g.allcomment=g.newcomment,g.newcomment=g.newcomment.subByte(80),g.commentcount||(g.commentcount=0),g.newrecommend||(g.newrecommend="0%"==g.recommend||""==g.recommend?"暂无推荐数据":((g.recommend+"").indexOf("%")>-1?g.recommend:g.recommend+"%")+"入住后推荐"),g.count=E[v],g.last=v==d-1?"last":"",a[v++]=i.format(c,g)
}a=d?a.join(""):'<li class="ecl-ecl_map_hotel-nodata">抱歉，没有找到满足条件的酒店。您可以尝试更改搜索条件重新搜索！</li>',s.innerHTML=a,t(r)}var v={},y="desc",_="default",b=0;f.listMode=o+"map",q.addIniter(function(){r(),p({count:u}),v.addMapApi()}),v.updateDefault=function(){m&&x.getLowPrice(m,d)},v.getRealPriceTime=function(){function t(e){var t="yyyy-MM-dd";return t=t.replace(/yyyy/g,n(e.getFullYear(),4)),t=t.replace(/MM/g,n(e.getMonth()+1,2)),t=t.replace(/dd/g,n(e.getDate(),2))}function n(e,t){var n="",a=0>e,l=String(Math.abs(e));
return l.length<t&&(n=new Array(t-l.length+1).join("0")),(a?"-":"")+n+l}if(f.realPriceTime)return f.realPriceTime;var a=new Date,l=e(a,2),i=t(l),o=e(a,3),r=t(o);return f.realPriceTime={fromDate:i,toDate:r},f.realPriceTime};var k;v.setBounds=function(e){k=e},v.getBounds=function(){var e,t,n=l.qq(o+"dist").getElementsByTagName("input")[0],a=n.getAttribute("data-geo"),i=n.getAttribute("data-radius");if(f.listMode==o+"list")return a?(e=parseFloat(a.split(",")[0])-i+","+(parseFloat(a.split(",")[1])-i),t=parseFloat(a.split(",")[0])+parseFloat(i)+","+(parseFloat(a.split(",")[1])+parseFloat(i)),"("+e+";"+t+")"):null;
if(!k)return a?(f.on_gel=!1,e=parseFloat(a.split(",")[0])-i+","+(parseFloat(a.split(",")[1])-i),t=parseFloat(a.split(",")[0])+parseFloat(i)+","+(parseFloat(a.split(",")[1])+parseFloat(i)),"("+e+";"+t+")"):null;var r=bds.ecom.map,c=k.getSouthWest(),s=k.getNorthEast();return e=r.getMapType().getProjection().lngLatToPoint(c),t=r.getMapType().getProjection().lngLatToPoint(s),"("+e.x+","+e.y+";"+t.x+","+t.y+")"},v.addMapApi=function(){var e=document.createElement("script");e.setAttribute("type","text/javascript"),e.src="http://api.map.baidu.com/api?v=1.4&callback=E.initMap",document.body.appendChild(e)
},bds.ecom.initMap=function(){function e(){var e=w.getValue(),n=l.qq(o+"region-input"),a=n.getAttribute("data-geo"),i=e.wd;a&&(i=w.getDistValue()+" "+i),n.value==s&&(i=s);var r=t.getViewport().zoom,c=t.getViewport().center,d=t.getMapType().getProjection().lngLatToPoint({lat:c.lat,lng:c.lng});return"http://map.baidu.com/hotel?newmap=1&fr=alaeg&ext=1&from=alaeclmap&s="+encodeURIComponent("con&wd="+i+"&c="+(f.currCityId||e.c))+"&c="+d.x+","+d.y+"&l="+r}bds.ecom.map=new BMap.Map("mapContainter");var t=bds.ecom.map;
t.centerAndZoom(new BMap.Point(116.4035,39.915),15),t.addControl(new BMap.NavigationControl({type:BMAP_NAVIGATION_CONTROL_SMALL})),t.addControl(new BMap.ScaleControl),t.enableScrollWheelZoom(),t.setCurrentCity(c);var n=l.qq("BMap_mask"),a=document.createElement("a");i.dom.addClass(a,o+"map-linkmask"),a.style.position="absolute",a.style.width=t.width+"px",a.style.height=t.height+"px",a.style.top=n.style.top,a.style.left=n.style.left,a.style.display="block",a.style.zIndex=n.style.zIndex,a.href=e(),a.target="_blank",a.setAttribute("data-click","{fm:'beha'}"),i.dom.insertAfter(a,n),t.addEventListener("dragstart",function(){a.setAttribute("data-click","beha"),a.onclick=function(){return!1
}}),t.addEventListener("dragend",function(){if(a.style.top=n.style.top,a.style.left=n.style.left,setTimeout(function(){a.setAttribute("data-click","{fm:'alxl'}"),a.onclick=null},30),f.bNotSetView){var e=t.getBounds();v.setBounds(e),f.on_gel=!0,q.event.fire("change")}}),t.addEventListener("zoomstart",function(){a.setAttribute("data-click","beha"),a.onclick=function(){return!1}}),t.addEventListener("zoomend",function(){if(a.href=e(),a.style.top=n.style.top,a.style.left=n.style.left,setTimeout(function(){a.setAttribute("data-click","{fm:'alxl'}"),a.onclick=null
},30),f.bNotSetView){var l=t.getBounds();v.setBounds(l),f.on_gel=!0,q.event.fire("change")}}),t.addEventListener("moveend",function(){a.style.top=n.style.top,a.style.left=n.style.left}),t.addEventListener("click",function(){a.href=e()}),v.updateDefault()},v.resetOrder=function(){_="default",y="desc",i.dom.addClass(l.qq(o+"sort-default"),o+"defaultcur"),i.dom.removeClass(l.qq(o+"sort-dianp"),o+"cur");var e=l.qq(o+"sort-price");i.dom.removeClass(e,o+"cur"),i.dom.removeClass(e,o+"sort-desc"),i.dom.removeClass(e,o+"sort-asc")
},v.getOrderValue=function(){return{pl_sort_rule:"asc"==y?1:0,pl_sort_type:_}},v.getPageValue=function(){return{nn:0,pn:0}},v.render=function(e){b=e.biz_count,g(e),h(e.hotel),p(e),m=e.hotel,x.getLowPrice(e.hotel,d)},v.focusItem=function(e){var t=l.qq(o+"map").getElementsByTagName("li");i.dom.addClass(t[e-1],o+"item-sel")},v.blurItem=function(e){var t=l.qq(o+"map").getElementsByTagName("li");i.dom.removeClass(t[e-1],o+"item-sel")};var A=l.qq(o+"title").getElementsByTagName("a")[0];A.onclick=function(){var e=w.getValue(),t=mp.getViewport().zoom,n=mp.getViewport().center,a=mp.getMapType().getProjection().lngLatToPoint({lat:n.lat,lng:n.lng}),i=l.qq(o+"region-input"),r=i.getAttribute("data-geo"),c=e.wd;
r&&(c=w.getDistValue()+" "+c),i.value==s&&(c=s),A.href="http://map.baidu.com/hotel?newmap=1&fr=alaeg&ext=1&from=alaeclmap&s="+encodeURIComponent("con&wd="+c+"&c="+(f.currCityId||e.c))+"&c="+a.x+","+a.y+"&l="+t};var S=l.qq(o+"ui-pager").getElementsByTagName("a")[0];S.onclick=function(){var e=w.getValue(),t=mp.getViewport().zoom,n=mp.getViewport().center,a=mp.getMapType().getProjection().lngLatToPoint({lat:n.lat,lng:n.lng}),i=l.qq(o+"region-input"),r=i.getAttribute("data-geo"),c=e.wd;r&&(c=w.getDistValue()+" "+c),i.value==s&&(c=s),S.href="http://map.baidu.com/hotel?newmap=1&fr=alaeg&ext=1&from=alaeclmap&s="+encodeURIComponent("con&wd="+c+"&c="+(f.currCityId||e.c))+"&c="+a.x+","+a.y+"&l="+t
};var E=["A","B","C","D","E"];return v}();q.init()});
</script>
{%/block%}





