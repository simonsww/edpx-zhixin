{%extends 'base.tpl'%} {%block name='content'%}<style >.op_ipush_email3{width:345px}.op_ipush_email3 td{font-size:13px;padding-left:5px;height:28px}#op_ipush_email3_sub{width:81px;height:24px;background:url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat -100px 0;float:left;text-align:center;line-height:24px;color:#000;text-decoration:none;margin:5px 5px 0 0;cursor:pointer}#op_ipush_email3_sub:hover,#op_ipush_email3_sub:active,#op_ipush_email3_sub:focus{background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat}{%*i*%}.op_ipush_email3 #op_ipush_email3_table .op_ipush_email3_fpsw{color:#666;font-size:12px}.op_ipush_email3 #op_ipush_email3_table .op_ipush_email3_reg{font-size:12px;margin-left:5px}.op_ipush_email3 #op_ipush_email3_table input{width:150px;height:22px;*height:18px;padding-top:1px}.op_ipush_email3 .op_ipush_email3_name{color:#666;padding-left:0}.op_ipush_superson_table{margin-top:5px;width:540px}.op_ipush_superson_img{border:1px solid #ccc;width:78px;height:78px;display:inline-block;overflow:hidden{%*i*%}}.op_ipush_superson_summary{font-weight:normal;color:#a2a2a2;padding-left:8px}.op_ipush_superson_name{font-weight:bold}.op_ipush_superson_info_p{vertical-align:middle}.op_ipush_superson_info_p span{display:inline-block}.op_superon_info_a{margin-right:13px;font-size:12px}a.op_ipush_superson_btn{margin-right:20px;text-decoration:none;color:#000;font-size:13px;float:left}a.op_ipush_superson_btn div{background:url(http://www.baidu.com/aladdin/img/hangban/hangban.btn.gif) 0 -48px repeat-x;line-height{%*i*%}:24px;height:24px;cursor:pointer;float:left;z-index:1}a.op_ipush_superson_btn div div{background:url(http://www.baidu.com/aladdin/img/hangban/hangban.btn.gif) 0 0 no-repeat}a.op_ipush_superson_btn div div div{background:url(http://www.baidu.com/aladdin/img/hangban/hangban.btn.gif) right -24px no-repeat;padding:0 10px;white-space:nowrap;text-align:center}a.op_ipush_superson_btn:hover,a.op_ipush_superson_btn:focus{border:0}a.op_ipush_superson_btn:hover div,a.op_ipush_superson_btn:focus div{backgro{%*i*%}und:url(http://www.baidu.com/aladdin/img/hangban/hangban.btn.gif) 0 -96px repeat-x;border:0}a.op_ipush_superson_btn:hover div div,a.op_ipush_superson_btn:focus div div{background:url(http://www.baidu.com/aladdin/img/hangban/hangban.btn.gif) 0 -72px no-repeat}a.op_ipush_superson_btn:hover div div div,a.op_ipush_superson_btn:focus div div div{background:url(http://www.baidu.com/aladdin/img/hangban/hangban.btn.gif) right -120px no-repeat}.op_ipush_superson_sumcont{display:none;margin-top:2px}</styl{%*i*%}e>{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<script >var op_ipush_email3_authCodeSrc = '{%if $tplData.authenticode[0]['name']%}{%$tplData.authenticode[0]['src']|escape:'html'%}{%/if%}';
</script><div class="op_ipush_nologin" style="display:none">{%if $tplData.content1%}<div style="font-size:13px;marign-top:5px;">{%$tplData.content1|highlight:0%}</div>{%/if%}<div style="font-weight:bold;font-size:13px;margin:5px 0;">{%$tplData.smalltitle|escape:'html'%}</div><form target="_blank" action="{%$tplData.action|escape:'html'%}" method="post" name="op_mail" class="op_mail" style="position:static;" accept-charset="gb2312" ><div class="op_ipush_email3"><table id="op_ipush_email3_table" cellspacing="0" cellpadding="0">{%if $tplData.select[0]['text']%}<tr><td class="op_ipush_email3_name">{%$tplData.select[0]['text']|escape:'html'%}</td><td><select id="op_ipush_email3_select" name="{%$tplData.select[0]['name']|escape:'html'%}" style="height:22px;margin:0;">{%$loop_maxcount=count($tplData.option)%}{%for $op_loop_count=0 to 5%}{%if $op_loop_count<$loop_maxcount%}<option value="{%$tplData.option[$op_loop_count]['value']|escape:'html'%}">{%$tplData.option[$op_loop_count]['text']|escape:'html'%}</option>{%else%}{%break%}{%/if%}{%/for%}</select></td><td></td></tr>{%/if%}<tr><td class="op_ipush_email3_name">{%$tplData.usertext|escape:'html'%}</td><td><input autocomplete="off" id="op_ipush_email3_username" class="op_ipush_email3_username" {%if $tplData.userdefault%} style="color:#ccc;" value="{%$tplData.userdefault|escape:'html'%}" {%/if%}  type="text"></td><td>{%if $tplData.emailtail%}{%$tplData.emailtail|escape:'html'%}{%/if%}</td></tr><tr><td class="op_ipush_email3_name">{%$tplData.passtext|escape:'html'%}</td><td><input class="op_ipush_email3_password"  autocomplete="off" type="password"></td><td><a id="op_ipush_email3_fpsw" class="op_ipush_email3_fpsw" href="{%$tplData.findpsw[0]['url']|escape:'html'%}" target=_blank >{%$tplData.findpsw[0]['content']|escape:'html'%}</a></td></tr>{%if $tplData.authenticode[0]['name']%}<tr><td class="op_ipush_email3_name">{%$tplData.authenticode[0]['text']|escape:'html'%}</td><td><input style="width:70px;" type="text" name="{%$tplData.authenticode[0]['name']|escape:'html'%}" value="" /><span id="op_ipush_email3_authCodeContainer"></span></td><td><span id="op_ipush_email3_authCodeChange"></span></td></tr>{%/if%}<tr><td></td><td colspan=2 style="vertical-align:top"><a id="op_ipush_email3_sub" href="#" onclick="return false;"  class="OP_LOG_BTN">{%$tplData.buttontext|escape:'html'%}</a><input type="submit" style="height:0px;width:0px;overflow:hidden;position:absolute;display:none;*display:block;"><div style="padding-top:5px;white-space:nowrap;"><a href="{%$tplData.register[0]['url']|escape:'html'%}" target=_blank class="op_ipush_email3_reg OP_LOG_BTN" id="op_ipush_email3_reg">{%$tplData.register[0]['content']|escape:'html'%}</a></div></td></tr></table>{%if $tplData.select[0]['text']%}<script type="text/javascript" >
var ipushTimer = window.setTimeout(function() {
    var s = G('op_ipush_email3_select');
    s.onchange = set_link;
    function set_link() {
        var i = s.selectedIndex;
        var urls = [{%$loop_maxcount=count($tplData.option)%}{%for $op_loop_count=0 to 5%}{%if $op_loop_count<$loop_maxcount%}['{%$tplData.option[$op_loop_count]['findpsw']|escape:'html'%}', '{%$tplData.option[$op_loop_count]['register']|escape:'html'%}'], {%else%}{%break%}{%/if%}{%/for%}[]];
        G('op_ipush_email3_fpsw').href=urls[i][0];
        G('op_ipush_email3_reg').href=urls[i][1];
    }
    set_link();
},1);
</script>{%/if%}<input class="op_ipush_email3_username_hidden" name="{%$tplData.username|escape:'html'%}" type="hidden"><input class="op_ipush_email3_password_hidden" name="{%$tplData.password|escape:'html'%}" type="hidden">{%if $tplData.params[0]['para1name']%}<input type=hidden name="{%$tplData.params[0]['para1name']|escape:'html'%}" value="{%$tplData.params[0]['para1value']|escape:'html'%}">{%/if%}{%if $tplData.params[0]['para2name']%}<input type=hidden name="{%$tplData.params[0]['para2name']|escape:'html'%}" value="{%$tplData.params[0]['para2value']|escape:'html'%}">{%/if%}{%if $tplData.params[0]['para3name']%}<input type=hidden name="{%$tplData.params[0]['para3name']|escape:'html'%}" value="{%$tplData.params[0]['para3value']|escape:'html'%}">{%/if%}{%if $tplData.params[0]['para4name']%}<input type=hidden name="{%$tplData.params[0]['para4name']|escape:'html'%}" value="{%$tplData.params[0]['para4value']|escape:'html'%}">{%/if%}{%if $tplData.params[0]['para5name']%}<input type=hidden name="{%$tplData.params[0]['para5name']|escape:'html'%}" value="{%$tplData.params[0]['para5value']|escape:'html'%}">{%/if%}{%$loop_maxcount=count($tplData.paramsadd)%}{%for $op_loop_count=0 to 9%}{%if $op_loop_count<$loop_maxcount%}<input type=hidden name="{%$tplData.paramsadd[$op_loop_count]['paramsaddname']|escape:'html'%}" value="{%$tplData.paramsadd[$op_loop_count]['paramsaddvalue']|escape:'html'%}">{%else%}{%break%}{%/if%}{%/for%}</div></form></div><script >
A.init(function() {
var T = A.baidu, _this = this;
var user = _this.qq('op_ipush_email3_username');
var op_usernametail = '';
var submenu = _this.qq('OP_LOG_BTN');
var formsub = _this.qq('op_mail');
T.event.on(submenu, 'click', function() {_this.qq('op_ipush_email3_username_hidden').value = user.value + op_usernametail;
    _this.qq('op_ipush_email3_password_hidden').value = _this.qq('op_ipush_email3_password').value;
    document.op_mail.submit();
    _this.qq('op_ipush_email3_password').value = '';
    return true;});
T.event.on(formsub, 'submit', function() {_this.qq('op_ipush_email3_username_hidden').value = user.value + op_usernametail;
    _this.qq('op_ipush_email3_password_hidden').value = _this.qq('op_ipush_email3_password').value;
    document.op_mail.submit();
    _this.qq('op_ipush_email3_password').value = '';
    return false;});
function _aMC(o) { var t = o, i = -1; while (t = t.parentNode) { i = parseInt(t.getAttribute('id')); if (i > 0) return i; } }
{%if $tplData.usernametail%} op_usernametail = '{%$tplData.usernametail|escape:'html'%}'; {%/if%};
T.event.on(user, 'focus', function() {
var usersug = '';
{%if $tplData.userdefault%} usersug = '{%$tplData.userdefault|escape:'html'%}'; {%/if%};

if (usersug == user.value)
{
    user.value = '';
    user.style.color = '#000';
    user.focus();
}});
{%if $tplData.userdefault%};

T.event.on(user, 'blur', function() {
var usersug = '';
usersug = '{%$tplData.userdefault|escape:'html'%}';
if (user.value == '')
{
    user.style.color = '#ccc';
    user.value = usersug;
}});

{%/if%};
(function(){
    var authCodeSrc = window.op_ipush_email3_authCodeSrc;
    if (authCodeSrc) {
        var codeContainer = G('op_ipush_email3_authCodeContainer');
        var codeChange = G('op_ipush_email3_authCodeChange');
        codeContainer.innerHTML = '<img id="op_ipush_email3_authCode" style="height:22px;width:59px;border:0;vertical-align:middle;" src="' + authCodeSrc + new Date().getTime() + '" />';
        codeChange.innerHTML = '<a class="op_ipush_email3_fpsw" id="op_ipush_email3_changeAuthCode" href="javascript:;">看不清，换一个</a>';
    }
    function addTimeStamp(url,param) {
        if (!url) return false;
        var timeStamp = new Date().getTime();
        if (url.indexOf('?') <= 0) {
            return url + '?' + param + '=' + timeStamp;
        }
        var head = url.substring(0, url.indexOf('?') + 1);
        var tail = url.substring(url.indexOf('?') + 1 , url.length);
        var params = tail.split('&');
        for (var i = 0; i < params.length; i++) {
            var p = params[i].split('=');
            if (p[0] != param) {
                continue;
            }else {
                params[i] = p[0] + '=' + timeStamp;
            }
        }
        url = head + params.join('&');
        return url;

    }
    var changeAuthLink = G('op_ipush_email3_changeAuthCode');
    if (!changeAuthLink) return false;
    changeAuthLink.onclick = function() {
        var authCode = G('op_ipush_email3_authCode');
        var src = addTimeStamp(authCode.src, 'key');
        authCode.src = src;
        return false;
    }
})();
});
</script> <font size="-1" class="op_ipush_logined" style="display:none"> <table class="op_ipush_superson_table" cellspacing="0" cellpadding="0" border="0"> <tr> <td style="width:80px"><img class="op_ipush_superson_img" src="http://www.baidu.com/aladdin/img/superson/default.jpg"></img></td> <td style="padding-left:8px;"> <table  cellspacing="0" cellpadding="0" border="0" style="height:80px"> <tr> <td><span class="op_ipush_superson_name">Hi,</span><span class="op_ipush_superson_summary">{%$tplData.summary|escape:'html'%}<span></td> </tr> <tr> <td><p class="op_ipush_superson_info_p"></p></td> </tr> <tr> <td> <a class="op_ipush_superson_btn OP_LOG_BTN" href="{%$tplData.btnurl%}"  target="_blank"> <div> <div> <div>{%$tplData.btncont|escape:'html'%}</div> </div> </div> </a> </td> </tr> </table> </td> </tr></table></font><div style="font-size:13px">{%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}</div><script>A.init(function() {var T = A.baidu,_this = this,srcUrl = '["{%$tplData.srcurl|escape:'html'%}"]',img = _this.qq('op_ipush_superson_img'),name = _this.qq('op_ipush_superson_name'),infoP = _this.qq('op_ipush_superson_info_p');name.innerHTML = 'Hi, ' + bdUser;var ajaxFinished = false;var imgUrl = 'http://hi.baidu.com/sys/mainpage/data/ald?bduser=#{0}';var fn1 = function(data) {if(ajaxFinished) return;if (data.icon.indexOf('/.jpg') == -1) {img.src = data.icon;}};T.sio.callByServer(T.format(imgUrl, encodeURIComponent(bdUser)), fn1, {queryField: 'callback'});var infoUrl = '{%$tplData.interfaceurl|escape:'html'%}?url=#{0}';var fn2 = function(data) {if(ajaxFinished) return;if (data.errno == 0) {if (data.receivedUserDetailMsg[0].isbinded == 1) {if (data.receivedUserDetailMsg[0].rebinded == 0) {var info = data.receivedUserDetailMsg[0].msgDetail;if (data.receivedUserDetailMsg[0].number == 0) {var span = document.createElement('span');span.innerHTML = '您暂时没有新的消息';infoP.appendChild(span);return;}var length = info.length;infoP.innerHTML = '';for (var i = 0; i < length; i++) {var span = document.createElement('{%*i*%}span');span.innerHTML = info[i].type + '：';infoP.appendChild(span);var a = document.createElement('a');a.href = info[i].unreadurl;a.target = '_blank';a.innerHTML = info[i].number;a.className = 'op_superon_info_a';span.appendChild(a);}} else {var span = document.createElement('span');span.innerHTML = '您的邮箱密码已变更，';infoP.appendChild(span);var a = document.createElement('a');a.href = 'http://www.baidu.com/home/page/show/setting?tab=msg#msg';a.target = '_blank';a.innerHTML = '点击重新绑定';a.className = 'o{%*i*%}p_superon_info_a';span.appendChild(a);}} else {var span = document.createElement('span');span.innerHTML = '您的账号未绑定，';infoP.appendChild(span);var a = document.createElement('a');a.href = 'http://www.baidu.com/home/page/show/setting?tab=msg#msg';a.target = '_blank';a.innerHTML = '点击绑定';a.className = 'op_superon_info_a';span.appendChild(a);}} else {var span = document.createElement('span');span.innerHTML = '信息查询错误';infoP.appendChild(span);}};T.sio.callByServer(T.format(infoUrl, encodeURIComponent(s{%*i*%}rcUrl)), fn2, {queryField: 'cb', charset: 'gb2312'});this.dispose = function(){window.clearTimeout(ipushTimer);if(!ajaxFinished){ajaxFinished = true;}};});</script><script>A.init(function(){if(window.bdUser){this.qq("op_ipush_logined").style.display="";}else{this.qq("op_ipush_nologin").style.display=""; }});</script>{%$FE_GBVAR.wrapper_suffix%}{%/block%}