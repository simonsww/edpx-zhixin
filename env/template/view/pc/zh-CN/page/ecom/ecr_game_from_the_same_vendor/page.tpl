{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecr-game-from-the-same-vendor{font-size:13px}.container_s .ecr-game-from-the-same-vendor{width:270px;overflow:hidden}.container_l .ecr-game-from-the-same-vendor{width:440px}.ecr-game-from-the-same-vendor .title{position:relative;font-size:14px;height:22px;line-height:22px}.ecr-game-from-the-same-vendor .title h2{position:absolute;background:#fff;font-weight:bold;z-index:2;font-size:14px;margin:0;padding:0;padding-right:10px}.ecr-game-from-the-same-vendor .title .line{position:absolute;top:11px;width:100%;height:0;font-size:0;border-top:1px solid #eaeaea;z-index:1}
.ecr-game-from-the-same-vendor .games{overflow:hidden;zoom:1;padding-top:10px;margin-right:-22px;height:94px}.ecr-game-from-the-same-vendor .figure{float:left;margin-right:22px}.ecr-game-from-the-same-vendor .figure img{border:1px solid #eee}.ecr-game-from-the-same-vendor .figcaption{text-align:center;width:70px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis}
</style>

<div class="ecr-game-from-the-same-vendor">
  <div class="title">
    <h2>同厂商游戏</h2>
    <div class="line"></div>
  </div>

  <div class="games">
    {%foreach $tplData.games as $item%}
    <div class="figure">
      <a target="_blank" href="{%build_search_url params="wd={%$item.name%}&f=2&rsv_dl=0_right_game_{%$extData.resourceid%}"%}"><img src="{%$item.image|escape:'html'%}" width="68px" height="68px" /></a>
      <div class="figcaption">
        <a target="_blank" title="{%$item.name|escape:'html'%}" href="{%build_search_url params="wd={%$item.name%}&f=2&rsv_dl=0_right_game_{%$extData.resourceid%}"%}">{%$item.name|escape:'html'%}</a>
      </div>
    </div>
    {%/foreach%}
  </div>

</div>


{%/block%}
