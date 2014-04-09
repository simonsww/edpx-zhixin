{%*
* @fileOverview 原创提示模版
* @author  郭勇
* @version 1.0.0
* @date 2013-04-10
*%}{%fis_widget%}{%if $tplData.original.source_name%}<style>.se_st_original {color:#666;display:block;font-size:13px;}</style><span class="se_st_original"><i class="c-text c-text-info c-gap-icon-right-small"><b>[</b><span>原创</span><b>]</b></i>{%if $tplData.original.author%}作者：{%if is_array($tplData.original.author)%}{%implode(" ",$tplData.original.author)|escape%}{%else%}{%$tplData.original.author|escape%}{%/if%}&nbsp;-&nbsp;{%/if%}来源：{%$tplData.original.source_name|escape%}{%if $tplData.original.release_time%}&nbsp;-&nbsp;发表时间：{%$tplData.original.release_time|escape|date_format:'%Y年%m月%d日'%}{%/if%}</span>{%/if%}{%/fis_widget%}