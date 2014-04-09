{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}
<?xml version="1.0" encoding="gb2312"?>
<webwrapper>
    {%foreach $tplData.asResult.item as $res%}
    {%if $res.source == 3%}
    {%if $res.dispData.StdStg == 19%}

    <query><![CDATA[{%$query|limitlen:49|vui_escape:'html'%}]]></query>
    <queryurl><![CDATA[ http://www.baidu.com/s?tn=baidurt&rtt=1&bsst=1&wd={%$query|vui_escape:'url'%} ]]></queryurl>

    <news>
        <subnews>
            {%if $res.dispData.SubTitle0%}
            <subnewstlurl><![CDATA[  {%$res.dispData.SubTitleUrl0%} ]]></subnewstlurl>
            <subnewstitle><![CDATA[  {%$res.dispData.SubTitle0|highlight:2%} ]]></subnewstitle>
            {%if $res.dispData.SiteName0%}<subsitename><![CDATA[  {%$res.dispData.SiteName0%} ]]></subsitename>{%/if%}
            {%if $res.dispData.PostTime0%}<subposttime><![CDATA[  {%$res.dispData.PostTime0%} ]]></subposttime>{%/if%}
            {%if $res.dispData.SubAbs0%}<subabs><![CDATA[  {%$res.dispData.SubAbs0|highlight:2%} ]]></subabs>{%/if%}
            {%if $res.dispData.ThumURL0%}<thumurl><![CDATA[ {%$res.dispData.ThumURL0%} ]]></thumurl>{%/if%}
            {%/if%}
        </subnews>
        <subnews>
            {%if $res.dispData.SubTitle1%}
            <subnewstlurl><![CDATA[  {%$res.dispData.SubTitleUrl1%} ]]></subnewstlurl>
            <subnewstitle><![CDATA[  {%$res.dispData.SubTitle1|highlight:2%} ]]></subnewstitle>
            {%if $res.dispData.SiteName1%}<subsitename><![CDATA[  {%$res.dispData.SiteName1%} ]]></subsitename>{%/if%}
            {%if $res.dispData.PostTime1%}<subposttime><![CDATA[  {%$res.dispData.PostTime1%} ]]></subposttime>{%/if%}
            {%/if%}
        </subnews>      
        <subnews>
            {%if $res.dispData.SubTitle2%}
            <subnewstlurl><![CDATA[  {%$res.dispData.SubTitleUrl2%} ]]></subnewstlurl>
            <subnewstitle><![CDATA[  {%$res.dispData.SubTitle2|highlight:2%} ]]></subnewstitle>
            {%if $res.dispData.SiteName2%}<subsitename><![CDATA[  {%$res.dispData.SiteName2%} ]]></subsitename>{%/if%}
            {%if $res.dispData.PostTime2%}<subposttime><![CDATA[  {%$res.dispData.PostTime2%} ]]></subposttime>{%/if%}
            {%/if%}
        </subnews>
        <subnews>
            {%if $res.dispData.SubTitle3%}
            <subnewstlurl><![CDATA[  {%$res.dispData.SubTitleUrl3%} ]]></subnewstlurl>
            <subnewstitle><![CDATA[  {%$res.dispData.SubTitle3|highlight:2%} ]]></subnewstitle>
            {%if $res.dispData.SiteName3%}<subsitename><![CDATA[  {%$res.dispData.SiteName3%} ]]></subsitename>{%/if%}
            {%if $res.dispData.PostTime3%}<subposttime><![CDATA[  {%$res.dispData.PostTime3%} ]]></subposttime>{%/if%}
            {%/if%}
        </subnews>
        <subnews>
            {%if $res.dispData.SubTitle4%}
            <subnewstlurl><![CDATA[  {%$res.dispData.SubTitleUrl4%} ]]></subnewstlurl>
            <subnewstitle><![CDATA[  {%$res.dispData.SubTitle4|highlight:2%} ]]></subnewstitle>
            {%if $res.dispData.SiteName4%}<subsitename><![CDATA[  {%$res.dispData.SiteName4%} ]]></subsitename>{%/if%}
            {%if $res.dispData.PostTime4%}<subposttime><![CDATA[  {%$res.dispData.PostTime4%} ]]></subposttime>{%/if%}
            {%/if%}
        </subnews>
    </news>

    {%/if%}
    {%/if%}
    {%/foreach%}
</webwrapper>

