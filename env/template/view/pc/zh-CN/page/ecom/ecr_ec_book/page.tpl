{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecr-ec-book{font-size:13px;padding-bottom:5px}.container_s .ecr-ec-book{width:270px;overflow:hidden}.container_l .ecr-ec-book{width:440px}.ecr-ec-book h2{margin:0;font-weight:bold;font-size:14px;padding:0 0 5px;border-bottom:1px solid #d2d2d2}.ecr-ec-book p{font-size:12px;padding:10px 0 5px}.ecr-ec-book p span{font-family:宋体}.ecr-ec-book table{color:#323234}.ecr-ec-book table th{font-weight:normal;width:85px}.ecr-ec-book .buy{background:url('http://bs.baidu.com/adtest/24ee05eef49c112d61226eca1aa667d5.jpg') no-repeat;width:74px;height:24px;display:block}
</style>

<div class="ecr-ec-book">
    <h2>{%$tplData.title|escape:'html'%}</h2>
    <table>
        {%foreach $tplData.items as $item%}
        <tr>
            <th>{%$item.key|escape:'html'%}：</th>
            <td>{%$item.value|escape:'html'%}</td>
        </tr>
        {%/foreach%}
    </table>
    <p>来自<a data-type="source" href="{%$tplData.source.link|escape:'html'%}" target="_blank">{%$tplData.source.text|escape:'html'%}<span>&gt;&gt;</span></a></p>
    <a data-type="buy" class="buy" href="{%$tplData.link|escape:'html'%}" target="_blank"></a>
</div>


<script type="text/javascript">
A.init(function(){var o=this.container,n="http://bzclk.baidu.com/weigou.php",t=function(o){var n=new Image,t="tangram_sio_log_"+Math.floor(2147483648*Math.random()).toString(36);window[t]=n,n.onload=n.onerror=n.onabort=function(){n.onload=n.onerror=n.onabort=null,window[t]=null,n=null},n.src=o};baidu.dom.ready(function(){o.onclick=function(o){var a=baidu.event.getTarget(o||window.event);a.tagName&&"a"==a.tagName.toLowerCase()&&t(n+"?tpl=ecr_ec_book&item="+baidu.dom.getAttr(a,"data-type")+"&wd="+encodeURIComponent(bdQuery))
}})});
</script>
{%/block%}
