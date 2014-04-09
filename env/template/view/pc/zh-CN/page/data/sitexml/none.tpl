{%$pageNo = $tplData.queryInfo.pageNo scope='global'%}
{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}
{%$queryGBKEnc = $tplData.queryInfo.pQueryMap.ubs scope='global'%}
{%$searchAction = 's' scope='global'%}
{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}
<?xml version="1.0" encoding="GBK"?>
<psresults>
    <psstatus>OK</psstatus>
    <num>0</num>
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

    <resultlist>
    0
    </resultlist>
</psresults>
