{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%if $tplData.content1!=""%}<div style="font-size:13px;margin-top:5px;font-weight:bold;">{%$tplData.content1%}</div>{%/if%}<style >.op_chengyu_sug_key{color:#c60a00}.op_chengyu_sub{width:81px;height:24px;background:url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat -100px 0;float:left;text-align:center;line-height:24px;color:#000;text-decoration:none;margin:0 0 0 5px;cursor:pointer}#op_email3_sub:hover,#op_email3_sub:active,#op_email3_sub:focus{background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat 0 0}</style><form name="chengyuform" target=_blank method="get" accept-charset="gb23{%*i*%}12" action="{%$tplData.form[0]['action']%}"> <table cellspacing="0" style="margin-top:5px;"> <tr> <td> <input type="text" style="font-size:13px;width:{%$tplData.form[0]['width']%}px;color:#ccc;height:22px;*height:18px;line-height:18px;" name="{%$tplData.form[0]['name']%}" value="{%$tplData.default%}" {%if $tplData.default!=""%}value="{%$tplData.default%}"{%/if%} class="op_clear op_chengyu_input"/> </td> <td> <a class="op_chengyu_sub" href="#" class="OP_LOG_BTN">查询</a> </td> </tr> </table> <div> <table cellspacing="0" cellpadding="0"><tr><td><font color=#008000 size="-1" style="line-height:190%;">{%$tplData.showurl%}</font>{%if $tplData.showlamp!=""%} - <a target="_blank" href="http://open.baidu.com/"  class="op_LAMP" >{%$FE_GBVAR.aladdin_txt%}</a>{%/if%}{%fe_fn_likeshare%}</td></tr></table> </div></form><script >
A.init(function() {
    var T = A.baidu, _this = this;
    var op_clear = _this.qq('op_chengyu_input');
    var op_submit = _this.qq('op_chengyu_sub');
    var op_chengyu_input = op_clear;
    
    {%if $tplData.default!=""%};
    op_clear.onfocus = function() {
        var usersug = '';
        op_chengyu_sug = '{%$tplData.default%}';
        if (op_chengyu_sug == op_chengyu_input.value)
        {
            op_chengyu_input.value = '';
            op_chengyu_input.style.color = '#000';
            op_chengyu_input.focus();
        }
    };
    {%/if%};
    op_clear.onblur = function() {
        var usersug = '';
        {%if $tplData.default!=""%} op_chengyu_sug = '{%$tplData.default%}'; {%/if%};
    
        if (op_chengyu_input.value == '')
        {
            op_chengyu_input.style.color = '#ccc';
            op_chengyu_input.value = op_chengyu_sug;
        }
    };
         
    op_submit.onclick = function() {
        {%if $tplData.default!=""%} op_chengyu_sug = '{%$tplData.default%}'; {%/if%};
        if (op_chengyu_input.value && op_chengyu_input.value != op_chengyu_sug) {
        document.chengyuform.submit();
        }else {
            window.open('http://dict.baidu.com');
        }
    };
    
    
    var serverData = {};
    var isie6 = (document.all) && (/MSIE 6.0/ig.test(navigator.appVersion));
    var chengyu_sug_url = 'http://dictsug.baidu.com/su';

    T.dom.ready(function(){
         A.use('suggestion',function(){
        var options = {
            getData: function (C) {
                var A = chengyu_sug_url + "?wd=" + encodeURIComponent(C) + "&p=3&t=" + (new Date()).getTime() + "&cb=op_chengyu_pushSugData";
                var B = (new Date()).getTime();
                var E = baidu.G("bdSug_chengyu_script");
                if (E) {
                    document.body.removeChild(E)
                }
                var F = document.createElement("script");
                F.src = A;
                F.charset = "gb2312";
                F.id = "bdSug_chengyu_script";
                document.body.appendChild(F);
                var D = C
            }
        };
         
        var sg=A.ui.suggestion(options);
        sg.render(op_chengyu_input);
         
        window.op_chengyu_pushSugData=function(L) {
            var F = L.q;
            var M = L.s;
            var K;
            var B = [];
            for (var E = 0; E < M.length; E++) {
                var N = M[E];
                K = M;
                var H = K[E];
                var J = [];
                var G = "";
                for (var D = 0; D < K.length; D++) {
                    var A = "<span class='op_chengyu_sug_key'>" + F + "</span>";
                    J.push(K[D].toString().replace(new RegExp(F, "i"), function (O) {
                        return "<span class='op_chengyu_sug_key'>" + O + "</span>"
                    }))
                }
                G += "<span class='op_chengyu_fixedwidth' style='width:90px;float:left;text-indent:5px;'>" + J[E] + "</span>";
                B.push({value: H,content: G});
            }
            var C = "";
            sg.show(C, B);
            if (B.length > 0) {
                sg.highLight(0);
            }
        };
     });
        });

});
</script>{%$FE_GBVAR.wrapper_suffix%}{%/block%}