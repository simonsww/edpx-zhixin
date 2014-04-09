{%$FE_GBVAR=[
    'aladdin_txt' => '',
    'wrapper_prefix' => '<tr><td style="width:615px">',
    'wrapper_suffix' => '</td></tr>'
]%} 
{%function fe_fn_showurl showurl='' date='' showlamp=''%}
<p class="c-showurl"><cite>{%$showurl|escape:'html'%}</cite> {%if $date%} <time>{%$date|escape:'html'%}</time> {%/if%} {%if $showlamp%} - <a target="_blank" href="http://open.baidu.com/" class="aladdin-LAMP"></a>{%/if%}</p>
{%/function%} 
{%function fe_fn_title title='' url=''%}
<a href="{%$url|escape:'html'%}" target="_blank">{%$title|highlight:0%}</a>
{%/function%} 
{%function fe_fn_title_prefix%}
<h3>
{%/function%}
{%function fe_fn_title_suffix title='' url=''%}
</h3>
{%/function%} 
{%function fe_fn_likeshare%}
{%if $tplData.showLikeShare%}<span class="opui-likeshare-{%$extData.resourceid%} opui-likeshare-l_box" data-ls="{share:'1',rid:'{%$extData.resourceid%}',mid:'{%if $tplData.moduleid%}{%$tplData.moduleid%}{%/if%}',query:'{%$extData.OriginQuery|escape:'html'|escape:'javascript'%}',key:'{%$extData.fetchkey|escape:'html'|escape:'javascript'%}',url:'{%$tplData.url|escape:'html'|escape:'javascript'%}',image:'{%if $tplData.shareImage%}on{%/if%}'}"></span><script>A.use('likeshare3')</script><script>A.ui.likeshare({%$extData.resourceid%})</script>{%/if%}
{%/function%}
{%block name="main_container"%}  
    {%if $extData.feData.showAladdinOuter==1%}
    <table class="result-op {%if $extData.resourceid && $extData.resourceid lt 5999%} xpath-log{%/if%}" cellpadding="0" cellspacing="0" tpl="{%$extData.tplt%}" {%if isset($extData.fetchkey)%} fk="{%$extData.fetchkey%}" {%/if%}{%if $extData.resourceid%}  srcid="{%$extData.resourceid%}" {%/if%} id="{%$extData.feData.id%}" mu="{%$extData.feData.mu%}" data-op="{'y':'{%$extData.feData.y%}'}" {%if $extData.feData.isFavoOn == 1 && $extData.feData.isUserLogin == 1%}data-favo="{'flag':'{%$extData.feData.favoFlag%}','id':'{%$extData.feData.favoItemId%}'}"{%/if%} data-click="{rsv_stl:'{%$extData.feData.rsv_stl%}'{%if $extData.feData.fm%},'fm':'{%$extData.feData.fm%}'{%/if%},rsv_stl:'{%$extData.feData.rsv_stl%}'}">        

    {%elseif $extData.feData.showAladdinOuter==2%}
    <div class="result-op result-zxl" {%if $extData.resourceid && $extData.resourceid gt 5999%} srcid="{%$extData.resourceid%}" fk="{%$extData.fetchkey|escape%}"{%/if%} id="zxl_{%$extData.feData.id%}" tpl="{%$extData.tplt%}" mu="{%$extData.feData.mu%}" data-op="{'y':'{%$extData.feData.y%}'}" data-click="{'p1':'{%$extData.feData.id%}','fm':'alxl'{%if isset($extData.feData.catid)%},rsv_catid:'{%$extData.feData.catid%}'{%/if%}{%if isset($extData.feData.cardid)%},rsv_cardid:'{%$extData.feData.cardid%}'{%/if%}{%if isset($extData.feData.ename)&&trim($extData.feData.ename)%},rsv_ename:'{%$extData.feData.ename|escape:'javascript'|escape:'html'%}'{%/if%}{%if isset($extData.feData.uri)&&trim($extData.feData.uri)%},rsv_uri:'{%$extData.feData.uri|escape:'javascript'|escape:'html'%}'{%/if%},rsv_stl:'{%$extData.feData.rsv_stl%}'}">
    {%/if%}
    
    {%block name="content"%}

    {%/block%}

{%if $extData.feData.showAladdinOuter==1%}
</table>
{%elseif $extData.feData.showAladdinOuter==2%}
</div>
{%/if%}
{%/block%}