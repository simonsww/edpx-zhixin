{%extends 'base.tpl'%}  {%block name='content'%}<style type="text/css" > 
    .op_generalbus_container{      
        border: 1px solid #efefef;
        -webkit-box-shadow: 0 0 3px #efefef;
        padding: 0 10px;
    }
    .op_generalbus_main{
        padding: 10px 10px 20px 10px;
        border-top: 1px solid #efefef;
    }
    .op_generalbus_title{height:44px;line-height:44px;font-size:1.2em;padding-left: 10px;}
    .op_generalbus_title h3 a{text-decoration:none;display: block;}
    .op_generalbus_title h3 em{text-decoration:none;}
    .op_generalbus_center_form{
        margin: 15px 0;
    }
    .op_generalbus_p{
        position: relative;
        display: inline-block;
    }
    .op_generalbus_clear{
        position: absolute;
        display: none;
        top: 0;
        right: 5px;
        width: 24px;
        height: 100%;
        background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACsAAAArCAMAAADWg4HyAAAAM1BMVEX9/f3b29vq6ur19fXY2Nj6+vrw8PDg4OD7+/vV1dXX19fl5eXo6Oji4uL+/v7////U1NSiFE9QAAAA30lEQVR42pXVyRKEIAwEUFFc2EL//9dOpZwSNDpO943iHVBIMtT/c7UyjcXFEKIr4yS/7Jw9uvg8P9ktBVwS0nZrl4ibxMVaSXhIkosdVjxmHU5Wemqx9DbhZ1JnF7xkOewW32zc1J5PkEsvSm6n+No5HLRK6ajUA4d5t7nRqrjR055a8W234bbY40XtBBhsKDCpHWGxpRjVFlhsKYpaB4sthVMbYbGliGoDLLYUgbHMGZhvY/4ZcxfMHTNvh3iTzFsnaoipTaLmiV7C9Cii9xE9lejVzAzgZws/s97D2w9lAGtE14UU8QAAAABJRU5Erk{%*i*%}Jggg==) no-repeat 50% 50%;
        background-size: 22px 22px;
        -webkit-background-size: 22px 22px;
    }
    .op_generalbus_change_loc{
        display: inline-block;
        width: 40px;
        height: 40px;
        vertical-align: middle;
        margin: -3px 10px 0 10px;
        border: 1px solid #e7e7e7;
        border-radius: 3px;
        -webkit-border-radius: 3px;
        -webkit-box-shadow: 0px 1px 1px rgba(0,0,0,0.1);
        background: #fff url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAMAAAAp4XiDAAAA3lBMVEVYksdYkcZfnNRfnNRblsxfnNRfnNRdmdBfnNRfnNRfnNRfnNRfnNRfnNRfnNRfnNRfnNRfnNRdmtFfnNRfnNRfnNRfnNRYksZfnNRYkcZfnNRalcpfnNRak8halMlZk8hfnNRfnNRfnNRfnNRfnNRfnNRfnNRfnNRcl85Zk8hfnNRfnNRfnNRZksdcl81fnNRfnNRfnNRdmdBfnNRfnNRfnNRZksZfnNRemtJZksdblstcmM9fnNRfnNRfnNRfnNRfnNRalMlfnNRalMoAAABemtJdmM9cl81Zk8hfnNRkYSvEAAAARXRSTlP++y1LyGaKsjwzgSRpNjAPhBurkEiZKvhU/ELTP+Lb5mCTcntOGHVXvekhHmztwX6HoK45FSf0EqfxzLYMW{%*i*%}gkDBt6W1wCV9bxQAAABgElEQVR42pXT6XKCMBSGYaf7vlcdrbbubd1XqCCgfgLn/m+okgTaP05O3t95hmG+JIe0kgNeGTmO1oakGJIhWe3IkHzsyJDcUFK0Pdy41nT/kzZxCsffGWkQs93Il+SK+C1nCfF/yKD1/Z5gbmQGCUG3b2JWCcFjxYAUvIRgViXNlNbbc5h+RhBYZe362T/bksBdagluJekrAm+gJXgXJEoJAqeiI9WUZOZNI/I7Qd4FYdX6IpHDJfN6TLLTjFhFmzjFriLfm5h49SCI346I2YkviPtJ3H5mSIi3ZYt1C4JM2GLjQpAVFzhTQBBvwXv1vS6gyAepJlMfrHLnSjTALbeQoqw5dzT7I6EkQw157XczonZ/0JANLeYp+VIjBTpChbwidjqTllB8KUmHVNvOtYZQPBUkWBC/+CK7MOyil4TgycSEzYQEAyNztyfwJgZkGci334u54tODJLBGPOQEEERWGr0utweLh{%*i*%}bADSJKlm3Lsw5DUAENyBlMyhCEZ1pH2C2fSnel4J6IBAAAAAElFTkSuQmCC) no-repeat center center;
        background-size: 25px 25px;
    }
    .op_generalbus_change_loc_click{
        background-color: #5B95D2;
        background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAMAAAAp4XiDAAAA3lBMVEXu7u7u7u7////////////19fX////////////////6+vr////////////////////////8/Pz////////////////////u7u7////////z8/P////x8fHy8vLx8fH////////////////w8PD////////////////4+Pj////////////w8PD39/f////7+/v////////////////v7+/////////9/f3v7+/19fX5+fn////////u7u7////////////y8vL////z8/MAAADy8vL8/Pz5+fn29vb///9sqaaHAAAARXRSTlP9/C1LZsiKD5AksjYwhGkbPKszgUgqmfhUQtM/4tvmYJNyV+l1e04YvSEebO3Bfq6ghzkV9CcSp/HMtgxa{%*i*%}/wkDBt6W1wBWSAr3AAABfklEQVR42pXT15KCQBCFYd2csznnnBEVFFBaod//hVYmsHtjTc9/zVdTU4dJgCxnAa2YXId7TZINUJNsT6hJKifUJG8YFfqXm1bb9n/SRErBtBeTFhI7zVxOvpHeZhERd40a7e/PBJZaZsTu0h/qmG1E4L2oQTIO22VRQsWUZuEhkMcwAmZeuX585xUnYG+UBJ45GQoCzkhJoMxIKAl4VlFFSpLEpqAQqRMjZUZIdRrIsqhkWdsh7yYmZnaFlHa2IL3DEWkNgBG3GSKxW5cRu4vU1guIiOOTxb4DjEzI4mADI1sqsOYAjDgG7dUP+gCCVFA0mbtAKvEkRAuoJQwu8orvrhZ/JOBkrCDpYT8mYvdXBTmgsZSkIUbyVAQzKUFWciYlweQXJ3UU+fVHBcHdnBHPQHrHD/nD0At/IgKfOiZoR8QbaZmXMwFnokE2Hn/7gyNVdB3gBMzZjiQsDxjh5WbpjX+xJBMr{%*i*%}DziJU005dUGTVAE0yR3okjFoknENZL/P95zO7KJPdQAAAABJRU5ErkJggg==);
    }
    .op_generalbus_input{
        color: #333;
        width: 160px;
        height: 46px;
        font-size: 1em;
        padding-left: 10px;
        padding-right: 25px;
        -webkit-appearance: none;
        border: 1px solid #e7e7e7;
        border-radius: 3px;
        -webkit-border-radius: 3px;
        -webkit-box-shadow: inset 1px 1px 3px #efefef;
    }
    .op_generalbus_submit{
        width: 80px;
        height: 40px;
        margin-left: 10px;
        font-size: 1em;
        text-align: center;
        color: #fff;
        background-color: #61a9f1;
        -webkit-appearance: none;
        border: none;
        border-radius: 3px;
        -webkit-border-radius: 3px;
    }
</style>{%$FE_GBVAR.wrapper_prefix%}<div class="op_generalbus_container"> <div class="op_generalbus_title">{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%} </div> <div class="op_generalbus_main"> <form class="op_generalbus_form" name="op_generalbus_form" action="{%$tplData.query1[0]['action']|escape:'html'%}" method="get" target="_blank"> <div class="op_generalbus_p"> <input type="text" class="op_generalbus_input op_generalbus_origin" name="origin" placeholder="起点 我的位置" value="" /> <span class="op_generalbus_clear"></span> </div> <span class="op_generalbus_change_loc OP_LOG_BTN"></span> <div class="op_generalbus_p"> <input type="text" class="op_generalbus_input op_generalbus_destination" name="destination" placeholder="终点" value="" /> <span class="op_generalbus_clear"></span> </div> <input class="o{%*i*%}p_generalbus_submit OP_LOG_BTN" type="submit" value="查询" /> <input type="hidden" value="transit" name="mode"/><input type="hidden" value="html" name="output"/> <input type="hidden" value="{%$tplData.hidden1[0]['value']|escape:'html'%}" name="{%$tplData.hidden1[0]['name']|escape:'html'%}" /> </form> <form class="op_generalbus_form op_generalbus_center_form" action="{%$tplData.query2[0]['action']|escape:'html'%}" method="get" target="_blank"> <div class="op_generalbus_p"> <input type="text" class="op_generalbus_input" name="name" placeholder="线路 如：10路" value="" /> <span class="op_generalbus_clear"></span> </div> <input type="submit" value="查询" class="op_generalbus_submit OP_LOG_BTN" /> <input type="hidden" name="output" value="html"/><input type="hidden" value="{%$tplData.hidden1[0]['value']|escape:'html'%}" name="{%$tplData.hidden1[0]['name']|escape:'html'%}" /> </form> <form class="op_generalbus_form" method="get" target="_blank" action="{%$tplData.query3[0]['action']|escape:'html'%}"> <div class="op_generalbus_p"> <input type="text" class="op_generalbus_input" name="query" placeholder="公交站点" value="" /> <span class="op_generalbus_clear"></span> </div> <input type="submit" value="查询" class="op_generalbus_submit OP_LOG_BTN" /> <input type="hidden" name="output" value="html"/> <input type="hidden" value="{%$tplData.hidden1[0]['value']|escape:'html'%}" name="{%$tplData.hidden1[0]['name']|escape:'html'%}" /> </form> </div></div>{%$FE_GBVAR.wrapper_suffix%} <script type="text/javascript" >A.init(function() {var $ = window.$,A = window.A;var $change_loc = $('.op_generalbus_change_loc'),$destination = $('.op_generalbus_destination'),$origin = $('.op_generalbus_origin'),$clears = $('.op_generalbus_clear'),$inputs = $('.op_generalbus_input'),origin_val = '',destination_val = '',temp = '';$change_loc.on('touchstart',function(){$change_loc.toggleClass('op_generalbus_change_loc_click');});$change_loc.on('touchend',function(){$change_loc.toggleClass('op_g{%*i*%}eneralbus_change_loc_click');origin_val = $origin.val(),destination_val = $destination.val();temp = origin_val;$origin.val(destination_val);$destination.val(temp);});A.use('simGps',function(){$origin.on('touchstart',function(){var $o = $(this),$clear = $o.siblings('.op_generalbus_clear');if ($origin.val()==='') {A.ui.simGps({panel:this,pos:this,onSuccess:function(){$clear.show();}});}});$destination.on('touchstart',function(){var $o = $(this),$clear = $o.siblings('.op_generalbus_clear');if ($des{%*i*%}tination.val()==='') {A.ui.simGps({panel:this,pos:this,onSuccess:function(){$clear.show();}});}});});$inputs.on('input',function(){var $o = $(this),$clear = $o.siblings('.op_generalbus_clear');if ($o.val()) {$clear.show();} else {$clear.hide();}});$clears.on('touchstart',function(){var $o = $(this),$input = $o.siblings('.op_generalbus_input');$input.val('');$o.hide();});});</script>{%/block%}