{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}
{%$dispNum = $tplData.asResult.asDataDispNum%}
{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}
{%$topHint = $tplData.asResult.topHint scope='global'%}
{%$seNum = count($tplData.rsseResult.seword)%}
{%$rsNum = count($tplData.rsseResult.rsphrase)%}
{%foreach $tplData.ecResult.ecResultItem as $ecom%}{%$adv[$ecom.id].content=$ecom.adContent scope='global'%}{%$adv[$ecom.id].num=$ecom.adNum scope='global'%}{%/foreach%}
{%$pageNo = $tplData.queryInfo.pageNo scope='global'%}
{%$counter = ($pageNo-1)*$tplData.queryInfo.resNum+1 scope='global'%}
<?xml version="1.0" encoding="gb2312"?>
<webwrapper>
<number><![CDATA[  {%$dispNum%}  ]]></number>
<usm><![CDATA[  {%$urlPara.usm%}  ]]></usm>
<isimportant><![CDATA[  {%if $tplData.asResult.spResultNum%}{%$tplData.asResult.spResultNum%}{%else%}0{%/if%}  ]]></isimportant>


{%$resIndex = 1 scope='global'%}
{%foreach $tplData.asResult.item as $res%}

<result>
<index><![CDATA[  {%$counter%}  ]]></index>

{%if $res.source == 3%}
    {%if $res.dispData.StdStg == 19%}
        {%if $res.pageType%}<pagetype><![CDATA[  {%$res.pageType%}  ]]></pagetype>{%/if%}
        <srcid><![CDATA[  importantnews  ]]></srcid>
        <imptresult>
        {%if $res.dispData.SubTitle0%}
            <impornewsurl><![CDATA[  {%$res.dispData.SubTitleUrl0%} ]]></impornewsurl>
            <impornewstitle><![CDATA[  {%$res.dispData.SubTitle0|highlight:2%} ]]></impornewstitle>
            {%if $res.dispData.ThumURL0%}{%if $res.dispData.ThumTime0%}
                <imporimgsrcurl><![CDATA[  {%$res.dispData.ThumURL0%} ]]></imporimgsrcurl>
                <imporitempageno><![CDATA[  {%$res.dispData.ThumTime0%} ]]></imporitempageno>
                <imporimglinkurl><![CDATA[  {%$res.dispData.SubTitleUrl0%} ]]></imporimglinkurl>
            {%else%}
                <imporimglinkurl><![CDATA[  {%$res.dispData.SubTitleUrl0%} ]]></imporimglinkurl>
                <imporimgsrcurl><![CDATA[  {%$res.dispData.ThumURL0%} ]]></imporimgsrcurl>
            {%/if%}
        {%/if%}
        {%if $res.dispData.PostTime0%}
            {%if $res.dispData.SiteName0%}<subsitename><![CDATA[  {%$res.dispData.SiteName0%} /  ]]></subsitename>{%/if%}
            {%if $tplData.queryInfo.listTime > $res.dispData.PostTime0%}
                <posttime><![CDATA[  {%if (($tplData.queryInfo.listTime - $res.dispData.PostTime0) / 60) < 60%}{%if (($tplData.queryInfo.listTime - $res.dispData.PostTime0) / 60) == 0%}1{%else%}{%(($tplData.queryInfo.listTime - $res.dispData.PostTime0)/60)|string_format:'%d'%}{%/if%}分钟{%else%}{%if (($tplData.queryInfo.listTime - $res.dispData.PostTime0) / 3600) < 24%}{%(($tplData.queryInfo.listTime - $res.dispData.PostTime0) / 3600)|string_format:'%d'%}小时{%else%}{%(($tplData.queryInfo.listTime - $res.dispData.PostTime0) / 86400)|string_format:'%d'%}天{%/if%}{%/if%}前  ]]></posttime>{%/if%}
            {%/if%}
            {%if $res.dispData.SubAbs0%}<subabstract><![CDATA[  {%$res.dispData.SubAbs0|highlight:2%} ]]></subabstract>{%/if%}
            <site><![CDATA[  {%$res.dispData.SubTitleUrl0|url_limit:45%} ]]></site>
        {%/if%}
        </imptresult>
        <imptresult>
        {%if $res.dispData.SubTitle1%}
            <impornewsurl><![CDATA[  {%$res.dispData.SubTitleUrl1%} ]]></impornewsurl>
            <impornewstitle><![CDATA[  {%$res.dispData.SubTitle1|highlight:2%} ]]></impornewstitle>
            {%if $res.dispData.ThumURL1%}{%if $res.dispData.ThumTime1%}
                <imporimgsrcurl><![CDATA[  {%$res.dispData.ThumURL1%} ]]></imporimgsrcurl>
                <imporitempageno><![CDATA[  {%$res.dispData.ThumTime1%} ]]></imporitempageno>
                <imporimglinkurl><![CDATA[  {%$res.dispData.SubTitleUrl1%} ]]></imporimglinkurl>
            {%else%}
                <imporimglinkurl><![CDATA[  {%$res.dispData.SubTitleUrl1%} ]]></imporimglinkurl>
                <imporimgsrcurl><![CDATA[  {%$res.dispData.ThumURL1%} ]]></imporimgsrcurl>
            {%/if%}
        {%/if%}
        {%if $res.dispData.PostTime1%}
            {%if $res.dispData.SiteName1%}<subsitename><![CDATA[  {%$res.dispData.SiteName1%} /  ]]></subsitename>{%/if%}
            {%if $tplData.queryInfo.listTime > $res.dispData.PostTime1%}
                <posttime><![CDATA[  {%if (($tplData.queryInfo.listTime - $res.dispData.PostTime1) / 60) < 60%}{%if (($tplData.queryInfo.listTime - $res.dispData.PostTime1) / 60) == 0%}1{%else%}{%(($tplData.queryInfo.listTime - $res.dispData.PostTime1)/60)|string_format:'%d'%}{%/if%}分钟{%else%}{%if (($tplData.queryInfo.listTime - $res.dispData.PostTime1) / 3600) < 24%}{%(($tplData.queryInfo.listTime - $res.dispData.PostTime1) / 3600)|string_format:'%d'%}小时{%else%}{%(($tplData.queryInfo.listTime - $res.dispData.PostTime1) / 86400)|string_format:'%d'%}天{%/if%}{%/if%}前  ]]></posttime>{%/if%}
            {%/if%}
            {%if $res.dispData.SubAbs1%}<subabstract><![CDATA[  {%$res.dispData.SubAbs1|highlight:2%} ]]></subabstract>{%/if%}
            <site><![CDATA[  {%$res.dispData.SubTitleUrl1|url_limit:45%} ]]></site>
        {%/if%}
        </imptresult>
        <imptresult>
        {%if $res.dispData.SubTitle2%}
            <impornewsurl><![CDATA[  {%$res.dispData.SubTitleUrl2%} ]]></impornewsurl>
            <impornewstitle><![CDATA[  {%$res.dispData.SubTitle2|highlight:2%} ]]></impornewstitle>
            {%if $res.dispData.ThumURL2%}{%if $res.dispData.ThumTime2%}
                <imporimgsrcurl><![CDATA[  {%$res.dispData.ThumURL2%} ]]></imporimgsrcurl>
                <imporitempageno><![CDATA[  {%$res.dispData.ThumTime2%} ]]></imporitempageno>
                <imporimglinkurl><![CDATA[  {%$res.dispData.SubTitleUrl2%} ]]></imporimglinkurl>
            {%else%}
                <imporimglinkurl><![CDATA[  {%$res.dispData.SubTitleUrl2%} ]]></imporimglinkurl>
                <imporimgsrcurl><![CDATA[  {%$res.dispData.ThumURL2%} ]]></imporimgsrcurl>
            {%/if%}
        {%/if%}
        {%if $res.dispData.PostTime2%}
            {%if $res.dispData.SiteName2%}<subsitename><![CDATA[  {%$res.dispData.SiteName2%} /  ]]></subsitename>{%/if%}
            {%if $tplData.queryInfo.listTime > $res.dispData.PostTime2%}
                <posttime><![CDATA[  {%if (($tplData.queryInfo.listTime - $res.dispData.PostTime2) / 60) < 60%}{%if (($tplData.queryInfo.listTime - $res.dispData.PostTime2) / 60) == 0%}1{%else%}{%(($tplData.queryInfo.listTime - $res.dispData.PostTime2)/60)|string_format:'%d'%}{%/if%}分钟{%else%}{%if (($tplData.queryInfo.listTime - $res.dispData.PostTime2) / 3600) < 24%}{%(($tplData.queryInfo.listTime - $res.dispData.PostTime2) / 3600)|string_format:'%d'%}小时{%else%}{%(($tplData.queryInfo.listTime - $res.dispData.PostTime2) / 86400)|string_format:'%d'%}天{%/if%}{%/if%}前  ]]></posttime>{%/if%}
            {%/if%}
            {%if $res.dispData.SubAbs2%}<subabstract><![CDATA[  {%$res.dispData.SubAbs2|highlight:2%} ]]></subabstract>{%/if%}
            <site><![CDATA[  {%$res.dispData.SubTitleUrl2|url_limit:45%} ]]></site>
        {%/if%}
        </imptresult>
        <imptresult>
        {%if $res.dispData.SubTitle3%}
            <impornewsurl><![CDATA[  {%$res.dispData.SubTitleUrl3%} ]]></impornewsurl>
            <impornewstitle><![CDATA[  {%$res.dispData.SubTitle3|highlight:2%} ]]></impornewstitle>
            {%if $res.dispData.ThumURL3%}{%if $res.dispData.ThumTime3%}
                <imporimgsrcurl><![CDATA[  {%$res.dispData.ThumURL3%} ]]></imporimgsrcurl>
                <imporitempageno><![CDATA[  {%$res.dispData.ThumTime3%} ]]></imporitempageno>
                <imporimglinkurl><![CDATA[  {%$res.dispData.SubTitleUrl3%} ]]></imporimglinkurl>
            {%else%}
                <imporimglinkurl><![CDATA[  {%$res.dispData.SubTitleUrl3%} ]]></imporimglinkurl>
                <imporimgsrcurl><![CDATA[  {%$res.dispData.ThumURL3%} ]]></imporimgsrcurl>
            {%/if%}
        {%/if%}
        {%if $res.dispData.PostTime3%}
            {%if $res.dispData.SiteName3%}<subsitename><![CDATA[  {%$res.dispData.SiteName3%} /  ]]></subsitename>{%/if%}
            {%if $tplData.queryInfo.listTime > $res.dispData.PostTime3%}
                <posttime><![CDATA[  {%if (($tplData.queryInfo.listTime - $res.dispData.PostTime3) / 60) < 60%}{%if (($tplData.queryInfo.listTime - $res.dispData.PostTime3) / 60) == 0%}1{%else%}{%(($tplData.queryInfo.listTime - $res.dispData.PostTime3)/60)|string_format:'%d'%}{%/if%}分钟{%else%}{%if (($tplData.queryInfo.listTime - $res.dispData.PostTime3) / 3600) < 24%}{%(($tplData.queryInfo.listTime - $res.dispData.PostTime3) / 3600)|string_format:'%d'%}小时{%else%}{%(($tplData.queryInfo.listTime - $res.dispData.PostTime3) / 86400)|string_format:'%d'%}天{%/if%}{%/if%}前  ]]></posttime>{%/if%}
            {%/if%}
            {%if $res.dispData.SubAbs3%}<subabstract><![CDATA[  {%$res.dispData.SubAbs3|highlight:2%} ]]></subabstract>{%/if%}
            <site><![CDATA[  {%$res.dispData.SubTitleUrl3|url_limit:45%} ]]></site>
        {%/if%}
        </imptresult>
        <imptresult>
        {%if $res.dispData.SubTitle4%}
            <impornewsurl><![CDATA[  {%$res.dispData.SubTitleUrl4%} ]]></impornewsurl>
            <impornewstitle><![CDATA[  {%$res.dispData.SubTitle4|highlight:2%} ]]></impornewstitle>
            {%if $res.dispData.ThumURL4%}{%if $res.dispData.ThumTime4%}
                <imporimgsrcurl><![CDATA[  {%$res.dispData.ThumURL4%} ]]></imporimgsrcurl>
                <imporitempageno><![CDATA[  {%$res.dispData.ThumTime4%} ]]></imporitempageno>
                <imporimglinkurl><![CDATA[  {%$res.dispData.SubTitleUrl4%} ]]></imporimglinkurl>
            {%else%}
                <imporimglinkurl><![CDATA[  {%$res.dispData.SubTitleUrl4%} ]]></imporimglinkurl>
                <imporimgsrcurl><![CDATA[  {%$res.dispData.ThumURL4%} ]]></imporimgsrcurl>
            {%/if%}
        {%/if%}
        {%if $res.dispData.PostTime4%}
            {%if $res.dispData.SiteName4%}<subsitename><![CDATA[  {%$res.dispData.SiteName4%} /  ]]></subsitename>{%/if%}
            {%if $tplData.queryInfo.listTime > $res.dispData.PostTime4%}
                <posttime><![CDATA[  {%if (($tplData.queryInfo.listTime - $res.dispData.PostTime4) / 60) < 60%}{%if (($tplData.queryInfo.listTime - $res.dispData.PostTime4) / 60) == 0%}1{%else%}{%(($tplData.queryInfo.listTime - $res.dispData.PostTime4)/60)|string_format:'%d'%}{%/if%}分钟{%else%}{%if (($tplData.queryInfo.listTime - $res.dispData.PostTime4) / 3600) < 24%}{%(($tplData.queryInfo.listTime - $res.dispData.PostTime4) / 3600)|string_format:'%d'%}小时{%else%}{%(($tplData.queryInfo.listTime - $res.dispData.PostTime4) / 86400)|string_format:'%d'%}天{%/if%}{%/if%}前  ]]></posttime>{%/if%}
            {%/if%}
            {%if $res.dispData.SubAbs4%}<subabstract><![CDATA[  {%$res.dispData.SubAbs4|highlight:2%} ]]></subabstract>{%/if%}
            <site><![CDATA[  {%$res.dispData.SubTitleUrl4|url_limit:45%} ]]></site>
        {%/if%}
        </imptresult>
    {%/if%}
{%/if%}


{%if $res.source == 2%}
    {%if $res.pageType%}<pagetype><![CDATA[  {%$res.pageType%}  ]]></pagetype>{%/if%}
    <size><![CDATA[  {%$res.offsetInfo.size%}  ]]></size>
    {%if !($res.docType < 0)%}
        {%if $res.docTypeBrief%}<doctype><![CDATA[  {%$res.docTypeBrief%} ]]></doctype>{%/if%}
    {%/if%}
    <titleurl><![CDATA[  {%$res.offsetInfo.url|encodeURI%} ]]></titleurl>
    <title><![CDATA[  {%$res.offsetInfo.title|highlight:2%} ]]></title>
    {%if $res.dispData.ThumURL%}
        {%if isset($res.dispData.ThumTime)%}
            <imgsrcurl><![CDATA[  {%$res.dispData.ThumURL%} ]]></imgsrcurl>
            <pagetime><![CDATA[  {%$res.dispData.ThumTime%} ]]></pagetime>
            <titleurl><![CDATA[  {%$res.offsetInfo.url|encodeURI%} ]]></titleurl>
        {%else%}
            <titleurl><![CDATA[  {%$res.offsetInfo.url|encodeURI%} ]]></titleurl>
            <imgsrcurl><![CDATA[  {%$res.dispData.ThumURL%} ]]></imgsrcurl>
        {%/if%}
    {%/if%}
    {%if !($res.docType < 0)%}
        {%if $res.docTypeDetail%}<doctype><![CDATA[  {%$res.docTypeDetail%} ]]></doctype>{%/if%}
        <cache><![CDATA[  http://cache.baidu.com/c?{%$res.snapshootKey%}&user=baidu ]]></cache>
    {%/if%}
    {%if $res.dispData.rtset%}
        {%if $tplData.queryInfo.listTime > $res.dispData.rtset%}
            <posttime><![CDATA[  {%if (($tplData.queryInfo.listTime - $res.dispData.rtset) / 60) < 60%}{%if (($tplData.queryInfo.listTime - $res.dispData.rtset) / 60) == 0%}1{%else%}{%(($tplData.queryInfo.listTime - $res.dispData.rtset) / 60)|string_format:'%d'%}{%/if%}分钟{%else%}{%if (($tplData.queryInfo.listTime - $res.dispData.rtset) / 3600) < 24%}{%(($tplData.queryInfo.listTime - $res.dispData.rtset) / 3600)|string_format:'%d'%}小时{%else%}{%(($tplData.queryInfo.listTime - $res.dispData.rtset) / 86400)|string_format:'%d'%}天{%/if%}{%/if%}前  ]]></posttime>
        {%/if%} 
        <subsitename><![CDATA[  {%if $res.dispData.rtses%} / {%$res.dispData.rtses%}{%/if%} ]]></subsitename>
    {%/if%}
    <abstract><![CDATA[  {%$res.offsetInfo.summary|highlight:6%} ]]></abstract>
    {%if $res.dispData.DispUrl%}
        <site><![CDATA[  {%$res.dispData.DispUrl|url_bold_html%} ]]></site>
    {%else%}
        <site><![CDATA[  $res.offsetInfo.urlDisplay|url_limit:45%} ]]></site>
    {%/if%} 

    {%if strlen($res.snapshootKey)%}
        {%if $res.docType < 0%}
            <cache><![CDATA[  http://cache.baidu.com/c?{%$res.snapshootKey%}&user=baidu ]]></cache>
        {%/if%}
    {%/if%} 

{%/if%}


</result>

{%$counter = $counter + 1 scope='global'%}
{%/foreach%}

</webwrapper>
