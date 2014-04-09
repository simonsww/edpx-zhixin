{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecr-ec-baike-map{font-size:13px}.container_s .ecr-ec-baike-map{width:270px;overflow:hidden}.container_l .ecr-ec-baike-map{width:440px}.ecr-ec-baike-map h2{margin:0;font-weight:bold;font-size:14px;padding:0 0 5px;border-bottom:1px solid #d2d2d2}.ecr-ec-baike-map p{font-size:12px;padding:10px 0;border-bottom:1px solid #eaeaea}.ecr-ec-baike-map p a{margin-left:8px;white-space:nowrap}.ecr-ec-baike-map p a span{font-family:宋体}.ecr-ec-baike-map img.map{width:254px;height:209px;margin:10px 0}.ecr-ec-baike-map table th{font-weight:normal}
</style>

<div class="ecr-ec-baike-map">
    <h2>{%$tplData.title|escape:'html'%}</h2>
    <p>{%$tplData.desc.text|limitlen:120|escape:'html'%}<a data-type="more" href="{%$tplData.desc.source.link|escape:'html'%}" target="_blank">查看{%$tplData.desc.source.text|escape:'html'%}<span>&gt;&gt;</span></a></p>
    <img class="map" src="http://api.map.baidu.com/staticimage?zoom=18&width=254&height=209&markers={%$tplData.venues.name|urlencode%}&center={%$tplData.venues.name|urlencode%}"/>
    <table>
    <tr>
        <th>地址：</th>
        <td><a data-type="address" href="http://api.map.baidu.com/geocoder?address={%$tplData.venues.address|urlencode%}&output=html" target="_blank">{%$tplData.venues.address|escape:'html'%}</td>
    </tr>
    <tr>
        <th>电话：</th>
        <td>{%$tplData.venues.tel|escape:'html'%}</td>
    </tr>
    </table>
</div>


<script type="text/javascript">
A.init(function(){var o=this.container,n="http://bzclk.baidu.com/weigou.php",t=function(o){var n=new Image,t="tangram_sio_log_"+Math.floor(2147483648*Math.random()).toString(36);window[t]=n,n.onload=n.onerror=n.onabort=function(){n.onload=n.onerror=n.onabort=null,window[t]=null,n=null},n.src=o};baidu.dom.ready(function(){o.onclick=function(o){var a=baidu.event.getTarget(o||window.event);a.tagName&&"a"==a.tagName.toLowerCase()&&t(n+"?tpl=ecr_ec_baike_map&item="+baidu.dom.getAttr(a,"data-type")+"&wd="+encodeURIComponent(bdQuery))
}})});
</script>
{%/block%}
