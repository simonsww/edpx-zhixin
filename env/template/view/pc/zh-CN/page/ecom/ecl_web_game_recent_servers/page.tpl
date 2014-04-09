{%extends 'base_div.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecr-web-game-recent-servers{font-size:13px}.ecr-web-game-recent-servers h1,.ecr-web-game-recent-servers h2,.ecr-web-game-recent-servers h3,.ecr-web-game-recent-servers h4,.ecr-web-game-recent-servers h5,.ecr-web-game-recent-servers h6{margin:0;padding:0;font-weight:normal}.ecr-web-game-recent-servers th{font-weight:normal}.ecr-web-game-recent-servers .icon-expand,.ecr-web-game-recent-servers .icon-collapse{font-size:0;width:12px;height:12px;line-height:1;background:url(http://www.baidu.com/aladdin/img/video/nav.gif) 0 0;display:inline-block;*display:inline}
.ecr-web-game-recent-servers .icon-expand{background-position:0 -12px}.ecr-web-game-recent-servers h3{font-size:16px;margin:0 0 10px 0;padding:0;line-height:18px}.ecr-web-game-recent-servers .games{margin-top:5px;table-layout:fixed}.ecr-web-game-recent-servers .games a{text-decoration:none}.ecr-web-game-recent-servers .games a:hover{text-decoration:underline}.ecr-web-game-recent-servers .games th{vertical-align:top;background:#fafafa;text-align:left}.ecr-web-game-recent-servers .games td{vertical-align:top;border-bottom:1px solid #f0f0f0}
.ecr-web-game-recent-servers .games .launch-time{white-space:nowrap}.ecr-web-game-recent-servers .games .server-name{width:180px;overflow:hidden;white-space:nowrap;word-break:keep-all;text-overflow:ellipsis}.ecr-web-game-recent-servers .more{padding-top:10px;overflow:hidden;zoom:1;height:15px;line-height:1}.ecr-web-game-recent-servers .more span,.ecr-web-game-recent-servers .more i{float:left}.ecr-web-game-recent-servers .more span{padding-right:5px;text-decoration:underline;cursor:pointer}.ecr-web-game-recent-servers .partners{overflow:hidden;zoom:1;padding-top:5px}
.ecr-web-game-recent-servers .partners a{text-decoration:none}.ecr-web-game-recent-servers .partners a:hover{text-decoration:underline}.ecr-web-game-recent-servers .partners h6{font-size:12px;margin-top:5px}.ecr-web-game-recent-servers .partners h6,.ecr-web-game-recent-servers .partners ul{float:left}.ecr-web-game-recent-servers .partners img{float:left;margin-top:2px}.ecr-web-game-recent-servers .partners li{border:1px solid #e0e0e0;float:left;height:20px;line-height:20px;padding:0 3px;margin-right:10px;background:#fff}
</style>

<div class="ecr-web-game-recent-servers">
  <h3><a href="{%$tplData.title_url%}" target="_blank">{%$tplData.title|limitlen:48|escape:'html'|highlight:0%}</a></h3>

  <table cellpadding="6" cellspacing="0" width="100%" class="games">
    <tr>
      <th>开服时间</th>
      <th>运营厂商</th>
      <th>服务器名</th>
      <th>开始游戏</th>
    </tr>
    {%foreach $tplData.operators as $item%}
    <tr{%if $item@index >= 3%} style="display:none"{%/if%}>
      <td><div class="launch-time">{%$item.launch_time|escape:'html'%}</div></td>
      <td>
      {%if $item.operator_url%}
      <a href="{%$item.operator_url|escape:'html'%}" target="_blank">{%$item.operator|escape:'html'%}</a>
      {%else%}
      {%$item.operator|escape:'html'%}
      {%/if%}
      {%if $item.gift_url%}
        {%if $item.gift_end_time%}
          {%if $item.gift_end_time > time()%}
          （<a href="{%$item.gift_url|escape:'html'%}" target="_blank">礼包领取</a>）
          {%/if%}
        {%else%}
          {%*只有$item.gift_url存在的情况*%}
          （<a href="{%$item.gift_url|escape:'html'%}" target="_blank">礼包领取</a>）
        {%/if%}
      {%/if%}
      </td>
      <td><div class="server-name" title="{%$item.server_name|escape:'html'%}">{%$item.server_name|escape:'html'%}</div></td>
      <td><a href="{%$item.game_entry_url|escape:'html'%}" target="_blank">开始游戏</a></td>
    </tr>
    {%/foreach%}
  </table>

  {%if count($tplData.operators) > 3%}
  <div class="more">
    <a target="_blank" href="#"><span>显示更多</span><i class="icon-collapse">&nbsp;</i></a>
   </div>
  {%/if%}
</div>


<script type="text/javascript">
A.init(function(){function e(e){var a=n.getElementsByTagName("table");if(a&&(a=a[0]))for(var t=4,i=a.rows.length;i>t;t++)a.rows[t].style.display=e?"":"none"}var n=this.container,a=this.qq("more");if(a){var t=!0,i=a.getElementsByTagName("a")[0],o=a.getElementsByTagName("span")[0],s=a.getElementsByTagName("i")[0];i.onclick=function(n){e(t),t=!t,baidu.event.preventDefault(n||window.event),o&&(o.innerHTML=t?"显示更多":"收起",s.className=t?"icon-collapse":"icon-expand")}}});
</script>

{%/block%}
