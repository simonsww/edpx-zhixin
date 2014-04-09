{%extends 'base.tpl'%} {%block name='content'%}<tr><td class="f"><script >
    function _aMC(o) {var t = o, i = -1;while (t = t.parentNode) {i = parseInt(t.getAttribute('id'));if (i > 0) return i;}}
    function _aMI(o) {
        var as = document.getElementById('op_shoptable').getElementsByTagName('A');
        for (var i = 0; i < as.length; i++) {
            if (as[i] == o)
                return i + 1;
        }
        return as.length - 2;
    }
</script><style >
.op_shop_table {color:#000;width:100%}
.op_shop_table th,.op_shop_table td{font-size:1em;font-weight:normal;text-align:left;vertical-align:middle;padding-left:8px;height:25px}
.op_shop_table th{border-top:#E5ECF9 1px solid;background:#F1F4FC;}
.op_shop_table td{border-bottom: 1px solid #EEE;}
.op_shop_table td.price{color:#f70}
</style><h3 class="t"><a target="_blank" href="{%$tplData.url|escape:'html'%}">【{%$tplData.filteredQuery|limitlen:30|highlight:0%}】{%$tplData.TitleSuffix|highlight:0%}_百度商品搜索</a></h3> {%if $tplData.normdisp!=""%}百度商品搜索服务，汇集{%$tplData.filteredQuery|limitlen:30|highlight:0%}优质在线商家、商品信息。包括{%$tplData.filteredQuery|limitlen:30|highlight:0%}优质商家、{%$tplData.filteredQuery|limitlen:30|highlight:0%}购物保障、{%$tplData.filteredQuery|limitlen:30|highlight:0%}报价、{%$tplData.filteredQuery|limitlen:30|highlight:0%}图片、{%$tplData.filteredQuery|limitlen:30|highlight:0%}评价信息...<br>{%/if%}{%if $tplData.specdisp!=""%}<div style="margin:6px 0"><table cellspacing="0" cellpadding="0" class="op_shop_table" id="op_shoptable"><tr><th style="font-weight:bold">商品名称</th><th>价格</th><th>消费保障</th><th>商家</th></tr>{%$loop_maxcount=$tplData.resNum%}{%for $op_loop_count=0 to 5%}{%if $op_loop_count<$loop_maxcount%}<tr><td><a target="_blank" href="{%$tplData.result[$op_loop_count]['loc']|escape:'html'%}">{%$tplData.result[$op_loop_count]['title']|limitlen:36|highlight:0%}</a></td><td class="price">{%$tplData.result[$op_loop_count]['price']|escape:'html'%}</td><td>{%if $tplData.result[$op_loop_count]['services']!=""%}{%$tplData.result[$op_loop_count]['services']|escape:'html'%}{%/if%}&nbsp;</td><td>{%$tplData.result[$op_loop_count]['store']|escape:'html'%}</td></tr>{%else%}{%break%}{%/if%}{%/for%}</table></div>{%/if%}<div><span style="color:#008000;font-size:1em">open.baidu.com/</span> - <a target="_blank" href="http://open.baidu.com/" class="op_LAMP"></a></div></td></tr>{%/block%}