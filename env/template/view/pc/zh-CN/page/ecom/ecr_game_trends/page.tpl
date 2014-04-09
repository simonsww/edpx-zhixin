{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecr-game-trends{font-size:13px}.container_s .ecr-game-trends{width:270px;overflow:hidden}.container_l .ecr-game-trends{width:440px}.ecr-game-trends .title{position:relative;font-size:14px;height:22px;line-height:22px}.ecr-game-trends .title h2{position:absolute;background:#fff;font-weight:bold;z-index:2;font-size:14px;margin:0;padding:0;padding-right:10px}.ecr-game-trends .title .line{position:absolute;top:11px;width:100%;height:0;font-size:0;border-top:1px solid #eaeaea;z-index:1}.ecr-game-trends .icon-trend{font-size:0;width:7px;height:8px;zoom:1;*line-height:0;background:url(http://bs.baidu.com/adtest/a1a9131431ffa7f3f400144f37e057b0.png);display:inline-block;*display:inline}
.ecr-game-trends .icon-trend-0{background-position:-19px -16px}.ecr-game-trends .icon-trend-1{background-position:-19px 0}.ecr-game-trends .icon-trend--1{background-position:-19px -8px}.ecr-game-trends .icon-index{font-size:0;width:13px;height:13px;zoom:1;*line-height:0;background:url(//bs.baidu.com/zhixin/9f7032169350ecbfc9d0cb4981566977.png);display:inline-block;*display:inline}.ecr-game-trends .icon-index-7{background-position:-98px -76px}.ecr-game-trends .icon-index-6{background-position:-83px -76px}.ecr-game-trends .icon-index-5{background-position:-68px -76px}
.ecr-game-trends .icon-index-4{background-position:-53px -76px}.ecr-game-trends .icon-index-3{background-position:-38px -76px}.ecr-game-trends .icon-index-2{background-position:-23px -76px}.ecr-game-trends .icon-index-1{background-position:-8px -76px}.ecr-game-trends .icon-index-8{background-position:-8px -92px}.ecr-game-trends .icon-index-9{background-position:-23px -92px}.ecr-game-trends .icon-index-10{background-position:-38px -92px}.ecr-game-trends .games{table-layout:fixed}.ecr-game-trends .games a{text-decoration:none}
.ecr-game-trends .games a:hover{text-decoration:underline}.ecr-game-trends .games td{vertical-align:middle;border-top:1px solid #ebebeb;height:28px}.ecr-game-trends .games .row-0 td{border-top:0}.ecr-game-trends .games .name{padding-left:2px;width:97px;overflow:hidden;white-space:nowrap;word-break:keep-all;text-overflow:ellipsis}.ecr-game-trends .games .game-rank{width:25px}.ecr-game-trends .games .game-name{width:97px}.ecr-game-trends .games .game-trend{width:75px}.container_l .ecr-game-trends .games .game-trend{width:136px}
.ecr-game-trends .more{padding-top:10px}
</style>

<div class="ecr-game-trends">
  <div class="title">
    <h2>同类游戏排行榜</h2>
    <div class="line"></div>
  </div>

  <table cellpadding="2" cellspacing="0" width="100%" class="games">
    {%foreach $tplData.games as $item%}
    <tr class="row-{%$item@index%}">
      <td class="game-rank"><i class="icon-index icon-index-{%$item@index + 1%}">&nbsp;</i></td>
      <td class="game-name"><div class="name" title="{%$item.name|escape:'html'%}"><a target="_blank" href="{%build_search_url params="wd={%$item.name%}&f=2&rsv_dl=0_right_game_{%$extData.resourceid%}"%}">{%$item.name|escape:'html'%}</a></div></td>
      <td class="game-trend"><i class="icon-trend icon-trend-{%$item.trend%}"></i></td>
      <td><a class="entry" target="_blank" href="{%$item.game_entry_url|escape:'html'%}">进入官网</a></td>
    </tr>
    {%/foreach%}
  </table>
</div>


{%/block%}
