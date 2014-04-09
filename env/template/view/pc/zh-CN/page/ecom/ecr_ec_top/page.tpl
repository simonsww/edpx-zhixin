{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecr-ec-top{font-size:13px;overflow:hidden;*zoom:1}.container_s .ecr-ec-top{width:270px;overflow:hidden}.container_l .ecr-ec-top{width:440px}.ecr-ec-top h2{margin:0;font-weight:bold;font-size:14px;padding:0 0 5px;border-bottom:1px solid #d2d2d2}.ecr-ec-top .rank{padding:10px 0;border-bottom:1px solid #eaeaea;overflow:hidden;*zoom:1}.ecr-ec-top .rank .left{float:left}.ecr-ec-top .rank .left .count{color:white;padding:1px 3px;background-color:#4494e9;margin-right:5px}.ecr-ec-top .rank .left .count.top{background-color:#ff6867}
.ecr-ec-top .rank .right{float:right;color:#323431}.ecr-ec-top .source{color:#666;float:right;margin-top:10px}.ecr-ec-top .source a{color:#666}
</style>

<div class="ecr-ec-top">
  <h2>{%$tplData.title|escape:'html'%}</h2>
  {%foreach $tplData.items as $item%}
  <div class="rank">
    <div class="left">
      <span class="count{%if $item@index <= 2%} top{%/if%}">{%$item@index+1%}</span>
      <a data-type="link" target="_blank" href="{%$item.link|escape:'html'%}">{%$item.text|limitlen:28|escape:'html'%}</a>
    </div>
    <span class="right">{%$item.count%}</span>
  </div>
  {%/foreach%}
  <div class="source">来源：<a data-type="source" target="_blank" href="{%$tplData.source.link|escape:'html'%}">{%$tplData.source.text|escape:'html'%}</a></div>
</div>


<script type="text/javascript">
A.init(function(){var o=this.container,n="http://bzclk.baidu.com/weigou.php",t=function(o){var n=new Image,t="tangram_sio_log_"+Math.floor(2147483648*Math.random()).toString(36);window[t]=n,n.onload=n.onerror=n.onabort=function(){n.onload=n.onerror=n.onabort=null,window[t]=null,n=null},n.src=o};baidu.dom.ready(function(){o.onclick=function(o){var a=baidu.event.getTarget(o||window.event);a.tagName&&"a"==a.tagName.toLowerCase()&&t(n+"?tpl=ecr_ec_baike_top&item="+baidu.dom.getAttr(a,"data-type")+"&wd="+encodeURIComponent(bdQuery))
}})});
</script>
{%/block%}
