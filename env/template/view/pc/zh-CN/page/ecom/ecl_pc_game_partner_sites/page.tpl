{%extends 'base_div.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecl-pc-game-partner-sites{width:539px;font-size:13px}.ecl-pc-game-partner-sites h1,.ecl-pc-game-partner-sites h2,.ecl-pc-game-partner-sites h3,.ecl-pc-game-partner-sites h4,.ecl-pc-game-partner-sites h5,.ecl-pc-game-partner-sites h6{margin:0;padding:0;font-weight:normal}.ecl-pc-game-partner-sites th{font-weight:normal}.ecl-pc-game-partner-sites h3{font-size:16px}.ecl-pc-game-partner-sites .sitemap{overflow:hidden;zoom:1;padding:12px 0 0 0}.ecl-pc-game-partner-sites .sitemap li{float:left}.ecl-pc-game-partner-sites .sitemap .sep{margin:0 10px}
.ecl-pc-game-partner-sites .posts{table-layout:fixed;margin-top:5px}.ecl-pc-game-partner-sites .posts th{text-align:left;padding-left:0;font-weight:normal;vertical-align:top;overflow:hidden;white-space:nowrap;word-break:keep-all;text-overflow:ellipsis}.ecl-pc-game-partner-sites .posts th a{white-space:nowrap}.ecl-pc-game-partner-sites .posts td{vertical-align:top;color:#666}.ecl-pc-game-partner-sites .partners{overflow:hidden;zoom:1;padding-top:5px}.ecl-pc-game-partner-sites .partners a{text-decoration:none}
.ecl-pc-game-partner-sites .partners a:hover{text-decoration:underline}.ecl-pc-game-partner-sites .partners h6{font-size:12px;margin-top:5px}.ecl-pc-game-partner-sites .partners h6,.ecl-pc-game-partner-sites .partners ul{float:left}.ecl-pc-game-partner-sites .partners img{float:left;margin-top:2px}.ecl-pc-game-partner-sites .partners li{border:1px solid #e0e0e0;float:left;height:20px;line-height:20px;padding:0 3px;margin-right:10px;background:#fff}
</style>

<div class="ecl-pc-game-partner-sites">
  <h3><a href="{%$tplData.title_url|escape:'html'%}" target="_blank">{%$tplData.title|limitlen:48|escape:'html'|highlight:0%}</a></h3>

  {%$site_map_count = count($tplData.sitemap)%}
  {%if $site_map_count > 0%}
  <ul class="sitemap">
    {%foreach $tplData.sitemap as $item%}
    <li><a target="_blank" href="{%$item.url|escape:'html'%}">{%$item.text|limitlen:12|escape:'html'%}</a></li>
    {%if ($item@index + 1) < $site_map_count%}
    <li class="sep">|</li>
    {%/if%}
    {%/foreach%}
  </ul>
  {%/if%}

  <table cellpadding="6" cellspacing="0" width="100%" class="posts">
    {%foreach $tplData.posts as $item%}
    <tr>
      <th width="300px"><a href="{%$item.url|escape:'html'%}" target="_blank">{%$item.text|limitlen:50|escape:'html'%}</a></th>
      <td>{%$item.post_date|escape:'html'%}</td>
    </tr>
    {%/foreach%}
    <tr>
      <th colspan="2"><a href="{%$tplData.view_more_posts_url|escape:'html'%}" target="_blank">更多攻略&gt;&gt;</a></th>
    </tr>
  </table>
</div>


{%/block%}
