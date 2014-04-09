{%extends 'base.tpl'%} {%block name='content'%}<style >.op_map_form{margin-top:5px}.op_map_form{position:static;z-index:0}.op_map_form td{height:24px;font-size:13px;vertical-align:middle}.op_map_form td.op_map_subtitle{font-family:simsun;width:66px}.op_map_form td.op_map_arrow{width:20px;text-align:center}.op_map_form td input{height:22px;*height:18px;width:140px;line-height:18px;padding:0 0 0 1px}.op_map_form td .op_map_tips{color:#acacac}.op_map_form td a{background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat -10{%*i*%}0px 0;color:black;width:81px;height:24px;display:block;line-height:24px;margin-left:10px;text-align:center;text-decoration:none}.op_map_form td a:hover{background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat}.op_map_form .op_map_submit{width:0;height:0;overflow:hidden;position:absolute;top:-1000px}.op_map_showurl{font-size:13px}.op_map_icon img{width:140px;height:95px;border:1px solid #7493e5;margin:0 10px 0 0}.op_map_arrow span{background:url(http://www.baidu.com/aladd{%*i*%}in/img/traintimetable03/1.png) no-repeat left -23px;font-size:17px;padding-left:13px}</style>{%if $tplData.mapimg[0]['link']!=""%}<style >.op_map_form td input{width:94px;*width:91px}</style>{%/if%}{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%if $tplData.minititle!=""%}<div style="color:#333;font-size:13px;margin:3px 0;">{%$tplData.minititle|highlight:0%}</div>{%/if%} <div class="op_map_main"><table cellspacing="0" cellpadding="0"><tr>{%if $tplData.mapimg[0]['link']!=""%}<td style="width:97px"><a class="op_map_icon" href="{%$tplData.mapimg[0]['link']%}" target="_blank"><img src="{%$tplData.mapimg[0]['address']%}"/></a></td>{%/if%}<td><form class="op_map_form" action="{%$tplData.query1[0]['action']%}" method="{%$tplData.query1[0]['method']%}" target="_blank"><table cellpadding="0" cellspacing="3"><tbody><tr><td class="op_map_subtitle">{%$tplData.query1[0]['queryname']%}:</td><td><input type="text" class="op_map_tips" style="width:306px;*width:312px;{%if $tplData.mapimg[0]['link']!=""%}width:214px;*width:213px;{%/if%}" name="{%$tplData.query1[0]['name']%}" value="" tip="{%$tplData.query1[0]['tip']%}"></td><td><a href="javascript:void(0);" class="OP_LOG_BTN">{%$tplData.query1[0]['btn']%}</a></td></tr></tbody></table>{%if $tplData.commonhiddename[0]['name']!=""%}<input type="hidden" name="{%$tplData.commonhiddename[0]['name']%}" value="{%$tplData.commonhiddename[0]['val']%}">{%/if%}</form><form class="op_map_form" action="{%$tplData.query2[0]['action']%}" method="{%$tplData.query2[0]['method']%}" target="_blank"><table cellpadding="0" cellspacing="3"><tbody><tr><td class="op_map_subtitle">{%$tplData.query2[0]['queryname']%}:</td><td><input type="text" class="op_map_tips" name="{%$tplData.query2[0]['name1']%}" value="" tip="{%$tplData.query2[0]['tip1']%}"></td><td class="op_map_arrow"><span>&nbsp;</span></td><td><input type="text" class="op_map_tips" name="{%$tplData.query2[0]['name2']%}" value="" tip="{%$tplData.query2[0]['tip2']%}"></td><td><a href="javascript:void(0);" class="OP_LOG_BTN">{%$tplData.query2[0]['btn']%}</a></td></tr></tbody></table>{%if $tplData.commonhiddename[0]['name']!=""%}<input type="hidden" name="{%$tplData.commonhiddename[0]['name']%}" value="{%$tplData.commonhiddename[0]['val']%}">{%/if%}{%if $tplData.query2hiddename[0]['name']!=""%}<input type="hidden" name="{%$tplData.query2hiddename[0]['name']%}" value="{%$tplData.query2hiddename[0]['val']%}">{%/if%}<input class="op_map_submit" type="submit"></form><form class="op_map_form" action="{%$tplData.query3[0]['action']%}" method="{%$tplData.query3[0]['method']%}" target="_blank"><table cellpadding="0" cellspacing="3"><tbody><tr><td class="op_map_subtitle">{%$tplData.query3[0]['queryname']%}:</td><td><input type="text" class="op_map_tips" name="{%$tplData.query3[0]['name1']%}" value="" tip="{%$tplData.query3[0]['tip1']%}"></td><td class="op_map_arrow"><span>&nbsp;</span></td><td><input type="text" class="op_map_tips" name="{%$tplData.query3[0]['name2']%}" value="" tip="{%$tplData.query3[0]['tip2']%}"></td><td><a href="javascript:void(0);" class="OP_LOG_BTN">{%$tplData.query3[0]['btn']%}</a></td></tr></tbody></table>{%if $tplData.commonhiddename[0]['name']!=""%}<input type="hidden" name="{%$tplData.commonhiddename[0]['name']%}" value="{%$tplData.commonhiddename[0]['val']%}">{%/if%}{%if $tplData.query3hiddename[0]['name']!=""%}<input type="hidden" name="{%$tplData.query3hiddename[0]['name']%}" value="{%$tplData.query3hiddename[0]['val']%}">{%/if%}<input class="op_map_submit" type="submit"></form></td></tr></table> </div> <div class="op_map_showurl">{%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}</div>{%$FE_GBVAR.wrapper_suffix%}<script >
A.init(function()
{
    var baidu = A.baidu,
        _this = this,
        container = _this.qq('op_map_main'),
        forms = container.getElementsByTagName('form'),
        inputs = container.getElementsByTagName('input');

    // bind focus and blur event handle for input element
    baidu.each(inputs, function(e, i)
    {
        if (e.type === 'text')
        {
            var tip = e.getAttribute('tip');
            e.value = tip;

            baidu.event.on(e, 'focus', function(ev)
            {
                if (this.value === tip)
                {
                    this.value = '';
                    this.className = '';
                }
            });
            baidu.event.on(e, 'blur', function(ev)
            {
                if (this.value === '')
                {
                    this.value = tip;
                    this.className = 'op_map_tips';
                }
            });
        }
    });

    // function: check a form can submit
    function checkform(form)
    {
        var inputs = form.getElementsByTagName('input');
        for (var i = 0, L = inputs.length; i < L; i++)
        {
            var x = inputs[i];
            if (x.type === 'text' && x.value === x.getAttribute('tip'))
            {
                x.value = '';
            }
        }
        return true;
        /*
        var inputs = form.getElementsByTagName("input");
        for(var i = 0, L = inputs.length; i < L; i++)
        {
            var x = inputs[i];
            if(x.type === "text" && (x.value === "" || x.value === x.getAttribute("tip")))
            {
                x.focus();
                break;
            }
        }
        if(i >= L)    return true;
        else         return false;
        */
    }

    // bind submit event handle for form submit
    baidu.each(forms, function(e, i)
    {
        e.onsubmit = function(ev) {return checkform(e);};

        button = e.getElementsByTagName('a')[0];
        baidu.event.on(button, 'click', function(ev)
        {
            e.submit();
            return true;
        });
    });
});
</script>{%/block%}