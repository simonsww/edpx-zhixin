{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$tplData.showgw=true%}{%$extData.feData.hasBorder=true%}{%/block%}{%block name='content'%}<style data-merge>{%fe_fn_c_css css="input"%}{%fe_fn_c_css css="btn"%}.op_email3_header{text-align:right;color:#666;float:right}.op_email3_table td{padding-bottom:10px;font-size:1em}.op_email3_last_row td{padding-bottom:0}.op_email3_first_col{padding-right:10px}.op_email3 td{font-size:1em;padding-left:5px;height:28px}.op_email3_link{color:#666}.op_email3_name{color:#666;padding-right:10px}.op_email3_last_row{padding-left:10px}.op_email3_label{position:relative;top:-2px}.op_email3_radio{_position:relative;_top:-1px}.op_email3_table span.c-input input{margin-left:5p{%*i*%}x;width:155px}.op_email3_table span.c-input .c-icon-left{margin-right:0;border-right:1px solid #d8d8d8;padding-right:3px}.op_email3_table label{margin-right:10px;float:left}.op_email3_padding_left{padding-left:10px}</style><div> <script >var op_email3_authCodeSrc = '{%if $tplData.authenticode[0]['name']%}{%$tplData.authenticode[0]['src']|escape:'html'%}{%/if%}'; </script> {%if $tplData.content1%}<div style="font-size:1em;marign-top:5px;">{%$tplData.content1|highlight:0%}</div>{%/if%} <form target="_blank" autocomplete="off" action="{%$tplData.action|escape:'html'%}" method="post"
        name="op_mail" class="op_mail" style="position:static;" accept-charset="gb2312" > <table class="op_email3_table" cellspacing="0" cellpadding="0"> {%if $tplData.select[0]['text']%} <tr> <td class="op_email3_name">{%$tplData.select[0]['text']|escape:'html'%}</td> <td colspan="2"> {%foreach $tplData.option as $option%} <label> <input type="radio" name="{%$tplData.select[0]['name']|escape:'html'%}" 
                            class="op_email3_radio"
                            {%if $option@first%}checked{%/if%}
                            data-index="{%$option@index - 1%}"
                            value="{%$option['value']|escape:'html'%}"/><span class="op_email3_label">{%$option['text']|escape:'html'%}</span> </label> {%/foreach%} </td> </tr> {%/if%} <tr> <td class="op_email3_name">{%$tplData.usertext|escape:'html'%}</td> <td> <span class="c-input"> <span class="c-icon c-icon-left c-icon-user"></span> <input id="op_email3_username" class="op_email3_username" {%if $tplData.userdefault%} 
                        style="color:#ccc;" value="{%$tplData.userdefault|escape:'html'%}" {%/if%}  type="text" /> </span> </td> <td class="op_email3_padding_left">{%if $tplData.emailtail%}{%$tplData.emailtail|escape:'html'%}{%/if%}</td> </tr> <tr> <td class="op_email3_name">{%$tplData.passtext|escape:'html'%}</td> <td> <span class="c-input"> <span class="c-icon c-icon-left c-icon-lock"></span> <input class="op_email3_password" type="password" /> </span> </td> <td class="op_email3_padding_left"> <a class="op_email3_fpsw op_email3_link" 
                        href="{%$tplData.findpsw[0]['url']|escape:'html'%}" target=_blank >{%$tplData.findpsw[0]['content']|escape:'html'%}</a> </td> </tr> {%if $tplData.authenticode[0]['name']%} <tr> <td class="op_email3_name">{%$tplData.authenticode[0]['text']|escape:'html'%}</td> <td><input style="width:58px;" class="c-input c-gap-right" type="text" name="{%$tplData.authenticode[0]['name']|escape:'html'%}" value="" /> <span class="op_email3_authCodeContainer"></span> </td> <td class="op_email3_padding_left"> <span class="op_email3_authCodeChange"></span> </td> </tr> {%/if%} <tr class="op_email3_last_row"> <td></td> <td colspan="2" style="vertical-align:top;padding-left:0;"> <a class="c-btn c-btn-large c-btn-primary c-gap-right op_email3_submit OP_LOG_BTN" href="#" onclick="return false;">{%$tplData.buttontext|escape:'html'%}</a> <input type="submit" style="height:0px;width:0px;overflow:hidden;position:absolute;opacity:0;filter:alpha(opacity=0);*display:block;"> <a href="{%$tplData.register[0]['url']|escape:'html'%}" target=_blank
                        class="op_email3_reg OP_LOG_BTN">{%$tplData.register[0]['content']|escape:'html'%}</a> </td> </tr> </table> <input class="op_email3_username_hidden" name="{%$tplData.username|escape:'html'%}" type="hidden"> <input class="op_email3_password_hidden" name="{%$tplData.password|escape:'html'%}" type="hidden"> {%if $tplData.params[0]['para1name']%} <input type=hidden name="{%$tplData.params[0]['para1name']|escape:'html'%}" value="{%$tplData.params[0]['para1value']|escape:'html'%}"> {%/if%} {%if $tplData.params[0]['para2name']%} <input type=hidden name="{%$tplData.params[0]['para2name']|escape:'html'%}" value="{%$tplData.params[0]['para2value']|escape:'html'%}"> {%/if%} {%if $tplData.params[0]['para3name']%} <input type=hidden name="{%$tplData.params[0]['para3name']|escape:'html'%}" value="{%$tplData.params[0]['para3value']|escape:'html'%}"> {%/if%} {%if $tplData.params[0]['para4name']%} <input type=hidden name="{%$tplData.params[0]['para4name']|escape:'html'%}" value="{%$tplData.params[0]['para4value']|escape:'html'%}"> {%/if%} {%if $tplData.params[0]['para5name']%} <input type=hidden name="{%$tplData.params[0]['para5name']|escape:'html'%}" value="{%$tplData.params[0]['para5value']|escape:'html'%}"> {%/if%} {%$loop_maxcount=count($tplData.paramsadd)%}{%for $op_loop_count=0 to 9%}{%if $op_loop_count<$loop_maxcount%} <input type=hidden name="{%$tplData.paramsadd[$op_loop_count]['paramsaddname']|escape:'html'%}" value="{%$tplData.paramsadd[$op_loop_count]['paramsaddvalue']|escape:'html'%}"> {%else%}{%break%}{%/if%}{%/for%} </form></div>{%if $tplData.select[0]['text']%}<script type="text/javascript" >
    A.setup({
        urls: [{%foreach $tplData.option as $option%}['{%$option['findpsw']|escape:'javascript'%}', '{%$option['register']|escape:'javascript'%}'],{%/foreach%}[]]
    });
</script><script data-merge>A.setup(function(){var _this = this;var urls = _this.data.urls;var $radios = _this.find('.op_email3_radio'); $radios.each(function(i,r){$(r).click(function(){_this.find('.op_email3_fpsw')[0].href=urls[i][0];_this.find('.op_email3_reg')[0].href=urls[i][1];}).change(function(){_this.find('.op_email3_fpsw')[0].href=urls[i][0];_this.find('.op_email3_reg')[0].href=urls[i][1]; });});});</script>{%/if%}<script >
    A.setup(function() {
      var T = A.baidu, _this = this;
      var user = _this.find('.op_email3_username')[0];
      var op_usernametail = '';
      var submenu = _this.find('.op_email3_submit')[0];
      var $formsub = _this.find('.op_mail');
      $(submenu) .click(function(){
          _this.find('.op_email3_username_hidden')[0].value = user.value + op_usernametail;
          _this.find('.op_email3_password_hidden')[0].value = _this.find('.op_email3_password')[0].value;
          document.op_mail.submit();
          _this.find('.op_email3_password')[0].value = ''; 
      });       
      $formsub.submit(function(){
          _this.find('.op_email3_username_hidden')[0].value = user.value + op_usernametail;
          _this.find('.op_email3_password_hidden')[0].value = _this.find('.op_email3_password')[0].value;
          _this.find('.op_email3_password')[0].value = '';            
      });  
      // 模拟发点击LOG，触发元素的 mousedown 事件，因为发 LOG 的事件是绑在父元素的 mousedown 中的      
      $formsub.keydown(function(e){
          var evt = e || window.event;
          if ( e.keyCode == '13' ) {
              if ( submenu.fireEvent ) {
                  submenu.fireEvent( 'onmousedown' );
              } else {
                  evt = document.createEvent( 'HTMLEvents' );
                  evt.initEvent( 'mousedown', true, true );
                  submenu.dispatchEvent( evt );
              }
          }            
     });  
{%if $tplData.usernametail%} op_usernametail = '{%$tplData.usernametail|escape:'html'%}'; {%/if%};

     $(user).focus(function(){
         var usersug = '';
         {%if $tplData.userdefault%} usersug = '{%$tplData.userdefault|escape:'html'%}'; {%/if%};    
         if (usersug == user.value)
         {
             user.value = '';
             user.style.color = '#000';
             user.focus();
         }
     
     }); 
{%if $tplData.userdefault%};
    $(user).blur(function(){
        var usersug = '';
        usersug = '{%$tplData.userdefault|escape:'html'%}';
        if (user.value == '')
        {
            user.style.color = '#ccc';
            user.value = usersug;
        }     
    });
{%/if%};
(function()
{
    var authCodeSrc = window.op_email3_authCodeSrc;
    if (authCodeSrc) {
        var codeContainer = _this.find('.op_email3_authCodeContainer')[0];
        var codeChange = _this.find('.op_email3_authCodeChange')[0];
        codeContainer.innerHTML = '<img id="op_email3_authCode" style="height:22px;width:59px;border:0;vertical-align:middle;" src="' + authCodeSrc + new Date().getTime() + '" />';
        codeChange.innerHTML = '<a class="op_email3_link" id="op_email3_changeAuthCode" href="javascript:;">看不清，换一个</a>';
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
    var changeAuthLink = G('op_email3_changeAuthCode');
    if (!changeAuthLink) return false;
    changeAuthLink.onclick = function() {
        var authCode = G('op_email3_authCode');
        var src = addTimeStamp(authCode.src, 'key');
        authCode.src = src+new Date().getTime();
        return false;
    }
})();
});
</script>{%/block%}