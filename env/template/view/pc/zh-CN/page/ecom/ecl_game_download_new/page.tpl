{%extends 'base_div.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecl-game-download{position:relative;padding:5px 10px 0 0;font-size:13px;font-family:arial}.ecl-game-download h1,.ecl-game-download h2,.ecl-game-download h3,.ecl-game-download h4,.ecl-game-download h5,.ecl-game-download h6{margin:0;padding:0;font-weight:normal}.ecl-game-download th{font-weight:normal}.ecl-game-download .game-title{height:23px;margin:0;padding:4px 0 0;line-height:1;font-size:16px;color:#00c;font-weight:normal;text-decoration:underline}.ecl-game-download .game-safe{color:#4bad37;font-weight:bold;font-size:13px;padding:0 0 4px 22px;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/game/s2.jpg") top left no-repeat;background-position:0 -98px}
.ecl-game-download .game-showurl{color:#008000;margin:2px 0 0 0}.ecl-game-download .game-sprite{background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/game/s2.jpg") top left no-repeat}.ecl-game-download .game-title em{color:#c00;font-style:normal;text-decoration:underline}.ecl-game-download .game-clearfix:before,.ecl-game-download .game-clearfix:after{content:"";display:table}.ecl-game-download .game-clearfix:after{clear:both}.ecl-game-download .game-clearfix{zoom:1}.ecl-game-download .game-detail{width:518px;padding:9px;height:115px;border:1px solid #e3e3e3;border-bottom-color:#e0e0e0;border-right-color:#ececec;box-shadow:1px 2px 1px rgba(0,0,0,0.072);-webkit-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-moz-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-o-box-shadow:1px 2px 1px rgba(0,0,0,0.072)}
.ecl-game-download .game-detail .game-pic{float:left;margin:0 20px 0 10px}.ecl-game-download .game-detail .game-pic img{width:56px;height:56px}.ecl-game-download .game-detail .game-info{float:left;width:410px}.ecl-game-download .game-detail .game-info .game-description li{padding-bottom:6px}.ecl-game-download .game-detail .game-info .game-download-button{display:block;float:left;height:26px;width:89px;margin:0 10px 0 0;text-indent:-10000px}.ecl-game-download .game-detail .game-info .game-download-button:hover{background-position:0 -29px}
.ecl-game-download .game-detail .game-info .game-download-button:active{background-position:0 -59px}
</style>

<div class="ecl-game-download">
     {%if $tplData.titleurl%}
    <h4 class="game-title"><a target="_blank" class="game-header-link" href="{%$tplData.titleurl%} ">{%$tplData.title%}</a></h4>
    <h6 class="game-safe">已通过百度安全认证，请放心使用</h6>
    {%/if%}
    <div class="game-detail game-clearfix">
        <div class="game-pic">
            <a href="{%$tplData.titleurl%}" target="_blank"><img src="{%$tplData.gamepic2|escape:'html'%}"></a>
        </div>
        <div class="game-info">
            <ul class="game-description">
                <li>版本：{%$tplData.lastversion%}</li>
                <li>大小：{%$tplData.softwaresize%}</li>
                <li>更新：{%$tplData.updatetime%}</li>
                <li>环境：{%$tplData.os%}</li>
            </ul>
             <a class="game-download-button game-sprite" href="{%$tplData.downloadurl%}">点击下载</a>
        </div>
    </div>
    <p class="game-showurl">{%$tplData.showurl%}</p>
</div>


{%/block%}
