{%$FE_GBVAR=[
    'aladdin_txt' => '',
    'wrapper_prefix' => '<tr><td class="f">',
    'wrapper_suffix' => '</td></tr>',
    'url_encryption' => "{%$templateConfig.URLEncryption=="1"%}",
'encrypt_prefix' => "{%$templateConfig.urlEncryption_jump%}",
    'urlEncMaxLen' => ($templateConfig.urlEncMaxLen)?((int)$templateConfig.urlEncMaxLen):2000
]%}

{%$baiduId=$queryInfo.baiduId%}
{%$serverTime=$queryInfo.listTime%}
{%$productEncKey=$queryInfo.productEncKey%}

{%$resToken=[]%}
{%$resToken["tieba"]=($templateConfig.token_tieba=="1")%}
{%$resToken["baike"]=($templateConfig.token_baike=="1")%}

{%function name=fe_fn_make_url%}{%strip%}
    {%(strlen($eurl)>0 && strlen($eurl)<$FE_GBVAR.urlEncMaxLen)?"`$FE_GBVAR.encrypt_prefix``$eurl`":"`$ourl`"%}
{%/strip%}{%/function%}

{%function name=fe_fn_enc_url%}{%strip%}
{%if $FE_GBVAR.url_encryption%}
    {%if $token && $resToken[$token]%}
        {%$urlTokenMd5Str = "`$url``$serverTime`"%}
        {%$urlTokenMd5 = md5($urlTokenMd5Str)%}
        {%$urlToken = "`$urlTokenMd5`&`$serverTime`"|encryptUrl:3:$productEncKey%}
        {%if strlen($urlToken)>0 && strlen($urlToken)<$FE_GBVAR.urlEncMaxLen%}
            {%$url = "`$url`&__bd_tkn__=`$urlToken`"%}
        {%/if%}
        {%fe_fn_make_url eurl=$url|encryptUrl ourl=$url%}
    {%elseif $backEndEncryption%}
        {%$url%}
    {%else%}
        {%fe_fn_make_url eurl=$url|encryptUrl ourl=$url%}
    {%/if%}
{%else%}
    {%$url%}
{%/if%}
{%/strip%}{%/function%}

{%function fe_fn_c_showurl_tools title='' url=''%}{%if $url===''%}{%$url = $tplData.url%}{%/if%}{%if $title===''%}{%$title = $tplData.title%}{%/if%}{%if $url%}<span class="c-tools" id="tools_{%$url|urlsign%}" data-tools="{title:'{%$title|escape:javascript|escape%}',url:'{%$url|escape:javascript|escape%}'}"><a class="c-tip-icon"><i class="c-icon c-icon-triangle-down-g"></i></a></span>{%/if%}{%/function%}
                                                                               
{%function fe_fn_showurl showurl='' date='' showlamp=''%}
<span class="c-showurl">{%$showurl|escape:'html'%} {%if $date%} {%$date|escape:'html'%} {%/if%}</span>{%if $showurl%}{%fe_fn_c_showurl_tools%}{%/if%}{%if $showlamp%} - <a target="_blank" href="http://open.baidu.com/" class="op_LAMP"></a>{%/if%}
{%/function%} 

{%function fe_fn_title_soucang title='' url='' token='' backEndEncryption=''%}{%/function%}

{%function fe_fn_title title='' url='' token='' backEndEncryption='' highlightParam=0%}
<a href="{%fe_fn_enc_url url="`$url`" token="`$token`" backEndEncryption="`$backEndEncryption`"%}" target="_blank">{%$title|limitlen:62|highlight:{%$highlightParam%}%}</a>
{%/function%}

{%function fe_fn_title_url url='' token='' backEndEncryption=''%}{%fe_fn_enc_url url="`$url`" token="`$token`" backEndEncryption="`$backEndEncryption`"%}{%/function%}

{%function fe_fn_title_prefix%}<h3 class="t">{%/function%}

{%function fe_fn_title_suffix title='' url='' token='' backEndEncryption=''%}</h3>{%/function%}

{%function fe_fn_title_suffix2%}</h3>{%/function%}

{%function fe_fn_likeshare%}
{%if $tplData.showLikeShare%}<span class="opui-likeshare-{%$extData.resourceid%} opui-likeshare-l_box" data-ls="{share:'1',rid:'{%$extData.resourceid%}',mid:'{%if $tplData.moduleid%}{%$tplData.moduleid%}{%/if%}',query:'{%$extData.OriginQuery|escape:'javascript'%}',key:'{%$extData.fetchkey|escape:'javascript'%}',url:'{%$tplData.url|escape:'javascript'%}',image:'{%if $tplData.shareImage%}on{%/if%}'}"></span><script>A.setup(function(){var likesharec; A.use('likeshare4',function(){likesharec = A.ui.likeshare('{%$extData.resourceid%}')});this.dispose = function(){likesharec&&likesharec.dispose&&likesharec.dispose();};});</script>{%/if%}
{%/function%}

{%function fe_fn_addtohome%}{%/function%}

{%if $extData.feData.isSameSize%}
{%$fe_fn_tplName_600pxtest ="'charity','text01','qidian','text02','qidian2','normalresult04','newsoftdown','normalresult02','kefu2','houses','sigma_music_json','olympic','aoyunlive','ogs','cj_general','leftrecommend','tplt_hotel','video4','movie','ag_general','sohu','carshow','tvp2','baikeperson','baikespecial'"%}
{%$fe_fn_nameFlag = 0%}
{%$fe_fn_basename_cres = basename($smarty.current_dir)%}

{%if strstr($fe_fn_tplName_600pxtest,$fe_fn_basename_cres)%}
    {%$fe_fn_nameFlag = 1%}
{%/if%}
{%/if%}

{%function fe_fn_wrap_attrs%}class="result-op{%if $extData.feData.fm&&$extData.feData.fm=="alxl"%} result-zxl{%/if%}{%if $extData.feData.isSameSize && $fe_fn_nameFlag%} c-res{%/if%}" {%if $extData.resourceid%} srcid="{%$extData.resourceid%}"{%/if%} {%if $extData.fetchkey%} fk="{%$extData.fetchkey|escape%}"{%/if%} id="{%if $extData.feData.fm&&$extData.feData.fm=="alxl"%}zxl_{%$extData.feData.id%}{%else%}{%$extData.feData.id%}{%/if%}" tpl="{%basename($smarty.current_dir)%}" mu="{%$extData.feData.mu%}" data-op="{'y':'{%$extData.feData.y%}'}" data-click="{'p1':'{%$extData.feData.id%}','rsv_bdr':'{%$extData.burstFlag%}'{%if $extData.feData.fm%},'fm':'{%$extData.feData.fm%}'{%/if%}{%if isset($extData.feData.catid)%},rsv_catid:'{%$extData.feData.catid%}'{%/if%}{%if isset($extData.feData.cardid)%},rsv_cardid:'{%$extData.feData.cardid%}'{%/if%}{%if isset($extData.feData.ename)&&trim($extData.feData.ename)%},rsv_ename:'{%$extData.feData.ename|escape:'javascript'|escape:'html'%}'{%/if%}{%if isset($extData.feData.uri)&&trim($extData.feData.uri)%},rsv_uri:'{%$extData.feData.uri|escape:'javascript'|escape:'html'%}'{%/if%},rsv_stl:'{%$extData.feData.rsv_stl%}'}"{%/function%}


{%block name="main_container"%}
<table {%fe_fn_wrap_attrs%}>{%block name="content"%}{%/block%}</table>
{%/block%}