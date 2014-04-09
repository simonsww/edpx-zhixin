{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<style >
.op_email{width:345px;border:1px solid #c3d9ff;font-size:14px;margin-top:10px;padding-bottom:10px;}
.op_email h3{background:#e8eef7;font-size:14px;padding:5px 10px;margin:0;}
.op_email .op_email_table{margin:10px 10 0 10;}
.op_email td{font-size:14px;padding-left:5px;height:28px;}
.op_email_sub{width:81px; height:24px;background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat -100px 0;float:left;text-align:center;line-height:24px;color:#000;text-decoration:none;margin:5px 5px 0 0;cursor:pointer;}
.op_email_sub:hover,.op_email_sub:active,.op_email_sub:focus{background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat 0 0;}

.op_email_cc1{padding:3px 0 0 0;}
.op_email_cc1 span{color:#008000;font-size:12px;}
.op_email_cc1 a{color:#666;font-size:12px;}
.op_email .op_email_table .op_email_fpsw{color:#666;font-size:12px;}
.op_email .op_email_table .op_email_reg{font-size:12px;margin-left:5px;}
.op_email .op_email_table input{width:150px;height:22px;*height:18px;}
.op_email .op_name{color:#666;}
</style><form class="op_emial_form" target="_blank" action="{%$tplData.action%}" method="post" name="op_mail" style="position:static;" accept-charset="gb2312"><div class="op_email"><h3>{%$tplData.tabletitle%}</h3><table class="op_email_table"><tr><td class="op_name">用户名</td><td><input autocomplete="off" class="op_email_username" type="text"></td><td>{%$tplData.emailtail%}</td></tr><tr><td class="op_name">密　码</td><td><input class="op_email_password"  autocomplete="off" type="password"></td><td><a class="op_email_fpsw" href="{%$tplData.findpsw[0]['url']%}" target=_blank >{%$tplData.findpsw[0]['content']%}</a></td></tr><tr><td></td><td style="vertical-align:top"><a class="op_email_sub" href="javascript:;" onclick="return false;" class="OP_LOG_BTN">登录</a><input type="submit" style="height:0px;width:0px;overflow:hidden;position:absolute;display:none;*display:block;"><div style="padding-top:5px;"><a href="{%$tplData.register[0]['url']%}" target=_blank class="op_email_reg">{%$tplData.register[0]['content']%}</a></div></td><td></td></tr></table><input class="username_hidden" name="{%$tplData.username%}" type="hidden"><input class="password_hidden" name="{%$tplData.password%}" type="hidden">{%if $tplData.params[0]['para1name']!=""%}<input type=hidden name="{%$tplData.params[0]['para1name']%}" value="{%$tplData.params[0]['para1value']%}">{%/if%}{%if $tplData.params[0]['para2name']!=""%}<input type=hidden name="{%$tplData.params[0]['para2name']%}" value="{%$tplData.params[0]['para2value']%}">{%/if%}{%if $tplData.params[0]['para3name']!=""%}<input type=hidden name="{%$tplData.params[0]['para3name']%}" value="{%$tplData.params[0]['para3value']%}">{%/if%}{%if $tplData.params[0]['para4name']!=""%}<input type=hidden name="{%$tplData.params[0]['para4name']%}" value="{%$tplData.params[0]['para4value']%}">{%/if%}{%if $tplData.params[0]['para5name']!=""%}<input type=hidden name="{%$tplData.params[0]['para5name']%}" value="{%$tplData.params[0]['para5value']%}">{%/if%}{%$loop_maxcount=count($tplData.paramsadd)%}{%for $op_loop_count=0 to 9%}{%if $op_loop_count<$loop_maxcount%}<input type=hidden name="{%$tplData.paramsadd[$op_loop_count]['paramsaddname']%}" value="{%$tplData.paramsadd[$op_loop_count]['paramsaddvalue']%}">{%else%}{%break%}{%/if%}{%/for%}</div><div class="op_email_cc1"><span>{%$tplData.showurl%}</span>{%if $tplData.sponsor[0]['sponsorcontent']!=""%} - <a href="{%$tplData.sponsor[0]['sponsorlink']%}" target=_blank>{%$tplData.sponsor[0]['sponsorcontent']%}</a>{%/if%}</div></form><script >
A.init(function() {
    var _this = this,
        T = A.baidu,
        subBtn = _this.qq('op_email_sub'),
        form = _this.qq('op_emial_form'),
        op_usernametail = '';
    {%if $tplData.usernametail!=""%} op_usernametail = '{%$tplData.usernametail%}'; {%/if%};
    function op_submit() {
        _this.qq('username_hidden').value = _this.qq('op_email_username').value + op_usernametail;
        _this.qq('password_hidden').value = _this.qq('op_email_password').value;
        form.submit();
        _this.qq('op_email_password').value = '';
        return true;
    }
    T.event.on(form, 'submit', function(e) {
        T.event.preventDefault(e);
        op_submit();
        return false;
    });
    T.event.on(subBtn, 'click', op_submit);
});
</script>{%$FE_GBVAR.wrapper_suffix%}{%/block%}