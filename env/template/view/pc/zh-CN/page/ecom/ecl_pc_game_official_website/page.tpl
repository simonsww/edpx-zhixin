{%extends 'base_div.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecl-pc-game-official-website{font-size:13px}.ecl-pc-game-official-website h1,.ecl-pc-game-official-website h2,.ecl-pc-game-official-website h3,.ecl-pc-game-official-website h4,.ecl-pc-game-official-website h5,.ecl-pc-game-official-website h6{margin:0;padding:0;font-weight:normal}.ecl-pc-game-official-website th{font-weight:normal}.ecl-pc-game-official-website .main-body{padding-bottom:0;margin-bottom:-8px;*margin-bottom:-6px}.ecl-pc-game-official-website h3{font-size:16px;margin:5px 0 10px 0;padding:0;line-height:18px}
.ecl-pc-game-official-website .image,.ecl-pc-game-official-website .figcaption{float:left}.ecl-pc-game-official-website .image img{border:1px solid #e1e1e1;display:block;margin-bottom:8px}.ecl-pc-game-official-website .image .entry img{border:0}.ecl-pc-game-official-website .image{margin-right:16px}.ecl-pc-game-official-website .figcaption{width:390px}.ecl-pc-game-official-website .figure{overflow:hidden;zoom:1}.ecl-pc-game-official-website p{color:#333;line-height:20px;max-height:60px;_height:60px;overflow:hidden}
.ecl-pc-game-official-website .sitemap{overflow:hidden;zoom:1;padding:12px 0}.ecl-pc-game-official-website .sitemap li{float:left}.ecl-pc-game-official-website .sitemap .sep{margin:0 10px}.ecl-pc-game-official-website .links{overflow:hidden;zoom:1;font-size:12px;list-style:none}.ecl-pc-game-official-website .links li{float:left;width:190px;*width:185px;margin-right:5px;line-height:2;list-style-type:square;list-style-position:inside;*background:url(//bs.baidu.com/adtest/a349eafe9fc198d81e86978d46a3cc74.gif) left center no-repeat;*padding-left:15px;*width:170px;overflow:hidden;white-space:nowrap;word-break:keep-all;text-overflow:ellipsis}
.ecl-pc-game-official-website .categories{margin-top:6px}.ecl-pc-game-official-website .categories a{text-decoration:none}.ecl-pc-game-official-website .categories a:hover{text-decoration:underline}.ecl-pc-game-official-website .categories td{vertical-align:top}.ecl-pc-game-official-website .categories th{background:#fafafa;text-align:left;white-space:nowrap}.ecl-pc-game-official-website .categories td{border-bottom:1px solid #f0f0f0}
</style>

<div class="ecl-pc-game-official-website">
  <div class="main-body">
  <div class="figure">
    <div class="image">
      {%if $tplData.image_url%}
      <a href="{%$tplData.image_url|escape:'html'%}" target="_blank"><img src="{%$tplData.image|escape:'html'%}" alt="{%$tplData.title|escape:'html'%}" width="198px" height="133px" /></a>
      {%else%}
      <img src="{%$tplData.image|escape:'html'%}" alt="{%$tplData.title|escape:'html'%}" width="198px" height="133px" />
      {%/if%}
      <a target="_blank" class="entry" href="{%$tplData.entry_url|escape:'html'%}"><img src="http://bs.baidu.com/zhixin/15fa03c532dfbd624290c74273c62a5e.png" width="200" height="32"  /></a>
    </div>
    <div class="figcaption">
      <h3><a href="{%$tplData.title_url|escape:'html'%}" target="_blank">{%$tplData.title|limitlen:36|escape:'html'|highlight:0%}</a></h3>
      <p>{%$tplData.description|limitlen:162|escape:'html'%}</p>

      {%$site_map_count = count($tplData.sitemap)%}
      {%if $site_map_count > 0%}
      <ul class="sitemap">
        {%foreach $tplData.sitemap as $item%}
        <li><a target="_blank" href="{%$item.url|escape:'html'%}" title="{%$item.text|escape:'html'%}">{%$item.text|limitlen:10|escape:'html'%}</a></li>
        {%if ($item@index + 1) < $site_map_count%}
        <li class="sep">|</li>
        {%/if%}
        {%/foreach%}
      </ul>
      {%/if%}

      {%if count($tplData.promotion_links) > 0%}
      <ul class="links">
        {%foreach $tplData.promotion_links as $item%}
        <li class="item-{%$item@index%}"><a target="_blank" href="{%$item.url|escape:'html'%}" title="{%$item.text|escape:'html'%}">{%$item.text|limitlen:24|escape:'html'%}</a></li>
        {%/foreach%}
      </ul>
      {%/if%}
    </div>
  </div>

  </div>
</div>

<script>
(function(win,doc){if(!win.Hunter || !Hunter.record) {win.Hunter = {tid: "808"};(doc.getElementsByTagName('head')[0]||body).appendChild(doc.createElement('script')).src='http://img.baidu.com/hunter/ham.js?st='+~(new Date()/864e5)}})(window,document);
</script>


{%/block%}
