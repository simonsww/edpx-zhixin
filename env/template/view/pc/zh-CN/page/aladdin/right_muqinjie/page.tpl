{%extends 'right_base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style>html{_overflow-x:hidden}.right-muqinjie-tvflash{position:absolute;left:0;top:0;z-index:9999999}.right-muqinjie-top{background:#fff9f2 url(http://www.baidu.com/aladdin/img/muqinjie/bg.png) 0 0 no-repeat;padding:10px}.right-muqinjie h4{font-size:14px;margin:0 0 10px 0}.right-muqinjie input:focus{outline:0}.right-muqinjie fieldset{border:0;border-top:1px solid #eaeaea;margin:0;padding:0}.right-muqinjie legend{font-weight:bold;font-size:14px;margin:0 0 10px 0;padding:0 5px 0 0}.right-muqinjie{%*i*%}-video{padding-bottom:10px}.right-muqinjie-video-from{color:#aaa;margin-left:160px}.right-muqinjie strong{color:orange}.right-muqinjie-compute-btn{background:url(http://www.baidu.com/aladdin/img/muqinjie/btns.png) 0 0 no-repeat;display:inline-block;width:80px;height:30px}.right-muqinjie-no-compute-info{border-bottom:dotted 1px #f4ddcc;padding-bottom:10px;margin-bottom:10px;line-height:200%}.right-muqinjie-no-compute-inputbox{_height:40px;_overflow:hidden}.right-muqinjie-no-compute-inputbox table{%*i*%}{float:left;border-collapse:collapse;margin:10px 0}.right-muqinjie-no-compute-inputbox br{clear:both}.container_s .right-muqinjie-no-compute-inputbox table{float:none;border-collapse:collapse}.container_s .right-muqinjie-no-compute-inputbox br{display:none}.right-muqinjie-compute-btn:hover{background-position:0 -40px}.right-muqinjie-compute-btn:active{background-position:0 -80px}.right-muqinjie-compute-btn-dis{background-position:0 -120px}.right-muqinjie-no-compute-input1,.right-muqinjie-no-comp{%*i*%}ute-input2,.right-muqinjie-no-compute-input3{width:40px;border:1px solid;border-color:#999 #d8d8d8 #d8d8d8 #999;height:22px;line-height:22px;padding:0;text-indent:3px}.right-muqinjie-compute-error{color:#c00;display:inline-block;height:30px;line-height:30px;text-indent:1em}.right-muqinjie-compute{border-bottom:dotted 1px #f4ddcc;padding-bottom:10px;margin-bottom:10px}.right-muqinjie-compute-info{margin:10px 0;line-height:200%}.right-muqinjie-compute-info span{color:#ff5a00;font-weight:bold}.righ{%*i*%}t-muqinjie-compute-to-nocompute{line-height:30px}#bdshare .bds_more{background:none!important;padding:0!important;line-height:26px}.right-muqinjie-compute-btns{width:100%}.right-muqinjie-sms table{width:100%;border-collapse:collapse}.right-muqinjie-sms td{padding:0}.right-muqinjie-sms-tel,.right-muqinjie-sms-codeInput{border:1px solid;border-color:#999 #d8d8d8 #d8d8d8 #999;height:24px;line-height:24px;padding:0;text-indent:3px;margin:0}.right-muqinjie-sms-codeInput{width:50px}.right-muqinjie-sms{%*i*%}-content{width:100%;height:24px;border:1px solid;border-color:#999 #d8d8d8 #d8d8d8 #999}.right-muqinjie-sms-toggle-code{cursor:pointer;text-decoration:underline;color:blue;display:block;height:24px;line-height:30px;overflow:hidden;margin:5px 0 0 5px}.right-muqinjie-sms-tel{margin-top:5px}.right-muqinjie-sms-codeImg{width:60px;height:24px;margin-top:5px}.right-muqinjie-sms-inputbox *{float:left}.right-muqinjie-sms-codeInput,.right-muqinjie-sms-codeImg{margin:5px 0 0 5px}.container_s .right-muqinj{%*i*%}ie-sms-codeInput{margin:5px 0 0 0}.right-muqinjie-bottom{margin-top:10px}.right-muqinjie-bottom-header{border-bottom:#eaeaea 1px solid;height:10px}.right-muqinjie-bottom-header h4{background-color:#fff;position:absolute;z-index:2;display:inline-block;padding-right:5px}.right-muqinjie-bottom-list{margin-top:15px}.right-muqinjie-bottom-list a{display:block;float:left;width:88px;text-align:center;margin-bottom:10px}.right-muqinjie-bottom-list br{clear:both}.right-muqinjie-bottom-list img{border:sol{%*i*%}id 1px #d2d2d2;width:68px;height:68px}.right-muqinjie-bottom-list span{display:block;line-height:22px;width:88px}.container_s .right-muqinjie-bottom-list-l-item{display:none}.right-muqinjie-sms-btn{background:url(http://www.baidu.com/aladdin/img/muqinjie/btns.png) -98px 0 no-repeat;display:inline-block;width:102px;height:30px;margin-top:10px}.right-muqinjie-sms-btn:hover{background-position:-98px -40px}.right-muqinjie-sms-btn:active{background-position:-98px -80px}.right-muqinjie-sms-btn-dis{bac{%*i*%}kground-position:-98px -120px}.right-muqinjie-sms-number,.right-muqinjie-sms-sendtips{color:#666;line-height:24px}.right-muqinjie-sms-number span{color:orange}.right-muqinjie-sms-sended{color:orange;line-height:24px}</style><div class="c-abstract"> <div class="right-muqinjie"> <div class="right-muqinjie-tvflash" style="display:none;"></div> <div class="right-muqinjie-top"> <h4>母亲节 最爱妈妈的味道</h4> <div class="right-muqinjie-video" style="display:none;"><embed src="{%$tplData.video%}" quality="high" width="235" height="185" align="middle" allowScriptAccess="sameDomain" allowFullscreen="true" type="application/x-shockwave-flash"></embed> <input type="hidden" class="right-muqinjie-video-flash-src" value="{%$tplData.video%}" /> <div class="right-muqinjie-video-from">来自网友剪辑</div> </div> <div class="right-muqinjie-no-compute-info"> 从甘甜的乳汁到美味的饭菜，是妈妈倾尽一生心血哺育我们长大，无论年龄多大，身在何处，心中总有那一道最爱吃的“妈妈菜”，算一算，妈妈已经为你做了多少顿饭？你可曾想过，还能陪妈妈吃多少次饭？ </div> <div class="right-muqinjie-no-compute"> <p>出生时 ,我在妈妈怀里第一次啼哭 ,5岁时 ,我已吃过妈妈做的 <strong>5475</strong> 顿饭</p> <div class="right-muqinjie-no-compute-inputbox"> <table> <tr> <td>今年我已经</td> <td><input type="text" class="right-muqinjie-no-compute-input1" value="25" /></td> <td>岁，</td> </tr> </table> {%*i*%}<table> <tr> <td>而妈妈已经</td> <td><input type="text" class="right-muqinjie-no-compute-input2" value="50" /></td> <td>岁，</td> </tr> </table> <table> <tr> <td>离开家已有</td> <td><input type="text" class="right-muqinjie-no-compute-input3" value="5" /></td> <td>年</td> </tr> </table> <br> </div> <table class="right-muqinjie-compute-btnbox"> <tr><td> <a href="javascript:;" class="right-muqinjie-compute-btn OP_LOG_BTN"></a> </td> <td> <span class="right-muqinjie-compute-error"></span> </td> </tr> </table> </d{%*i*%}iv> <div class="right-muqinjie-compute" style="display:none"> <div class="right-muqinjie-compute-info"> </div> <table class="right-muqinjie-compute-btns"><tr><td> <a href="javascript:;" class="right-muqinjie-compute-to-nocompute OP_LOG_BTN">重新计算？</a> </td> <td width="170"> <div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare"> <span class="bds_more">分享到：</span> <a class="bds_qzone"></a> <a class="bds_tsina"></a> <a class="bds_tqq"></a> <a class="bds_renren"></a> <a class="bds_tieba"></a{%*i*%}> </div> <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=128221" ></script> <script type="text/javascript" id="bdshell_js"></script> <script type="text/javascript">document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)</script> </td> </tr></table> </div> <div class="right-muqinjie-sms" style="display:none"> <table> <tr> <td>对妈妈说：</td> <td><select class="right-muqinjie-sms-content"> <opti{%*i*%}on value="0">妈妈，突然好想你，想回家吃饭</option> <option value="1">妈妈，外面的菜不好吃，还是喜欢你做的菜。</option> <option value="2">妈妈，下次教我做菜吧，想和你做一样的味道</option> <option value="3">妈妈，母亲节快乐</option> <option value="4">孩子他妈，宝贝还小，代他祝你母亲节快乐！</option> <option value="5">孩子他妈，这些年你为这个家辛苦了，母亲节快乐！</option> </select></td> </tr> <tr> <td width="60">手机号码：</td> <td class="right-muqinjie-sms-inputbox"><input type="text" class="right-muqinjie-sms-tel" > <input type="text" value="" class="right-muqinjie-sms-codeInput" > <img class="right-muq{%*i*%}injie-sms-codeImg OP_LOG_BTN" src="" /> <span class="right-muqinjie-sms-toggle-code">换张试试</span> <br></td> </tr> </table> <a href="javascript:;" class="right-muqinjie-sms-btn"></a> <div class="right-muqinjie-sms-number" style="display:none;">已有<span>34324324</span>人为妈妈送去爱的祝福</div> <div class="right-muqinjie-sms-sended" style="display:none;">短信已成功发送至手机！</div> <div class="right-muqinjie-sms-sendtips" style="display:none;">短信已成功发送！系统繁忙稍有延迟</div> </div> </div> <div class="right-muqinjie-bottom"> <di{%*i*%}v class="right-muqinjie-bottom-header"> <h4 style="display:block; width:150px;">学做妈妈的拿手菜</h4> </div> <div class="right-muqinjie-bottom-list"> {%foreach $tplData.list as $item%} <a href="{%$item.link%}" target="_blank" {%if $item@index > 5%}class="right-muqinjie-bottom-list-l-item"{%/if%}><img src="{%$item.img%}" /> <span>{%$item.subject|limitlen:8%}</span> </a> {%/foreach%} <br> </div> </div> </div></div><script>A.setup(function(){var __this = this,smsText = "我今年***岁，妈妈已经***岁了，从出生到现在，妈妈已经为我做了***顿美味的饭菜。我已离家在外***年，不能常伴妈妈身边。未来，假如我离家在外每年只能陪妈妈吃10次饭的话，那么，直到妈妈***岁的时候，我还有***次机会陪她吃饭，我要学做妈妈最拿手的菜，回家做给她吃。",year1 = __this.find(".right-muqinjie-no-compute-input1").get(0),year2 = __this.find(".right-muqinjie-no-compute-input2").get(0),year3 = __this.find(".right-muqinjie-no-compute-input3").get(0),$computeBtn = __this.find(".right-muqinjie-compute-btn").eq(0),computeError = __th{%*i*%}is.find(".right-muqinjie-compute-error").get(0),computeInfo = __this.find(".right-muqinjie-compute-info").get(0),no_compute = __this.find(".right-muqinjie-no-compute").get(0),computeResult = __this.find(".right-muqinjie-compute").get(0),smsbox = __this.find(".right-muqinjie-sms").get(0),bdshare = document.getElementById("bdshare"),swf = __this.find('.right-muqinjie-tvflash').get(0),flashbox = __this.find(".right-muqinjie-video").get(0),codeimg = __this.find(".right-muqinjie-sms-codeImg").get(0),{%*i*%}codeinput = __this.find(".right-muqinjie-sms-codeInput").get(0),tel = __this.find(".right-muqinjie-sms-tel").get(0),smscontent = __this.find(".right-muqinjie-sms-content").get(0),$sendsms = __this.find(".right-muqinjie-sms-btn").eq(0),sendsmssuccess= __this.find(".right-muqinjie-sms-sended").get(0),sendsmstips = __this.find(".right-muqinjie-sms-sendtips").get(0);var ajaxFinished = false,rmqtimer,prints;A.muqinjie = {flashPlayEnd: function(){flashbox.style.display= "";swf.parentNode.removeChild(s{%*i*%}wf);}};var tokencode = "";function genvcode(){$.ajax({url:"http://www.baidu.com/ups/common/data/genvcode?pid=super&app=mother",dataType:'jsonp',success:function(data){if(ajaxFinished) return;if( data.bsErrNo == 0 ){data = data.bsData;codeimg.src = data.imgurl;tokencode = data.code;}}});}__this.find(".right-muqinjie-sms-toggle-code").eq(0).on("click", genvcode);$sendsms.on("click", function(){if(codeinput.value === ""){sendsmstips.style.display = "";sendsmstips.innerHTML = "验证码不能为空"; sendsmssucce{%*i*%}ss.style.display = "none"; return;}if(tel.value === ""){sendsmstips.style.display = "";sendsmstips.innerHTML = "手机号码不能为空"; sendsmssuccess.style.display = "none"; return;}if(!/^1[3458][0-9]{9}$/.test(tel.value)){sendsmstips.style.display = "";sendsmstips.innerHTML = "手机号码格式不对"; sendsmssuccess.style.display = "none"; return;}var querystring = "code=" + tokencode + "&input=" + codeinput.value + "&tel=" + tel.value + "&no=" + smscontent.value;$.ajax({url:"http://www.baidu.com/ups/common/submit/sends{%*i*%}ms?pid=super&app=mother&" + querystring,dataType:'jsonp',success:function(data){if(ajaxFinished) return;if( data.bsErrNo == 0){sendsmstips.style.display = "none";sendsmssuccess.style.display = ""; genvcode();return;}sendsmssuccess.style.display = "none"; sendsmstips.style.display = "";switch(data.bsErrNo){case 500:sendsmstips.innerHTML = "服务异常";break; case 6000:sendsmstips.innerHTML = "验证码错误";break;default:sendsmstips.innerHTML = "服务器异常";}genvcode();}});});A.use("swf",function(){var amuqin=A.ui.{%*i*%}swf();if( amuqin.version && parseInt(amuqin.version) > 9 ){swf.style.display = "";$(function(){rmqtimer = setTimeout(function(){document.documentElement.scrollTop = 0;document.body.scrollTop = 0;}, 1);amuqin.create({'id' : "name",'url' : "http://www.baidu.com/aladdin/img/muqinjie/tv.swf",'vars' : 'ns=op_mayday_flash1234','width' : document.documentElement.offsetWidth,'height' : 700,'wmode' : 'transparent','allowscriptaccess' : 'always','allownetworking' : 'all'}, swf);});}});year1.onkeyup = year{%*i*%}1.onchange = (function(){var tmp = "";return function(){computeError.innerHTML = "";if( /^(?:0?|[1-9]\d?)$/.test(this.value) ){tmp = this.value;}else{this.value = tmp; }};})();year2.onkeyup = year2.onchange = (function(){var tmp = "";return function(){computeError.innerHTML = "";if( /^(?:0?|[1-9]\d?|1[01]\d|120)$/.test(this.value) ){tmp = this.value;}else{this.value = tmp; }};})();year3.onkeyup = year3.onchange = (function(){var tmp = "";return function(){computeError.innerHTML = "";if( /^(?:0?|{%*i*%}[1-9]\d?)$/.test(this.value) ){tmp = this.value;}else{this.value = tmp; }};})();$computeBtn.on("click", function(){try{bds.su.urSendClick({pid:'temp',method:'click',type:'mothersday'});}catch(e){}var x = year1.value - 0, y = year2.value - 0, z = year3.value - 0;if( x === "" || y === "" || z === ""){computeError.innerHTML = "亲，请填写相关信息~";x === "" && year1.focus();y === "" && year2.focus();z === "" && year3.focus();return;}if( y - x < 15 || x < z || x > 85){computeError.innerHTML = "填写信息有误，请检查~"; y{%*i*%}ear1.focus();return;}var n = y >= 85 ? y + 5 : 85,data = [ x, y, ( x-z ) * 2 * 365 + z * 10, z, n,( n - y ) * 10 ];var text = smsText.replace(/\*{3}/g, function(){return data.shift();});bdshare.setAttribute("data", "{'text':'#最爱妈妈的味道#"+ text +"','pic':'http://www.baidu.com/aladdin/img/muqinjie/fenxiang.png'}");var html = ""; _html = text.split("");document.documentElement.scrollTop = 180;document.body.scrollTop = 180;prints = setInterval(function(){var str = _html.shift();if( str ){if( isNaN(str{%*i*%}) ){html += str; }else{html += "<span>" + str + "</span>"; }computeInfo.innerHTML = html;return;}clearInterval(prints);}, (/msie (\d+\.\d+)/i.test(navigator.userAgent) ? (document.documentMode || + RegExp['\x241']) : undefined) ? 1 : 14);no_compute.style.display = "none";computeResult.style.display = "";smsbox.style.display = "";genvcode();});__this.find(".right-muqinjie-compute-to-nocompute").eq(0).on("click", function(){no_compute.style.display = "";computeResult.style.display = "none";smsbox.{%*i*%}style.display = "none";});this.dispose = function(){clearTimeout(rmqtimer);clearInterval(prints);if(!ajaxFinished){ajaxFinished = true;}};});</script> {%$FE_GBVAR.wrapper_suffix%}{%/block%}