{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasTitleGap=false%}{%/block%}{%block name='content'%}<style data-merge>.op_text04_tlinkur a{margin-right:16px;white-space:nowrap}</style><div> {%if $tplData.content1%} <p> {%if $tplData.contag1%} <span class="c-gray">{%$tplData.contag1%}</span> {%/if%} <span>{%$tplData.content1|highlight:0%}</span> {%if $tplData.detailLink1[0]['url']%} <a target="_blank" href="{%$tplData.detailLink1[0]['url']%}" style="font-family: simsun;">{%$tplData.detailLink1[0]['content']%}</a> {%/if%} </p> {%/if%} {%if $tplData.content2%} <p> {%if $tplData.contag2%} <span class="c-gray">{%$tplData.contag2%}</span> {%/if%} <span>{%$tplData.content2|highlight:0%}</span> {%if $tplData.detailLink2[0]['url']%} <a target="_blank" href="{%$tplData.detailLink2[0]['url']%}" style="font-family: simsun;">{%$tplData.detailLink2[0]['content']%}</a> {%/if%} </p> {%/if%} {%if $tplData.content3%} <p> {%if $tplData.contag3%} <span class="c-gray">{%$tplData.contag3%}</span> {%/if%} <span>{%$tplData.content3|highlight:0%}</span> {%if $tplData.detailLink3[0]['url']%} <a target="_blank" href="{%$tplData.detailLink3[0]['url']%}" style="font-family: simsun;">{%$tplData.detailLink3[0]['content']%}</a> {%/if%} </p> {%/if%} <div class="op_text04_tlinkur"> {%foreach array_slice($tplData.link, 0) as $item%} {%if $item.linkurl%} <a href="{%$item.linkurl%}" target="_blank">{%$item.linkcontent|highlight:0%}</a> {%/if%} {%/foreach%} </div></div>{%/block%}