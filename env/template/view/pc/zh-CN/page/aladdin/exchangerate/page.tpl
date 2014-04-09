{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style >#op_exchangerate{margin-left:20px}#op_exchangerate_title{font-size:16px;font-weight:bold;color:#000}#op_exchangerate_table{margin-top:10px}#op_exchangerate_table span{display:inline-block;margin-right:10px}#op_exchangerate_table span.e{display:none;line-height:15px;color:#F00;font-size:13px}#op_exchangerate_table td{text-align:left}#op_exchangerate_table select{height:22px;line-height:22px}#op_exchangerate_table input{height:18px;_height:17px;line-height:18px;padding:0 1px}#op_exchangera{%*i*%}te_txt{width:75px}.op_exchangerate_btn{background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat scroll -100px 0;color:#000;float:left;cursor:pointer;height:24px;line-height:24px;margin-left:0;text-align:center;text-decoration:none;width:81px;font-size:13px}.op_exchangerate_btn:hover,.op_exchangerate_btn:active,.op_exchangerate_btn:focus{background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat scroll 0 0}#op_exchangerate_res{font-size:16px;line-he{%*i*%}ight:36px}#op_exchangerate_res b{font-size:18px;font-weight:normal}#op_exchangerate_res strong{color:#000}#op_exchangerate_info{font-size:13px;color:#666;line-height:24px}</style><div id="op_exchangerate"><script >
    function _aMC(o) { var t = o, i = -1; while (t = t.parentNode) { i = parseInt(t.getAttribute('id')); if (i > 0) return i; }}
    function nc(q) {var p = window.document.location.href, sQ = '', sV = '', mu = '', ref = encodeURIComponent(document.referrer), img = window['BD_PS_C' + (new Date()).getTime()] = new Image();for (v in q) {switch (v) {case 'title': sV = encodeURIComponent(q[v].replace(/<[^<>]+>/g, ''));break;case 'url': sV = escape(q[v]);break;default: sV = q[v]}sQ += v + '=' + sV + '&'} mu = '&mu=' + escape(self.location);img.src = 'http://nsclick.baidu.com/v.gif?pid=201&pj=huilvmid&' + sQ + 'path=' + p + '&r{%*i*%}f=' + ref + '&t=' + new Date().getTime();return true;}

</script><span id="op_exchangerate_title">货币兑换查询</span><table id="op_exchangerate_table" cellpadding="0" cellspacing="0" ><tr><td><span><input id="op_exchangerate_txt" type="text" value="1" maxlength="13"></span></td><td><span><select id="op_exchangerate_from"><option value="">所持货币类型</option></select></span></td><td style="padding-left:20px"><span><b>兑换为</b></span></td><td><span><select id="op_exchangerate_to"><option value="">兑换货币类型</option></select></span></td><td><a id="op_exchangerate_do" cl{%*i*%}ass="op_exchangerate_btn" href="#" onclick="return false;">转换</a></td></tr><tr><td><span id="op_exchangerate_txt_e" class="e">请输入数字</span></td><td><span id="op_exchangerate_from_e" class="e">请选择货币类型</span></td><td></td><td><span id="op_exchangerate_to_e" class="e">请选择货币类型</span></td><td><form id="op_exchangerate_fm" method="get" action="http://open.baidu.com/huilv/s"><input id="op_exchangerate_wd" name="wd" type="hidden" value=""><input name="tn" type="hidden" value="baiduhuilv"></form></td></tr{%*i*%}></table>{%if $tplData.number1!=""%}<div id="op_exchangerate_res"><b id="op_exchangerate_res1"></b>{%$tplData.currency1%}=<b id="op_exchangerate_res2"></b>{%$tplData.currency2%}</div>{%/if%}<div id="op_exchangerate_info">{%if $tplData.support!=""%}{%$tplData.support%}&nbsp;{%/if%}{%if $tplData.link[0]['linkurl']!=""%}<a target="_blank" href="{%$tplData.link[0]['linkurl']%}" onmousedown="return nc({'title':this.innerHTML,'url':this.href,'p1':2,'p2':1})">{%$tplData.link[0]['linkcontent']%}</a>{%/if%}</div><script >
    (function() {
        var isIE = navigator.userAgent.indexOf('MSIE') != -1 && !window.opera;
        function G(id) {return document.getElementById(id);}
        function addEvent(elem, type, handler) {if (isIE) {elem.attachEvent('on' + type, (function(elm) {return function() {handler.call(elm);}})(elem));}else {elem.addEventListener(type, handler, true);}}
        function numFormat(num) {
            return (parseInt(num) == num) ? parseInt(num) : parseFloat(num);
        }

        var btn = G('op_exchangerate_do');

        var txt = G('op_exchangerate_txt');
        var cur1 = G('op_exchangerate_from');
        var cur2 = G('op_exchangerate_to');

        var txt_e = G('op_exchangerate_txt_e');
        var cur1_e = G('op_exchangerate_from_e');
        var cur2_e = G('op_exchangerate_to_e');

        var res = G('op_exchangerate_res');
        var res1 = G('op_exchangerate_res1');
        var res2 = G('op_exchangerate_res2');

        var fm = G('op_exchangerate_fm');
        var wd = G('op_exchangerate_wd');

        var num1 = 0;
        var num2 = 0;
        var currency1 = '', currency2 = '';

        {%if $tplData.number1!=""%}
            txt.value = num1 = numFormat({%$tplData.number1%});
            num2 = numFormat({%$tplData.number2%});
            res1.innerHTML = convertNum('{%$tplData.number1%}');
            res2.innerHTML = convertNum('{%$tplData.number2%}');
        {%/if%}
        {%if $tplData.currency1!=""%} currency1 = '{%$tplData.currency1%}'; {%/if%}
        {%if $tplData.currency2!=""%} currency2 = '{%$tplData.currency2%}'; {%/if%}


         function convertNum(num) {
             var res = num.split('.');
             var arr = res[0].split('').reverse();
                 for (var i = 1, len = Math.floor(res[0].length); i <= len; i++) {
                  arr.splice(i * 4 - 1, 0, ' ');
             }
             res[0] = arr.reverse().join('');
             if (res[1]) {
                 res[1] = res[1].replace(new RegExp('0+\x24'), '');
                 if (res[1] == '') res.pop();
             }
             return res.join('.');
         }

        addEvent(btn, 'click', function() {
            var enable = true;
            if (cur1.value == '') {cur1_e.style.display = 'inline';enable = false}else {cur1_e.style.display = 'none';}
            if (cur2.value == '') {cur2_e.style.display = 'inline';enable = false}else {cur2_e.style.display = 'none';}
            if (isNaN(txt.value)) {txt_e.innerHTML = '请输入数字';txt_e.style.display = 'inline';enable = false}else {txt_e.style.display = 'none';}
            if (!isNaN(txt.value)) {
                if ((txt.value < 0.0001 || txt.value > 1000000000) && (txt.value != 0)) {txt_e.style.display = 'inline';txt_e.innerHTML = '超出计算范围';enable = false}else {txt_e.style.display = 'none';}
            }
            if (enable) {
                var floatValue = parseFloat(txt.value);
                if (!floatValue) floatValue = 1;
                wd.value = floatValue + cur1.value + '等于多少' + cur2.value;

                nc({'url': 'http://open.baidu.com/huilv/s', 'p1': 2, 'p4': 1, 'title': btn.innerHTML, 'q1': wd.value});

                fm.submit();
            }else {
                res.style.display = 'none';
            }


        });

        var currencyArray = ['人民币|CNY|人民币元', '美元|USD|美元', '奥币|ATS|奥地利先令', '澳元|AUD|澳元', '比法郎|BEF|比利时法郎', '巴西币|BRL|巴西里尔', '加元|CAD|加元', '瑞郎|CHF|瑞郎', '智利币|CLP|智利比索', '捷克币|CZK|捷克克朗', '马克|DEM|德国马克', '丹麦币|DKK|丹麦克朗', '西币|ESP|西班牙比塞塔', '欧元|EUR|欧元', '芬兰币|FIM|芬兰马克', '法法郎|FRF|法国法郎', '英镑|GBP|英镑', '港币|HKD|港币', '匈牙利币|HUF|匈牙利福林', '印尼盾|IDR|印度尼西亚盾', '印度币|INR|印度卢比', '义里拉|ITL|意大利里拉', '日元|JPY|日元', '韩元|KER|韩元', '墨披索|MXN|墨西哥比索', '马币|MYR|马来西亚元', '荷兰币|NLG|荷兰盾', '挪威币|NOK|挪威克朗', '纽币|NZD|新西兰元', '菲披索|PHP|菲律宾比索', '波兰币|PLN|波兰兹{%*i*%}罗提', '葡币|PTE|葡萄牙埃斯库多', '卢布|RUB|俄罗斯卢布', '沙乌地|SAR|沙特里亚尔', '瑞典币|SEK|瑞典克朗', '新加坡元|SGD|新加坡元', '泰铢|THB|泰铢', '台币|TWD|台币', '委内拉|VEF|强势玻利瓦尔', '越南盾|VND|越南盾', '南非币|ZAR|南非兰特'];

        for (var i = 0, len = currencyArray.length; i < len; i++) {
            var items = currencyArray[i].split('|');

            var opt1 = document.createElement('option'), opt2 = document.createElement('option');
            opt1.value = opt2.value = items[2];
            opt1.innerHTML = opt2.innerHTML = items[1] + ' ' + items[2];

            if (items[2] == currency1) opt1.selected = 'true';
            if (items[2] == currency2) opt2.selected = 'true';

            cur1.appendChild(opt1);
            cur2.appendChild(opt2);
        }

        var errcode = '{%if $tplData.errcode!=""%}{%$tplData.errcode%}{%/if%}';

        switch (errcode) {
            case '2':
                res.style.display = 'none';
                txt_e.style.display = 'inline';
                txt_e.innerHTML = '超出计算范围';
                break;
            default:
        };

        nc({'url': 'http://open.baidu.com/huilv/s', 'p1': 0});
    })();

</script></div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}