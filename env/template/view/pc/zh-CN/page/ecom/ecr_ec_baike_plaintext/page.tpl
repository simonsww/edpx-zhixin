{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecr-ec-baike-plaintext{font-size:13px}.container_s .ecr-ec-baike-plaintext{width:270px;overflow:hidden}.container_l .ecr-ec-baike-plaintext{width:440px}.ecr-ec-baike-plaintext h2{margin:0;font-weight:bold;font-size:14px;padding:0 0 5px;border-bottom:1px solid #d2d2d2}.ecr-ec-baike-plaintext p{font-size:12px;padding:10px 0;border-bottom:1px solid #eaeaea}.ecr-ec-baike-plaintext p a{margin-left:8px;white-space:nowrap}.ecr-ec-baike-plaintext p a span{font-family:宋体}
</style>

<div class="ecr-ec-baike-plaintext">
  <h2>{%$tplData.title|escape:'html'%}</h2>
  <p>{%$tplData.desc.text|limitlen:240|escape:'html'%}<a href="{%$tplData.desc.source.link|escape:'html'%}" target="_blank">查看{%$tplData.desc.source.text|escape:'html'%}<span>&gt;&gt;</span></a></p>
</div>


<script type="text/javascript">
A.init(function(){var o=this.container,n="http://bzclk.baidu.com/weigou.php",t=function(o){var n=new Image,t="tangram_sio_log_"+Math.floor(2147483648*Math.random()).toString(36);window[t]=n,n.onload=n.onerror=n.onabort=function(){n.onload=n.onerror=n.onabort=null,window[t]=null,n=null},n.src=o};baidu.dom.ready(function(){o.onclick=function(o){var a=baidu.event.getTarget(o||window.event);a.tagName&&"a"==a.tagName.toLowerCase()&&t(n+"?tpl=ecr_ec_baike_plaintext&item=more&wd="+encodeURIComponent(bdQuery))}})});

</script>
{%/block%}
