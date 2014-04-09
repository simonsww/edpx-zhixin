{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecr-ec-baike-link{font-size:13px}.container_s .ecr-ec-baike-link{width:270px;overflow:hidden}.container_l .ecr-ec-baike-link{width:440px}.ecr-ec-baike-link h2{margin:0;font-weight:bold;font-size:14px;padding:0 0 5px;border-bottom:1px solid #d2d2d2}.ecr-ec-baike-link p{font-size:12px;padding:10px 0;border-bottom:1px solid #eaeaea}.ecr-ec-baike-link p a{margin-left:8px;white-space:nowrap}.ecr-ec-baike-link p a span{font-family:宋体}.ecr-ec-baike-link .link{padding:10px 0;border-bottom:1px solid #eaeaea;overflow:hidden;*zoom:1}
.ecr-ec-baike-link .link .left{float:left}.ecr-ec-baike-link .link .right{float:right}
</style>

<div class="ecr-ec-baike-link">
  <h2>{%$tplData.title|escape:'html'%}</h2>
  {%if $tplData.desc.text%}
  <p>{%$tplData.desc.text|limitlen:100|escape:'html'%}<a href="{%$tplData.desc.source.link%}" target="_blank" data-type="more">查看{%$tplData.desc.source.text|escape:'html'%}<span>&gt;&gt;</span></a></p>
  {%/if%}
  {%foreach $tplData.items as $item%}
  <div class="link">
    <a class="left" target="_blank" data-type="link" href="{%$item.link|escape:'html'%}">{%$item.text|limitlen:23|escape:'html'%}</a>
    <span class="right">来源：<a target="_blank" data-type="source" href="{%$item.source.link|escape:'html'%}">{%$item.source.text|escape:'html'%}</a></span>
  </div>
  {%/foreach%}
</div>


<script type="text/javascript">
A.init(function(){var o=this.container,n="http://bzclk.baidu.com/weigou.php",t=function(o){var n=new Image,t="tangram_sio_log_"+Math.floor(2147483648*Math.random()).toString(36);window[t]=n,n.onload=n.onerror=n.onabort=function(){n.onload=n.onerror=n.onabort=null,window[t]=null,n=null},n.src=o};baidu.dom.ready(function(){o.onclick=function(o){var a=baidu.event.getTarget(o||window.event);a.tagName&&"a"==a.tagName.toLowerCase()&&t(n+"?tpl=ecr_ec_baike_link&item="+baidu.dom.getAttr(a,"data-type")+"&wd="+encodeURIComponent(bdQuery))
}})});
</script>
{%/block%}
