{%if $tplData.NormalResult!=""%}<div id="fmp_flash_div"></div><script type="text/javascript" src="bddict/js/fmp.js" charset='gbk'></script><script type="text/javascript" >
    var isResualt = true;
    var pronu = {};
    FMP.cfg.movie = 'bddict/flash/fmp.swf?v=090105a';
    FMP.load();
    function toggle(id, state) {
        var title = document.getElementById(id + 't');
        var content = document.getElementById(id + 'c');
        if (state) {
            title.style.background = 'url(bddict/img/' + state + '.gif) no-repeat 0 50%';
            content.style.display = (state == 'expand') ? '' : 'none';
        }else {
            title.style.background = 'url(bddict/img/' + (title.style.background.indexOf('expand') >= 0 ? 'collapse' : 'expand') + '.gif) no-repeat 0 50%';
            content.style.display = content.style.display ? '' : 'none';
        }
    }
    function toggle2(id) {
        var btn = document.getElementById(id + 'b');
        var mol = document.getElementById(id + 'm');
        var txt = document.getElementById(id + 'd');
        mol.style.display = mol.style.display ? '' : 'none';
        if (txt.innerHTML.indexOf('隐藏') >= 0) {
            window.location.href = (window.location.hash ? window.location.href.substring(0, window.location.href.indexOf(window.location.hash)) : window.location.href) + '#hidden' + id;
        }
        txt.innerHTML = (txt.innerHTML.indexOf('隐藏') >= 0 ? '显示' : '隐藏') + txt.innerHTML.substr(2);
        btn.style.background = 'url(bddict/img/' + (btn.style.background.indexOf('close') >= 0 ? 'open' : 'close') + '.gif) no-repeat 5px 50%';
    }
    function play(seq) {
        try {
            if (FMP.loaded) {
                FMP.stop();
                FMP.setUrl(pronu[seq]);
                FMP.play();
            }else {
                FMP.onLoad = function() {
                    FMP.setUrl(pronu[seq]);
                    FMP.play();
                }
            }
        }catch (e) {}
    }
</script><div id="dict"><div class="wd" id="zzj_section3">{%if $tplData.EnTranCh!=""%}<a href="http://www.baidu.com/search/dict.html#n5" style="float:right;position:relative;right:0;top:2px;font-size:1.2em;text-decoration:underline;background-image:none;" target="blank" onmousedown="zzj_t('yufabiaozhujieshi');">语法标注解释</a>{%/if%}<span class="hanzi">{%$tplData.word%}</span>{%if $tplData.pronvalue1!=""%}<span class="pinyin">{%$tplData.pronvalue1%}</span>{%/if%}{%if $tplData.pronsrc1!=""%}<script >pronu['zzj1'] = '{%$tplData.pronsrc1%}';
</script><a href="#" onfocus="this.blur();" onclick="play('zzj1');return false;">&nbsp;</a>{%/if%}{%if $tplData.pronvalue2!=""%}<span class="pinyin">{%$tplData.pronvalue2%}</span>{%/if%}{%if $tplData.pronsrc2!=""%}<script >pronu['zzj2'] = '{%$tplData.pronsrc2%}';
</script><a href="#" onfocus="this.blur();" onclick="play('zzj2');return false;">&nbsp;</a>{%/if%}{%if $tplData.pronvalue3!=""%}<span class="pinyin">{%$tplData.pronvalue3%}</span>{%/if%}{%if $tplData.pronsrc3!=""%}<script >pronu['zzj3'] = '{%$tplData.pronsrc3%}';
</script><a href="#" onfocus="this.blur();" onclick="play('zzj3');return false;">&nbsp;</a>{%/if%}{%if $tplData.pronvalue4!=""%}<span class="pinyin">{%$tplData.pronvalue4%}</span>{%/if%}{%if $tplData.pronsrc4!=""%}<script >pronu['zzj4'] = '{%$tplData.pronsrc4%}';
</script><a href="#" onfocus="this.blur();" onclick="play('zzj4');return false;">&nbsp;</a>{%/if%}{%if $tplData.pronvalue5!=""%}<span class="pinyin">{%$tplData.pronvalue5%}</span>{%/if%}{%if $tplData.pronsrc5!=""%}<script >pronu['zzj5'] = '{%$tplData.pronsrc5%}';
</script><a href="#" onfocus="this.blur();" onclick="play('zzj5');return false;">&nbsp;</a>{%/if%}</div>{%if $tplData.ChExpEnTran!=""%}<div class="nav" id="zzj_section4"><a href="#" onclick="toggle('cn','expand');toggle('en','collapse');return false;">中文解释</a>&nbsp;<span style="color:#666;font-size:1.6em;">-</span>&nbsp;<a href="#"  onclick="toggle('en','expand');toggle('cn','collapse');return false;">英文翻译</a></div>{%/if%}{%if $tplData.ChExpChDict!=""%}<div id="cn"><h2 id="cnt" style="background:url(bddict/img/expand.gif) no-repeat 0 50%;"><a href="#" onclick="toggle('cn');return false;" onfocus="this.blur();">&nbsp;</a>{%$tplData.word%}的中文解释</h2><div id="cnc"><h3 id="zzj_section5"><span>以下结果由<a href="http://www.zdic.net/" target="_blank" onmousedown="zzj_t('handian');">汉典</a>提供</span>词典解释</h3><div class="explain">{%$tplData.ChExpChDict%}{%if $tplData.ChExpChDictHidden!=""%}<a name="hiddencn"/><div class="rc" style="background:url(bddict/img/close.gif) no-repeat 5px 50%;" onclick="toggle2('cn');" id="cnb"><b class="tl"></b><b class="tr"></b><span id="cnd">隐藏更多释义</span><b class="bl"></b><b class="br"></b></div><div style="clear:both;"></div><br/>{%/if%}</div>{%if $tplData.ChExpChHttpcn!=""%}<div id="cncHttpcn"><h3 id="zzj_section5_Httpcn"><span>以下结果由<a href="http://tool.httpcn.com/Zi/" target="_blank" onmousedown="zzj_t('handian');">HttpCN</a>提供</span>字形结构</h3><div class="explain">{%$tplData.ChExpChHttpcn%}</div></div>{%/if%}</div></div>{%/if%}{%if $tplData.ChTranEn!=""%}<div id="en"><h2 id="ent"  style="background:url(bddict/img/expand.gif) no-repeat 0 50%;"><a href="#e" onclick="toggle('en'); return false;" onfocus="this.blur();">&nbsp;</a>{%$tplData.word%}的英文翻译</h2><div id="enc">{%if $tplData.ChTranEnDict!=""%}<h3 id="zzj_section6"><span style="position:relative;top:-8px;">以下结果由<img src="bddict/img/logo.gif" style="vertical-align:text-bottom;"/><a href="http://www.dreye.com.cn/index_gb.html"  target="_blank" onmousedown="zzj_t('yidiantong');">译典通</a>提供</span>词典解释</h3><div class="explain">{%$tplData.ChTranEnDict%}</div>{%/if%}{%if $tplData.ChTranEnNet!=""%}<h3 id="zzj_section9"><span>以下结果来自互联网</span>网络释义</h3><div class="explain">{%$tplData.ChTranEnNet%}{%if $tplData.ChTranEnNetHidden!=""%}<a name="hiddenen"></a><div class="rc" style="background:url(bddict/img/open.gif) no-repeat 5px 50%;" onclick="toggle2('en');" id="enb"><b class="tl"></b><b class="tr"></b><span id="end">显示更多网络释义结果</span><b class="bl"></b><b class="br"></b></div><div style="clear:both;"></div><br/>{%/if%}</div>{%/if%}</div></div>{%/if%}{%if $tplData.EnTranCh!=""%}<div id="en"><h2 id="ent">&nbsp;</h2><div id="enc">{%if $tplData.EnTranChDict!=""%}<h3 id="zzj_section7"><span style="position:relative;top:-8px;">以下结果由<img src="bddict/source/img/logo.gif" style="vertical-align:text-bottom;"/><a href="http://www.dreye.com.cn/index_gb.html" target="_blank" onmousedown="zzj_t('yidiantong');">译典通</a>提供</span>词典解释</h3><div class="explain">{%$tplData.EnTranChDict%}</div>{%/if%}{%if $tplData.EnTranChNet!=""%}<h3 id="zzj_section10"><span>以下结果来自互联网</span>网络释义</h3><div class="explain">{%$tplData.EnTranChNet%}{%if $tplData.EnTranChNetHidden!=""%}<a name="hiddenen"></a><div class="rc" style="background:url(bddict/img/open.gif) no-repeat 5px 50%;" onclick="toggle2('en');" id="enb"><b class="tl"></b><b class="tr"></b><span id="end">显示更多网络释义结果</span><b class="bl"></b><b class="br"></b></div><div style="clear:both;"></div><br/>{%/if%}</div>{%/if%}</div></div><script type="text/javascript" >window.pagetype = 1;
</script>{%/if%}{%if $tplData.baike!=""%}<div style="margin:0 0 3em 1.8em;padding-left:3em;line-height:1.7;background:url(bddict/img/s3.gif) no-repeat left top;" id="zzj_section8"><a href="{%$tplData.baike%}" style="font-size:1.2em;" target="blank" onmousedown="zzj_t('baike');">查看百科释义</a></div>{%/if%}</div><script type="text/javascript" >
    if (window.location.hash.indexOf('#en') >= 0 || window.location.hash.indexOf('#extra') >= 0{%if $tplData.baidudata0!=""%} || true {%/if%}) {try {if (G('en')) toggle('cn', 'collapse');toggle('en', 'expand');}catch (e) {}}
</script>{%/if%}{%if $tplData.SpecialResult!=""%} <div style="margin:18px 0 20px 24px;font-size:14px;line-height:20px;">未找到和您的关键词 "<font color="#e10900" id="word"></font>" 相匹配的词典解释。<br/>{%if $tplData.baike!=""%}<div style="float:left"><strong>您可以查看百科释义：</strong><a href="{%$tplData.baike%}" style="color:#C7150B" target="blank" onmousedown="zzj_t('baike');" id="bk_word"></a></div><div style="float:left;"><img src="bddict/img/s3.gif" style="margin:1px 0 0 3px;"></div>{%/if%}{%if $tplData.Correction!=""%}<strong>您要找的是不是：</strong><a href="/s?wd={%$tplData.Correction%}&tn=dict" style="color:#C7150B">{%$tplData.Correction%}</a>{%/if%}<div style="clear:both;height:1px;overflow:hidden"></div><script >G('word').innerHTML = G('kw').value;if (G('bk_word')) G('bk_word').innerHTML = G('kw').value;
</script></div>{%/if%}