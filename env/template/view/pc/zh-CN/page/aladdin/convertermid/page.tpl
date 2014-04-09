{%extends 'base.tpl'%} {%block name='content'%}<style >#op_converter,#op_converter_des{margin-left:20px}optgroup option{padding-left:-60px}#op_converter_title{font-size:16px;font-weight:bold;color:#000}#op_converter_table{margin-top:10px}#op_converter_table span{display:inline-block;margin-right:10px}#op_converter_table span.e{display:none;line-height:15px;color:#F00;font-size:13px}#op_converter_table td{text-align:left}#op_converter_table select{height:22px;line-height:22px}#op_converter_table input{height:18px;_height:17px;line-height:18px{%*i*%};padding:0 1px}#op_converter_txt{width:75px}.op_converter_btn{background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat scroll -100px 0;color:#000;float:left;cursor:pointer;height:24px;line-height:24px;margin-left:0;text-align:center;text-decoration:none;width:81px;font-size:13px}.op_converter_btn:hover,.op_converter_btn:active,.op_converter_btn:focus{background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat scroll 0 0}#op_converter_res{font-size:1{%*i*%}6px;line-height:36px}#op_converter_res b{font-size:18px;font-weight:normal}#op_converter_info{font-size:13px;color:#666;line-height:24px}#op_converter_des{width:600px;line-height:180%;font-size:14px}#op_converter_des span{font-weight:bold}#op_converter_line{margin:15px 20px}</style>{%$FE_GBVAR.wrapper_prefix%}<div id="op_converter"><script >
    function nc(q) {var p = window.document.location.href, sQ = '', sV = '', mu = '', ref = encodeURIComponent(document.referrer), img = window['BD_PS_C' + (new Date()).getTime()] = new Image();for (v in q) {switch (v) {case 'title': sV = encodeURIComponent(q[v].replace(/<[^<>]+>/g, ''));break;case 'url': sV = escape(q[v]);break;default: sV = q[v]}sQ += v + '=' + sV + '&'} mu = '&mu=' + escape(self.location);img.src = 'http://nsclick.baidu.com/v.gif?pid=201&pj=convertermid&' + sQ + 'path=' + p +{%*i*%} '&rf=' + ref + '&t=' + new Date().getTime();return true;}

</script><span id="op_converter_title">度量衡换算查询</span><table id="op_converter_table" cellspacing="0" cellpadding="0"><tr><td><span><select id="op_converter_type"><option>{%if $tplData.type!=""%}{%$tplData.type%}{%/if%}</option></select></span></td><td><span><input id="op_converter_txt" type="text" value="1" maxlength="13"></span></td><td><span><select id="op_converter_from"><option>{%if $tplData.standard1!=""%}{%$tplData.standard1%}{%/if%}</option></select></span></td><td style="padding-left:5px"><span><b>转换为</b></span></td><td><span><select id="op_converter_to"><option>{%if $tplData.standard2!=""%}{%$tplData.standard2%}{%/if%}</option></select></span></td><td><a id="op_converter_do" class="op_converter_btn" href="#" onclick="return false;">转换</a></td></tr><tr><td><span id="op_converter_type_e" class="e">请选择度量类型</span></td><td><span id="op_converter_txt_e" class="e">请输入数字</span></td><td><span id="op_converter_from_e" class="e">请选择度量类型</span></td><td></td><td><span id="op_converter_to_e" class="e">请选择度量类型</span></td><td><form id="op_converter_fm" method="get" action="http://open.baidu.com/converter/s"><input id="op_con{%*i*%}verter_wd" name="wd" type="hidden" accept-charset="gb2312" value=""><input name="tn" type="hidden" value="baiduconverter"></form></td></tr></table>{%if $tplData.number1!=""%}<div id="op_converter_res"><span><b><span id="op_converter_n1">{%$tplData.number1%}</span>{%$tplData.standard1%}{%if $tplData.unitName1!=""%}({%$tplData.unitName1%}){%/if%}{%if $tplData.otherUnit!=""%}{%$tplData.otherUnit%}{%/if%} = <span id="op_converter_n2">{%$tplData.number2%}{%if $tplData.exponent!=""%} * 10<sup>{%$tplData.exponent%}</sup></span>{%/if%}{%$tplData.standard2%}{%if $tplData.unitName2!=""%}({%$tplData.unitName2%}){%/if%}</b></span></div>{%/if%}</div><script >
A.init(function() {
    var T = A.baidu;
    var cmTimer=null;
    var isIE = navigator.userAgent.indexOf('MSIE') != -1 && !window.opera;
            function G(id) {return document.getElementById(id);}
            function addEvent(elem, type, handler) {if (isIE) {elem.attachEvent('on' + type, (function(elm) {return function() {handler.call(elm);}})(elem));}else {elem.addEventListener(type, handler, true);}}
            function numFormat(num) {
                return (parseInt(num) == num) ? parseInt(num) : parseFloat(num);
            }
            var btn = G('op_converter_do');

            var txt = G('op_converter_txt');
            var unitType = G('op_converter_type');
            var unit1 = G('op_converter_from');
            var unit2 = G('op_converter_to');

            var txt_e = G('op_converter_txt_e');
            var type_e = G('op_converter_type_e');
            var unit1_e = G('op_converter_from_e');
            var unit2_e = G('op_converter_to_e');

            var res = G('op_converter_res');

            var fm = G('op_converter_fm');
            var wd = G('op_converter_wd');

        addEvent(btn, 'click', function() {
            var enable = true;
            if (unitType.value == '请选择度量类型') {type_e.style.display = 'inline';enable = false}else {type_e.style.display = 'none';}
            if (isNaN(txt.value)) {txt_e.style.display = 'inline';enable = false}else {txt_e.style.display = 'none';}
            //if ((txt.value < 0.0001 || txt.value > 1000000000)&&(txt.value!=0)) {txt_e.style.display = "inline";txt_e.innerHTML="超出计算范围";enable=false}else{txt_e.style.display = "none";}

            if (enable) {
                var floatValue = parseFloat(txt.value);
                if (isNaN(floatValue)) floatValue = 1;
                wd.value = floatValue + unit1.value + '等于多少' + unit2.value;

                nc({'url': 'http://open.baidu.com/converter/s', 'p1': 2, 'p4': 1, 'title': btn.innerHTML, 'q1': wd.value});

                fm.submit();
            }else {
                res.style.display = 'none';
            }


        });
            var typeData = ['请选择度量类型', '长度', '面积', '体积', '质量', '温度', '压力', '功率', '功、能和热量'];
            var unitData = new Array();
            unitData['长度'] = [
                {flag: 'group', label: '公制', values: ['千米', '米', '分米', '厘米', '毫米', '微米']},
                {flag: 'group', label: '英制', values: ['英尺', '英寸', '码', '英里', '海里', '英寻', '弗隆']},
                {flag: 'group', label: '市制', values: ['里', '丈', '尺', '寸', '分', '厘', '毫']}
            ];
            unitData['面积'] = [
                {flag: 'group', label: '公制', values: ['平方千米', '公顷', '公亩', '平方米', '平方分米', '平方厘米', '平方毫米']},
                {flag: 'group', label: '英制', values: ['英亩', '平方英里', '平方码', '平方英尺', '平方英寸', '平方竿']},
                {flag: 'group', label: '市制', values: ['顷', '亩', '平方尺', '平方寸']}
            ];
            unitData['体积'] = [
                {flag: 'group', label: '公制', values: ['立方米', '立方分米', '立方厘米', '立方毫米', '升', '分升', '毫升', '厘升', '公石']},
                {flag: 'group', label: '英制', values: ['立方英尺', '立方英寸', '立方码', '亩英尺', '英制加仑', '美制加仑']}
            ];
            unitData['质量'] = [
                {flag: 'group', label: '公制', values: ['千克', '克', '毫克', '吨', '公担']},
                {flag: 'group', label: '英制', values: ['磅', '盎司', '克拉', '格令', '长吨', '短吨', '英担', '美担', '英石', '打兰']},
                {flag: 'group', label: '市制', values: ['担', '斤', '两', '钱']}
            ];
            unitData['温度'] = ['摄氏度', '华氏度', '开氏度', '兰氏度', '列氏度'];
            unitData['压力'] = ['帕斯卡', '千帕', '百帕', '标准大气压', '毫米汞柱', '英寸汞柱', '巴', '毫巴', '磅力/平方英尺', '磅力/平方英寸', '毫米水柱', '公斤力/平方厘米', '公斤力/平方米'];
            unitData['功率'] = ['瓦', '千瓦', '英制马力', '米制马力', '公斤·米/秒', '千卡/秒', '英热单位/秒', '英尺·磅/秒', '焦耳/秒', '牛顿·米/秒'];
            unitData['功、能和热量'] = ['焦耳', '卡', '千卡', '公斤·米', '米制马力·时', '英制马力·时', '千瓦·时', '英热单位', '英尺·磅'];
            unitData['请选择度量类型'] = ['　　　　'];
            function bindData(obj,data,key) {
                if (!obj || !data) return;
                var frag = document.createDocumentFragment();

                for (var i = 0, len = data.length; i < len; i++) {
                    var item = data[i];

                    if (item['flag'] == undefined) {
                        var opt = document.createElement('option');
                        opt.innerHTML = opt.value = item;
                        opt.selected = (item == key);
                        frag.appendChild(opt);
                    }else {
                        if (item.flag == 'value') {
                            var opt = document.createElement('option');
                            opt.innerHTML = opt.value = item.value;
                            opt.selected = (item.value == key);
                            frag.appendChild(opt);
                        }else if (item.flag == 'group') {
                            var optgroup = document.createElement('optgroup');
                            optgroup.label = item.label;
                            bindData(optgroup, item.values, key);
                            frag.appendChild(optgroup);
                        }
                    }
                }
                obj.innerHTML = '';
                obj.appendChild(frag);
            }

            addEvent(unitType, 'change', function() {
                bindData(unit1, unitData[unitType.value]);
                bindData(unit2, unitData[unitType.value]);
                cmTimer = setTimeout(function() {
                    if (unit2.options && unit2.options[1]) unit2.options[1].selected = true;
                    },1);
            });

            function trim(str) {
                str = str.replace(/(\u3000+)|(\u3000+)/g, '');
                 str = str.replace(/( +)|( +)/g, '');
                return str;
            }
            addEvent(window, 'load', function() {

                var resType;
                var resKeyUnit1;
                var num1 = 1;

                resType = '{%if $tplData.type!=""%}{%$tplData.type%}{%/if%}';
                resKeyUnit1 = '{%if $tplData.standard1!=""%}{%$tplData.standard1%}{%/if%}';
                resKeyUnit2 = '{%if $tplData.standard2!=""%}{%$tplData.standard2%}{%/if%}';

                {%if $tplData.singleUnit!=""%};
                    num1 = trim('{%if $tplData.fillNumber1!=""%}{%$tplData.fillNumber1%}{%/if%}');
                {%/if%};

                txt.value = num1;
                bindData(unitType, typeData, resType);
                if (resType && resKeyUnit1 && resKeyUnit2) {
                    bindData(unit1, unitData[resType], resKeyUnit1);
                    bindData(unit2, unitData[resType], resKeyUnit2);
                }
            });

            nc({'url': 'http://open.baidu.com/converter/s', 'p1': 0});
                 this.dispose = function(){
                     clearTimeout(cmTimer);
                 };
});

</script><div id="op_converter_line"><hr align="left" width="600px;"></div><div id="op_converter_des">百度支持的具体换算单位如下： <br><span>长度</span> <br>公制：千米，米，分米，厘米，毫米，微米<br>英制：英尺，英寸，码，英里，海里，英寻，弗隆<br>市制：里，丈，尺，寸，分，厘，毫 <br><br><span>面积</span><br>公制：平方千米，公顷，公亩，平方米，平方分米，平方厘米，平方毫米<br>英制：英亩，平方英里，平方码，平方英尺，平方英寸，平方竿<br>市制：顷，亩，平方尺，平方寸 <br><br><span>体积</span><br>公制：立方米，立方分米，立方厘米，立方毫米，升，分升，毫升，厘升，公石<br>英制：立方英尺，立方英寸，立方码，亩英尺，英制加仑，美制加仑<br><br><span>质量</span><br>公制：千克，克，毫克，吨，公担<br>英制：磅，盎司，克拉，格令，长吨，短吨，英担，美担，英石，打兰<br>市制：担，斤{%*i*%}，两，钱 <br><br><span>温度</span><br>摄氏度，华氏度，开氏度，兰氏度，列氏度<br><br><span>压力</span><br>帕斯卡，千帕，百帕，标准大气压，毫米汞柱，英寸汞柱，巴，毫巴，磅力/平方英尺，磅力/平方英寸，毫米水柱，公斤力/平方厘米，公斤力/平方米<br><br><span>功率</span><br>瓦，千瓦，英制马力，米制马力，公斤·米/秒，千卡/秒，英热单位/秒，英尺·磅/秒，焦耳/秒，牛顿·米/秒<br><br><span>功、能和热量</span><br>焦耳，卡，千卡，公斤·米，米制马力·时，英制马力·时，千瓦·时，英热单位，英尺·磅<br><br></div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}