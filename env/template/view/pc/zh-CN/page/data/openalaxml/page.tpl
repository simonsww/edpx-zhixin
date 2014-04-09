{%$dispNum = $tplData.asResult.asDataDispNum%}
{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}
{%$queryGBKEnc = $tplData.queryInfo.pQueryMap.ubs scope='global'%}
{%$topHint = $tplData.asResult.topHint scope='global'%}
{%$seNum = count($tplData.rsseResult.seword)%}
{%$rsNum = count($tplData.rsseResult.rsphrase)%}
<?xml version="1.0" encoding="gb2312"?>
<webwrapper>

<number><![CDATA[  {%$dispNum%}  ]]></number>
<usm><![CDATA[  {%$urlPara.usm%}  ]]></usm>

{%$resIndex = 1 scope='global'%}
{%foreach $tplData.asResult.item as $res%}
<result>

{%*特殊库结果*%}
{%if $res.source == 3%}

    <index><![CDATA[  {%$resIndex%}  ]]></index>
    
    {%*图片aladdin*%}
    {%if $res.dispData.StdStg == 4%}

        {%if $res.dispData.StdStl == 1%}
        <title><![CDATA[ {%$res.dispData.Query|vui_escape:'html'%} ]]></title>
        <titleurl><![CDATA[ {%$res.dispData.TextAladdinSearchUrl%} ]]></titleurl>
        <date><![CDATA[ {%$res.dispData.TextAladdinDate%} ]]></date>
        <dispNum><![CDATA[ {%$res.dispData.DisplayToTalCountStr%} ]]></dispNum>
        <abstract><![CDATA[ {%$res.dispData.TextAladdinTitle|highlight:2%} ]]></abstract>
        <site><![CDATA[ {%$res.dispData.TextAladdinShowUrl%} ]]></site>
        <srcid><![CDATA[image]]></srcid>
        {%foreach $res.dispData.TextAladdinResult as $alares%}
        <resitem>
        <imgurl><![CDATA[ {%$alares.AladdinThumbnailImageUrl%} ]]></imgurl>
        <imgsize><![CDATA[ {%$alares.ImageSize%} ]]></imgsize>
        <imgwidth><![CDATA[ {%$alares.Width%} ]]></imgwidth>
        <imgheight><![CDATA[ {%$alares.Height%} ]]></imgheight>
        <imgtitle><![CDATA[ {%$alares.AladdinImageSummary%} ]]></imgtitle>
        <imgpn><![CDATA[ {%$alares.ImageIndex%} ]]></imgpn>
        <imgtype><![CDATA[ {%$alares.ImageFormat%} ]]></imgtype>
        <imgfileurl><![CDATA[ {%$alares.ImageObjUrl%} ]]></imgfileurl>
        <imgfromurl><![CDATA[ {%$alares.ImageFromUrl%} ]]></imgfromurl>
        </resitem>
        {%/foreach%}
        {%/if%}

        {%if $res.dispData.StdStl == 2%}
        <title><![CDATA[ {%$res.dispData.Query|vui_escape:'html'%}  ]]></title>
        <titleurl><![CDATA[  {%$res.dispData.ImageAladdinSearchUrl%}  ]]></titleurl>
        <date><![CDATA[  {%$res.dispData.ImageAladdinDate%}  ]]></date>
        <dispNum><![CDATA[  {%$res.dispData.DisplayTotalCountStr%}  ]]></dispNum>
        <abstract><![CDATA[  {%$res.dispData.ImageAladdinTitle|highlight:2%}  ]]></abstract>
        <site><![CDATA[  {%$res.dispData.ImageAladdinShowUrl%}  ]]></site>
        <srcid><![CDATA[image]]></srcid>
        {%foreach $res.dispData.ImageAladdinResult as $alares1%}
        <resitem>
        <imgurl><![CDATA[  {%$alares1.AladdinThumbnailImageUrl%}  ]]></imgurl>
        <imgsize><![CDATA[  {%$alares1.ImageSize%}  ]]></imgsize>
        <imgwidth><![CDATA[ {%$alares1.Width%}  ]]></imgwidth>
        <imgheight><![CDATA[  {%$alares1.Height%}  ]]></imgheight>
        <imgtitle><![CDATA[  {%$alares1.AladdinImageSummary%}  ]]></imgtitle>
        <imgpn><![CDATA[  {%$alares1.ImageIndex%}  ]]></imgpn>
        <imgtype><![CDATA[  {%$alares1.ImageFormat%}  ]]></imgtype>
        <imgfileurl><![CDATA[  {%$alares1.ImageObjUrl%}  ]]></imgfileurl>
        <imgfromurl><![CDATA[  {%$alares1.ImageFromUrl%}  ]]></imgfromurl>
        </resitem>
        {%/foreach%}
        {%/if%}

        <stdStl><![CDATA[  {%$res.dispData.StdStl%} ]]></stdStl>

    {%*百科aladdin2期*%}
    {%elseif $res.dispData.StdStg == 14%}
    
        {%function name=albk_link%}
        {%if $res.dispData.albk_name0%}
        <resitem>
        <restxt><![CDATA[ {%$res.dispData.albk_name0%} ]]></restxt>
        <resurl><![CDATA[ {%$res.dispData.albk_url%}{%$res.dispData.albk_url0%}   ]]></resurl>
        </resitem>
        {%/if%}

        {%if $res.dispData.albk_name1%}
        <resitem>
        <restxt><![CDATA[  {%$res.dispData.albk_name1%}  ]]></restxt>
        <resurl><![CDATA[ {%$res.dispData.albk_url%}{%$res.dispData.albk_url1%}   ]]></resurl>
        </resitem>
        {%/if%}

        {%if $res.dispData.albk_name2%}
        <resitem>
        <restxt><![CDATA[  {%$res.dispData.albk_name2%}  ]]></restxt>
        <resurl><![CDATA[ {%$res.dispData.albk_url%}{%$res.dispData.albk_url2%}   ]]></resurl>
        </resitem>
        {%/if%}

        {%if $res.dispData.albk_name3%}
        <resitem>
        <restxt><![CDATA[  {%$res.dispData.albk_name3%}  ]]></restxt>
        <resurl><![CDATA[ {%$res.dispData.albk_url%}{%$res.dispData.albk_url3%}   ]]></resurl>
        </resitem>
        {%/if%}
        {%/function%}

        <title><![CDATA[  {%$res.dispData.albk_title%}  ]]></title>
        <titleurl><![CDATA[  {%$res.dispData.albk_url%}  ]]></titleurl>
        <abstract><![CDATA[  {%$res.dispData.albk_desc|highlight:2%}  ]]></abstract>
        <edittimes><![CDATA[  {%$res.dispData.albk_num%}  ]]></edittimes>
        <site><![CDATA[  {%$res.dispData.albk_showurl|url_limit:45%}  ]]></site>
        <date><![CDATA[  {%$res.dispData.albk_date%}  ]]></date>
        <srcid><![CDATA[  baike  ]]></srcid>
        {%if $res.pageType%}<pagetype><![CDATA[  {%$res.pageType%}  ]]></pagetype>{%/if%}
        {%if $res.dispData.albk_name0 && $res.dispData.albk_name1%}
        {%if $res.dispData.albk_name0|string_display_len <20  && $res.dispData.albk_name1|string_display_len <20%}
        {%if $res.dispData.albk_name2%}
        {%if $res.dispData.albk_name2|string_display_len <20%}
        {%if $res.dispData.albk_name3%}{%if $res.dispData.albk_name3|string_display_len <20%}
        {%albk_link%}
        {%/if%}
        {%else%}
        {%albk_link%}
        {%/if%}
        {%/if%}
        {%else%}
        {%albk_link%}
        {%/if%}
        {%/if%}    
        {%/if%}

    {%*实时搜索二期*%}
    {%elseif $res.dispData.StdStg == 19%}
        {%function name=display_time%}
            {%$timeDiff=$time%}
            {%$timeDiffMin=$timeDiff/60%}
            {%$timeDiffHour=$timeDiff/3600%}
            {%$timeDiffDay=$timeDiff/86400%}

            {%if $timeDiff > 0%}
            {%if $timeDiffMin < 60%}
            {%($timeDiffMin <= 1) ? "1" : $timeDiffMin|string_format:'%d' %}分钟
            {%else%}
            {%($timeDiffHour < 24) ? "`$timeDiffHour|string_format:'%d'`小时" : "`$timeDiffDay|string_format:'%d'`天"%}
            {%/if%}
            前
            {%/if%}
        {%/function%}
        <title><![CDATA[  {%$query|vui_escape:'html'%} ]]></title>
        <titleurl><![CDATA[  {%$res.offsetInfo.url|encodeURI%} ]]></titleurl>
        <srcid><![CDATA[  realtime ]]></srcid>
        <subitems>
        {%if $res.dispData.SubTitle0%}
        <subitem>
        <SubTitleUrl><![CDATA[  {%$res.dispData.SubTitleUrl0%} ]]></SubTitleUrl> 
        <SubTitle><![CDATA[  {%$res.dispData.SubTitle0%} ]]></SubTitle>
        {%if $res.dispData.SiteName0%}<SiteName><![CDATA[{%$res.dispData.SiteName0%}]]></SiteName>{%/if%}
        {%if $res.dispData.PostTime0%}<PostTime><![CDATA[ {%display_time time=$res.dispData.PostTime0%}]]></PostTime>{%/if%}
        {%if $res.dispData.SubAbs0%}<SubAbs><![CDATA[  {%$res.dispData.SubAbs0%} ]]></SubAbs>{%/if%}
        </subitem>
        {%/if%}

        {%if $res.dispData.SubTitle1%}
        <subitem>
        <SubTitleUrl><![CDATA[  {%$res.dispData.SubTitleUrl1%} ]]></SubTitleUrl> 
        <SubTitle><![CDATA[  {%$res.dispData.SubTitle1%} ]]></SubTitle>
        {%if $res.dispData.SiteName1%}<SiteName><![CDATA[  {%$res.dispData.SiteName1%} ]]></SiteName>{%/if%}
        {%if $res.dispData.PostTime1%}<PostTime><![CDATA[  {%display_time time=$res.dispData.PostTime1%} ]]></PostTime>{%/if%}
        {%if $res.dispData.SubAbs1%}<SubAbs><![CDATA[  {%$res.dispData.SubAbs1%} ]]></SubAbs>{%/if%}
        </subitem>
        {%/if%}

        {%if $res.dispData.SubTitle2%}
        <subitem>
        <SubTitleUrl><![CDATA[  {%$res.dispData.SubTitleUrl2%} ]]></SubTitleUrl> 
        <SubTitle><![CDATA[  {%$res.dispData.SubTitle2%} ]]></SubTitle>
        {%if $res.dispData.SiteName2%}<SiteName><![CDATA[  {%$res.dispData.SiteName2%} ]]></SiteName>{%/if%}
        {%if $res.dispData.PostTime2%}<PostTime><![CDATA[  {%display_time time=$res.dispData.PostTime2%} ]]></PostTime>{%/if%}
        {%if $res.dispData.SubAbs2%}<SubAbs><![CDATA[  {%$res.dispData.SubAbs2%} ]]></SubAbs>{%/if%}
        </subitem>
        {%/if%}

        {%if $res.dispData.SubTitle3%}
        <subitem>
        <SubTitleUrl><![CDATA[  {%$res.dispData.SubTitleUrl3%} ]]></SubTitleUrl> 
        <SubTitle><![CDATA[  {%$res.dispData.SubTitle3%} ]]></SubTitle>
        {%if $res.dispData.SiteName3%}<SiteName><![CDATA[  {%$res.dispData.SiteName3%} ]]></SiteName>{%/if%}
        {%if $res.dispData.PostTime3%}<PostTime><![CDATA[  {%display_time  time=$res.dispData.PostTime3%} ]]></PostTime>{%/if%}
        {%if $res.dispData.SubAbs3%}<SubAbs><![CDATA[  {%$res.dispData.SubAbs3%} ]]></SubAbs>{%/if%}
        </subitem>
        {%/if%}

        {%if $res.dispData.SubTitle4%}
        <subitem>
        <SubTitleUrl><![CDATA[  {%$res.dispData.SubTitleUrl4%} ]]></SubTitleUrl> 
        <SubTitle><![CDATA[  {%$res.dispData.SubTitle4%} ]]></SubTitle>
        {%if $res.dispData.SiteName4%}<SiteName><![CDATA[  {%$res.dispData.SiteName4%} ]]></SiteName>{%/if%}
        {%if $res.dispData.PostTime4%}<PostTime><![CDATA[  {%display_time time=$res.dispData.PostTime4%} ]]></PostTime>{%/if%}
        {%if $res.dispData.SubAbs4%}<SubAbs><![CDATA[  {%$res.dispData.SubAbs4%} ]]></SubAbs>{%/if%}
        </subitem>
        {%/if%}
        </subitems>


    {%*翻译aladdin结果*%}
    {%elseif $res.dispData.StdStg == 23%}
        <fanyi>
        {%if $res.dispData.title_pre%}
        <url><![CDATA[ http://fanyi.baidu.com/translate?query={%if $res.dispData.title_pre%}{%$res.dispData.title_pre|vui_escape:'url'%}{%/if%}&lang={%$res.dispData.from%}2{%$res.dispData.to%} ]]></url>
        {%/if%}
        {%if $res.dispData.title_pre%}<title1><![CDATA[ {%$res.dispData.title_pre|highlight:4%} ]]></title1>{%/if%}
        {%if $res.dispData.title_suf%}<title2><![CDATA[ {%$res.dispData.title_suf|highlight:4%} ]]></title2>{%/if%}
        {%if $res.dispData.result%}<result><![CDATA[ {%$res.dispData.result|vui_escape:'html'%} ]]></result>{%/if%}
        {%if $res.dispData.from%}<ofrom><![CDATA[ {%$res.dispData.from%} ]]></ofrom>{%/if%}
        {%if $res.dispData.to%}<oto><![CDATA[ {%$res.dispData.to%} ]]></oto>{%/if%}
        {%if $res.dispData.demand%}<demand><![CDATA[ {%$res.dispData.demand%} ]]></demand>{%/if%}
        {%if $res.dispData.StdStg%}<resourceid><![CDATA[ {%$res.dispData.StdStg%} ]]></resourceid>{%/if%}
        </fanyi>

    {%else%}
        {%$res.offsetInfo.title%}
    {%/if%}

{%/if%}
    
{%if $res.source == 4 || $res.source == 2%}
    {%*知道阿拉丁结果*%}
    {%if $res.dispData.StdStg == 17%}
        <title><![CDATA[  {%$res.offsetInfo.title|highlight:2%} ]]></title>
        <titleurl><![CDATA[  {%$res.offsetInfo.url|encodeURI%}?fr=ala0&fr2=wise ]]></titleurl>
        <abstract><![CDATA[  {%$res.offsetInfo.summary|highlight:2%}  ]]></abstract>
        <date><![CDATA[  {%$res.dispData.ZhidaoFinishTime%} ]]></date>
        <site><![CDATA[  zhidao.baidu.com ]]></site>
        <srcid><![CDATA[  zhidao  ]]></srcid>
        <replynum><![CDATA[ {%$res.dispData.ZhidaoReplyNum%}]]></replynum>
        <moreresult><![CDATA[  http://zhidao.baidu.com/q?ct=17&pn=0&tn=ikaslist&rn=10&word={%$queryGBKEnc%}&fr=ala ]]></moreresult>
        {%if $res.dispData.ZhidaoTitle_1%}
        <resitem>
        <restitle><![CDATA[  {%$res.dispData.ZhidaoTitle_1|highlight:2%}  ]]></restitle>
        <resurl><![CDATA[ {%$res.dispData.ZhidaoUrl_1%}?fr=ala1 ]]></resurl>
        <resdate><![CDATA[ {%$res.dispData.ZhidaoFinishTime_1%} ]]></resdate>
        <resreplynum><![CDATA[ {%$res.dispData.ZhidaoReplyNum_1%}]]></resreplynum>
        </resitem>
        {%/if%}
        {%if $res.dispData.ZhidaoTitle_2%}
        <resitem>
        <restitle><![CDATA[  {%$res.dispData.ZhidaoTitle_2|highlight:2%}  ]]></restitle>
        <resurl><![CDATA[ {%$res.dispData.ZhidaoUrl_2%}?fr=ala2 ]]></resurl>
        <resdate><![CDATA[ {%$res.dispData.ZhidaoFinishTime_2%} ]]></resdate>
        <resreplynum><![CDATA[ {%$res.dispData.ZhidaoReplyNum_2%}]]></resreplynum>
        </resitem>
        {%/if%}
        {%if $res.dispData.ZhidaoTitle_3%}
        <resitem>
        <restitle><![CDATA[  {%$res.dispData.ZhidaoTitle_3|highlight:2%}  ]]></restitle>
        <resurl><![CDATA[ {%$res.dispData.ZhidaoUrl_3%}?fr=ala3 ]]></resurl>
        <resdate><![CDATA[ {%$res.dispData.ZhidaoFinishTime_3%} ]]></resdate>
        <resreplynum><![CDATA[ {%$res.dispData.ZhidaoReplyNum_3%}]]></resreplynum>
        </resitem>
        {%/if%}

    {%*文库阿拉丁结果*%}    
    {%elseif $res.dispData.StdStg == 18%}
        <title><![CDATA[  {%$res.offsetInfo.title|highlight:2%} ]]></title>
        <titleurl><![CDATA[  {%$res.offsetInfo.url|encodeURI%}?fr=alawk&fr2=wise ]]></titleurl>
        <abstract><![CDATA[  {%$res.offsetInfo.summary|highlight:6%}  ]]></abstract>
        <date><![CDATA[  {%$res.dispData.WenkuPostTime%} ]]></date>
        <site><![CDATA[  wenku.baidu.com ]]></site>
        <srcid><![CDATA[  wenkuala  ]]></srcid>
        <pagenum><![CDATA[  {%$res.dispData.WenkuPage%} ]]></pagenum>
        {%if $res.dispData.brief_popularity%}<viewnum><![CDATA[  {%$res.dispData.brief_popularity%} ]]></viewnum>{%else%}
        <viewnum><![CDATA[  {%$res.dispData.Wenkuwenku_view%} ]]></viewnum>{%/if%}
        {%if $res.dispData.DispUrl%}<dispurl><![CDATA[  {%$res.dispData.DispUrl|url_bold_html%}  ]]></dispurl>
        {%else%}
        <dispurl><![CDATA[  {%$res.offsetInfo.url|limitlen:45%} ]]></dispurl>{%/if%}
        {%if strlen($res.snapshootKey)>0%}<cache><![CDATA[  http://cache.baidu.com/c?{%$res.snapshootKey%}&amp;user=baidu  ]]></cache>{%/if%}
        <moreresult><![CDATA[  http://wenku.baidu.com/search?word={%$queryGBKEnc%}  ]]></moreresult>
        {%if $res.dispData.WenkuTitle_1%}
        <resitem>
        <restitle><![CDATA[  {%$res.dispData.WenkuTitle_1|highlight:2%}  ]]></restitle>
        <resurl><![CDATA[ {%$res.dispData.WenkuUrl_1%}?fr=ala1 ]]></resurl>
        {%if $res.dispData.brief_popularity_1%}<resview><![CDATA[ {%$res.dispData.brief_popularity_1%} ]]></resview>{%else%}<resview><![CDATA[ {%$res.dispData.Wenkuwenku_view_1%} ]]></resview>{%/if%}
        <respagenum><![CDATA[ {%$res.dispData.WenkuPage_1%} ]]></respagenum>
        </resitem>
        {%/if%}
        {%if $res.dispData.WenkuTitle_2%}
        <resitem>
        <restitle><![CDATA[  {%$res.dispData.WenkuTitle_2|highlight:2%}  ]]></restitle>
        <resurl><![CDATA[ {%$res.dispData.WenkuUrl_2%}?fr=ala2 ]]></resurl>
        {%if $res.dispData.brief_popularity_2%}<resview><![CDATA[ {%$res.dispData.brief_popularity_2%} ]]></resview>{%else%}<resview><![CDATA[ {%$res.dispData.Wenkuwenku_view_2%} ]]></resview>{%/if%}
        <respagenum><![CDATA[ {%$res.dispData.WenkuPage_2%} ]]></respagenum>
        </resitem>
        {%/if%}
        {%if $res.dispData.WenkuTitle_3%}
        <resitem>
        <restitle><![CDATA[  {%$res.dispData.WenkuTitle_3|highlight:2%}  ]]></restitle>
        <resurl><![CDATA[ {%$res.dispData.WenkuUrl_3%}?fr=ala3 ]]></resurl>
        {%if $res.dispData.brief_popularity_3%}<resview><![CDATA[ {%$res.dispData.brief_popularity_3%} ]]></resview>{%else%}<resview><![CDATA[ {%$res.dispData.Wenkuwenku_view_3%} ]]></resview>{%/if%}
        <respagenum><![CDATA[ {%$res.dispData.WenkuPage_3%} ]]></respagenum>
        </resitem>
        {%/if%}

    {%else%}
        <index><![CDATA[  {%$resIndex%}  ]]></index>
        <bdClickWeight><![CDATA[  {%$res.clickWeight%}  ]]></bdClickWeight>
        <bdAuthorWeight><![CDATA[  {%$res.authWeight%}  ]]></bdAuthorWeight>
        {%if $res.docType >= 0%}<doctype><![CDATA[  {%$res.docTypeBrief%}  ]]></doctype>{%/if%}
        <title><![CDATA[  {%$res.offsetInfo.title|highlight:2%}  ]]></title>
        <titleurl><![CDATA[  {%$res.offsetInfo.url|encodeURI%}  ]]></titleurl>
        {%if $res.docType >= 0%}
        <typetxt><![CDATA[  文件格式:  ]]></typetxt>
        <typedetail><![CDATA[  {%$res.docTypeDetail%}  ]]></typedetail>
        <doctypeurl><![CDATA[  http://cache.baidu.com/c?{%$res.snapshootKey%}&user=baidu  ]]></doctypeurl>
        <doctypeurltext><![CDATA[  HTML版  ]]></doctypeurltext>
        {%/if%}
        
        {%*特型展现*%}
        {%*BBS特型展现*%}
        {%if $res.dispData.StdStg == 1000%}
        {%if $res.dispData.BBSRecount || $res.dispData.BBSPostTime%}
        {%if $res.dispData.BBSRecount%}
        <bbsrecount><![CDATA[ {%$res.dispData.BBSRecount|vui_escape:'html'%} ]]></bbsrecount>
        {%/if%}
        {%if $res.dispData.BBSPostTime%}
        <bbsposttime><![CDATA[ {%$res.dispData.BBSPostTime|vui_escape:'html'%} ]]></bbsposttime>
        {%/if%}
        {%/if%}
        {%/if%}
        
        <abstract><![CDATA[  {%$res.offsetInfo.summary|highlight:6%}  ]]></abstract>
        
        {%*文库单条结果*%}
        {%if $res.dispData.StdStg == 16%}
        <wenkupagenum><![CDATA[  {%$res.dispData.WenkuPage%} ]]></wenkupagenum>
        {%if $res.dispData.brief_popularity%}<wenkuviewnum><![CDATA[  {%$res.dispData.brief_popularity%} ]]></wenkuviewnum>
        {%else%}<wenkuviewnum><![CDATA[  {%$res.dispData.Wenkuwenku_view%} ]]></wenkuviewnum>{%/if%}
        {%/if%}

        <size><![CDATA[  {%$res.offsetInfo.size%}  ]]></size>
        <date><![CDATA[{%$res.offsetInfo.lastModified%}]]></date>
        
        {%if $res.docType < 0%}<cache><![CDATA[  {%if strlen($res.snapshootKey)%}http://cache.baidu.com/c?{%$res.snapshootKey%}&amp;user=baidu{%/if%}  ]]></cache>{%/if%}

        <site><![CDATA[  {%$res.offsetInfo.urlDisplay|url_limit:45:true%}  ]]></site>
        {%if $res.pageType%}<pagetype><![CDATA[  {%$res.pageType%}  ]]></pagetype>{%/if%}


    {%/if%}
                                                     
{%/if%}

</result>
{%$resIndex = $resIndex + 1 scope='global'%}
{%/foreach%}

{%if $rsNum > 0%}{%for $index=0 to 9%}{%$rsWord = $tplData.rsseResult.rsphrase[$index]%}{%if $rsWord%}<relate><![CDATA[{%$rsWord.phrase|vui_escape:'html'%}]]></relate>{%/if%}{%/for%}{%/if%}

{%if ($topHint & 0x4) != 0%}
<pinyin><![CDATA[  {%for $index=0 to $seNum-1%}{%$seWord = $tplData.rsseResult.seword[$index]%}{%$seWord%}{%/for%}  ]]></pinyin>
{%/if%}


</webwrapper>
