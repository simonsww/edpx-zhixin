{%extends 'c_base.tpl'%} {%block name='content'%}<style data-merge>{%fe_fn_c_css css='img'%}</style><table cellpadding="0" cellspacing="0" class="c-table"> <tr> <td valign="top"> <a target="_blank" href="{%$tplData.pic[0]['jumplink']%}"> <img src="{%$tplData.pic[0]['piclink']%}" border="0" class="c-img c-img6" /> </a> </td> <td valign="top" style="padding-left:17px; line-height:20px;"> {%if $tplData.content1!=""%}<p>{%$tplData.content1|highlight:0%}</p>{%/if%} {%if $tplData.content2!=""%}<p>{%$tplData.content2|highlight:0%}</p>{%/if%} {%if $tplData.content3!=""%}<p>{%$tplData.content3|highlight:0%}</p>{%/if%} <div class="c-gap-top-small">{%fe_fn_c_showurl%}</div> </td> </tr></table>{%/block%}{%block name="foot"%}{%/block%}