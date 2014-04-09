{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecr-game-give-number-hot{font-size:12px}.container_s .ecr-game-give-number-hot{width:270px;overflow:hidden}.container_l .ecr-game-give-number-hot{width:440px}.ecr-game-give-number-hot .title{position:relative;font-size:14px;height:22px;line-height:22px}.ecr-game-give-number-hot .title h2{position:absolute;background:#fff;font-weight:bold;z-index:2;font-size:14px;margin:0;padding:0;padding-right:10px}.ecr-game-give-number-hot .title .line{position:absolute;top:11px;width:100%;height:0;font-size:0;border-top:1px solid #eaeaea;z-index:1}
.ecr-game-give-number-hot .text-gift-info{color:#666}.ecr-game-give-number-hot .icon-index{font-size:0;width:13px;height:13px;zoom:1;*line-height:0;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.5.gif');display:block;*display:inline}.ecr-game-give-number-hot .icon-index-10{background-position:0 -207px}.ecr-game-give-number-hot .icon-index-9{background-position:0 -194px}.ecr-game-give-number-hot .icon-index-8{background-position:0 -181px}.ecr-game-give-number-hot .icon-index-7{background-position:0 -168px}.ecr-game-give-number-hot .icon-index-6{background-position:0 -155px}
.ecr-game-give-number-hot .icon-index-5{background-position:0 -142px}.ecr-game-give-number-hot .icon-index-4{background-position:0 -129px}.ecr-game-give-number-hot .icon-index-3{background-position:0 -116px}.ecr-game-give-number-hot .icon-index-2{background-position:0 -103px}.ecr-game-give-number-hot .icon-index-1{background-position:0 -90px}.ecr-game-give-number-hot .games a:hover{text-decoration:undeline}.ecr-game-give-number-hot .games a{text-decoration:none}.ecr-game-give-number-hot .games a:hover{text-decoration:underline}
.ecr-game-give-number-hot .games td{vertical-align:middle;border-bottom:1px solid #f5f5f5;height:28px}.ecr-game-give-number-hot .games .name{float:left;width:100px;overflow:hidden;white-space:nowrap;word-break:keep-all;text-overflow:ellipsis}.ecr-game-give-number-hot .games .text-gift-column{float:left;width:190px;overflow:hidden;white-space:nowrap;word-break:keep-all;text-overflow:ellipsis}.ecr-game-give-number-hot .games td.column-enter{width:80px}.ecr-game-give-number-hot .more{padding-top:10px}.container_s .ecr-game-give-number-hot .text-gift-column{display:none!important}
.container_l .ecr-game-give-number-hot .text-gift-column{display:block!important}.container_s .games td.column-enter{width:60px;text-align:center}
</style>

{%*热门发号排行榜模板*%}
<div class="ecr-game-give-number-hot">
  <div class="title">
    <h2>热门发号排行榜</h2>
    <div class="line"></div>
  </div>

  <table cellpadding="2" cellspacing="0" width="100%" class="games">
    {%foreach $tplData.games as $item%}
    <tr>
      <td width="21px"><i class="icon-index icon-index-{%$item@index + 1%}">&nbsp;</i></td>
      <td><div class="name"><a target="_blank" href="{%$item.gifturl%}" title="{%$item.name%}">{%$item.name|limitlen:16%}</a></div>
          <div class="text-gift-column"><span class="text-gift-info" title="{%$item.giftname%}">{%$item.giftname|limitlen:26%}</span></div></td>
      <td class="column-enter"><a class="entry" target="_blank" href="{%$item.gifturl%}">{%$item.gifttext%}</a></td>
    </tr>
    {%/foreach%}
  </table>

  <div class="more">
    <a target="_blank" href="{%$tplData.view_more_url%}">查看更多榜单</a>
   </div>
</div>


{%/block%}
