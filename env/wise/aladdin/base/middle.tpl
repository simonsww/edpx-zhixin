{%* aladdin fe定义的全局变量 *%}
{%$fe_var_link_index=1%}
{%$fe_var_pic_index=1%}
{%$fe_var_form_index=0%}
{%block name="global_vars"%}
{%$fe_var_fm='alop'%}
{%$fe_var_l=$alaData.config.l%}
{%$fe_var_waplogo=$alaData.config.waplogo%}
{%$fe_var_showlamp=$alaData.config.showlamp%}
{%/block%}
{%* aladdin fe定义的全局函数 *%}
{%function name='fe_fn_get_url' url='' encodeurl='' fm='' type='l' l='' waplogo='' index=0%}
{%if !$index%}
    {%if $type==='l'%}
    {%$fe_var_temp_index=($fe_var_link_index++)%}
    {%elseif $type==='p'%}
    {%$fe_var_temp_index=($fe_var_pic_index++)%}
    {%/if%}
{%else%}
    {%$fe_var_temp_index=$index%}
{%/if%}
{%if $fm===''%}
{%$fm=$fe_var_fm%}
{%/if%}
{%if $l===''%}
{%$l=$fe_var_l%}
{%/if%}
{%if $waplogo===''%}
{%$waplogo=$fe_var_waplogo%}
{%/if%}
{%$pageData.url.tcUrl%}w={%$reqData.pn%}_{%$reqData.rn%}_{%$reqData.word|urlencode%}/t={%$pageData.abct%}/?order={%$alaData.iteration%}&amp;vit=osres&amp;ref={%$pageData.pageRef%}&amp;fm={%$fm%}&amp;tj={%$alaData.enresourceid%}_{%$alaData.iteration%}_{%$reqData.pn%}_{%$reqData.rn%}_{%$type%}{%if $type==='l'||$type==='p'%}{%$fe_var_temp_index%}{%/if%}{%if $type!=='footlink'%}{%if $waplogo%}&amp;waplogo=1{%/if%}&amp;l={%if $l%}{%$l%}{%else%}0{%/if%}{%/if%}&amp;src={%if $url%}{%$url|urlencode%}{%elseif $encodeurl%}{%$encodeurl%}{%/if%}
{%/function%}
{%block name="wrapper_prefix"%}
<div class="resitem" srcid="{%$alaData.resourceid%}" tpl="{%basename($smarty.current_dir)%}">
{%/block%}
    {%block name="title"%}
    {%if isset($tplData.title)%}
    {%if $tplData.url||$tplData.titleurl%}<a class="result_title" href="{%if $tplData.url%}{%fe_fn_get_url url={%$tplData.url%} type='title'%}{%elseif $tplData.titleurl%}{%fe_fn_get_url url={%$tplData.titleurl%} type='title'%}{%/if%}">{%else%}<span class="result_title" style="text-decoration:none;">{%/if%}{%$alaData.iteration%}&#160;{%$tplData.title|wordtranscode:"UTF-8":"GBK"|@hilight_print:$alaData.hilightstr|wordtruncate:$pageData.titlen:"GBK":"..":"TAG":"em-font"%}{%if $tplData.url||$tplData.titleurl%}</a>{%else%}</span>{%/if%}{%if $fe_var_waplogo%}&#160;<img alt="手机版" src="http://m.baidu.com/static/search/key.gif"/>{%/if%}
    {%/if%}
    {%/block%}
    {%block name="content_prefix"%}
    <div class="abs">
    {%/block%}
    {%block name="content"%}{%/block%}
    {%block name="content_suffix"%}
    </div>
    {%/block%}
    {%block name="foot"%}
    {%if $pageData.sitetip&&($tplData.site||$tplData.showurl)%}
    <span class="site">{%if $tplData.site%}{%$tplData.site|get_domain%}{%elseif $tplData.showurl%}{%$tplData.showurl|get_domain|regex_replace:'/\/.*$/':''%}{%/if%}</span>&#160;
    {%if $pageData.timetip&&$tplData.date%}
        {%if is_array($tplData.date)%}{%if !empty($tplData.date[1])%}{%$fe_var_base_date=$tplData.date[1]%}{%/if%}{%else%}{%$fe_var_base_date=$tplData.date%}{%/if%}
        {%if $fe_var_base_date%}<span class="date">{%$fe_var_base_date%}</span>&#160;{%/if%}
    {%/if%}
    {%if $pageData.sizetip&&$tplData.size%}<span class="size">{%$tplData.size%}</span>&#160;{%/if%}
    {%if $fe_var_showlamp%}-&#160;<span class="alalogo"><img alt="框计算" src="{%$pageData.url.alaLogoUrl%}"/></span>{%/if%}
    {%/if%} 
    {%/block%}
{%block name="wrapper_suffix"%}
</div>
{%/block%}
