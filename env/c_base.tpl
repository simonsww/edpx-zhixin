{%$extData.feData.hasBorder = false%}
{%$extData.feData.hasTitleGap = true%}
{%$extData.feData.hasShowURLGap = false%}

{%*是否图片摆在左边*%}
{%$extData.feData.isLeftImageMode = $templateConfig.isLeftImageMode%}
{%*左侧图片信息*%}
{%$extData.feData.leftImage = []%}

{%*标示模板展现平台*%}
{%$extData.feData.platform = 'pc'%}

{%if !$extData.feData.fm%}
    {%$extData.feData.fm = "alop"%}

{%/if%}

{%block name="data_modifier"%}
{%/block%}

{%$FE_GBVAR=[
    'url_encryption' => "{%$templateConfig.URLEncryption=="1"%}",
    'encrypt_prefix' => "{%$templateConfig.urlEncryption_jump%}",
    'urlEncMaxLen' => ($templateConfig.urlEncMaxLen)?((int)$templateConfig.urlEncMaxLen):2000,
    'gridSolid'=>6,
    'gridGap'=>17,
    'boxGridSolid'=>12,
    'boxGridGap'=>10
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
{%*框内框外6n宽度一致*%}
{%$special=true%}
{%/if%}

{%fe_fn_c_get_grid_height col=$col rate=$rate border=$border special=$special%}
{%/strip%}{%/function%}

{%$baiduId=$queryInfo.baiduId%}
{%$serverTime=$queryInfo.listTime%}
{%$productEncKey=$queryInfo.productEncKey%}
{%$resultDispData=json_decode($tplData.dispData,true)%}

{%$resToken=[]%}
{%$resToken["tieba"]=($templateConfig.token_tieba=="1")%}
{%$resToken["baike"]=($templateConfig.token_baike=="1")%}

{%function name=fe_fn_c_make_url%}{%strip%}
    {%(strlen($eurl)>0 && strlen($eurl)<$FE_GBVAR.urlEncMaxLen)?"`$FE_GBVAR.encrypt_prefix``$eurl`":"`$ourl`"%}
{%/strip%}{%/function%}

{%function name=fe_fn_c_enc_url%}{%strip%}
{%if $FE_GBVAR.url_encryption%}
    {%if $token && $resToken[$token]%}
        {%$urlTokenMd5Str = "`$url``$serverTime`"%}
        {%$urlTokenMd5 = md5($urlTokenMd5Str)%}
        {%$urlToken = "`$urlTokenMd5`&`$serverTime`"|encryptUrl:3:$productEncKey%}
        {%if strlen($urlToken)>0 && strlen($urlToken)<$FE_GBVAR.urlEncMaxLen%}
            {%$url = "`$url`&__bd_tkn__=`$urlToken`"%}
        {%/if%}
        {%fe_fn_c_make_url eurl=$url|encryptUrl ourl=$url%}
    {%elseif $backEndEncryption%}
        {%$url%}
    {%else%}
        {%fe_fn_c_make_url eurl=$url|encryptUrl ourl=$url%}
    {%/if%}
{%else%}
    {%$url%}
{%/if%}
{%/strip%}{%/function%}

{%function fe_fn_c_title_prefix%}<h3 class="t{%if $extData.feData.hasBorder || $extData.feData.hasTitleGap%} c-gap-bottom-small{%/if%}">{%/function%}

{%function fe_fn_c_showgw%}<a target="_blank" href="http://guanwang.baidu.com/vcard/officialsite/" class="icon-gw">官网</a>{%/function%}

{%function fe_fn_c_title title='' url='' highlightParam=0 showgw=''%}{%if $title===''%}{%$title=$tplData.title%}{%/if%}{%if $url===''%}{%$url=$tplData.url%}{%/if%}{%if $showgw===''%}{%$showgw=$tplData.showgw%}{%/if%}{%if $showgw%}{%$titleLimitlen=56%}{%else%}{%$titleLimitlen=62%}{%/if%}<a href="{%$url%}" target="_blank">{%$title|limitlen:$titleLimitlen|highlight:{%$highlightParam%}%}</a>{%if $showgw%}{%fe_fn_c_showgw%}{%/if%}{%/function%}

{%function fe_fn_c_title_url url='' token='' backEndEncryption=''%}{%fe_fn_c_enc_url url="`$url`" token="`$token`" backEndEncryption="`$backEndEncryption`"%}{%/function%}

{%function fe_fn_c_title_soucang%}{%/function%}

{%function fe_fn_c_title_suffix%}</h3>{%/function%}

{%function fe_fn_c_showurl_tools title='' url=''%}{%if $url===''%}{%$url = $tplData.url%}{%/if%}{%if $title===''%}{%$title = $tplData.title%}{%/if%}{%if $url%}<span class="c-tools" id="tools_{%$url|urlsign%}" data-tools="{title:'{%$title|escape:javascript|escape%}',url:'{%$url|escape:javascript|escape%}'}"><a class="c-tip-icon"><i class="c-icon c-icon-triangle-down-g"></i></a></span>{%/if%}{%/function%}

{%function fe_fn_c_showurl showurl='' date='' showlamp=''%}{%if $showurl===''%}{%$showurl=$tplData.showurl%}{%/if%}{%if $date===''%}{%$date=$tplData.date%}{%/if%}{%if $showlamp===''%}{%$showlamp=$tplData.showlamp%}{%/if%}<span class="c-showurl">{%$showurl|escape:'html'%} {%if $date%} {%$date|escape:'html'%} {%/if%}</span>{%if $showurl%}{%fe_fn_c_showurl_tools%}{%/if%}{%if $showlamp%} - <a target="_blank" href="http://open.baidu.com/" class="op_LAMP"></a>{%/if%}{%/function%} 

{%function fe_fn_c_likeshare%}{%/function%}

{%function fe_fn_c_css_write css='' ext=''%}
    {%if !isset($extData.feData.cssState[$css][$ext])%}
        {%$extData.feData.cssUI[$css][$ext]%}
        {%$extData.feData.cssState[$css][$ext]=1%}
    {%/if%}
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
{%function fe_fn_c_wrap_attrs%}class="result-op c-container{%if $extData.feData.fm&&$extData.feData.fm=="alxl"%} result-zxl{%/if%}{%if $extData.feData.isSameSize && $fe_fn_c_nameFlag%} c-res{%/if%}{%if $extData.resourceid && $extData.resourceid lt 5999%} xpath-log{%/if%}{%if $extData.feData.urData%} click-parent-reward{%/if%}" {%if $extData.resourceid%} srcid="{%$extData.resourceid%}"{%/if%} {%if $extData.fetchkey%} fk="{%$extData.fetchkey|escape%}"{%/if%} id="{%if $extData.feData.fm&&$extData.feData.fm=="alxl"%}zxl_{%$extData.feData.id%}{%else%}{%$extData.feData.id%}{%/if%}" tpl="{%basename($smarty.current_dir)%}" mu="{%$extData.feData.mu%}" data-op="{'y':'{%$extData.feData.y%}'}" data-click="{'p1':'{%$extData.feData.id%}'{%if ($resultDispData.sublink.is_main && $resultDispData.sublink.is_main==1) || $resultDispData.strategybits.OFFICIALPAGE_FLAG%},'rsv_gwlink':'1'{%/if%},'rsv_bdr':'{%$extData.burstFlag%}'{%if $extData.feData.fm%},'fm':'{%$extData.feData.fm%}'{%/if%}{%if isset($extData.feData.catid)%},rsv_catid:'{%$extData.feData.catid%}'{%/if%}{%if isset($extData.feData.cardid)%},rsv_cardid:'{%$extData.feData.cardid%}'{%/if%}{%if isset($extData.feData.ename)&&trim($extData.feData.ename)%},rsv_ename:'{%$extData.feData.ename|escape:'javascript'|escape:'html'%}'{%/if%}{%if isset($extData.feData.uri)&&trim($extData.feData.uri)%},rsv_uri:'{%$extData.feData.uri|escape:'javascript'|escape:'html'%}'{%/if%},rsv_stl:'{%$extData.feData.rsv_stl|escape%}'}"{%/function%}


{%block name="main_container"%}
<div {%fe_fn_c_wrap_attrs%}{%if $extData.feData.urData%} urdata="{%$extData.feData.urData%}"{%/if%}>
    {%if $extData.feData.isLeftImageMode%}
    <div class="c-row">
        <div class="result-left c-span6">
        {%block name="left_image"%}
        {%$escaped_img=$extData.feData.leftImage%}
        {%if !$escaped_img.col%}{%$escaped_img.col = 6%}{%/if%}
        {%if !$escaped_img.rate%}{%$escaped_img.rate = 1%}{%/if%}

        {%if $escaped_img.href%}<a target="_blank" href="{%$escaped_img.href%}">{%/if%}
        {%if $escaped_img.src%}<img class="result-left-img" src="{%$escaped_img.src%}" />{%/if%}
        {%if $escaped_img.href%}</a>{%/if%}
        {%/block%}
        </div>
        <div class="result-right">
    {%/if%}
        {%block name="title"%}
        {%fe_fn_c_title_prefix%}
        {%fe_fn_c_title%}
        {%fe_fn_c_title_suffix%}
        {%/block%}
        {%if $extData.feData.hasBorder%}<div class="c-border">{%/if%}{%block name="content"%}{%/block%}{%if $extData.feData.hasBorder%}</div>{%/if%}
        {%block name="foot"%}
        <div{%if $extData.feData.hasBorder || $extData.feData.hasShowURLGap%} class="c-gap-top-small"{%/if%}>{%fe_fn_c_showurl%}</div> 
        {%/block%}
    {%if $extData.feData.isLeftImageMode%}
        </div>
    </div>
    {%/if%}
{%*if $tplData.comm_preload && $templateConfig.prerender == "1"*%}

{%if (($resultDispData.sublink.is_main && $resultDispData.sublink.is_main==1) || $resultDispData.strategybits.OFFICIALPAGE_FLAG) && $templateConfig.prerender == "1"%}
<link rel="prerender" href="{%$tplData.url|escape%}" data-newtab="true">
{%/if%}
</div>
{%/block%}