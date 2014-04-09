{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecr-web-game-today-servers{font-size:13px}.container_s .ecr-web-game-today-servers{width:270px;overflow:hidden}.container_l .ecr-web-game-today-servers{width:440px}.ecr-web-game-today-servers .title{position:relative;font-size:14px;height:22px;line-height:22px}.ecr-web-game-today-servers .title h2{position:absolute;background:#fff;font-weight:bold;z-index:2;font-size:14px;margin:0;padding:0;padding-right:10px}.ecr-web-game-today-servers .title .line{position:absolute;top:11px;width:100%;height:0;font-size:0;border-top:1px solid #eaeaea;z-index:1}
.ecr-web-game-today-servers .games{margin-top:5px;table-layout:fixed}.ecr-web-game-today-servers .games a{text-decoration:none}.ecr-web-game-today-servers .games a:hover{text-decoration:underline}.ecr-web-game-today-servers .games th{background:#f1f1f1;text-align:left;font-weight:normal}.ecr-web-game-today-servers .games td{border-bottom:1px solid #ebebeb}.ecr-web-game-today-servers .games th,.ecr-web-game-today-servers .games td{vertical-align:top;overflow:hidden;white-space:nowrap;word-break:keep-all;text-overflow:ellipsis}
.container_l .ecr-web-game-today-servers .games .launch-time{width:95px}.container_l .ecr-web-game-today-servers .games .game-name{width:140px}.container_s .ecr-web-game-today-servers .games .launch-time{width:60px}.ecr-web-game-today-servers .games .sep{margin:0 10px 0 8px;color:#999}.ecr-web-game-today-servers .more{padding-top:10px}
</style>

<div class="ecr-web-game-today-servers">
  <div class="title">
    <h2>网页游戏今日开服表（{%date("m月d日")%}）</h2>
    <div class="line"></div>
  </div>

  <table cellpadding="5" cellspacing="0" width="100%" class="games">
    <tr>
      <th class="launch-time">开服时间</th>
      <th class="game-name">游戏名称</th>
      <th>运营厂商</th>
    </tr>
    {%foreach $tplData.games as $item%}
    <tr>
      <td>{%$item.launch_time|escape:'html'%}</td>
      <td><a title="{%$item.name|escape:'html'%}" href="{%$item.url|escape:'html'%}" target="_blank">{%$item.name|escape:'html'%}</a></td>
      {%if $item.operator_url%}
      <td><a href="{%$item.game_entry_url|escape:'html'%}" target="_blank">进入</a><span class="sep">|</span><a title="{%$item.operator|escape:'html'%}" href="{%$item.operator_url|escape:'html'%}" target="_blank">{%$item.operator|escape:'html'%}</a></td>
      {%else%}
      <td title="{%$item.operator|escape:'html'%}"><a href="{%$item.game_entry_url|escape:'html'%}" target="_blank">进入</a><span class="sep">|</span>{%$item.operator|escape:'html'%}</td>
      {%/if%}
    </tr>
    {%/foreach%}
  </table>

  <div class="more">
    <a target="_blank" href="{%$tplData.view_more_url|escape:'html'%}">查看完整开服信息</a>
   </div>
</div>


{%/block%}
