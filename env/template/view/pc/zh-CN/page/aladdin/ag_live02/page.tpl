{%extends 'base.tpl'%} {%block name='content'%}<style >
    .op_asiangames03_liveicon a{width:100%;height:100%;display:block;}
    .op_asiangames03_livelinks,.op_asiangames03_morelinks{font-size:13px;}
    .op_asiangames03_livelinks a,.op_asiangames03_morelinks a{margin-right:6px;}
    .op_asiangames03_morelinks{margin-top:6px;}
    .op_asiangames03_livediv tr td{font-size:13px;}
    .op_asiangames03_livetable tr td{height:25px;line-height:25px;font-size:13px;}
    .op_asiangames03_livetable a{text-decoration:none;}
    .op_asiangames03_live{width:60px;height:19px;line-height:19px;font-size:12px;padding-left:19px;}
    .op_asiangames03_live0{background:url(http://www.baidu.com/aladdin/img/asiangames/ag_live0.gif) no-repeat;color:#000;}
    .op_asiangames03_live1{background:url(http://www.baidu.com/aladdin/img/asiangames/ag_live1.gif) no-repeat;color:#3d3d3d;}
    .op_asiangames03_live2{background:url(http://www.baidu.com/aladdin/img/asiangames/ag_live2.gif) no-repeat;color:#7f7f7f;}
    .op_asiangames03_provider{color:#696969;font-size:12px;height:14px;line-height:14px;margin-top:8px;}
    .op_asiangames03_showURL{color:#008000;font-size:13px;}
</style><tr> <td class=f> <h3 class="t"> <a href="{%$tplData.url%}" target="_blank"><font size="3">{%$tplData.title|highlight:0%}</font></a> <span class="tsuf tsuf-op" data="{title : '{%$tplData.title|escape:'javascript'%}', link : '{%$tplData.url|escape:'javascript'%}'}"></span> </h3> {%if $tplData.live[0]['iconaddress']!=""%} <div class="op_asiangames03_livediv" style="margin-top:6px;"> <table> <tr> <td style="vertical-align:top;width:125px;"> <div class="op_asiangames03_liveicon" style="width:118px;height:90px;background:url({%$tplData.live[0]['iconaddress']%}) no-repeat"> {%if $tplData.live[0]['link']!=""%} <a target="_blank" href="{%$tplData.live[0]['link']%}"></a> {%/if%} </div> </td> <td style="vertical-align:top;"> <div> {%if $tplData.live[0]['link']!=""%} <a style="font-weight:bold;" href="{%$tplData.live[0]['link']%}" target="_blank" class="op_asiangames03_dl"> {%/if%} {%$tplData.live[0]['title']%} {%if $tplData.live[0]['link']!=""%} </a> {%/if%} </div> {%$loop_maxcount=count($tplData.liveinfo)%} {%for $op_loop_count=0 to 4%} {%if $op_loop_count<$loop_maxcount%} {%if $tplData.liveinfo[$op_loop_count]['txt']%} <div style="height:24px;line-height:24px;">{%$tplData.liveinfo[$op_loop_count]['txt']%}</div> {%/if%} {%else%} {%break%} {%/if%} {%/for%} <div class="op_asiangames03_livelinks" style="height:24px;line-height:24px;"> {%if $tplData.liveenter[0]['txt']!=""%} {%$tplData.liveenter[0]['txt']%} {%/if%} {%if $tplData.liveenter[0]['link1url']!=""%} <a class="op_asiangames03_dl" href="{%$tplData.liveenter[0]['link1url']%}" target="_blank">{%$tplData.liveenter[0]['link1']%}</a> {%/if%} {%if $tplData.liveenter[0]['link2url']!=""%} <a class="op_asiangames03_dl" href="{%$tplData.liveenter[0]['link2url']%}" target="_blank">{%$tplData.liveenter[0]['link2']%}</a> {%/if%} {%if $tplData.liveenter[0]['link3url']!=""%} <a class="op_asiangames03_dl" href="{%$tplData.liveenter[0]['link3url']%}" target="_blank">{%$tplData.liveenter[0]['link3']%}</a> {%/if%} {%if $tplData.liveenter[0]['link4url']!=""%} <a class="op_asiangames03_dl" href="{%$tplData.liveenter[0]['link4url']%}" target="_blank">{%$tplData.liveenter[0]['link4']%}</a> {%/if%} </div> </td> </tr> </table> </div> {%/if%} {%if $tplData.tr[0]['c1']!=""%} <div style="margin-top:6px;"> {%if $tplData.caption!=""%} <div style="font-size:13px;font-weight:bold;color:#666;">{%$tplData.caption|highlight:0%}</div> {%/if%} <div style="height:10px;line-height:10px;overflow:hidden;background:url(http://www.baidu.com/aladdin/img/asiangames/ag_th_bg2.gif)"></div> <table style="width:100%" class="op_asiangames03_livetable"> {%$loop_maxcount=count($tplData.tr)%} {%for $op_loop_count=0 to 9%} {%if $op_loop_count<$loop_maxcount%} <tr> <td style="width:60px;"></td> <td style="width:70px;" nowrap>{%$tplData.tr[$op_loop_count]['c1Time']%}</td> <td style="" nowrap> {%if $tplData.tr[$op_loop_count]['c2Link']!=""%} <a class="op_asiangames03_dl" target="_blank" href="{%$tplData.tr[$op_loop_count]['c2Link']%}"> {%/if%} {%$tplData.tr[$op_loop_count]['c2']%} {%if $tplData.tr[$op_loop_count]['c2Link']!=""%} </a> {%/if%} </td> <td style="width:70px;" nowrap>{%$tplData.tr[$op_loop_count]['c3']%}</td> <td style="width:100px;" nowrap> {%if $tplData.tr[$op_loop_count]['c41Link']!=""%} <a target="_blank" class="op_asiangames03_dl" style="margin-right:12px;" href="{%$tplData.tr[$op_loop_count]['c41Link']%}"> {%/if%} {%$tplData.tr[$op_loop_count]['c41']%} {%if $tplData.tr[$op_loop_count]['c41Link']!=""%} </a> {%/if%} {%if $tplData.tr[$op_loop_count]['c42Link']!=""%} <a target="_blank" class="op_asiangames03_dl" href="{%$tplData.tr[$op_loop_count]['c42Link']%}"> {%/if%} {%if $tplData.tr[$op_loop_count]['c42']!=""%} {%$tplData.tr[$op_loop_count]['c42']%} {%/if%} {%if $tplData.tr[$op_loop_count]['c42Link']!=""%} </a> {%/if%} </td> </tr> {%else%} {%break%} {%/if%} {%/for%} </table> </div> <div class="op_asiangames03_morelinks"> {%$loop_maxcount=count($tplData.more)%} {%for $op_loop_count=0 to 3%} {%if $op_loop_count<$loop_maxcount%} <a href="{%$tplData.more[$op_loop_count]['link']%}" target="_blank" class="op_asiangames03_dl"> {%$tplData.more[$op_loop_count]['txt']%} </a> {%else%} {%break%} {%/if%} {%/for%} </div> {%/if%} {%if $tplData.provider!=""%} <div class="op_asiangames03_provider">{%$tplData.provider%}</div> {%/if%} <div> <span class="op_asiangames03_showURL">{%$tplData.showurl%}</span>{%if $tplData.showlamp!=""%} - <a target="_blank" href="http://open.baidu.com/" class="op_LAMP"></a> {%/if%} </div> </td></tr><script >
    A.setup({'st':[{%$loop_maxcount=count($tplData.tr)%}{%for $op_loop_count=0 to 9%}{%if $op_loop_count<$loop_maxcount%} '{%$tplData.tr[$op_loop_count]['c1']%}',{%else%}{%break%}{%/if%}{%/for%}''],'livelink':{%if $tplData.live[0]['link']!=""%}'1'{%/if%}});
</script><script  >
A.init(function() {
    var _this = this;
    _this.data.st.pop();
    var I = _this.data.st,
        J = _this.data.livelink ? true : false;
    var D = {
        '0': {
            text: '即将进行', 
            clz: 'op_asiangames03_live op_asiangames03_live0'},
        '1': {
            text: '正在直播', 
            clz: 'op_asiangames03_live op_asiangames03_live1'},
        '2': {
            text: '已经结束', 
            clz: 'op_asiangames03_live op_asiangames03_live2'}
    };
    var H = _this.qq('op_asiangames03_livetable');
    if (!H) {return false}
    var L = H.getElementsByTagName('tr');
    for (var F = 0; F < L.length; F++) {
        var K = L[F];
        var E = K.getElementsByTagName('td');
        var A = E[0];
        var C = D[I[F]];
        A.innerHTML = '<div class="' + C.clz + '">' + C.text + '</div>'
    }
});
</script>{%/block%}