{%extends 'base.tpl'%} {%block name='content'%}<style type="text/css" >#op_hao123teleplay_main{padding-top:8px}.op_hao123teleplay_l{float:left;padding-left:18px;overflow:hidden}.op_hao123teleplay_r{width:410px;padding-left:8px;font-size:13px;overflow:hidden;font-family:SIMSUN}.op_hao123teleplay_serial span{display:inline-block;width:40px;font-size:13px;padding-top:3px}.op_hao123teleplay_info span{display:inline-block;width:130px;height:22px;padding-top:5px}.op_hao123teleplay_fcolor{position:relative;bottom:2px;background:url(http://www.baidu{%*i*%}.com/aladdin/img/hao123/y_bg2.gif) no-repeat center center;width:12px;display:inline-block;color:#fff;font-size:11px;text-align:center}.op_hao123teleplay_fcolor2{position:relative;bottom:2px;background:url(http://www.baidu.com/aladdin/img/hao123/w_bg2.gif) no-repeat center center;width:12px;display:inline-block;color:#fff;font-size:11px;text-align:center}.op_hao123teleplay_arrow{position:absolute;top:0;right:0;background:url(http://www.baidu.com/aladdin/img/hao123/r_arrow.gif) no-repeat scroll c{%*i*%}enter 3px transparent;height:16px;width:30px;display:inline-block;cursor:pointer;display:none}.op_hao123teleplay_arrow2{background:url(http://www.baidu.com/aladdin/img/hao123/r_arrow2.gif) no-repeat scroll center 3px transparent}.op_hao123teleplay_img{border:1px solid #7493e5;display:inline-block;overflow:hidden}.op_hao123teleplay_cur{color:#00c;padding-left:5px;font-size:13px}.op_hao123teleplay_cura{padding-left:10px;color:#545454;font-size:12px}.op_hao123teleplay_curc{padding-left:8px;color:#5{%*i*%}45454;font-size:12px}.op_hao123teleplay_select{color:#000;text-decoration:none;font-weight:bold}.op_hao123teleplay_selecta{font-size:13px}.op_hao123teleplay_selectc{font-size:13px}.op_hao123teleplay_pagebg{width:100%;background-color:#f8f9ff;border-top:solid 1px #f4f4f4;border-bottom:solid 1px #f4f4f4;padding:5px 0 5px 15px;font-size:13px;margin-top:5px}.op_hao123teleplay_page{padding:0 20px;cursor:pointer;text-decoration:underline;color:#00c}.op_hao123teleplay_page_sel{color:#000;text-decoratio{%*i*%}n:none;cursor:auto}.op_hao123teleplay_pagebg span{padding:0;cursor:pointer;text-decoration:underline;color:#00c}span.op_hao123teleplay_spage_sel{color:#000;text-decoration:none;cursor:auto}.op_hao123teleplay_serial span{font-family:arial}#op_hao123teleplay_tabs{background:url(http://www.baidu.com/aladdin/img/nba/bg.png) repeat scroll 0 0 transparent;width:100%;display:inline-block;height:26px;overflow:hidden;text-decoration:none;margin-top:6px}#op_hao123teleplay_tabs span{float:left;display:inli{%*i*%}ne-block;font-size:13px;height:26px;overflow:hidden;cursor:pointer;border-bottom:1px solid #dedede}#op_hao123teleplay_tabs span a{display:block;color:#020202;padding:4px 12px 0 12px;text-decoration:none;outline:0}.op_hao123teleplay_curBorder{border:1px solid #dedede;border-bottom:0;border-top:0;font-weight:bold;background:url(http://www.baidu.com/aladdin/nba_bg2.png) repeat scroll 0 0 transparent}</style>{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div id="op_hao123teleplay_main"><div id="op_hao123teleplay_tabs" class="OP_LOG_BTN"><span><a target="_blank" style="padding:0 10px 0 0">&nbsp;</a></span><span id="op_hao123teleplay_tab1" class="op_hao123teleplay_tab op_hao123teleplay_curBorder" onclick="op_hao123teleplay_switch(1,this);return false;"><a target="_blank" class="op_hao123teleplay_txt">{%$tplData.tab1%}</a></span><span id="op_hao123teleplay_tab2" class="op_hao123teleplay_tab" style="cursor:pointer" onclick="op_hao123teleplay_switch(2,this);return false;"><a target="_blank" class="op_hao123teleplay_txt">{%$tplData.tab2%}</a></span></div><div id="op_hao123teleplay_content1" style="font-size:14px"></div><div id="op_hao123teleplay_content2" style="display:none;font-size:14px"></div> {%if $tplData.more[0]['content']!=""%}<div style="padding:4px 0 0 0"> <a onmousedown="return c({'fm':'alop','title':this.innerHTML,'url':this.href,'p1':_aMC(this),'p2':window.op_hao123teleplay_lastnum})"
			    style="font-size:13px;color:#7777cc" href="{%if $tplData.more[0]['url']!=""%}{%$tplData.more[0]['url']%}{%/if%}" target="_blank">{%$tplData.more[0]['content']%}<span style="font-family:simsun">&gt;&gt;</span></a></div>{%/if%}<div style="font-size:13px;">{%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}</div></div>{%$FE_GBVAR.wrapper_suffix%}<script type="text/javascript" >
    //初始化数据
    var op_hao123teleplay_data1 = [{%$loop_maxcount=count($tplData.teleplay1)%}{%for $op_loop_count=0 to 99%}{%if $op_loop_count<$loop_maxcount%}['{%$tplData.teleplay1[$op_loop_count]['id']|escape:'javascript'%}', '{%$tplData.teleplay1[$op_loop_count]['title']|escape:'javascript'%}', '{%$tplData.teleplay1[$op_loop_count]['subtitle']|escape:'javascript'%}', '',
    '{%$tplData.teleplay1[$op_loop_count]['iconurl']|escape:'javascript'%}', '{%$tplData.teleplay1[$op_loop_count]['score']|escape:'javascript'%}', '', '', '', '', '', '', '', '', '',
    '{%if $tplData.teleplay1[$op_loop_count]['source1']!=""%}{%$tplData.teleplay1[$op_loop_count]['source1']|escape:'javascript'%}{%/if%}', '{%if $tplData.teleplay1[$op_loop_count]['urll']!=""%}{%$tplData.teleplay1[$op_loop_count]['urll']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay1[$op_loop_count]['source2']!=""%}{%$tplData.teleplay1[$op_loop_count]['source2']|escape:'javascript'%}{%/if%}', '{%if $tplData.teleplay1[$op_loop_count]['url2']!=""%}{%$tplData.teleplay1[$op_loop_count]['url2']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay1[$op_loop_count]['source3']!=""%}{%$tplData.teleplay1[$op_loop_count]['source3']|escape:'javascript'%}{%/if%}', '{%if $tplData.teleplay1[$op_loop_count]['url3']!=""%}{%$tplData.teleplay1[$op_loop_count]['url3']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay1[$op_loop_count]['source4']!=""%}{%$tplData.teleplay1[$op_loop_count]['source4']|escape:'javascript'%}{%/if%}', '{%if $tplData.teleplay1[$op_loop_count]['url4']!=""%}{%$tplData.teleplay1[$op_loop_count]['url4']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay1[$op_loop_count]['source5']!=""%}{%$tplData.teleplay1[$op_loop_count]['source5']|escape:'javascript'%}{%/if%}', '{%if $tplData.teleplay1[$op_loop_count]['url5']!=""%}{%$tplData.teleplay1[$op_loop_count]['url5']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay1[$op_loop_count]['source6']!=""%}{%$tplData.teleplay1[$op_loop_count]['source6']|escape:'javascript'%}{%/if%}', '{%if $tplData.teleplay1[$op_loop_count]['url6']!=""%}{%$tplData.teleplay1[$op_loop_count]['url6']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay1[$op_loop_count]['source7']!=""%}{%$tplData.teleplay1[$op_loop_count]['source7']|escape:'javascript'%}{%/if%}', '{%if $tplData.teleplay1[$op_loop_count]['url7']!=""%}{%$tplData.teleplay1[$op_loop_count]['url7']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay1[$op_loop_count]['actor1']!=""%}{%$tplData.teleplay1[$op_loop_count]['actor1']|escape:'javascript'%}{%/if%}', '{%if $tplData.teleplay1[$op_loop_count]['actorurl1']!=""%}{%$tplData.teleplay1[$op_loop_count]['actorurl1']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay1[$op_loop_count]['actor2']!=""%}{%$tplData.teleplay1[$op_loop_count]['actor2']|escape:'javascript'%}{%/if%}', '{%if $tplData.teleplay1[$op_loop_count]['actorurl2']!=""%}{%$tplData.teleplay1[$op_loop_count]['actorurl2']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay1[$op_loop_count]['actor3']!=""%}{%$tplData.teleplay1[$op_loop_count]['actor3']|escape:'javascript'%}{%/if%}', '{%if $tplData.teleplay1[$op_loop_count]['actorurl3']!=""%}{%$tplData.teleplay1[$op_loop_count]['actorurl3']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay1[$op_loop_count]['actor4']!=""%}{%$tplData.teleplay1[$op_loop_count]['actor4']|escape:'javascript'%}{%/if%}', '{%if $tplData.teleplay1[$op_loop_count]['actorurl4']!=""%}{%$tplData.teleplay1[$op_loop_count]['actorurl4']|escape:'javascript'%}{%/if%}',
    '{%$tplData.teleplay1[$op_loop_count]['info']|limitlen:100|escape:'javascript'%}', '{%if $tplData.teleplay1[$op_loop_count]['infomore']!=""%}{%$tplData.teleplay1[$op_loop_count]['infomore']%}{%/if%}', '{%if $tplData.teleplay1[$op_loop_count]['infomoreurl']!=""%}{%$tplData.teleplay1[$op_loop_count]['infomoreurl']%}{%/if%}'], {%else%}{%break%}{%/if%}{%/for%}''];
    op_hao123teleplay_data1.pop();
    
    for(var i=0,l=op_hao123teleplay_data1.length;i<l;i++) {
        switch(i){
            case 0: {op_hao123teleplay_data1[i][3] = '{%if $tplData.icon1!=""%}{%$tplData.icon1%}{%/if%}';break;}
            case 1: {op_hao123teleplay_data1[i][3] = '{%if $tplData.icon2!=""%}{%$tplData.icon2%}{%/if%}';break;}
            case 2: {op_hao123teleplay_data1[i][3] = '{%if $tplData.icon3!=""%}{%$tplData.icon3%}{%/if%}';break;}
            case 3: {op_hao123teleplay_data1[i][3] = '{%if $tplData.icon4!=""%}{%$tplData.icon4%}{%/if%}';break;}
            case 4: {op_hao123teleplay_data1[i][3] = '{%if $tplData.icon5!=""%}{%$tplData.icon5%}{%/if%}';break;}
            case 5: {op_hao123teleplay_data1[i][3] = '{%if $tplData.icon6!=""%}{%$tplData.icon6%}{%/if%}';break;}
            case 6: {op_hao123teleplay_data1[i][3] = '{%if $tplData.icon7!=""%}{%$tplData.icon7%}{%/if%}';break;}
            case 7: {op_hao123teleplay_data1[i][3] = '{%if $tplData.icon8!=""%}{%$tplData.icon8%}{%/if%}';break;}
            case 8: {op_hao123teleplay_data1[i][3] = '{%if $tplData.icon9!=""%}{%$tplData.icon9%}{%/if%}';break;}
            case 9: {op_hao123teleplay_data1[i][3] = '{%if $tplData.icon10!=""%}{%$tplData.icon10%}{%/if%}';break;}
        }
    }

    var op_hao123teleplay_data2 = [{%$loop_maxcount=count($tplData.teleplay2)%}{%for $op_loop_count=0 to 99%}{%if $op_loop_count<$loop_maxcount%}['{%$tplData.teleplay2[$op_loop_count]['id']|escape:'javascript'%}','{%$tplData.teleplay2[$op_loop_count]['title']|escape:'javascript'%}','{%$tplData.teleplay2[$op_loop_count]['subtitle']|escape:'javascript'%}',
    '','{%$tplData.teleplay2[$op_loop_count]['iconurl']|escape:'javascript'%}','{%$tplData.teleplay2[$op_loop_count]['score']|escape:'javascript'%}','','','','','','','','','',
    '{%if $tplData.teleplay2[$op_loop_count]['source1']!=""%}{%$tplData.teleplay2[$op_loop_count]['source1']|escape:'javascript'%}{%/if%}','{%if $tplData.teleplay2[$op_loop_count]['urll']!=""%}{%$tplData.teleplay2[$op_loop_count]['urll']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay2[$op_loop_count]['source2']!=""%}{%$tplData.teleplay2[$op_loop_count]['source2']|escape:'javascript'%}{%/if%}','{%if $tplData.teleplay2[$op_loop_count]['url2']!=""%}{%$tplData.teleplay2[$op_loop_count]['url2']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay2[$op_loop_count]['source3']!=""%}{%$tplData.teleplay2[$op_loop_count]['source3']|escape:'javascript'%}{%/if%}','{%if $tplData.teleplay2[$op_loop_count]['url3']!=""%}{%$tplData.teleplay2[$op_loop_count]['url3']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay2[$op_loop_count]['source4']!=""%}{%$tplData.teleplay2[$op_loop_count]['source4']|escape:'javascript'%}{%/if%}','{%if $tplData.teleplay2[$op_loop_count]['url4']!=""%}{%$tplData.teleplay2[$op_loop_count]['url4']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay2[$op_loop_count]['source5']!=""%}{%$tplData.teleplay2[$op_loop_count]['source5']|escape:'javascript'%}{%/if%}','{%if $tplData.teleplay2[$op_loop_count]['url5']!=""%}{%$tplData.teleplay2[$op_loop_count]['url5']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay2[$op_loop_count]['source6']!=""%}{%$tplData.teleplay2[$op_loop_count]['source6']|escape:'javascript'%}{%/if%}','{%if $tplData.teleplay2[$op_loop_count]['url6']!=""%}{%$tplData.teleplay2[$op_loop_count]['url6']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay2[$op_loop_count]['source7']!=""%}{%$tplData.teleplay2[$op_loop_count]['source7']|escape:'javascript'%}{%/if%}','{%if $tplData.teleplay2[$op_loop_count]['url7']!=""%}{%$tplData.teleplay2[$op_loop_count]['url7']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay2[$op_loop_count]['actor1']!=""%}{%$tplData.teleplay2[$op_loop_count]['actor1']|escape:'javascript'%}{%/if%}','{%if $tplData.teleplay2[$op_loop_count]['actorurl1']!=""%}{%$tplData.teleplay2[$op_loop_count]['actorurl1']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay2[$op_loop_count]['actor2']!=""%}{%$tplData.teleplay2[$op_loop_count]['actor2']|escape:'javascript'%}{%/if%}','{%if $tplData.teleplay2[$op_loop_count]['actorurl2']!=""%}{%$tplData.teleplay2[$op_loop_count]['actorurl2']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay2[$op_loop_count]['actor3']!=""%}{%$tplData.teleplay2[$op_loop_count]['actor3']|escape:'javascript'%}{%/if%}','{%if $tplData.teleplay2[$op_loop_count]['actorurl3']!=""%}{%$tplData.teleplay2[$op_loop_count]['actorurl3']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.teleplay2[$op_loop_count]['actor4']!=""%}{%$tplData.teleplay2[$op_loop_count]['actor4']|escape:'javascript'%}{%/if%}','{%if $tplData.teleplay2[$op_loop_count]['actorurl4']!=""%}{%$tplData.teleplay2[$op_loop_count]['actorurl4']|escape:'javascript'%}{%/if%}',
    '{%$tplData.teleplay2[$op_loop_count]['info']|limitlen:100|escape:'javascript'%}','{%if $tplData.teleplay2[$op_loop_count]['infomore']!=""%}{%$tplData.teleplay2[$op_loop_count]['infomore']%}{%/if%}','{%if $tplData.teleplay2[$op_loop_count]['infomoreurl']!=""%}{%$tplData.teleplay2[$op_loop_count]['infomoreurl']%}{%/if%}'],{%else%}{%break%}{%/if%}{%/for%}''];
    op_hao123teleplay_data2.pop();

    for(var i=0,l=op_hao123teleplay_data2.length;i<l;i++) {
        switch(i){
            case 0: {op_hao123teleplay_data2[i][3] = '{%if $tplData.icon51!=""%}{%$tplData.icon51%}{%/if%}';break;}
            case 1: {op_hao123teleplay_data2[i][3] = '{%if $tplData.icon52!=""%}{%$tplData.icon52%}{%/if%}';break;}
            case 2: {op_hao123teleplay_data2[i][3] = '{%if $tplData.icon53!=""%}{%$tplData.icon53%}{%/if%}';break;}
            case 3: {op_hao123teleplay_data2[i][3] = '{%if $tplData.icon54!=""%}{%$tplData.icon54%}{%/if%}';break;}
            case 4: {op_hao123teleplay_data2[i][3] = '{%if $tplData.icon55!=""%}{%$tplData.icon55%}{%/if%}';break;}
            case 5: {op_hao123teleplay_data2[i][3] = '{%if $tplData.icon56!=""%}{%$tplData.icon56%}{%/if%}';break;}
            case 6: {op_hao123teleplay_data2[i][3] = '{%if $tplData.icon57!=""%}{%$tplData.icon57%}{%/if%}';break;}
            case 7: {op_hao123teleplay_data2[i][3] = '{%if $tplData.icon58!=""%}{%$tplData.icon58%}{%/if%}';break;}
            case 8: {op_hao123teleplay_data2[i][3] = '{%if $tplData.icon59!=""%}{%$tplData.icon59%}{%/if%}';break;}
            case 9: {op_hao123teleplay_data2[i][3] = '{%if $tplData.icon60!=""%}{%$tplData.icon60%}{%/if%}';break;}
        }
    }


    var op_hao123teleplay_ui = ['{%if $tplData.ui[0]['title1']!=""%}{%$tplData.ui[0]['title1']|escape:'javascript'%}{%/if%}','{%if $tplData.ui[0]['title2']!=""%}{%$tplData.ui[0]['title2']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.ui[0]['title3']!=""%}{%$tplData.ui[0]['title3']|escape:'javascript'%}{%/if%}','{%if $tplData.ui[0]['title4']!=""%}{%$tplData.ui[0]['title4']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.ui[0]['title5']!=""%}{%$tplData.ui[0]['title5']|escape:'javascript'%}{%/if%}','{%if $tplData.ui[0]['title6']!=""%}{%$tplData.ui[0]['title6']|escape:'javascript'%}{%/if%}',
    '{%if $tplData.ui[0]['title7']!=""%}{%$tplData.ui[0]['title7']|escape:'javascript'%}{%/if%}','{%if $tplData.ui[0]['title8']!=""%}{%$tplData.ui[0]['title8']|escape:'javascript'%}{%/if%}'];

    var op_hao123teleplay_links1 = [{%$loop_maxcount=count($tplData.link1)%}{%for $op_loop_count=0 to 9999%}{%if $op_loop_count<$loop_maxcount%}['{%$tplData.link1[$op_loop_count]['id']|escape:'javascript'%}','{%$tplData.link1[$op_loop_count]['content']|escape:'javascript'%}','{%$tplData.link1[$op_loop_count]['url']|escape:'javascript'%}',
    '{%if $tplData.link1[$op_loop_count]['new']!=""%}1{%/if%}'],{%else%}{%break%}{%/if%}{%/for%}''];
    op_hao123teleplay_links1.pop();

    var op_hao123teleplay_links1_data = [];
    var op_hao123teleplay_links2_data = [];
    for(var i=0;i<51;i++) {
        op_hao123teleplay_links1_data[i] = [];
        op_hao123teleplay_links2_data[i] = [];
    }
    for(var i=0,l=op_hao123teleplay_links1.length;i<l;i++) {
        var index = parseInt(op_hao123teleplay_links1[i][0]);
        op_hao123teleplay_links1_data[index].push(op_hao123teleplay_links1[i]);
    }
    var op_hao123teleplay_links2 = [{%$loop_maxcount=count($tplData.link2)%}{%for $op_loop_count=0 to 9999%}{%if $op_loop_count<$loop_maxcount%}['{%$tplData.link2[$op_loop_count]['id']|escape:'javascript'%}','{%$tplData.link2[$op_loop_count]['content']|escape:'javascript'%}','{%$tplData.link2[$op_loop_count]['url']|escape:'javascript'%}',
    '{%if $tplData.link2[$op_loop_count]['new']!=""%}1{%/if%}'],{%else%}{%break%}{%/if%}{%/for%}''];
    op_hao123teleplay_links2.pop();
    for(var i=0,l=op_hao123teleplay_links2.length;i<l;i++) {
        var index = parseInt(op_hao123teleplay_links2[i][0]);
        op_hao123teleplay_links2_data[index].push(op_hao123teleplay_links2[i]);
    }
    var op_hao123teleplay_lastIndex = [];
    op_hao123teleplay_lastIndex[1] = [1,1,1,1,1,1];
    op_hao123teleplay_lastIndex[2] = [1,1,1,1,1,1];
    var op_hao123teleplay_mode = '{%if $tplData.mode!=""%}{%$tplData.mode%}{%/if%}';
</script><script type="text/javascript" >
(function op_tangram() 
{
    if (!window.op_tangram_exist) {
        document.write('<script src="http://www.baidu.com/aladdin/js/lib/tangram.js" type="text/javascript" charset="gb2312" data-compress="off"></' + 'script>');
        window.op_tangram_exist = true;
    }
})();
</script><script type="text/javascript" src="http://www.baidu.com/aladdin/js/hao123teleplay/hao123_teleplay2.js" charset="gb2312" charset='gbk'></script>{%/block%}