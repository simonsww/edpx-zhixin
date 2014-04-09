{%extends 'base.tpl'%} {%block name='content'%}<tr><td><style type="text/css" >
    .aladdin_tishi_main,.aladdin_tishi_main table{width:100%;}
    .aladdin_tishi_main a{font-size:16px;font-weight:normal;color:#00c;text-decoration:underline}
    .aladdin_tishi_main span{font-size:16px;font-weight:normal;color:#000}
</style><div class="aladdin_tishi_main op_tishi"> <table cellspacing="0" cellpadding="0"> <tbody> <tr> <td> <span>{%$tplData.content1|escape:'html'%}</span> {%if $tplData.linkurl%} {%if $tplData.linkcontent%} <a href="{%$tplData.linkurl|escape:'html'%}" target="_blank" style="">{%$tplData.linkcontent|escape:'html'%}</a> {%/if%} {%/if%} {%if $tplData.content2%} <span>{%$tplData.content2|escape:'html'%}</span> {%/if%} </td> </tr> </tbody> </table></div></td></tr>{%/block%}