{%extends 'c_base.tpl'%} {%block name='title'%}{%fe_fn_c_title_prefix%} <a target="_blank" href="{%fe_fn_c_title_url url="{%$tplData.url%}"%}" id="map_city_url"><span id="op_generalbus_city">{%$tplData.title|highlight:0%}</span></a> <span class="ma_style100">-</span><div class="ma_style100" id="op_generalbus_citymain" style="position:relative;display:inline;" > <span class="op_generalbus_click OP_LOG_BTN" id="op_generalbus_clickcity">更换城市</span> <div class="op_generalbus_popup" id="op_generalbus_content" style="display:none"> <div class="op_generalbus_popup_main"> <div class="op_generalbus_title">城市列表</div> <div style="height: 320px; overflow-y: auto;"> <div  style="width: 345px;" class="op_generalbus_sel_city">{%*i*%} </div> </div> <button id="op_generalbus_popup_close"></button> </div> <div class="op_generalbus_poput_shadow" style="height: 344px;"></div> </div></div>{%fe_fn_c_title_suffix%}{%/block%}{%block name='content'%}<style type="text/css" >

  
  
  .op_generalbus_form{
    position:static;
    z-index:0
  }
  .op_generalbus_form table td{
    vertical-align:middle;
  }
  .op_generalbus_form_subtitle{
    padding:0 0 5px 0;
  }
  .op_generalbus_exchange{
    display:inline-block;
    line-height:0;
    border:1px solid #d8d8d8;
    background:#f9f9f9;
    padding:5px;
    cursor:pointer;
  }
  .op_generalbus_exchange:hover{
    border:1px solid #388bff;
  }
  .op_generalbus_exchange:active{
    border:1px solid #a2a6ab;
    background:#f0f0f0;
  }
  .op_generalbus_form .op_generalbus_input_tips{
    color:#ACACAC
  }
  .op_generalbus_form .op_generalbus_form_submit{
    width:0;
    height:0;
    overflow:hidden;
    position:absolute;
    top:-1000px
  }
  .ma_style100{
    font-size:12px;
    color:#B6B6E4;
    line-height:14px
  }
  .op_generalbus_click{
    text-decoration:underline;
    cursor:pointer;
    color:#B6B6E4
  }
  .op_generalbus_popup{
    width:382px;
    display:block;
    height:344px;
    position:absolute;
    background-color:#fff;
    left:0px;
    top:20px
  }
  .op_generalbus_popup .op_generalbus_popup_main{
    border:1px solid #8ba4d8;
    z-index:2;
    position:absolute;
    width:100%;
    height:100%;
    background:#FFF;
    overflow:hidden
  }
  .op_generalbus_popup .op_generalbus_title{
    background:url(http://map.baidu.com/tab/img/popup_title.gif);
    height:24px;
    line-height:25px;
    font-size:12px;
    font-weight:bold;
    color:#6688cc;
    padding-left:7px
  }
  .op_generalbus_sel_city{
    margin:10px;
    margin-top:4px;
    *margin-right:5px;
    color:#333
  }
  .op_generalbus_sel_city td{
    padding:1px 0;
    vertical-align:top;
    line-height:150%;
    font-size:12px
  }
  .op_generalbus_sel_city .op_city_submit{
    margin-left:5px;
    *vertical-align:bottom
  }
  .op_generalbus_sel_city form{
    margin-bottom:5px
  }
  .op_generalbus_sel_city span{
    color:#999;
    margin-left:4px
  }
  .op_generalbus_sel_city a{
    margin-right:8px
  }
  .op_generalbus_sel_city a.black{
    margin-right:0
  }
  .op_generalbus_sel_city .op_city_text{
    width:115px
  }
  .op_generalbus_popup button{
    position:absolute;
    top:6px;
    right:4px;
    width:12px;
    height:12px;
    background:url(http://map.baidu.com/tab/img/popup_close.gif) no-repeat;
    border:0;
    cursor:pointer
  }
  .op_generalbus_popup .op_generalbus_poput_shadow{
    width:100%;
    height:100%;
    background:#505050;
    border:1px solid #505050;
    position:absolute;
    left:2px;
    top:3px;
    z-index:1;
    opacity:0.4;
    filter:alpha(opacity=40)
  }
  .tangram_sug_wpr{
    position:absolute
  }
  .tangram_sug_wpr table{
    border:1px solid #D0D0D0;
    width:100%;
    background:#fff;
    cursor:default;
    color:#666
  }
  .tangram_sug_wpr td{
    font:13px verdana;
    padding:0;
    margin:0;
    height:25px;
    white-space:nowrap
  }
  .tangram_sug_mo{
    background-color:#36C;
    color:#fff;
    font-size:13px
  }
  .tangram_sug_ml{
    background-color:#fff;
    color:#666;
    font-size:13px
  }
  .tangram_sug_app{
    background-color:white
  }
  .tangram_sug_pre{
    background-color:white
  }
  .sug_en{
    font-size:12px;
    font-family:sans-serif
  }
  .sug_key{
    color:#C60A00
  }
  .sug_error_info{
    background:#C30;
    line-height:24px;
    height:24px;
    font-size:13px;
    width:100%;
    overflow:hidden;
    color:#FFF;
    padding:0 2px
  }
  .sug_j{
    margin:0 2px
  }
  .op_generalbussug_sub{
    width:81px;
    height:24px;
    background:url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat -100px 0;
    float:left;
    text-align:center;
    line-height:24px;
    color:#000;
    text-decoration:none;
    margin:0 0 0 5px;
    cursor:pointer
  }
  #op_email3_sub:hover,#op_email3_sub:active,#op_email3_sub:focus{
    background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat 0 0
  }
  .op_generalbus_popup a{
    color:#0000CC
  }
  .op_generalbus_cityinfo,.op_generalbus_titinfo{
    color:#f00;
    font-size:13px;
    font-family:SimSun
  }
  .op_generalbussug_arrow{
    background:url(http://www.baidu.com/aladdin/img/traintimetable03/1.png) no-repeat left -23px;
    font-size:17px;
    padding-left:13px
  }
</style><div id="op_generalbus_main" class="c-border"> <form class="c-gap-bottom op_generalbus_form" name="op_generalbus_form" tip="op_generalbus_tit01|op_generalbus_titinfo01||*请输入有效的地点|2" action="{%$tplData.query1[0]['action']|escape:'html'%}" method="get" target="_blank" onSubmit='return window.do_op_generalbus_submit(this);'> <table cellpadding="0" cellspacing="0"> <tbody> <tr> <td class="op_generalbus_form_subtitle"><span id="op_generalbus_tit01">{%$tplData.query1[0]['title']|escape:'html'%}</span><span id="op_generalbus_titinfo01" class="op_generalbus_titinfo" style="display:none"></span></td> </tr> <tr> <td><input type="text" class="c-input c-gap-right-small op_general_bus_input op_generalbus_input_tips" name="word" value="" tip="" autocomplete="off" class="op_generalbus_search_input" onfocus="_op_generalbussug_clear(this)"  onblur="_op_generalbussug_added(this)"></td> <td><span class="c-gap-right-small op_generalbus_exchange OP_LOG_BTN" ><i class="c-icon c-icon-exchange"></i></s{%*i*%}pan></td> <td><input type="text" class="c-input c-gap-right op_general_bus_input op_generalbus_input_tips" name="word2" value="" tip="" autocomplete="off" class="op_generalbus_search_input2" onfocus="_op_generalbussug_clear(this)"  onblur="_op_generalbussug_added(this)"></td> <td><a href="#" onclick="return false;" class="c-btn c-btn-primary OP_LOG_BTN">{%$tplData.query1[0]['btn']|escape:'html'%}</a></td> </tr> </tbody> </table> <input type="hidden" value="ala_open" name="fr"> <input type="hidden" value="bt" name="qt"> <input type="hidden" value="{%$tplData.hidden1[0]['value']|escape:'html'%}" name="{%$tplData.hidden1[0]['name']|escape:'html'%}" id="op_generalbus_cityid01"> <input class="op_generalbus_form_submit" type="submit"> </form> <form class="op_generalbus_form c-gap-bottom" tip="op_generalbus_tit02|op_generalbus_titinfo02||*{%$tplData.query2[0]['error']|escape:'html'%}" action="{%$tplData.query2[0]['action']|escape:'html'%}" method="get" target="_blank" onSubmit="return window.do_op_generalbus_submit(this);"> <table cellpadding="0" cellspacing="0"> <tbody> <tr> <td class="op_generalbus_form_subtitle"><span id="op_generalbus_tit02">{%$tplData.query2[0]['title']|escape:'html'%}</span><span id="op_generalbus_titinfo02" class="op_generalbus_titinfo" style="display:none"></span></td> </tr> <tr> <td><input type="text" class="c-input c-gap-right op_generalbus_input_tips" name="word" value="" tip="" autocomplete="off" class="op_generalbus_search_input3"></td> <td><a href="#" onclick="return false;" class="c-btn c-btn-primary OP_LOG_BTN">{%$tplData.query2[0]['btn']|escape:'html'%}</a></td> </tr> </tbody> </table> <input type="hidden" value="ala_open" name="fr"> <input type="hidden" value="{%$tplData.hidden1[0]['value']|escape:'html'%}" name="{%$tplData.hidden1[0]['name']|escape:'html'%}" id="op_generalbus_cityid02"> </form> <form class="op_generalbus_form" tip="op_generalbus_tit03|op_generalbus_titinfo03||*{%$tplData.query3[0]['error']|escape:'html'%}" action="{%$tplData.query3[0]['action']|escape:'html'%}" method="get" target="_blank" onSubmit="return window.do_op_generalbus_submit(this);"> <table cellpadding="0" cellspacing="0"> <tbody> <tr> <td class="op_generalbus_form_subtitle"><span id="op_generalbus_tit03">{%$tplData.query3[0]['title']|escape:'html'%}</span><span id="op_generalbus_titinfo03" class="op_generalbus_titinfo" style="display:none"></span></td> </tr> <tr> <td><input type="text" class="c-input c-gap-right op_generalbus_input_tips" name="word" value="" tip="" autocomplete="off" class="op_generalbus_search_input4"></td> <td><a href="#" onclick="return false;" class="c-btn c-btn-primary OP_LOG_BTN">{%$tplData.query3[0]['btn']|escape:'html'%}</a></td> </tr> </tbody> </table> <input type="hidden" value="ala_open" name="fr"> <input type="hidden" value="bs" name="qt"> <input type="hidden" value="{%$tplData.hidden1[0]['value']|escape:'html'%}" name="{%$tplData.hidden1[0]['name']|escape:'html'%}" id="op_generalbus_cityid03"> </form></div><div class="c-gap-top">还在用纸笔记录公交信息？使用<a style="margin:0 8px;" href="http://shouji.baidu.com/map/application.html" target="_blank">百度公交手机版</a>查询公交站点，到站提醒，方便、省流量！</div><script type="text/javascript">A.setup(function(){var T=A.baidu,_this=this,sg,sg2;var arr2=['<table style="width: 345px;">'+'<tbody>'+'<tr>'+'<td height="15" colspan="2">热门城市：</td>'+'</tr>'+'<tr>'+'<td style="padding-bottom: 0pt;" colspan="2">'+'<a style="margin-right: 8px;" name="深圳" oncl{%*i*%}ick="op_generalbus_search(this);return false;" href="javascript:void(0)">深圳</a>'+ '<a style="margin-right: 8px;" name="北京" onclick="op_generalbus_search(this);return false;" href="javascript:void(0)">北京</a>'+'<a style="margin-right: 8px;" name="杭州" onclick="op_generalbus_search(this);return false;" href="javascript:void(0)">杭州</a>'+'<a style="margin-right: 8px;" name="武汉" onclick="op_generalbus_search(this);return false;" href="javascript:void(0)">武汉</a>'+'<a style="margin-right: 8px;" name="广州"{%*i*%} onclick="op_generalbus_search(this);return false;" href="javascript:void(0)">广州</a>'+'<a style="margin-right: 8px;" name="成都" onclick="op_generalbus_search(this);return false;" href="javascript:void(0)">成都</a>'+'<a style="margin-right: 8px;" name="苏州" onclick="op_generalbus_search(this);return false;" href="javascript:void(0)">苏州</a>'+'<a style="margin-right: 8px;" name="重庆" onclick="op_generalbus_search(this);return false;" href="javascript:void(0)">合肥</a>'+'<a style="margin-right: 8px;" name={%*i*%}"天津" onclick="op_generalbus_search(this);return false;" href="javascript:void(0)">天津</a>'+'<a style="margin-right: 8px;" name="上海" onclick="op_generalbus_search(this);return false;" href="javascript:void(0)">上海</a>'+'</td>'+'</tr>'+'<tr>'+'<td style="padding-top: 0pt;" colspan="2"><div style="border-top: 1px solid rgb(204, 204, 204); padding-bottom: 6px;"></div>'+'<form onsubmit="op_generalbus_search(this);return false;" style="position:static">'+'<input type="text" onfocus="op_generalbus_WdClic{%*i*%}k(this)" style="color: gray;" value="输入城市名" class="op_city_text" name="wd" id="op_generalbus_cityinput" autocomplete="off">'+'<input type="submit" value="确定" class="op_city_submit OP_LOG_BTN">'+'<span style=" display: none;" class="op_generalbus_cityinfo" ></span>'+'</form></td>'+'</tr>'];var arrCity=[{'province':'直辖市：','city':['北京', '上海', '天津', '重庆']},{'province':'安徽：', 'city':['合肥', '安庆', '蚌埠', '亳州', '巢湖', '池州', '滁州', '阜阳', '淮北', '淮南', '黄山', '六安', '马鞍山', '宿州', '铜陵', '芜湖', '宣城']},{'province':'福{%*i*%}建：', 'city':['福州', '龙岩', '南平', '宁德', '莆田', '泉州', '三明', '厦门', '漳州']},{'province':'甘肃：', 'city':['兰州', '天水']},{'province':'广东：', 'city':['广州', '潮州', '东莞', '佛山', '河源', '惠州', '江门', '揭阳', '茂名', '梅州', '汕头', '韶关', '深圳', '湛江', '肇庆', '中山', '珠海']},{'province':'广西：', 'city':['南宁', '百色', '北海', '桂林', '柳州', '梧州', '玉林']},{'province':'贵州：', 'city':['贵阳']},{'province':'海南：', 'city':['海口', '三亚']},{'province':'河北：', 'city':['石家庄', '保定', '沧州', '承德', '邯郸', '衡水', '廊坊', '秦皇岛', '唐山', '邢台', '张家口']},{'province':'河南：', 'c{%*i*%}ity':['郑州', '安阳', '鹤壁', '焦作', '开封', '洛阳', '平顶山', '濮阳', '三门峡', '商丘', '新乡', '许昌']},{'province':'黑龙江：', 'city':['哈尔滨', '大庆', '鹤岗', '佳木斯', '牡丹江', '齐齐哈尔', '伊春']},{'province':'湖北：', 'city':['武汉', '宜昌', '襄樊']},{'province':'湖南：', 'city':['长沙', '郴州', '衡阳', '怀化', '湘潭', '益阳', '岳阳', '株洲']},{'province':'江苏：', 'city':['南京', '常州', '淮安', '连云港', '南通', '苏州', '泰州', '无锡', '徐州', '盐城', '扬州', '镇江']},{'province':'江西：', 'city':['南昌', '赣州', '九江', '上饶']},{'province':'吉林：', 'city':['长春', '白城', '白山', '吉林市', '辽源', '四平', '通化'{%*i*%}, '延边']},{'province':'辽宁：', 'city':['沈阳', '鞍山', '本溪', '大连', '丹东', '抚顺', '葫芦岛', '锦州', '铁岭', '营口']},{'province':'内蒙古：', 'city':['呼和浩特', '包头', '赤峰', '鄂尔多斯', '通辽']},{'province':'宁夏：', 'city':['银川']},{'province':'青海：', 'city':['西宁']},{'province':'山东：', 'city':['济南', '东营', '济宁', '聊城', '临沂', '青岛', '日照', '泰安', '威海', '潍坊', '烟台', '淄博']},{'province':'山西：', 'city':['太原', '长治', '吕梁', '朔州', '阳泉', '运城']},{'province':'陕西：', 'city':['西安', '安康', '宝鸡', '汉中', '商洛', '铜川', '渭南', '咸阳', '延安', '榆林']}, {'province':'四川：',{%*i*%} 'city':['成都', '达州', '德阳', '广安', '绵阳', '攀枝花']}, {'province':'西藏：', 'city':['拉萨']}, {'province':'新疆：', 'city':['乌鲁木齐', '昌吉州', '和田地区']},{'province':'云南：', 'city':['昆明', '大理州', '丽江']}, {'province':'浙江：', 'city':['杭州', '湖州', '嘉兴', '金华', '丽水', '宁波', '衢州', '绍兴', '台州', '温州', '舟山']}, {'province':'', 'city':['香港']} ];for(var i=0;i<arrCity.length;i++){var str='<tr><td width="52">'+arrCity[i].province+'</td><td width="287">';for(var j in arrCity[i].city){if(arrCity[i].city.hasOwnProperty(j)){ str+='<a oncl{%*i*%}ick="op_generalbus_search(this);return false;" href="javascript:void(0)">'+arrCity[i].city[j]+'</a>';}}str+='</td></tr>';arr2.push(str);}arr2.push('</tbody></table>');_this.find('.op_generalbus_sel_city')[0].innerHTML=arr2.join('');var Fe = Fe || {version: "20080809",emptyFn: function() {}};Fe.G = function() {for (var b = [], c = arguments.length - 1; c > -1; c--) {var d = arguments[c];b[c] = null;if (typeof d == "object" && d && d.dom) {b[c] = d.dom} else {if ((typeof d == "object" && d && d.ta{%*i*%}gName) || d == window || d == document) {b[c] = d} else {if (typeof d == "string" && (d = document.getElementById(d))) {b[c] = d}}}}return b.length < 2 ? b[0] : b};Fe.on = function(c, b, a) {if (!(c = Fe.G(c))) {return c}b = b.replace(/^on/, "").toLowerCase();if (c.attachEvent) {c[b + a] = function() {a.call(c, window.event)};c.attachEvent("on" + b, c[b + a])} else {c.addEventListener(b, a, false)}return c};Fe.un = function(c, b, a) {if (!(c = Fe.G(c))) {return c}b = b.replace(/^on/, "").toLower{%*i*%}Case();if (c.attachEvent) {c.detachEvent("on" + b, c[b + a]);c[b + a] = null} else {c.removeEventListener(b, a, false)}return c};_this.find('.op_generalbus_exchange').eq(0).click(function(){var $i1=_this.find('.op_general_bus_input').eq(0);var $i2=_this.find('.op_general_bus_input').eq(1);var i1v = $i1.val();$i1.val($i2.val());$i2.val(i1v); }); function op_generalbus_hideCity() {document.getElementById("op_generalbus_content").style.display = "none"}function op_generalbus_selCity(f) {var d = f.c{%*i*%}name;op_generalbus_curCid = f.cid;var c = document.getElementById("op_generalbus_city").innerHTML;var b = c.split("查询 - 百度地图")[0];var a = "查询 - 百度地图";if (b.indexOf("<em>") == 0 || b.indexOf("<EM>") == 0) {document.getElementById("op_generalbus_city").innerHTML = "<em>" + d + "公交</em>" + a}if (b.indexOf("<em>") > 0 || b.indexOf("<EM>") > 0) {document.getElementById("op_generalbus_city").innerHTML = d + "<em>公交</em>" + a}document.getElementById("op_generalbus_cityid01").value = op_generalbus_curCi{%*i*%}d;document.getElementById("op_generalbus_cityid02").value = op_generalbus_curCid;document.getElementById("op_generalbus_cityid03").value = op_generalbus_curCid;document.getElementById("map_city_url").href = ["http://map.baidu.com/?newmap=1&ie=utf-8&daddr=%20&fr=alab0&s=s", encodeURIComponent("&c=" + op_generalbus_curCid + "&wd=" + d)].join("");op_generalbus_hideCity();op_generalbus_clearInput();op_generalbus_resetInputTit()}function op_generalbus_resetInputTit() {for (var a = 1; a <= 3; a++) {do{%*i*%}cument.getElementById("op_generalbus_tit0" + a).style.display = "";document.getElementById("op_generalbus_titinfo0" + a).style.display = "none";document.getElementById("op_generalbus_titinfo0" + a).innerHTML = ""}}function op_generalbus_clearInput() {document.getElementById("op_generalbus_search_input").value = "";document.getElementById("op_generalbus_search_input2").value = "";document.getElementById("op_generalbus_search_input3").value = "";document.getElementById("op_generalbus_search_input4{%*i*%}").value = "";_this.find('.op_generalbus_search_input')[0].attr('value','');_this.find('.op_generalbus_search_input2')[0].attr('value','');_this.find('.op_generalbus_search_input3')[0].attr('value','');_this.find('.op_generalbus_search_input4')[0].attr('value','');}function op_generalbus_scriptRequest(url, echo, id, charset) {var isIe = /msie/i.test(window.navigator.userAgent);if (isIe && Fe.G("_script_" + id)) {var script = Fe.G("_script_" + id)} else {if (Fe.G("_script_" + id)) {Fe.G("_script_{%*i*%}" + id).parentNode.removeChild(Fe.G("_script_" + id))}var script = document.createElement("script");if (charset != null) {script.charset = charset}if (id != null && id != "") {script.setAttribute("id", "_script_" + id)}script.setAttribute("type", "text/javascript");document.body.appendChild(script)}var t = new Date();if (url.indexOf("?") > -1) {url += "&t=" + t.getTime()} else {url += "?t=" + t.getTime()}var _complete = function() {if (!script.readyState || script.readyState == "loaded" || scrip{%*i*%}t.readyState == "complete") {if (typeof(echo) == "function") {try {echo()} catch (e) {}} else {eval(echo)}}};if (isIe) {script.onreadystatechange = _complete} else {script.onload = _complete}script.setAttribute("src", url)}window.op_generalbus_WdClick = function op_generalbus_WdClick(a) {if (a.value == "输入城市名") {a.value = "";a.style.color = "#000"}};window.op_generalbus_searchCall = function op_generalbus_searchCall(b) {if (b.content && b.content.error == 0) {_this.find(".op_generalbus_cityinfo"{%*i*%})[0].innerHTML = "请输入正确的城市名";_this.find(".op_generalbus_cityinfo")[0].style.display = "";return}if (b.current_city && b.current_city.sup_bus) {_this.find(".op_generalbus_cityinfo")[0].style.display = "none";var a = b.content.cname.replace(/市/, "");var c = b.content.code;op_generalbus_selCity({cname: a,cid: c})} else {_this.find(".op_generalbus_cityinfo")[0].innerHTML = "该城市不支持公交查询";_this.find(".op_generalbus_cityinfo")[0].style.display = ""}};function op_generalbustrim(a) {return a.replace(/(^[\{%*i*%}s\t\xa0\u3000]+)|([\u3000\xa0\s\t]+$)/g, "")};window.op_generalbus_search = function op_generalbus_search(c) {if (c.wd) {var b = c.wd.value;b = op_generalbustrim(b)} else {var b = c.innerHTML}if (b == "" || b == "输入城市名") {_this.find(".op_generalbus_cityinfo")[0].innerHTML = "请输入正确的城市名";_this.find(".op_generalbus_cityinfo")[0].style.display = "";if (c.wd) {c.wd.focus()}return false}var a = ["http://map.baidu.com/?newmap=1&callback=op_generalbus_searchCall&qt=cur", "&wd=" + encodeURIComponent(b)].{%*i*%}join("");op_generalbus_scriptRequest(a)};(function() {Fe.on(document.getElementById("op_generalbus_popup_close"), "click", function() {document.getElementById("op_generalbus_content").style.display = "none"});function a(c) {var b = c.srcElement || c.target;while (b) {if (b == Fe.G("op_generalbus_content")) {return}if (b == Fe.G("op_generalbus_clickcity")) {return}if (b == document.body) {op_generalbus_hideCity();Fe.un(document.body, "mousedown", a);return false}b = b.parentNode}}Fe.on(document.g{%*i*%}etElementById("op_generalbus_clickcity"), "click", function() {document.getElementById("op_generalbus_content").style.display = "";Fe.on(document.body, "mousedown", a);if (Fe.G("op_generalbus_cityinput")) {Fe.G("op_generalbus_cityinput").value = "输入城市名";_this.find(".op_generalbus_cityinfo")[0].style.display = "none"}})})();function op_generalbussug_submit() {document.mapsugform.submit()}$(document).ready(function(){A.use('suggestion', function(){window.mapsug_sug_url = "http://map.baidu.com/su?w{%*i*%}d=";var isie6 = (document.all) && (/MSIE 6.0/ig.test(navigator.appVersion));var options = {getData: function(e) {var b = window.mapsug_sug_url + encodeURIComponent(e) + "&callback=pushSugData&ie=utf-8&cid=" + op_generalbus_curCid + "&type=2&t=" + new Date().getTime();var d = (new Date()).getTime();var a = _this.find(".bdSug_mapsug_script")[0];if (a) {document.body.removeChild(a)}var c = document.createElement("script");c.src = b;c.charset = "utf-8";c.className = "bdSug_mapsug_script";document.bo{%*i*%}dy.appendChild(c);var f = e},onbeforepick: function(evt) {var div = document.createElement('div');div.innerHTML = evt.data.item.content;evt.data.item.content = evt.data.item.value = $(div).text();}};var options2 = {getData: function(e) {var b = window.mapsug_sug_url + encodeURIComponent(e) + "&callback=pushSugData2&ie=utf-8&cid=" + op_generalbus_curCid + "&type=2&t=" + new Date().getTime();var d = (new Date()).getTime();var a = _this.find(".bdSug_mapsug_script")[0];if (a) {document.body.removeCh{%*i*%}ild(a)}var c = document.createElement("script");c.src = b;c.charset = "utf-8";c.className = "bdSug_mapsug_script";document.body.appendChild(c);var f = e},onbeforepick: function(evt) {var div = document.createElement('div');div.innerHTML = evt.data.item.content;evt.data.item.content = evt.data.item.value = $(div).text();}};sg = A.ui.suggestion(options);sg.render(_this.find(".op_generalbus_search_input")[0]);sg2 = A.ui.suggestion(options2);sg2.render(_this.find(".op_generalbus_search_input2")[0]);{%*i*%}function op_generalbus_Sug(p, f) {var g = p.q;var q = p.s;var o;var b = [];var data = [];for (var e = 0; e < q.length; e++) {var r = q[e];o = r.split("$");o = o;var m = {};var l = o[3] || o[2];var n = [];var k;n = [];k = "";for (var d = 0; d < o.length - 1; d++) {var a = "<span class='sug_key'>" + g + "</span>";n.push(o[d].toString().replace(new RegExp(g, "i"), function(i) {return "<span class='sug_key'>" + i + "</span>"}))}var h = n[3] || n[2];if (!h == "") {k += "<span class='op_generalbussug_{%*i*%}fixedwidth' style='overflow:hidden;width:135px;float:left;text-indent:5px;'>" + h + "</span>"}if (k == "") {continue}var m = {input: l,selection: k};b.push(m);data.push(k);}var c = "";f.setData(c, data);if (b.length > 0) {}}window.pushSugData = function pushSugData(a) {op_generalbus_Sug(a, sg)};window.pushSugData2 = function pushSugData2(a) {op_generalbus_Sug(a, sg2)};var op_generalbus_curCid = {%$tplData.hidden1[0]['value']|escape:'html'%};var op_generalbussug_flag = 0;});});(function() {function trim(str) {return str.replace(/(^[\s\t\xa0\u3000]+)|([\u3000\xa0\s\t]+\x024)/g, '');};function e(i, h, g) {if (i && i.attachEvent) {i.attachEvent('on' + h, g);} else {if (i && i.addEventListener) {i.addEventListener(h, g, true);}}}function d(k, j) {for (var h = 0,g = k.length; h < g; h++) {j(k[h], h);}}var c = document.getElementById('op_generalbus_main'),f = c.getElementsByTagName('form'),a = c.getElementsByTagName('input'),b = c.getEle{%*i*%}mentsByTagName('a');d(a,function(g) {if (g.type === 'text') {var h = g.getAttribute('tip');g.value = h;e(g, 'focus',function() {if (g.value === h) {g.value = ''; $(g).removeClass('op_generalbus_input_tips');}});e(g, 'blur',function() {if (g.value === '') {g.value = h;$(g).addClass('op_generalbus_input_tips'); }});}});d(b,function(g, h) {e(g, 'click',function() {if (window.do_op_generalbus_submit(f[h])) {f[h].submit();}return false;});});window.do_op_generalbus_submit = function(m) {var r = m.get{%*i*%}ElementsByTagName('input');var q = m.getAttribute('tip');if (q) {var o = document.getElementById(q.split('|')[0]);var g = document.getElementById(q.split('|')[1]);var h = q.split('|')[2];var n = q.split('|')[3];var k = q.split('|')[4] || 1;}for (var l = 0, j = r.length; l < j; l++) {var p = r[l];if (p.type === 'text' && (trim(p.value) === '' || p.value === p.getAttribute('tip'))) {var q = m.getAttribute('tip');if (q) {p.focus();if (k == 2) {if (trim(m.getElementsByTagName('input')[0].value) == '{%*i*%}' && trim(m.getElementsByTagName('input')[1].value) == ''|| op_generalbussug_flag != 0 && trim(m.getElementsByTagName('input')[0].value) != '' && trim(m.getElementsByTagName('input')[1].value) == '') {o.style.display = 'none';g.style.display = '';g.innerHTML = n;} else {o.style.display = '';g.style.display = 'none';}op_generalbussug_flag++;return false;}o.style.display = 'none';g.style.display = '';g.innerHTML = n;}return false;}}if (q) {o.style.display = '';g.style.display = 'none';}return true{%*i*%};}})();(function() {var cityDiv = document.getElementById('op_generalbus_citymain');if (cityDiv) {var arr = cityDiv.getElementsByTagName('a');for (var i = 0, l = arr.length; i < l; i++) {log_txt.call(arr[i], i + 1);}}function log_txt(i) {this.onmousedown = function() {return window.c({'fm': 'alop', 'title': this.innerHTML, 'url': this.href, 'p1': _aMC(this), 'p2': i});};}G('op_generalbus_search_input').focus();})();this.dispose = function(){sg&&sg.dispose&&sg.dispose();sg2&&sg2.dispose&&sg2.disp{%*i*%}ose();};});function _op_generalbussug_clear(me){var m = document.op_generalbus_form;if (trim(m.getElementsByTagName('input')[1].value) == '') { op_generalbussug_flag = 0;}function trim(str) {return str.replace(/(^[\s\t\xa0\u3000]+)|([\u3000\xa0\s\t]+\x024)/g, '');};var usersug = '';map_search_sug = ''; if (map_search_sug == me.value){me.value = '';me.style.color = '#000';me.focus();}}function _op_generalbussug_added(a) {var b = "";map_search_sug = "";if (a.value == "") {a.style.color = "#ccc";a.{%*i*%}value = map_search_sug}}</script> {%/block%}