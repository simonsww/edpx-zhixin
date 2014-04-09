{%extends 'base.tpl'%} {%block name='content'%}<style >.op_space_login_main{margin-top:3px;font-size:13px}.op_space_login_btn{width:118px;height:23px;background:url(http://www.baidu.com/aladdin/img/space/space_login.jpg) no-repeat 0 0;display:block}.op_space_login_icon{border:1px solid #7493e5;width:80px;height:80px}.op_space_login_gray{color:#666}.op_space_login_green{color:#9ab13d}.op_space_login_red{color:#c60a00}.op_space_login_img{width:82px;height:82px}.op_space_login{width:345px}.op_space_login td{font-size:13px;padding-left:5px;heigh{%*i*%}t:28px}.op_space_login_sub{width:81px;height:24px;background:url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat -100px 0;float:left;text-align:center;line-height:24px;color:#000;text-decoration:none;margin:5px 5px 0 0;cursor:pointer}.op_space_login_sub:hover,.op_space_login_sub:active,.op_space_login_sub:focus{background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat 0 0}.op_space_login .op_space_login_table .op_space_login_fpsw{color:#666;font-size:12px}.op_space{%*i*%}_login .op_space_login_table .op_space_login_reg{font-size:12px;margin-left:5px}.op_space_login .op_space_login_table input{width:150px;height:22px;*height:18px;padding-top:1px}.op_space_login .op_space_login_name{color:#666;padding-left:0}.op_space_login_showurl{font-size:13px;color:#008000}</style><script >var op_space_login_authCodeSrc = '{%if $tplData.authenticode[0]['name']!=""%}{%$tplData.authenticode[0]['src']%}{%/if%}';
</script>{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div class="op_space_login_main"><div class="op_space_login_do" style="display:none"><div>{%$tplData.content|highlight:0%}</div><table cellspacing="0" cellpadding="0" style="margin-top:5px"><tr><td style="vertical-align:top"><div class="op_space_login_img"></div></td><td style="padding-left:15px"><div style="font-weight:bold">Hi，<span class="op_space_login_usr"></span></div><div style="color:#a2a2a2" class="op_space_login_gray">{%$tplData.hi%}</div><div style="padding-top:10px;"><a href="http://hi.baidu.com" target="_blank" class="op_space_login_btn OP_LOG_BTN"></a></div></tr></table><div style="border-top:1px solid #f4f4f4;border-bottom:1px solid #f4f4f4;padding:5px 0;margin-top:5px;width:195px"><span class="op_space_login_gray">{%$tplData.unread%}<a class="op_space_login_red op_space_login_unread" href="http://hi.baidu.com/msg/index" target="_blank"></a></span><span style="padding-left:15px" class="op_space_login_gray">{%$tplData.visit%}<a class="op_space_login_green" href="" target="_blank"></a></span></div></div><div class="op_space_login_un" style="display:none">{%if $tplData.content1!=""%}<div style="font-size:13px;marign-top:5px;">{%$tplData.content1|highlight:0%}</div>{%/if%}<div style="font-weight:bold;font-size:13px;margin:5px 0;">{%$tplData.smalltitle%}</div><form accept-charset="gb2312" target="_blank" action="{%$tplData.action%}" method="post" onsubmit="op_space_login_submit();return false;" name="op_mail" style="position:static;" class="op_space_login_formsubmit"><div class="op_space_login"><table class="op_space_login_table" cellspacing=0 cellpadding=0>{%if $tplData.select[0]['text']!=""%}<tr><td class="op_space_login_name">{%$tplData.select[0]['text']%}</td><td><select class="op_space_login_select" name="{%$tplData.select[0]['name']%}" style="height:22px;margin:0;">{%$loop_maxcount=count($tplData.option)%}{%for $op_loop_count=0 to 5%}{%if $op_loop_count<$loop_maxcount%}<option value="{%$tplData.option[$op_loop_count]['value']%}">{%$tplData.option[$op_loop_count]['text']%}</option>{%else%}{%break%}{%/if%}{%/for%}</select></td><td></td></tr>{%/if%}<tr><td class="op_space_login_name">{%$tplData.usertext%}</td><td><input autocomplete="off" class="op_space_login_username" {%if $tplData.userdefault!=""%} style="color:#ccc;" value="{%$tplData.userdefault%}" {%/if%}  type="text"></td><td>{%if $tplData.emailtail!=""%}{%$tplData.emailtail%}{%/if%}</td></tr><tr><td class="op_space_login_name">{%$tplData.passtext%}</td><td><input class="op_space_login_password"  autocomplete="off" type="password"></td><td><a class="op_space_login_fpsw op_space_login_fpsw2" href="{%$tplData.findpsw[0]['url']%}" target=_blank >{%$tplData.findpsw[0]['content']%}</a></td></tr>{%if $tplData.authenticode[0]['name']!=""%}<tr><td class="op_space_login_name">{%$tplData.authenticode[0]['text']%}</td><td><input style="width:70px;" type="text" name="{%$tplData.authenticode[0]['name']%}" value="" /><span class="op_space_login_authCodeContainer"></span></td><td><span class="op_space_login_authCodeChange"></span></td></tr>{%/if%}<tr><td></td><td colspan=2 style="vertical-align:top"><a class="op_space_login_sub OP_LOG_BTN" href="#" >{%$tplData.buttontext%}</a><input type="submit" style="height:0px;width:0px;overflow:hidden;position:absolute;display:none;*display:block;"><div style="padding-top:5px;white-space:nowrap;"><a href="{%$tplData.register[0]['url']%}" target=_blank class="op_space_login_reg" >{%$tplData.register[0]['content']%}</a></div></td></tr></table><input class="op_space_login_username_hidden" name="{%$tplData.username%}" type="hidden"><input class="op_space_login_password_hidden" name="{%$tplData.password%}" type="hidden">{%if $tplData.params[0]['para1name']!=""%}<input type=hidden name="{%$tplData.params[0]['para1name']%}" value="{%$tplData.params[0]['para1value']%}">{%/if%}{%if $tplData.params[0]['para2name']!=""%}<input type=hidden name="{%$tplData.params[0]['para2name']%}" value="{%$tplData.params[0]['para2value']%}">{%/if%}{%if $tplData.params[0]['para3name']!=""%}<input type=hidden name="{%$tplData.params[0]['para3name']%}" value="{%$tplData.params[0]['para3value']%}">{%/if%}{%if $tplData.params[0]['para4name']!=""%}<input type=hidden name="{%$tplData.params[0]['para4name']%}" value="{%$tplData.params[0]['para4value']%}">{%/if%}{%if $tplData.params[0]['para5name']!=""%}<input type=hidden name="{%$tplData.params[0]['para5name']%}" value="{%$tplData.params[0]['para5value']%}">{%/if%}{%$loop_maxcount=count($tplData.paramsadd)%}{%for $op_loop_count=0 to 9%}{%if $op_loop_count<$loop_maxcount%}<input type=hidden name="{%$tplData.paramsadd[$op_loop_count]['paramsaddname']%}" value="{%$tplData.paramsadd[$op_loop_count]['paramsaddvalue']%}">{%else%}{%break%}{%/if%}{%/for%}</div></form></div><div style="clear:both;padding-top:3px"><span class="op_space_login_showurl">{%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}</span> - </span> <a target="_blank" href="http://open.baidu.com/" class="op_LAMP">{%$FE_GBVAR.aladdin_txt%}</a></div></div>{%$FE_GBVAR.wrapper_suffix%}<script >
A.init(function() {
    var T = A.baidu, _this = this;
        {%if $tplData.select[0]['text']!=""%};

            window.setTimeout(function() {
                var s = _this.qq('op_space_login_select');
                s.onchange = set_link;
                function set_link() {
                    var i = s.selectedIndex;
                    var urls = [{%$loop_maxcount=count($tplData.option)%}{%for $op_loop_count=0 to 5%}{%if $op_loop_count<$loop_maxcount%}['{%$tplData.option[$op_loop_count]['findpsw']%}', '{%$tplData.option[$op_loop_count]['register']%}'], {%else%}{%break%}{%/if%}{%/for%}[]];
                    _this.qq('op_space_login_fpsw').href=urls[i][0];
                    _this.qq('op_space_login_reg').href=urls[i][1];
                }
                set_link();
            },1);
            
    {%/if%}
    var op_usernametail = "";
    {%if $tplData.usernametail!=""%} op_usernametail = "{%$tplData.usernametail%}"; {%/if%} 
        var submitbutton=_this.qq("op_space_login_sub");
    var submitform=_this.qq("op_space_login_formsubmit");
    function op_space_login_submit()
    {
        _this.qq("op_space_login_username_hidden").value = _this.qq("op_space_login_username").value + op_usernametail;
        _this.qq("op_space_login_password_hidden").value = _this.qq("op_space_login_password").value;
        document.op_mail.submit();
        _this.qq("op_space_login_password").value = "";
        return true;
    }
        T.event.on(submitbutton, "click", op_space_login_submit);
    T.event.on(submitform, "submit", function(){op_space_login_submit();return false;});
    function _op_shequ_clear()
    {
    var usersug = "";
    {%if $tplData.userdefault!=""%} usersug= "{%$tplData.userdefault%}"; {%/if%}
    var user = _this.qq("op_space_login_username");
    if(usersug == user.value)
    {
        user.value="";
        user.style.color="#000";
        user.focus();
    }
    }
    
    
    function _op_shequ_added()
    {
    var usersug = "";
    {%if $tplData.userdefault!=""%} usersug= "{%$tplData.userdefault%}"; {%/if%}
    var user = _this.qq("op_space_login_username");

    if(user.value=="")
    {
        user.style.color="#ccc";
        user.value = usersug;
    }
    }
    var usernamedef=_this.qq("op_space_login_username");
    T.event.on(usernamedef, "focus", _op_shequ_clear);
    T.event.on(usernamedef, "blur", _op_shequ_added)

    {%if $tplData.authenticode[0]['name']!=""%}
    
        var authCodeSrc = window.op_space_login_authCodeSrc;
        if(authCodeSrc){
            var codeContainer = _this.qq('op_space_login_authCodeContainer');
            var codeChange = _this.qq('op_space_login_authCodeChange');
            codeContainer.innerHTML = '<img class="op_space_login_authCode" style="height:22px;width:59px;border:0;vertical-align:middle;" src="'+authCodeSrc+new Date().getTime()+'" />';
            codeChange.innerHTML = '<a class="op_space_login_fpsw op_space_login_changeAuthCode" href="javascript:;">看不清，换一个</a>';
        }
        function addTimeStamp(url,param){
            if(!url) return false;
            var timeStamp = new Date().getTime();
            if(url.indexOf('?')<=0){
                return url+'?'+param+'='+ timeStamp;
            }
            var head = url.substring(0,url.indexOf('?')+1);
            var tail = url.substring(url.indexOf('?')+1 , url.length);
            var params = tail.split('&');
            for(var i=0; i < params.length ; i++){
                var p = params[i].split('=');
                if(p[0] != param){
                    continue;
                }else{
                    params[i] = p[0]+'='+timeStamp;
                }
            }
            url = head + params.join('&');
            return url;
            
        }
        var changeAuthLink = _this.qq('op_space_login_changeAuthCode');
        if(!changeAuthLink) return false;
        changeAuthLink.onclick = function(){
            var authCode =_this.qq('op_space_login_authCode');
            var src =  addTimeStamp(authCode.src , 'key');
            authCode.src = src;
            return false;
        }
    
    
        {%/if%}
        var div_un =_this.qq('op_space_login_un');
        var div_do =_this.qq('op_space_login_do');
        
        window.op_space_login_s = '';
        if(bdUser) {
            window.op_space_login_s = 'logged: ';
            _this.qq('op_space_login_usr').innerHTML = bdUser;
            div_do.style.display = "block";
            div_un.style.display = "none";

            var elm = document.createElement('SCRIPT');
            elm.src = 'http://hi.baidu.com/sys/mainpage/data/ald?bduser=' + bdUser;
            document.getElementsByTagName('HEAD')[0].appendChild(elm);
        } else {
            window.op_space_login_s = 'not logged: ';
            div_do.style.display = "none";
            div_un.style.display = "block";
        }
        

    
    function op_space_cb(json){
        if(json.visit.length==0) {
            _this.qq('op_space_login_do').style.display = "none";
            _this.qq('op_space_login_un').style.display = "block";
        } else {
            _this.qq('op_space_login_unread').innerHTML = json.unread;
            _this.qq('op_space_login_green').innerHTML = json.visit;
            _this.qq('op_space_login_green').href = 'http://hi.baidu.com/sys/checkuser/' + bdUser + '/ihome/referstat';
            _this.qq('op_space_login_img').innerHTML = '<img src="'+ json.icon +'" class="op_space_login_icon"></img>';
        }

    }
})
</script>{%/block%}