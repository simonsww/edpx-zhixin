{%extends 'c_base.tpl'%}

{%block name="title"%}{%/block%}
{%block name="foot"%}{%/block%}

{%block name='content'%}

    <style type="text/css" data-merge>
        .ecl-game-download{position:relative;padding:5px 10px 0 0;font-size:12px;font-family:arial}.ecl-game-download h1,.ecl-game-download h2,.ecl-game-download h3,.ecl-game-download h4,.ecl-game-download h5,.ecl-game-download h6{margin:0;padding:0;font-weight:normal}.ecl-game-download th{font-weight:normal}.ecl-game-download .game-title{height:23px;margin:0;padding:4px 0 0;line-height:1;font-size:16px;color:#00C;font-weight:normal;text-decoration:underline}.ecl-game-download .game-showurl{color:#008000;margin:2px 0 0 0}
.ecl-game-download .game-sprite{background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/game/ecl-game-download-button.png") top left no-repeat}.ecl-game-download .game-title em{color:#C00;font-style:normal;text-decoration:underline}.ecl-game-download .game-clearfix:before,.ecl-game-download .game-clearfix:after{content:"";display:table}.ecl-game-download .game-clearfix:after{clear:both}.ecl-game-download .game-clearfix{zoom:1}.ecl-game-download .game-detail{border:1px solid #e3e3e3;border-bottom-color:#e0e0e0;border-right-color:#ececec;-khtml-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-webkit-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-moz-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-o-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-icab-box-shadow:1px 2px 1px rgba(0,0,0,0.072);background:#FFF\9;filter:progid:DXImageTransform.Microsoft.Shadow(Strength=2,Direction=135,Color=#e2e2e2) \9;margin-bottom:-2px \9;margin-right:-2px \9;-ms-box-shadow:1px 2px 1px rgba(0,0,0,0.072);box-shadow:1px 2px 1px rgba(0,0,0,0.072);border-collapse:separate;margin:1px 0 7px 1px;*margin-bottom:5px;padding:10px 11px 31px 9px;_padding-bottom:0;height:93px;width:516px}
.ecl-game-download .game-detail .game-pic{float:left;margin-right:10px}.ecl-game-download .game-detail .game-pic img{width:121px;height:91px}.ecl-game-download .game-detail .game-info{float:left;width:350px}.ecl-game-download .game-detail .game-info .game-sub-title{font-size:18px;float:left;font-family:"Microsoft YaHei";height:24px}.ecl-game-download .game-detail .game-info .game-feature{margin:4px 0 0 0;*margin-top:5px;float:left;list-style-type:none}.ecl-game-download .game-detail .game-info .game-feature .no-border{border-right-width:0}
.ecl-game-download .game-detail .game-info .game-feature li{display:inline-block;*display:inline;zoom:1;padding:0 10px;height:13px;line-height:13px;*height:12px;*padding-top:1px;*margin:0 2px;color:#666;border-right:1px solid #666}.ecl-game-download .game-detail .game-info .game-description{color:#666;margin:2px 0 3px 0;line-height:16px;font-size:13px}.ecl-game-download .game-detail .game-info .game-download-button{display:block;float:left;height:32px;width:100px;margin:0 10px 0 0;text-indent:-10000px}.ecl-game-download .game-detail .game-info .game-download-button:hover{background-position:0 -33px}
.ecl-game-download .game-detail .game-info .game-download-button:active{background-position:0 -66px}.ecl-game-download .game-detail .game-info .game-download-h{margin-left:-2px;background-position:-120px 0}.ecl-game-download .game-detail .game-info .game-download-h:hover{background-position:-120px -33px}.ecl-game-download .game-detail .game-info .game-download-h:active{background-position:-120px -66px}.ecl-game-download .game-detail .game-info .game-extra{float:left;clear:both;height:28px;padding-left:19px;line-height:30px;*padding-top:1px;color:#6fba2b;background-position:0 -111px;width:200px}
    </style>
    
    <div class="ecl-game-download">
    {%if $tplData.titleurl%}
    <h4 class="game-title"><a target="_blank" class="game-header-link" href="{%$tplData.titleurl%} ">{%$tplData.title%}</a></h4>
    {%/if%}
    <div class="game-detail game-clearfix">
        <div class="game-pic">
            <a href="{%$tplData.detailurl%}" target="_blank"><img src="{%$tplData.gamepic|escape:'html'%}"></a>
        </div>
        <div class="game-info">
            <div class="game-clearfix">
            <h3 class="game-sub-title">{%$tplData.gamename|escape:'html'%}</h3>
            <ul class="game-feature">
                <li>官方</li><li class="no-border">最新版本</li>
            </ul>
            </div>
            <p class="game-description">
                游戏大小：{%$tplData.softwaresize%}<br/>
                运行环境：{%$tplData.os%}
            </p>
            <div class="game-clearfix">
                <a class="game-download-button game-sprite" href="{%$tplData.downloadurl%}">点击下载</a>
                {%if isset($tplData.size) && $tplData.size>200%}<a class="game-download-button game-sprite game-download-h" href="{%$tplData.downloadurl%}">高速下载</a>{%/if%}
                <div class="game-extra game-sprite">已通过百度安全监测，放心下载</div>
            </div>
        </div>
    </div>
    <p class="game-showurl">{%$tplData.showurl|escape:'html'%}</p>
</div>

    {%* “高速下载”插件 *%}
    {%if isset($tplData.size) && $tplData.size > 200%}
        <script data-compress="off">
            A.setup({
                downloadurl: '{%$tplData.downloadurl|escape:"javascript"%}',
                gamename: '{%$tplData.gamename|escape:"javascript"%}'
            });
        </script>
        <script data-merge>
            A.init(function () {
                var downloadurl = this.data.downloadurl;
                var gamename = this.data.gamename;
                this.dispose=function(){function e(){w.open(a),i=!1,s.pollingCheck(t,1e3)}function t(){var e=s.instance();if(e)try{e.SetErrorFunc("OnBDDownloadError");for(var t in d){var n="--PageURL="+document.location.toString(),o=" --DownloadURL="+t,r=" --Refer="+document.referrer;e.CallBrowser2(n,o,r),delete d[t]}}catch(i){}}var n,o=!0,r="BAIDU".toLowerCase(),i=!1,a="",d={},l="",c="";!function(){return function(e){(new Image).src="http://liulanqi."+r+".com/downloadversion/log.txt?type="+e+"&tn="+l+"&rnd="+ +new Date}}();
var u=function(e){var t=function(){return"Win32"==e.navigator.platform||"Win64"==e.navigator.platform?!0:!1},r=function(){if(t())if(e.navigator.userAgent.indexOf("MSIE")>0)try{var n=new ActiveXObject("browserAX.BrowserControl.1");if(n){if(document.getElementById("BDDownload"))return document.getElementById("BDDownload");var o=document.createElement("div");return o.style.display="none",document.body.appendChild(o),o.innerHTML='<OBJECT ID="BDDownload" CLASSID="CLSID:3BD12A60-DFF4-4C91-B322-4B97FF710A40" ></OBJECT>',document.getElementById("BDDownload")
}}catch(r){}else{var i=e.navigator.mimeTypes["application/hao123browser-activex"];if(i){if(document.getElementById("BDBrowserControl"))return document.getElementById("BDBrowserControl");var a=document.createElement("embed");return a.style.visibility="hidden",a.type="application/hao123browser-activex",a.width=0,a.height=0,a.setAttribute("progid","browserAX.BrowserControl.1"),a.setAttribute("id","BDBrowserControl"),document.body.appendChild(a),a}}},a=function(){if(t())if(e.navigator.userAgent.indexOf("MSIE")>0)try{var n=new ActiveXObject("browserAX.BrowserControl.1");
return n}catch(o){}else{navigator.plugins&&navigator.plugins.refresh(!1);var r=e.navigator.mimeTypes["application/hao123browser-activex"];if(r)return d();if(navigator.plugins)for(var i=0;i<navigator.plugins.length;i++)if(navigator.plugins[i][0].type&&"application/hao123browser-activex"==navigator.plugins[i][0].type)return d()}},d=function(){var e=document.getElementById("BDBrowserControlNew");e&&e.parentNode.removeChild(e);var t=document.createElement("embed");return t.style.visibility="hidden",t.type="application/hao123browser-activex",t.width=0,t.height=0,t.setAttribute("progid","browserAX.BrowserControl.1"),t.setAttribute("id","BDBrowserControlNew"),document.body.appendChild(t),t
},l=function(){var e=u();return e>=c},u=function(){try{return a().GetVersion()}catch(e){return""}},s=function(e,t){l()?e&&"function"==typeof e&&!i&&(e(),i=!0):(t||(t=1e3),n=setTimeout(function(){o&&s(e,t)},t))};return{exist:l,instance:r,pollingCheck:s}}(window),s=u,w={g:function(e){return document.getElementById(e)},open:function(e){var t=document.getElementById("BD_DOWNLOAD_FORM");t||(t=document.createElement("form"),t.id="BD_DOWNLOAD_FORM",t.setAttribute("method","post"),t.setAttribute("target","BD_DOWNLOAD_FRAME"),t.innerHTML='<iframe name="BD_DOWNLOAD_FRAME" id="BD_DOWNLOAD_FRAME" style="display:none; visibility:hidden;" >',document.body.appendChild(t)),t.setAttribute("action",e),t.submit()
}};window.OnBDDownloadError=function(){e()};var m=function(n,o,i){var u="高速下载器.exe";o&&(u=o+"-高速下载器.exe"),l="hao123",a=i||"http://dl.client."+r+".com/promote.php?source=hao123/browser/promote/hao123browser_fast_downloader.exe&name=${0}".replace("${0}",encodeURIComponent(u)),d[n]={resource:o,title:u},c="hao123AX 1.200.0.1",s.exist()?t():e()};return window.BDBROWSER_EXPORT=m,function(){o=!1;try{window.clearTimeout(n)}catch(e){}window.BDBROWSER_EXPORT&&(window.BDBROWSER_EXPORT=null),window.OnBDDownloadError&&(window.OnBDDownloadError=null)
}}(),$(".game-download-h",this.container).click(function(e){BDBROWSER_EXPORT(downloadurl,gamename),e.preventDefault()}); // this.dispose inside
            });
        </script>
    {%/if%}

{%/block%}