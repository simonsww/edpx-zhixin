{%extends 'c_base.tpl'%}

{%block name="title"%}{%/block%}
{%block name="foot"%}{%/block%}

{%block name='content'%}

    <style type="text/css" data-merge>
        .ecl-platform-small-game h1,.ecl-platform-small-game h2,.ecl-platform-small-game h3,.ecl-platform-small-game h4,.ecl-platform-small-game h5,.ecl-platform-small-game h6{margin:0;padding:0;font-weight:normal}.ecl-platform-small-game th{font-weight:normal}.ecl-platform-small-game .title{overflow:hidden;text-overflow:ellipsis;width:636px}.ecl-platform-small-game .title a{white-space:nowrap;font-size:16px}.ecl-platform-small-game ul{zoom:1}.ecl-platform-small-game ul li{float:left;margin-right:9px}.ecl-platform-small-game ul li a{display:block;width:78px}
.ecl-platform-small-game ul li .game-img{height:78px;overflow:hidden}.ecl-platform-small-game ul li .game-name{text-align:center;line-height:32px;font-size:12px;text-decoration:none;overflow:hidden;white-space:nowrap;word-wrap:normal;text-overflow:ellipsis}.ecl-platform-small-game ul li .game-name:hover{text-decoration:underline}.ecl-platform-small-game ul li.item-last{margin-right:0}.ecl-platform-small-game ul:after{content:".";display:block;height:0;clear:both;visibility:hidden}
.ecl-platform-small-game .item-container{width:513px;border:1px solid #e3e3e3;padding:9px 9px 0 9px;margin-top:8px;-moz-box-shadow:1px 2px 3px #e2e2e2;-webkit-box-shadow:1px 2px 3px #e2e2e2;-o-box-shadow:1px 2px 3px #e2e2e2;-ms-box-shadow:1px 2px 3px #e2e2e2;box-shadow:1px 2px 3px #e2e2e2;background:#FFF\9;filter:progid:DXImageTransform.Microsoft.Shadow(Strength=3,Direction=135,Color="#E2E2E2")\9}.ecl-platform-small-game .show-url{margin-top:8px;color:#008000;font-size:13px}
    </style>

    <div class="ecl-platform-small-game">
    <h4 class="title"><a href="{%$tplData.titleurl%}" target="_blank">{%$tplData.title%}</a></h4>
    <div class="item-container">
        <ul>
            {%foreach $tplData.list as $item%}

            <li {%if $item@last%}class="item-last"{%/if%}>
                <a class="game-img" href="{%$item.url%}" target="_blank">
                    <img src="{%$item.img%}" alt="{%$item.name%}" />
                </a>
                <a class="game-name" href="{%$item.url%}" target="_blank">{%$item.name%}</a>
            </li>
            {%/foreach%}
        </ul>
    </div>
    <div class="show-url">www.4399.com</div>
</div>

{%/block%}