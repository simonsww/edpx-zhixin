{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}
{%$queryGBKEnc = $tplData.queryInfo.pQueryMap.ubs scope='global'%}
{%$dispNum = $tplData.asResult.asDataDispNum%}
{%$listNum = $tplData.asResult.asDataListNum%}
{%$pageNo = $tplData.queryInfo.pageNo scope='global'%}
{%$searchAction = 's' scope='global'%}
{%$rsNum = count($tplData.rsseResult.rsphrase)%}
{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}
{%$counter = ($pageNo-1)*$tplData.queryInfo.resNum+1 scope='global'%}
<?xml version="1.0" encoding="GBK"?>
<psresults>
    <psstatus>OK</psstatus>
    <dispnum>{%$dispNum%}</dispnum>
    <listnum>{%$listNum%}</listnum>
    <maxretnum>10</maxretnum>
    <curpage>{%$pageNo%}</curpage>
    <pword>{%$query|vui_escape:'html'%}</pword>
    <uword>{%$queryGBKEnc%}</uword>
    <queryform>
        <action>{%$searchAction%}</action>
        <word>{%$query|vui_escape:'html'%}</word>
        <cl>{%$urlPara.cl%}</cl>
        <ct>{%$urlPara.ct%}</ct>
        <tn>{%$urlPara.tn%}</tn>
    </queryform>

    <results>
        {%foreach $tplData.asResult.item as $res%}
        {%if $res.source == 2%}
        <result>
            <seqnum>{%if $counter <= $tplData.queryInfo.protectNum%}{%$counter%}{%else%}{%$counter + $adv[213].num%}{%/if%}</seqnum>
            <uri><![CDATA[{%$res.offsetInfo.url|encodeURI%}]]></uri>
            <title><![CDATA[{%$res.offsetInfo.title|highlight:2%}]]></title>
            <lastmod>{%$res.offsetInfo.lastModified%}</lastmod>
            <sizekb>{%$res.offsetInfo.size%}</sizekb>
            <abstract><![CDATA[{%$res.offsetInfo.summary|highlight:2%}]]></abstract>
            <shorturl><![CDATA[{%$res.offsetInfo.urlDisplay%}]]></shorturl>
            {%if $res.dispData.StdStg == 24%}
                <articlenumswk><![CDATA[{%$res.dispData.articlenumswk%}]]></articlenumswk>
                {%if $res.dispData.subclasswk1%}
                <subclasswk1><![CDATA[{%$res.dispData.subclasswk1%}]]></subclasswk1>
                {%if $res.dispData.subclasswk1tag1%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag1%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag2%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag2%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag3%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag3%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag4%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag4%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag5%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag5%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag6%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag6%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag7%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag7%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag8%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag8%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag9%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag9%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag10%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag10%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tagablumurl1%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl1%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl2%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl2%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl3%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl3%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl4%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl4%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl5%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl5%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl6%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl6%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl7%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl6%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl8%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl6%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl9%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl6%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl10%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl6%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%/if%}
                {%if $res.dispData.subclasswk2%}
                <subclasswk2><![CDATA[{%$res.dispData.subclasswk2%}]]></subclasswk2>
                {%if $res.dispData.subclasswk2tag1%}<subclasswk2tag><![CDATA[{%$res.dispData.subclasswk2tag1%}]]></subclasswk2tag>{%/if%}
                {%if $res.dispData.subclasswk2tag2%}<subclasswk2tag><![CDATA[{%$res.dispData.subclasswk2tag2%}]]></subclasswk2tag>{%/if%}
                {%if $res.dispData.subclasswk2tag3%}<subclasswk2tag><![CDATA[{%$res.dispData.subclasswk2tag3%}]]></subclasswk2tag>{%/if%}
                {%if $res.dispData.subclasswk2tag4%}<subclasswk2tag><![CDATA[{%$res.dispData.subclasswk2tag4%}]]></subclasswk2tag>{%/if%}
                {%if $res.dispData.subclasswk2tag5%}<subclasswk2tag><![CDATA[{%$res.dispData.subclasswk2tag5%}]]></subclasswk2tag>{%/if%}
                {%if $res.dispData.subclasswk2tag6%}<subclasswk2tag><![CDATA[{%$res.dispData.subclasswk2tag6%}]]></subclasswk2tag>{%/if%}
                {%if $res.dispData.subclasswk2tag7%}<subclasswk2tag><![CDATA[{%$res.dispData.subclasswk2tag7%}]]></subclasswk2tag>{%/if%}
                {%if $res.dispData.subclasswk2tag8%}<subclasswk2tag><![CDATA[{%$res.dispData.subclasswk2tag8%}]]></subclasswk2tag>{%/if%}
                {%if $res.dispData.subclasswk2tag9%}<subclasswk2tag><![CDATA[{%$res.dispData.subclasswk2tag9%}]]></subclasswk2tag>{%/if%}
                {%if $res.dispData.subclasswk2tag10%}<subclasswk2tag><![CDATA[{%$res.dispData.subclasswk2tag10%}]]></subclasswk2tag>{%/if%}
                {%if $res.dispData.subclasswk2tagablumurl1%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk2tagablumurl1%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk2tagablumurl2%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk2tagablumurl2%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk2tagablumurl3%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk2tagablumurl3%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk2tagablumurl4%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk2tagablumurl4%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk2tagablumurl5%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk2tagablumurl5%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk2tagablumurl6%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk2tagablumurl6%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk2tagablumurl7%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk2tagablumurl7%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk2tagablumurl8%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk2tagablumurl8%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk2tagablumurl9%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk2tagablumurl9%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk2tagablumurl10%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk2tagablumurl10%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%/if%}
                {%if !$res.dispData.subclasswk1 && !$res.dispData.subclasswk2%}
                {%if $res.dispData.subclasswk1tag1%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag1%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag2%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag2%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag3%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag3%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag4%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag4%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag5%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag5%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag6%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag6%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag7%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag7%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag8%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag8%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag9%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag9%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tag10%}<subclasswk1tag><![CDATA[{%$res.dispData.subclasswk1tag10%}]]></subclasswk1tag>{%/if%}
                {%if $res.dispData.subclasswk1tagablumurl1%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl1%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl2%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl2%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl3%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl3%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl4%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl4%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl5%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl5%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl6%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl6%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl7%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl7%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl8%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl8%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl9%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl9%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%if $res.dispData.subclasswk1tagablumurl10%}
                <subclasswk1tagablumurl><![CDATA[{%$res.dispData.subclasswk1tagablumurl10%}]]></subclasswk1tagablumurl>
                {%/if%}
                {%/if%}
                <wenkures>
                <doc_url><![CDATA[{%$res.offsetInfo.url|encodeURI%}]]></doc_url>
                <uname><![CDATA[{%$res.dispData.WenkuAuthorName|vui_escape:'html'%}]]></uname>
                <title><![CDATA[{%$res.offsetInfo.title|highlight:2%}]]></title>
                <content><![CDATA[{%$res.offsetInfo.summary|highlight:2%}]]></content>
                <doc_type>{%$res.dispData.WenkuMdocType%}</doc_type>
                <create_time><![CDATA[{%$res.dispData.WenkuPostTime|vui_escape:'html'%}]]></create_time>
                <value_count>{%$res.dispData.WenkuValueCount%}</value_count>
                <value_score>{%$res.dispData.WenkuValue%}</value_score>
                <page_num>{%$res.dispData.WenkuPage%}</page_num>
                <download_count>{%if $res.dispData.brief_download%}{%$res.dispData.brief_download%}{%else%}{%$res.dispData.WenkuDownload%}{%/if%}</download_count>
                <extends>
                <ex_source><![CDATA[{%$res.dispData.Wenkuwk_flt_source%}]]></ex_source>
                <ex_lec_cid1><![CDATA[{%$res.dispData.Wenkuwk_flt_lec_cid1%}]]></ex_lec_cid1>
                <ex_lec_cid2><![CDATA[{%$res.dispData.Wenkuwk_flt_lec_cid2%}]]></ex_lec_cid2>
                <ex_lec_cid3><![CDATA[{%$res.dispData.Wenkuwk_flt_lec_cid3%}]]></ex_lec_cid3>
                <ex_lec_version><![CDATA[{%$res.dispData.Wenkuwk_flt_lec_version%}]]></ex_lec_version>
                <ex_school><![CDATA[{%$res.dispData.Wenkuwk_flt_school%}]]></ex_school>
                <ex_author><![CDATA[{%$res.dispData.Wenkuwk_flt_author%}]]></ex_author>
                <ex_press><![CDATA[{%$res.dispData.Wenkuwk_flt_press%}]]></ex_press>
                <ex_teacher><![CDATA[{%$res.dispData.Wenkuwk_flt_teacher%}]]></ex_teacher>
                <ex_price><![CDATA[{%$res.dispData.Wenkuwenku_price%}]]></ex_price>
                <ex_issue_date><![CDATA[{%$res.dispData.Wenkuwenku_issue_date%}]]></ex_issue_date>
                <ex_view><![CDATA[{%if $res.dispData.brief_popularity%}{%$res.dispData.brief_popularity%}{%else%}{%$res.dispData.Wenkuwenku_view%}{%/if%}]]></ex_view>
                </extends>
                </wenkures>
            {%/if%}
            {%if $res.dispData.StdStg == 16%}
                <wenkures>
                <doc_url><![CDATA[{%$res.offsetInfo.url|encodeURI%}]]></doc_url>
                <uname><![CDATA[{%$res.dispData.WenkuAuthorName|vui_escape:'html'%}]]></uname>
                <title><![CDATA[{%$res.offsetInfo.title|highlight:2%}]]></title>
                <content><![CDATA[{%$res.offsetInfo.summary|highlight:2%}]]></content>
                <doc_type>{%$res.dispData.WenkuMdocType%}</doc_type>
                <create_time><![CDATA[{%$res.dispData.WenkuPostTime|vui_escape:'html'%}]]></create_time>
                <value_count>{%$res.dispData.WenkuValueCount%}</value_count>
                <value_score>{%$res.dispData.WenkuValue%}</value_score>
                <page_num>{%$res.dispData.WenkuPage%}</page_num>
                <download_count>{%if $res.dispData.brief_download%}{%$res.dispData.brief_download%}{%else%}{%$res.dispData.WenkuDownload%}{%/if%}</download_count>
                <extends>
                <ex_source><![CDATA[{%$res.dispData.Wenkuwk_flt_source%}]]></ex_source>
                <ex_lec_cid1><![CDATA[{%$res.dispData.Wenkuwk_flt_lec_cid1%}]]></ex_lec_cid1>
                <ex_lec_cid2><![CDATA[{%$res.dispData.Wenkuwk_flt_lec_cid2%}]]></ex_lec_cid2>
                <ex_lec_cid3><![CDATA[{%$res.dispData.Wenkuwk_flt_lec_cid3%}]]></ex_lec_cid3>
                <ex_lec_version><![CDATA[{%$res.dispData.Wenkuwk_flt_lec_version%}]]></ex_lec_version>
                <ex_school><![CDATA[{%$res.dispData.Wenkuwk_flt_school%}]]></ex_school>
                <ex_author><![CDATA[{%$res.dispData.Wenkuwk_flt_author%}]]></ex_author>
                <ex_press><![CDATA[{%$res.dispData.Wenkuwk_flt_press%}]]></ex_press>
                <ex_teacher><![CDATA[{%$res.dispData.Wenkuwk_flt_teacher%}]]></ex_teacher>
                <ex_price><![CDATA[{%$res.dispData.Wenkuwenku_price%}]]></ex_price>
                <ex_issue_date><![CDATA[{%$res.dispData.Wenkuwenku_issue_date%}]]></ex_issue_date>
                <ex_view><![CDATA[{%if $res.dispData.brief_popularity%}{%$res.dispData.brief_popularity%}{%else%}{%$res.dispData.Wenkuwenku_view%}{%/if%}]]></ex_view>
                </extends>
                </wenkures>
            {%/if%} 
        </result>
        {%/if%} 
        {%$counter = $counter + 1 scope='global'%}
        {%/foreach%}
    </results>
    <relates>
        {%if $rsNum > 0%}{%for $index=0 to 9%}{%$rsWord = $tplData.rsseResult.rsphrase[$index]%}{%if $index < $rsNum%}<relate><![CDATA[{%$rsWord.phrase|vui_escape:'html'%}]]></relate>{%/if%}{%/for%}{%/if%}
    </relates>
</psresults>

