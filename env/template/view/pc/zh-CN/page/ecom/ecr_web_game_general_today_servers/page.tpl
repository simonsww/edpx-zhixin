{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecr-web-game-today-servers{font-size:12px}.container_s .ecr-web-game-today-servers{width:270px;overflow:hidden}.container_l .ecr-web-game-today-servers{width:440px}.ecr-web-game-today-servers .title{position:relative;font-size:14px;height:22px;line-height:22px}.ecr-web-game-today-servers .title h2{position:absolute;background:#fff;font-weight:bold;z-index:2;font-size:14px;margin:0;padding:0;padding-right:10px}.ecr-web-game-today-servers .title .line{position:absolute;top:11px;width:100%;height:0;font-size:0;border-top:1px solid #eaeaea;z-index:1}
.ecr-web-game-today-servers .games{margin-top:5px;table-layout:fixed}.ecr-web-game-today-servers .games a{text-decoration:none}.ecr-web-game-today-servers .games a:hover{text-decoration:underline}.ecr-web-game-today-servers .games th{background:#fafafa;text-align:left;font-weight:normal;border-bottom:1px solid #f0f0f0;color:#666;padding:0 2px;height:24px;line-height:24px}.ecr-web-game-today-servers .games td{border-bottom:1px solid #f3f3f3}.ecr-web-game-today-servers .games th,.ecr-web-game-today-servers .games td{vertical-align:top;overflow:hidden;white-space:nowrap;word-break:keep-all;text-overflow:ellipsis}
.ecr-web-game-today-servers .games th.column-enter{width:60px;padding-right:32px}.ecr-web-game-today-servers .games th.column-name{width:102px}.ecr-web-game-today-servers .games th.column-time{width:100px}.ecr-web-game-today-servers .games .text-operator{color:#666}.ecr-web-game-today-servers .games td.column-enter{padding-left:12px}.ecr-web-game-today-servers .more{padding-top:10px}.container_s .games th.column-name{width:auto!important}.container_s .games th.column-enter{width:60px;text-align:center;padding-right:2px}
.container_s .games td.column-enter{text-align:center;padding-left:2px}.container_s .games th.column-time{width:60px}
</style>

<div class="ecr-web-game-today-servers">
  <div class="title">
    <h2>网页游戏今日开服表（{%date("m月d日")%}）</h2>
    <div class="line"></div>
  </div>

  <table cellpadding="5" cellspacing="0" width="100%" class="games">
    <tr>
      <th class="column-time">开服时间</th>
      <th class="column-name">游戏名称</th>
      <th>运营厂商</th>
      <th class="column-enter">开始游戏</th>
    </tr>
    {%foreach $tplData.games as $item%}
    <tr>
      <td>{%$item.launch_time|escape:'html'%}</td>
      <td><a title="{%$item.name|escape:'html'%}" href="{%$item.url|escape:'html'%}" target="_blank">{%$item.name|limitlen:14%}</a></td>
      <td title="{%$item.operator|escape:'html'%}"><span class="text-operator">{%$item.operator|limitlen:20%}</span></td>
      <td class="column-enter"><a href="{%$item.game_entry_url|escape:'html'%}" target="_blank">进入</a></td>
    </tr>
    {%/foreach%}
  </table>

  <div class="more">
    <a target="_blank" href="{%$tplData.view_more_url|escape:'html'%}">查看完整开服信息</a>
   </div>
</div>


{%/block%}
