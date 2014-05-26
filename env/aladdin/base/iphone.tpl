{%* aladdin fe定义的全局变量 *%}
{%block name="statistics_global_vars"%}
{%$fe_var_sto_order="1|2|3|4|5|6|7|8|9|10"%}
{%if $tplData.ChildResult%}
{%$fe_var_sto_order=$tplData.ChildResult%}
{%/if%}
{%/block%}
{%$fe_var_sto=''%}
{%foreach preg_split("/\|/",$fe_var_sto_order) as $fe_var_temp_sto_i%}
    {%$fe_var_sto_{%$fe_var_temp_sto_i%}_l_index=1%}
    {%$fe_var_sto_{%$fe_var_temp_sto_i%}_p_index=1%}
    {%$fe_var_sto_{%$fe_var_temp_sto_i%}_f_index=0%}
{%/foreach%}
{%$fe_var_link_index=1%}
{%$fe_var_pic_index=1%}
{%$fe_var_form_index=0%}
{%block name="global_vars"%}
{%$fe_var_fm='alop'%}
{%$fe_var_l=$alaData.config.l%}
{%$fe_var_waplogo=$alaData.config.waplogo%}
{%$fe_var_showlamp=$alaData.config.showlamp%}
{%/block%}

{%block name="log_data_global_vars"%}
{%$fe_var_log_data="{'fm':'{%$fe_var_fm%}','ensrcid':'{%$alaData.enresourceid%}','order':'{%$alaData.iteration%}'{%if $fe_var_waplogo%},'waplogo':1{%/if%},'mu':'{%if $tplData.url%}{%$tplData.url%}{%elseif $tplData.titleurl%}{%$tplData.titleurl%}{%/if%}'}"%}
{%/block%}

{%$fe_var_tc_jump="{%$pageData.url.rsUrlAbs%}w={%$reqData.pn%}_{%$reqData.rn%}_{%$reqData.word|urlencode%}/t={%$pageData.abct%}/tc?order={%$alaData.iteration%}&vit=osres&ref={%$pageData.pageRef%}&from={%$reqData.from%}&ssid={%$reqData.ssid%}&uid={%$reqData.uid%}&bd_page_type={%$reqData.bd_page_type%}&pu={%$reqData.pu%}&lid={%$reqData.lid%}&fm={%$fe_var_fm%}{%if $fe_var_waplogo%}&waplogo=1{%/if%}&l={%if $fe_var_l%}{%$fe_var_l%}{%else%}1{%/if%}&tj={%$alaData.enresourceid%}_{%$alaData.iteration%}_{%$reqData.pn%}_{%$reqData.rn%}_"%}
{%$fe_var_tc_log="{%$pageData.url.rsUrlAbs%}tc?tcreq4log=1&clk_type=1&w={%$reqData.pn%}_{%$reqData.rn%}_{%$reqData.word|urlencode%}&t={%$pageData.abct%}&order={%$alaData.iteration%}&vit=osres&ref={%$pageData.pageRef%}&from={%$reqData.from%}&ssid={%$reqData.ssid%}&uid={%$reqData.uid%}&bd_page_type={%$reqData.bd_page_type%}&pu={%$reqData.pu%}&lid={%$reqData.lid%}&fm={%$fe_var_fm%}{%if $fe_var_waplogo%}&waplogo=1{%/if%}&l={%if $fe_var_l%}{%$fe_var_l%}{%else%}1{%/if%}&ala_clk={%$alaData.enresourceid%}_{%$alaData.iteration%}_{%$reqData.pn%}_{%$reqData.rn%}_"%}
{%* aladdin fe定义的全局函数 *%}
{%function name='fe_fn_get_url' url='' encodeurl='' appurl='' fm='' type='l' l='' waplogo='' index=0 sIndex=0%}
{%if $fe_var_sto%}
    {%if !$sIndex%}
        {%if $type==='l'||$type==='p'%}
            {%$fe_var_temp_sto_index=($fe_var_sto_{%$fe_var_sto|regex_replace:"/[^_]+_([^_]+).*/":"$1"%}_{%$type%}_index++)%}
        {%else%}
            {%$fe_var_temp_sto_index=''%}
        {%/if%}
    {%else%}
        {%$fe_var_temp_sto_index=$sIndex%}
    {%/if%}
    {%$sto="`$fe_var_sto`_`$type``$fe_var_temp_sto_index`"%}
{%/if%}
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
{%if !$alaData.appswitch || !$appurl%}
{%$pageData.url.tcUrl%}w={%$reqData.pn%}_{%$reqData.rn%}_{%$reqData.word|urlencode%}/t={%$pageData.abct%}/?order={%$alaData.iteration%}&amp;vit=osres&amp;ref={%$pageData.pageRef%}&amp;fm={%$fm%}{%if $sto%}&amp;sto={%$sto%}{%/if%}&amp;tj={%$alaData.enresourceid%}_{%$alaData.iteration%}_{%$reqData.pn%}_{%$reqData.rn%}_{%$type%}{%if $type==='l'||$type==='p'%}{%$fe_var_temp_index%}{%/if%}{%if $type!=='footlink'%}{%if $waplogo%}&amp;waplogo=1{%/if%}&amp;l={%if $l%}{%$l%}{%else%}1{%/if%}{%/if%}&amp;src={%if $url%}{%$url|urlencode%}{%elseif $encodeurl%}{%$encodeurl%}{%/if%}
{%else%}
{%$fe_var_temp_tcUrl="{%$pageData.url.rsUrlAbs%}w={%$reqData.pn%}_{%$reqData.rn%}_{%$reqData.word|urlencode%}/t={%$pageData.abct%}/tc?order={%$alaData.iteration%}&vit=osres&ref={%$pageData.pageRef%}&from={%$reqData.from%}&bd_page_type={%$reqData.bd_page_type%}&ssid={%$reqData.ssid%}&uid={%$reqData.uid%}&pu={%$reqData.pu%}&nativeurl=1&fm={%$fm%}{%if $sto%}&sto={%$sto%}{%/if%}&tj={%$alaData.enresourceid%}_{%$alaData.iteration%}_{%$reqData.pn%}_{%$reqData.rn%}_{%$type%}{%if $type==='l'||$type==='p'%}{%$fe_var_temp_index%}{%/if%}{%if $type!=='footlink'%}{%if $waplogo%}&waplogo=1{%/if%}&l={%if $l%}{%$l%}{%else%}1{%/if%}{%/if%}&{%if $url%}{%$url|urlencode|antiSrc:'&'%}{%elseif $encodeurl%}{%$encodeurl|antiSrc:'&'%}{%/if%}"%}
{%$appurl%}{%$fe_var_temp_tcUrl|urlencode%}
{%/if%}
{%/function%}
{%function name='fe_fn_get_css' css='' sname=''%}
{%if $css%}
{%include fe_var_temp_ui_sname=$sname file="aladdin/_include/css/`$css`/`$pageData.tpl`.`$pageData.tplType`" inline%}
{%/if%}
{%/function%}
{%function name='fe_fn_get_ui' ui='' data=''%}
{%if $ui%}
{%include fe_var_temp_ui_data=$data file="aladdin/_include/ui/`$ui`/`$pageData.tpl`.`$pageData.tplType`" inline%}
{%/if%}
{%/function%}
{%block name="wrapper_prefix"%}
<div class="result" srcid="{%$alaData.resourceid%}" tpl="{%basename($smarty.current_dir)%}" data-log="{%$fe_var_log_data%}">
{%/block%}
	{%*样式区块*%}
	{%block name="style_head"%}
	
	{%/block%}

    {%block name="script_head"%}
    {%if $alaData.resourceid%}
    <script type="text/javascript">A.log&&(A.log.list['{%$alaData.resourceid%}']={fm:'{%$fe_var_fm%}',ensrcid:'{%$alaData.enresourceid%}',order:'{%$alaData.iteration%}'{%if $fe_var_waplogo%},waplogo:1{%/if%},mu:'{%if $tplData.url%}{%$tplData.url%}{%elseif $tplData.titleurl%}{%$tplData.titleurl%}{%/if%}'});</script>
    {%/if%}
    {%/block%}
    {%block name="title"%}
    {%if isset($tplData.title)%}
    {%if $tplData.url||$tplData.titleurl%}<a class="result_title" href="{%if $tplData.url%}{%fe_fn_get_url url={%$tplData.url%} type='title'%}{%elseif $tplData.titleurl%}{%fe_fn_get_url url={%$tplData.titleurl%} type='title'%}{%/if%}">{%else%}<span class="result_title" style="text-decoration:none;">{%/if%}{%$tplData.title|wordtranscode:"UTF-8":"GBK"|@hilight_print:$alaData.hilightstr|wordtruncate:$pageData.titlen:"GBK":"..":"TAG":"em-font"%}{%if $fe_var_waplogo%}&#160;<img alt="手机版" src="http://m.baidu.com/static/search/touch.gif"/>{%/if%}{%if $tplData.url||$tplData.titleurl%}</a>{%else%}</span>{%/if%}
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
    {%if $fe_var_showlamp||(!$pageData.closeSrcLink&&($tplData.url||$tplData.titleurl)&&!$fe_var_waplogo)%}<span class="gray" >-&#160;</span>{%/if%}
    {%if $fe_var_showlamp%}<span class="alalogo"><img alt="框计算" width="16" height="12" src="http://m.baidu.com/static/ala/ui/foot/ala_icon.gif"/></span>&#160;{%/if%}
    {%if !$pageData.closeSrcLink&&($tplData.url||$tplData.titleurl)&&!$fe_var_waplogo%}
    <a class="gray" href="{%if $tplData.url%}{%fe_fn_get_url url={%$tplData.url%} type='footlink'%}{%elseif $tplData.titleurl%}{%fe_fn_get_url url={%$tplData.titleurl%} type='footlink'%}{%/if%}">优化阅读</a>
    {%/if%}
    {%/if%} 
    {%/block%}
    {%block name="script_foot"%}
    {%/block%}
{%block name="wrapper_suffix"%}
</div>
{%/block%}
