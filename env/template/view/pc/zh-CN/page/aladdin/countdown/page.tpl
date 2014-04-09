{%extends 'base.tpl'%} {%block name='content'%}<style >.op_countdown_main{margin-top:8px}</style>{%$FE_GBVAR.wrapper_prefix%}<div class="op_countdown_title">{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}</div><div class="op_countdown_main"> <table border="0" cellspacing="0" cellpadding="0" width="100%"><tr><td width="10px" valign="top">{%if $tplData.icon[0]['link']!=""%}<a href="{%$tplData.icon[0]['link']%}" target="_blank">{%/if%}<img id="op_alad_icon" onload="var d=new Image();d.src=this.src;var w=d.width;var h=d.height;if(w>80||h>80){if(w>h){h=80*h/w;w=80}else{w=80*w/h;h=80;}}this.style.width=w+'px';this.style.height=h+'px';" src="{%$tplData.icon[0]['address']%}" width="80px" height="80px" border="none"/>{%if $tplData.icon[0]['link']!=""%}</a>{%/if%}</td><td width="8px"></td><td><div style="font-size:14px;margin-top:3px;">{%if $tplData.content1!=""%}{%$tplData.content1%}{%/if%}<span style="color:#cc0000;font-weight:bold;">{%if $tplData.content2!=""%}{%$tplData.content2%}{%/if%}</span>{%if $tplData.content3!=""%}{%$tplData.content3%}{%/if%}</div><div style="margin-top:12px;height:24px"><span id="op_cd_showTime" style="font-size:20px;font-weight:bold;"></span></div><div style="margin-top:6px;"><span style="color:#008000;font-size:13px">{%$tplData.showurl%}</span>{%if $tplData.showlamp!=""%} - <a target="_blank" href="http://open.baidu.com/"  class="op_LAMP" ></a>{%/if%}</div></td></tr></table> </div>{%$FE_GBVAR.wrapper_suffix%}<script >
A.init(function(){
	var op_cd_serverTime = 0;var op_cd_targetTime = {%$tplData.targetTime%};
	var op_cd_title = '{%if $tplData.showTitle!=""%}{%$tplData.showTitle%}{%/if%}';
	var st = this.qq('op_countdown_title');
    var cm = this.qq('op_countdown_main');
    if (op_cd_title != '') {
        st.style.display = 'none';
        cm.style.marginTop = '0px';
    }
	var baidu_time = function(time){
		op_cd_serverTime = parseInt(time);
		op_cd_ct();
	};

	function op_cd_showTime(){
		var serverTime = new Date(op_cd_serverTime);
		var targetTime = new Date(op_cd_targetTime);
		var diffTime = targetTime.getTime() - serverTime.getTime();
	
		if (diffTime < 0) diffTime = 0;
	
		var d = parseInt(diffTime / 86400000);
		var h = parseInt(diffTime % 86400000 / 3600000);
		var m = parseInt(diffTime % 86400000 % 3600000 / 60000);
		var s = parseInt(diffTime % 86400000 % 3600000 % 60000 / 1000);
	
		var txt = "<font color='#cc0000'>" + d + '</font>' + '天'
				+ "<font color='#cc0000'>" + (h < 10 ? ('0' + h) : h) + '</font>' + '时'
				+ "<font color='#cc0000'>" + (m < 10 ? ('0' + m) : m) + '</font>' + '分'
				+ "<font color='#cc0000'>" + (s < 10 ? ('0' + s) : s) + '</font>' + '秒';
		G('op_cd_showTime').innerHTML = txt;
	}

	// update the show time every one second
	function op_cd_ct(){
		op_cd_serverTime += 1000;
		op_cd_showTime();
	
		setTimeout(op_cd_ct, 1000);
	}
	
	baidu_time(bdServerTime * 1000);
});
</script>{%/block%}