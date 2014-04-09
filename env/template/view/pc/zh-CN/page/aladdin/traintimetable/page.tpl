{%extends 'base.tpl'%} {%block name='content'%}<style type="text/css" >
#swh {margin-top:3px;font-size:13px;color:#555;}
#swh label{margin-right:20px;}
#train_ad {font-size:13px;color:#666;margin-top:5px;}
#train_open {margin-top:5px;font-size:12px;}
#train_open span{font-size:12px;color:#008000;}
#train_open a{color:#7777CC;text-decoration:none;}
#train_open a:hover{text-decoration:underline;}
#ald_icon {width:16px;height:12px;vertical-align:baseline;}
#tq th {text-align:left;font-size:13px;font-weight:bold;}
#tq td {height:24px;vertical-align:middle;}
#to_icon {font-size:13px;font-weight:bold;color:#999}
.q_btn {background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat scroll -100px 0;color:#000000;cursor:pointer;float:left;height:24px;line-height:24px;margin-left:10px;text-align:center;text-decoration:none;width:81px;font-size:13px;}
.q_btn:hover, .q_btn:active, .q_btn:focus {background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat scroll 0 0;}
.ipt, .ipt_default, .ipt_normal{font-size:13px;width:135px;height:22px;*height:18px;*line-height:18px;padding-left:2px}
.ipt_default {color:#ACACAC;}
.ipt_normal {color:#000;}

.tangram_sug_wpr{position:absolute;}
.tangram_sug_wpr table{border:1px solid #D0D0D0;width:100%;background:#fff;cursor:default;color:#666;}
.tangram_sug_wpr td{font:13px verdana;padding:0;margin:0;height:25px;white-space:nowrap; }
.tangram_sug_mo{background-color:#3366CC;color:#fff;font-size:13px;}
.tangram_sug_ml{background-color:#fff;color:#666;font-size:13px;}

.tangram_sug_app{background-color:white;}
.tangram_sug_pre{background-color:white;}
.sug_en {font-size:12px;font-family:sans-serif;}
.sug_key {color:#C60A00}
.sug_error_info {background:#CC3300;line-height:24px;height:24px;font-size:13px;width:100%;overflow:hidden;color:#FFF;padding:0 2px;}
.sug_j{margin:0 2px;}

#act_station ,#act_train {position:relative;z-index:1}
		
.op_train_morelink, .op_train_flag, .op_train_splitter{background:url("http://www.baidu.com/aladdin/img/traintimetable/bg.gif") no-repeat;font-size:13px;line-height:26px;}
.op_train_morelink{background-repeat:repeat-x;margin:12px 0 0;width:385px;_width:402px;*width:402px;}
.op_train_morelink a{text-decoration:none;}
.op_train_morelink span{_padding-top:2px;*padding-top:2px;}
.op_train_flag{background-position:0 -38px;padding:0 5px 0 25px;margin:0 0 0 5px;display:inline-block;height:26px;vertical-align:middle;}
.op_train_splitter{background-position:0 -99px;padding:0 0 0 12px;margin:0 5px 0 0;}
</style>{%$FE_GBVAR.wrapper_prefix%}<div style="position:relative">{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div id="act_station" style="display:none;margin-top:6px"> <form id="tr_q_01" action="{%$tplData.posturl%}" target="_blank"> <input type="hidden" name="wd" value="{%if $extData.OriginQuery!=""%}{%$extData.OriginQuery%}{%/if%}"><input type="hidden" name="act" value="station"> <table cellpadding="0" cellspacing="3" id="tq"> <tr> <th> 出发城市 </th><th></th> <th> 到达城市 </th><th></th> </tr> <tr> <td> <input id="s1" name="s1" type="text" value="" maxlength="100" class="ipt" tip="城市名"> </td><td style="width:10px;background:url(http://www.baidu.com/aladdin/img/traintimetable/bg.gif) no-repeat 2px -113px;_background-position:0 -113px;"></td> <td> <input id="s2" name="s2" type="text" value="" maxlength="100" class="ipt" tip="城市名"{%*i*%}> </td> <td> <a id="q_01" class="q_btn OP_LOG_BTN" href="#" onclick="return false;">查询</a> </td> </tr> </table> </form></div>{%if $tplData.doubleMode!=""%}<div id="act_train" style="display:none;margin-top:6px"> <form id="tr_q_02" action="{%$tplData.posturl%}" target="_blank"> <input type="hidden" name="wd" value="{%if $extData.OriginQuery!=""%}{%$extData.OriginQuery%}{%/if%}"><input type="hidden" name="act" value="train"> <table cellpadding="0" cellspacing="3" id="tq"> <tr> <th> 列车车次 </th><th></th> </tr> <tr> <td> <input id="s3" name="s3" type="text" value="" maxlength="100" class="ipt" tip="车次"> <input type="submit" style="display:none;"> </td> <td> <a id="q_02" class="q_btn OP_LOG_BTN" href="#" onclick="return false;">查询</a> </td> </tr> </table> </form></div><div id="swh"><input name="r" type="radio" id="r_1" class="OP_LOG_BTN"><label for="r_1" class="OP_LOG_BTN"{%*i*%}>列车路线</label><input name="r" type="radio" id="r_2" class="OP_LOG_BTN"><label for="r_2" class="OP_LOG_BTN">车次</label></div>{%/if%}<div id="train_ad">{%$tplData.description%}</div><div id="op_train_morelink" class="op_train_morelink"><span class="op_train_flag"></span>{%if $tplData.morelink1[0]['txt']!=""%}<span class="op_train_splitter" style="background:none;padding:0;"><a href="{%$tplData.morelink1[0]['url']%}" target="_blank">{%$tplData.morelink1[0]['txt']%}</a></span>{%/if%}{%if $tplData.morelink2[0]['txt']!=""%}<span class="op_train_splitter"><a href="{%$tplData.morelink2[0]['url']%}" target="_blank">{%$tplData.morelink2[0]['txt']%}</a></span>{%/if%}{%if $tplData.morelink3[0]['txt']!=""%}<span class="op_train_splitter"><a href="{%$tplData.morelink3[0]['url']%}" target="_blank">{%$tplData.morelink3[0]['txt']%}</a></span>{%/if%}</div><div id="train_open">{%if $tplData.showurl!=""%}<span>{%$tplData.showurl%}</span>{%/if%}{%if $tplData.showlamp!=""%} - <a target="_blank" href="http://open.baidu.com/"  class="op_LAMP" >{%$FE_GBVAR.aladdin_txt%}</a>{%/if%}</div></div>{%$FE_GBVAR.wrapper_suffix%}{%if $tplData.enableSug!=""%}<script charset="gb2312" src="{%$tplData.trainbase%}/create.js" charset='gbk'></script>{%/if%}<script >function g_almid() {return 'train3';}var init_pos = 0;var initValues = ['', '', ''];</script><script charset="gb2312" src="{%$tplData.trainbase%}/form.js" charset='gbk'></script>{%if $tplData.enableSug!=""%}<script charset="gb2312" src="{%$tplData.trainbase%}/sug.js" charset='gbk'></script>{%/if%}{%/block%}