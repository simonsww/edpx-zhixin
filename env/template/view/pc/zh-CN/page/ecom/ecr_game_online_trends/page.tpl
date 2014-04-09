{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecr-game-online-trends{width:270px;font-size:13px}.ecr-game-online-trends .title{position:relative;font-size:14px;height:22px;line-height:22px}.ecr-game-online-trends .title h2{position:absolute;background:#fff;font-weight:bold;z-index:2;font-size:14px;margin:0;padding:0;padding-right:10px}.ecr-game-online-trends .title .line{position:absolute;top:11px;width:100%;height:0;font-size:0;border-top:1px solid #eaeaea;z-index:1}.ecr-game-online-trends .icon-index{font-size:0;width:13px;height:13px;zoom:1;*line-height:0;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.5.gif');display:block;*display:inline}
.ecr-game-online-trends .icon-index-10{background-position:0 -207px}.ecr-game-online-trends .icon-index-9{background-position:0 -194px}.ecr-game-online-trends .icon-index-8{background-position:0 -181px}.ecr-game-online-trends .icon-index-7{background-position:0 -168px}.ecr-game-online-trends .icon-index-6{background-position:0 -155px}.ecr-game-online-trends .icon-index-5{background-position:0 -142px}.ecr-game-online-trends .icon-index-4{background-position:0 -129px}.ecr-game-online-trends .icon-index-3{background-position:0 -116px}
.ecr-game-online-trends .icon-index-2{background-position:0 -103px}.ecr-game-online-trends .icon-index-1{background-position:0 -90px}.ecr-game-online-trends .games a{text-decoration:none}.ecr-game-online-trends .games a:hover{text-decoration:underline}.ecr-game-online-trends .games td{vertical-align:middle;border-bottom:1px solid #f5f5f5;height:28px}.ecr-game-online-trends .games .name{padding-left:2px;overflow:hidden;white-space:nowrap;word-break:keep-all;text-overflow:ellipsis}.ecr-game-online-trends .games .type-column{width:100px;color:#666;text-align:right}
.ecr-game-online-trends .list-come-from{text-align:right;color:#666}.ecr-game-online-trends .list-come-from a{text-align:right;text-decoration:underline;color:#666}
</style>

<div class="ecr-game-online-trends">
  <div class="title">
    <h2>{%if $tplData.ordertype=='hot'%}网络游戏风云榜{%else%}最新网游推荐{%/if%}</h2>
    <div class="line"></div>
  </div>

  <table cellpadding="2" cellspacing="0" width="100%" class="games">
    {%*网游风云榜*%}
    {%if $tplData.ordertype=='hot'%}
    {%foreach $tplData.games as $item%}
    {%$link="wd=`$item.name`&amp;srcid=`$extData.resourceid`&amp;zx_tpn=`$item@index`"%}
    <tr>
      <td width="25px"><i class="icon-index icon-index-{%$item@index + 1%}">&nbsp;</i></td>
      <td><div class="name"><a target="_blank" href="{%$item.url%}" title="{%$item.name%}">{%$item.name|limitlen:20%}</a></div></td>
      <td class="type-column">{%$item.click%}</td>
    </tr>
    {%/foreach%}
    {%*最新网游推荐*%}
    {%else%}
    {%foreach $tplData.games as $item%}
    {%$link="wd=`$item.name`&amp;srcid=`$extData.resourceid`&amp;zx_tpn=`$item@index`"%}
    <tr>
      <td width="25px"><i class="icon-index icon-index-{%$item@index + 1%}">&nbsp;</i></td>
      <td><div class="name"><a target="_blank" href="{%$item.url%}" title="{%$item.name%}">{%$item.name|limitlen:20%}</a></div></td>
      <td class="type-column">{%$item.type%}</td>
    </tr>
    {%/foreach%}
    {%/if%}
  </table>
  {%if $tplData.ordertype=='hot'%}
  <p class="list-come-from">来源：<a href="http://top.baidu.com/" target="_blank">百度风云榜</a> - <a href="{%$tplData.urlonline%}" target="_blank">网游榜</a></p>
  {%/if%}
</div>


{%/block%}
