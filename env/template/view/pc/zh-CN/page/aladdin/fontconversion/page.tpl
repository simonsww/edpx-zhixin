{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style >.op_font_conver{padding:0;margin:0}.op_font_conver_canvas{margin-top:5px;position:relative;z-index:1}.op_font_conver_open{font-size:13px}.op_font_conver_open span{font-size:13px;color:#008000}.op_font_conver_button{height:auto;margin:6px 0;width:{%$tplData.textarea[0]['width']%}px}.op_font_conver_text{font-size:13px;overflow-x:hidden;overflow-y:hidden;width:{%$tplData.textarea[0]['width']%}px}.op_font_conver_google_tb{width:{%$tplData.textarea[0]['width']%}px;text-align:center}.op_font_conver_button_tb td{text-align:right}.op_font_conver_button_td{text-align:center}.op_font_conver_translate_swap{font-size:13px;color:#03c;text-decoration:underline;cursor:pointer}.op_font_conver_text_default{color:#acacac}.op_font_conver_text_normal{color:#000}.op_fontconver_btn{background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat scroll -100px 0;color:#000;cursor:pointer;float:left;height:24px;line-height:24px;margin-left:0;text-align:c{%*i*%}enter;text-decoration:none;width:81px;font-size:13px}.op_fontconver_btn:hover,.op_fontconver_btn:active,.op_fontconver_btn:focus{background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat scroll 0 0}</style>{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div class="op_font_conver">{%if $tplData.content1!=""%}<font size="-1">{%$tplData.content1|highlight:0%}</font>{%/if%}<div class="op_font_conver_canvas"><form action="{%$tplData.form[0]['action']%}" method="{%$tplData.form[0]['method']%}" name="{%$tplData.form[0]['name']%}" class="op_font_conver_bd_ala_form" target="{%$tplData.form[0]['target']%}"  accept-charset="{%$tplData.form[0]['postEncode']%}"><div><div class="op_fontconver_text_div"><textarea class="op_font_conver_text op_font_conver_text_normal" name="{%$tplData.textarea[0]['name']%}" rows="6" tip="{%$tplData.textarea[0]['tip']%}" style="*padding:6px 2px;"></textarea></div>{%$loop_maxcount=count($tplData.para)%}{%for $op_loop_count=0 to 9%}{%if $op_loop_count<$loop_maxcount%}<input type="hidden" name="{%$tplData.para[$op_loop_count]['name']%}" value="{%$tplData.para[$op_loop_count]['value']%}">{%else%}{%break%}{%/if%}{%/for%}</div><div class="op_font_conver_button">{%if $tplData.googleTranslationFlag!=""%}<table cellpadding="0" cellspacing="0"><tr><td align="left"><select tabindex="0" name="sl" style="width:auto;"><option value="auto">检测语言</option><option disabled="" value="separator">—</option><option value="sq">阿尔巴尼亚语</option><option value="ar">阿拉伯语</option><option value="ga">爱尔兰语</option><option value="et">爱沙尼亚语</option><option value="be">白俄罗斯语</option><option value="bg">保加利亚语</option><option value="is">冰岛语</option><option value="pl">波兰语</option><option value="fa">波斯语</option><option value="af{%*i*%}">布尔文(南非荷兰语)</option><option value="da">丹麦语</option><option value="de">德语</option><option value="ru">俄语</option><option value="fr">法语</option><option value="tl">菲律宾语</option><option value="fi">芬兰语</option><option value="ko">韩语</option><option value="nl">荷兰语</option><option value="gl">加利西亚语</option><option value="ca">加泰罗尼亚语</option><option value="cs">捷克语</option><option value="hr">克罗地亚语</option><option value="lv">拉脱维亚语</option><option value="lt">立陶宛语</option><option value="ro">罗马尼亚语</option><opti{%*i*%}on value="mt">马耳他语</option><option value="ms">马来语</option><option value="mk">马其顿语</option><option value="no">挪威语</option><option value="pt">葡萄牙语</option><option value="ja">日语</option><option value="sv">瑞典语</option><option value="sr">塞尔维亚语</option><option value="sk">斯洛伐克语</option><option value="sl">斯洛文尼亚语</option><option value="sw">斯瓦希里语</option><option value="th">泰语</option><option value="tr">土耳其语</option><option value="cy">威尔士语</option><option value="uk">乌克兰语</option><option value="es">西班牙语</op{%*i*%}tion><option value="iw">希伯来语</option><option value="el">希腊语</option><option value="hu">匈牙利语</option><option value="it">意大利语</option><option value="yi">意第绪语</option><option value="hi">印地语</option><option value="id">印尼语</option><option value="en" selected="">英语</option><option value="vi">越南语</option><option value="zh-CN">中文</option></select> <span style='font-size:1.5em;vertical-align:-1px;'>&raquo;</span> <select tabindex="0" name="tl" style="width:auto;"><option value="sq">阿尔巴尼亚语</option><option{%*i*%} value="ar">阿拉伯语</option><option value="ga">爱尔兰语</option><option value="et">爱沙尼亚语</option><option value="be">白俄罗斯语</option><option value="bg">保加利亚语</option><option value="is">冰岛语</option><option value="pl">波兰语</option><option value="fa">波斯语</option><option value="af">布尔文(南非荷兰语)</option><option value="da">丹麦语</option><option value="de">德语</option><option value="ru">俄语</option><option value="fr">法语</option><option value="tl">菲律宾语</option><option value="fi">芬兰语</option><option value="ko">韩语</option{%*i*%}><option value="nl">荷兰语</option><option value="gl">加利西亚语</option><option value="ca">加泰罗尼亚语</option><option value="cs">捷克语</option><option value="hr">克罗地亚语</option><option value="lv">拉脱维亚语</option><option value="lt">立陶宛语</option><option value="ro">罗马尼亚语</option><option value="mt">马耳他语</option><option value="ms">马来语</option><option value="mk">马其顿语</option><option value="no">挪威语</option><option value="pt">葡萄牙语</option><option value="ja">日语</option><option value="sv">瑞典语</option><option value="sr">塞{%*i*%}尔维亚语</option><option value="sk">斯洛伐克语</option><option value="sl">斯洛文尼亚语</option><option value="sw">斯瓦希里语</option><option value="th">泰语</option><option value="tr">土耳其语</option><option value="cy">威尔士语</option><option value="uk">乌克兰语</option><option value="es">西班牙语</option><option value="iw">希伯来语</option><option value="el">希腊语</option><option value="hu">匈牙利语</option><option value="it">意大利语</option><option value="yi">意第绪语</option><option value="hi">印地语</option><option value="id">印尼语</option><option {%*i*%}value="en">英语</option><option value="vi">越南语</option><option value="zh-TW">中文(繁体)</option><option value="zh-CN" selected="">中文(简体)</option></select>&nbsp;<span class="op_font_conver_translate_swap">互换</span></td><td align="right">{%$loop_maxcount=count($tplData.button)%}{%for $op_loop_count=0 to 3%}{%if $op_loop_count<$loop_maxcount%}<button type="submit" name="{%$tplData.button[$op_loop_count]['name']%}" actvalue="{%$tplData.button[$op_loop_count]['value']%}">{%$tplData.button[$op_loop_count]['title']%}</button>{%else%}{%break%}{%/if%}{%/for%}</td></tr></table>{%/if%}{%if $tplData.generalFlag!=""%}<table class="op_font_conver_button_tb" cellpadding="0" cellspacing="0"><tr><td style="text-align:{%$tplData.buttonConfig[0]['align']%};"><select name="bd_ala_act" style="vertical-align:middle;height:22px;padding-top:1px;">{%$loop_maxcount=count($tplData.button)%}{%for $op_loop_count=0 to 3%}{%if $op_loop_count<$loop_maxcount%}<option value="{%$tplData.button[$op_loop_count]['value']%}">{%$tplData.button[$op_loop_count]['title']%}</option>{%else%}{%break%}{%/if%}{%/for%}</select></td><td><div style="padding-left:10px"><a class="op_fontconver_btn OP_LOG_BTN" href="javascript:;">转换</a></div></td></tr></table>{%/if%}</div></form><div class="op_font_conver_open"><span>{%$tplData.showurl%}</span>{%if $tplData.showlamp!=""%} - <a target="_blank" href="http://open.baidu.com/"  class="op_LAMP" >{%$FE_GBVAR.aladdin_txt%}</a>{%/if%}</div></div><script >
                 A.init(function() {
                     var __this = this, baidu = A.baidu;
                     function op_font_conver_submit() {
                        var textObj = __this.qq('op_font_conver_text');
                        var formObj = __this.qq('op_font_conver_bd_ala_form');
                        removeTextTip(textObj);
                        var current_charset = document.charset;
                        document.charset = '{%$tplData.form[0]['postEncode']%}';
                        formObj.submit();
                        window.setTimeout(function() {
                            document.charset = current_charset;
                        },500);
    
                        function removeTextTip(obj) {
                            if (obj.value == obj.getAttribute('tip')) {
                                obj.value = '';
                                return false;
                            } else {
                                return true;
                            }
                        }
                    }
                     
                    baidu.on(this.qq("op_fontconver_btn"), "click", op_font_conver_submit);
                     
                    var isIE = navigator.userAgent.indexOf('MSIE') != -1 && !window.opera;
                    function G(id) {
                        return document.getElementById(id);
                    }
                    function addEvent(elem, type, handler) {
                        if (isIE) {
                            elem.attachEvent('on' + type, (function(elm) {
                                return function() {
                                    handler.call(elm);
                                }
                            })(elem));
                        } else {
                            elem.addEventListener(type, handler, true);
                        }
                    }
                    function setTextDefault(obj) {
                        if (obj) {
							baidu.dom.addClass(obj, 'op_font_conver_text_default');
                            baidu.dom.removeClass(obj, 'op_font_conver_text_normal');
                            obj.value = obj.getAttribute('tip');
                        }
                    }
                    function setTextNormal(obj) {
                        if (obj && obj.value != obj.getAttribute('tip')) {
                            baidu.dom.removeClass(obj, 'op_font_conver_text_default');
                            baidu.dom.addClass(obj, 'op_font_conver_text_normal');
                        } else {
                            setTextDefault(obj);
                        }
                    }
                    function removeTextTip(obj) {
                        if (obj.value == obj.getAttribute('tip')) {
                            obj.value = '';
                            return false;
                        } else {
                            return true;
                        }
                    }
                    var textObj = __this.qq('op_font_conver_text');
                    var formObj = __this.qq('op_font_conver_bd_ala_form');
                    var buttonObj = __this.qq('op_fontconver_btn');
                    {%if $tplData.textarea[0]['useTip']!=""%};

                    if (textObj.value == '' || textObj.value == textObj.getAttribute('tip')) {
                        setTextDefault(textObj);
                    }

                    addEvent(textObj, 'blur', function() {
                        if (textObj.value == '') {
                            setTextDefault(textObj);
                        }
                    });
                    addEvent(textObj, 'focus',
                    function() {
						if(baidu.dom.hasClass(textObj, 'op_font_conver_text_default')){
                            textObj.value = '';
                            setTextNormal(textObj);
                        }
                    });
                    {%/if%};



                    var min = 6;
                    var max = 15;
                    var delta = 6;
                    if (isIE) delta = 18;

                    var div = this.qq('op_fontconver_text_div');
                    textObj.style.height = (min * 15) + 'px';
                    div.style.height = (min * 15 + delta) + 'px';
                    addEvent(textObj, 'keyup', autofix);
                    addEvent(textObj, 'mouseup', autofix);
                    function autofix() {
                        textObj.style.scrollTop = textObj.style.height;
                        if (!isIE) textObj.style.height = '0px';
                        var h = textObj.scrollHeight;
                        if (h < min * 15) h = min * 15;
                        if (h > max * 15) {
                            h = max * 15;
                            textObj.style.overflowY = 'scroll';
                        } else {
                            textObj.style.overflowY = 'hidden';
                        }

                        textObj.style.height = h + 'px';
                        div.style.height = (h + delta) + 'px';
                    }
                });


</script></div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}