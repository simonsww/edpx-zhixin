{%$extData.feData.hasBorder = false%}
{%$extData.feData.hasTitleGap = true%}
{%$extData.feData.hasShowURLGap = false%}

{%*标示模板展现平台*%}
{%$extData.feData.platform = 'ipad'%}

{%if !$extData.feData.fm%}
    {%$extData.feData.fm = "alop"%}

{%/if%}

{%block name="data_modifier"%}
{%/block%}

{%$FE_GBVAR=[
    'aladdin_txt' => '',
    'wrapper_prefix' => '<tr><td class="c-container">',
    'wrapper_suffix' => '</td></tr>',
	'gridSolid'=>12,
    'gridGap'=>14,
    'boxGridSolid'=>13,
    'boxGridGap'=>12
]%} 

{%*获取图片高度*%}
{%*
col为图片栅格列数，rate为图片高宽比，border为该结果是否有框

$extData.burstFlag(0 没进框
1 框内第一条结果
3 框内最后一条结果
2 框内结果（非第一条和最后一条）)
*%}

{%*获取栅格高度*%}
{%function name=fe_fn_c_get_grid_height col=6 rate=1 border='' special=false%}{%strip%}
{%if !$special && ($extData.burstFlag || $extData.feData.hasBorder || $border)%}
    {%$solid=$FE_GBVAR.boxGridSolid%}
    {%$gap=$FE_GBVAR.boxGridGap%}
{%else%}

    {%$solid=$FE_GBVAR.gridSolid%}
    {%$gap=$FE_GBVAR.gridGap%}
{%/if%}

{%round(($col*($solid+$gap)-$gap)*$rate)%}

{%/strip%}{%/function%}

{%*获取栅格图片高度*%}
{%function name=fe_fn_c_get_img_height col=6 rate=1 border=''%}{%strip%}
{%if $col==6%}
{%*pad无需处理*%}

{%/if%}

{%fe_fn_c_get_grid_height col=$col rate=$rate border=$border special=$special%}
{%/strip%}{%/function%}



{%function name=fe_fn_c_enc_url%}{%strip%}
    {%$url%}
{%/strip%}{%/function%}

{%function fe_fn_c_title_prefix%}<h3 class="t{%if $extData.feData.hasBorder || $extData.feData.hasTitleGap%} c-gap-bottom-small{%/if%}">{%/function%}

{%function fe_fn_c_showgw%}<a target="_blank" href="http://guanwang.baidu.com/vcard/officialsite/" class="icon-gw">官网</a>{%/function%}

{%function fe_fn_c_title title='' url='' showgw=''%}{%if $title===''%}{%$title=$tplData.title%}{%/if%}{%if $url===''%}{%$url=$tplData.url%}{%/if%}{%if $showgw===''%}{%$showgw=$tplData.showgw%}{%/if%}{%if $showgw%}{%$titleLimitlen=56%}{%else%}{%$titleLimitlen=62%}{%/if%}<a href="{%$url|escape:'html'%}" target="_blank">{%$title|limitlen:$titleLimitlen|highlight:0%}</a>{%if $showgw%}{%fe_fn_c_showgw%}{%/if%}{%/function%} 

{%function fe_fn_c_title_url url='' token='' backEndEncryption=''%}{%fe_fn_c_enc_url url="`$url`" token="`$token`" backEndEncryption="`$backEndEncryption`"%}{%/function%}

{%function fe_fn_c_title_suffix%}</h3>{%/function%} 

{%function fe_fn_c_showurl_tools%}{%/function%}

{%function fe_fn_c_showurl showurl='' date='' showlamp=''%}{%if $showurl===''%}{%$showurl=$tplData.showurl%}{%/if%}{%if $date===''%}{%$date=$tplData.date%}{%/if%}{%if $showlamp===''%}{%$showlamp=$tplData.showlamp%}{%/if%}<span class="c-showurl"><cite>{%$showurl|escape:'html'%}</cite> {%if $date%} <time>{%$date|escape:'html'%}</time> {%/if%} {%if $showlamp%} - <a target="_blank" href="http://open.baidu.com/" class="aladdin-LAMP"></a>{%/if%}</span>
{%/function%} 

{%function fe_fn_c_likeshare%}{%/function%}

{%function fe_fn_c_css_write css='' ext=''%}
        {%$extData.feData.cssUI[$css][$ext]%}
        {%$extData.feData.cssState[$css][$ext]=1%}
{%/function%}

{%function fe_fn_c_css css='' ext=''%}
    {%if $css%}
        {%fe_fn_c_css_write css=$css ext='common'%}
        {%if $ext%}
            {%if is_array($ext)%}
                {%foreach $ext as $item%}
                    {%fe_fn_c_css_write css=$css ext=$item%}
                {%/foreach%}
            {%else%}
                {%fe_fn_c_css_write css=$css ext=$ext%}
            {%/if%}
        {%/if%}
    {%/if%}
{%/function%}


{%block name="main_container"%}  
    <div class="result-op c-container{%if $extData.feData.fm=='alxl'%} result-zxl{%/if%}{%if $extData.resourceid && $extData.resourceid lt 5999%} xpath-log{%/if%}" {%if $extData.resourceid%} srcid="{%$extData.resourceid%}"{%/if%} tpl="{%basename($smarty.current_dir)%}" {%if isset($extData.fetchkey)%} fk="{%$extData.fetchkey%}" {%/if%} id="{%$extData.feData.id%}" mu="{%$extData.feData.mu%}" data-op="{'y':'{%$extData.feData.y%}'}" {%if $extData.feData.isFavoOn == 1 && $extData.feData.isUserLogin == 1%}data-favo="{'flag':'{%$extData.feData.favoFlag%}','id':'{%$extData.feData.favoItemId%}'}"{%/if%} data-click="{'p1':'{%$extData.feData.id%}'{%if $extData.feData.fm%},'fm':'{%$extData.feData.fm%}'{%/if%}{%if isset($extData.feData.catid)%},rsv_catid:'{%$extData.feData.catid%}'{%/if%}{%if isset($extData.feData.cardid)%},rsv_cardid:'{%$extData.feData.cardid%}'{%/if%}{%if isset($extData.feData.ename)&&trim($extData.feData.ename)%},rsv_ename:'{%$extData.feData.ename|escape:'javascript'|escape:'html'%}'{%/if%}{%if isset($extData.feData.uri)&&trim($extData.feData.uri)%},rsv_uri:'{%$extData.feData.uri|escape:'javascript'|escape:'html'%}'{%/if%},rsv_stl:'{%$extData.feData.rsv_stl%}'}">        

    {%block name="title"%}
        {%fe_fn_c_title_prefix%}
        {%fe_fn_c_title%}
        {%fe_fn_c_title_suffix%}
    {%/block%}
    {%if $extData.feData.hasBorder%}<div class="c-border">{%/if%}{%block name="content"%}{%/block%}{%if $extData.feData.hasBorder%}</div>{%/if%}
    {%block name="foot"%}
    <div{%if $extData.feData.hasBorder || $extData.feData.hasShowURLGap%} class="c-gap-top-small"{%/if%}>{%fe_fn_c_showurl%}</div> 
    {%/block%}
    {%block name="script_init"%}
    <script>A.init();</script>
    {%/block%}

</div>
{%/block%}