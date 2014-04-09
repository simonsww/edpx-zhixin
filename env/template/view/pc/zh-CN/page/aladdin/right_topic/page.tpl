{%extends 'c_right_base.tpl'%} {%block name="data_modifier"%}{%$extData.feData.narrow = true%}{%/block%}{%block name='content'%}{%if $tplData.topictitle[0]['txt']%}<p class="cr-title c-gap-bottom-small">{%$tplData.topictitle[0]['txt']%}</p>{%/if%}{%if !$tplData.type%}<table cellspacing="0" cellpadding="0"  class="opr-right-topic-table" > <tr> <td class="opr-righttopic-oneside" width="50%" valign="top" style="vertical-align:top"> <div class="opr-righttopic-onetopic"> {%if $tplData.oneside[0]['title']%}<h5 class="c-gap-bottom op_right_topic_onetitle">{%$tplData.oneside[0]['title']%}</h5>{%/if%} {%if $tplData.oneside[0]['title']%}<p>{%$tplData.oneside[0]['txt']%}</p>{%/if%} {%*{%foreach $tplData.morelink as $item%}
            {%if $item['txt'] && $item['linkaddress']%}        
            <dd><a href="{%$item['linkaddress']%}" target="_blank">{%$item['txt']|limitlen:44|escape%}</a></dd>  
            {%/if%}
            {%/foreach%}*%} </div> </td> <td class="opr-righttopic-twoside" width="50%"  valign="top" style="vertical-align:top"> <div class="opr-righttopic-onetopic"> {%if $tplData.twoside[0]['title']%}<h5 class="c-gap-bottom op_right_topic_twotitle">{%$tplData.twoside[0]['title']%}</h5>{%/if%} {%if $tplData.twoside[0]['title']%}<p>{%$tplData.twoside[0]['txt']%}</p>{%/if%} {%*{%foreach $tplData.morelink2 as $item%}        
            {%if $item['txt'] && $item['linkaddress']%}
            <dd><a href="{%$item['linkaddress']%}" target="_blank">{%$item['txt'|limitlen:44|escape]%}</a></dd>
            {%/if%}
            {%/foreach%}*%} </div> </td> </tr></table>{%/if%}{%if $tplData.type%} {%if $tplData.summary%} <div>{%$tplData.summary[0].txt|limitlen:100%}<a href="{%$tplData.summary[0].link%}" target="_blank">[详细]</a></div> {%/if%} <div class="c-gap-top opr-right-topic-flag c-clearfix"><span>支持</span><em>反对</em></div>{%/if%} <div class="{%if $tplData.type%}c-gap-top-small{%else%}c-gap-top{%/if%}  op_right_topic_button_wrapper c-clearfix"> <div class="op_right_topic_participatebn_default"><a class="opr-righttopic-pic1" href="javascript:;"></a><span class="opr-righttopic-onesidenum"></span><table width="0" border="0" cellspacing="0" cellpadding="0"  class="opr-righttopic-active"><tr><td class="opr-righttopic-pic2"></td><td><i  class="opr-righttopic-pic3"></i></td><td class="opr-righttopic-pic4"></td></tr></table><span  class="opr-righttopic-twosidenum"></span><a href="javascript:;"  clas{%*i*%}s="opr-righttopic-pic5{%if $tplData.type%}-{%$tplData.type%}{%/if%}"></a></div></div> {%if $tplData.share%} <div class="op_right_topic_share c-gap-top-small"> <p class="op_right_topi_sharemore">{%$tplData.share[0].tip%}</p> <div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare OP_LOG_BTN"> <a class="bds_tsina" style="background-position:-3px -115px!important;"></a> <a class="bds_qzone" style="background-position:-3px -75px!important;"></a> <a class="bds_renren" style="background-position:-3px -195px!important;"></a> <a class="bds_tieba" style="background-position:-3px -595px!important;"></a> </div> <span style="display:none;" id="bdshare_js" data="type=tools&amp;uid=1675871" ></span> <span style="disp{%*i*%}lay:none;" id="bdshell_js"></span> </div> {%/if%}<script >
    {%if $tplData.share%}
    var bds_config={
        'bdText':'{%$tplData.share[0].text%}'{%if $tplData.share[0].img%},'bdPic':'{%$tplData.share[0].img%}'{%/if%}
    };
    {%/if%}
    A.setup({ 
        txt1:'{%$tplData.oneside[0]['title']|escape|escape:'javascript'%}',
        txt2:'{%$tplData.twoside[0]['title']|escape|escape:'javascript'%}',
        share:'{%if $tplData.share%}1{%/if%}',
        datele:'{%$tplData.data%}'
    });
</script>{%/block%}