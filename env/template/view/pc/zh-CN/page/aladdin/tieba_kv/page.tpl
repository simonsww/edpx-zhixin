{%extends 'c_base.tpl'%} {%block name='data_modifier'%} {%$extData.feData.hasTitleGap=false%} {%if $tplData.link&&$tplData.word%} {%$tplData.url=$tplData.link%} {%$tplData.title="`$tplData.word`吧_百度贴吧"%} {%/if%}{%/block%}{%block name='content'%}{%if $tplData.peoplenumber || $tplData.postnumber%} <p> {%if $tplData.peoplenumber%} 月活跃{%if $tplData.peoplename%}{%$tplData.peoplename%}{%else%}粉丝{%/if%}：<strong>{%$tplData.peoplenumber|limitlen:10%}</strong>人 {%/if%} {%if $tplData.postnumber%} &nbsp;&nbsp;&nbsp;累计发贴：<strong>{%$tplData.postnumber|limitlen:10%}</strong> {%/if%} </p>{%/if%}<p> {%if $tplData.tag%} {%$tempDataNotFirst=false%} {%foreach $tplData.tag as $item%} {%if isset($item.number) && $item.number>0%} {%if $tempDataNotFirst%}&nbsp;&nbsp;|&nbsp;&nbsp;{%/if%} <a href="{%$item.link%}" target="_blank">{%$item.name|limitlen:8%}({%$item.number|limitlen:10%})</a> {%$tempDataNotFirst=true%} {%/if%} {%/foreach%} {%/if%}</p><hr class="op_tieba_kv_line" /><table class="op_tieba_kv_list_table c-offset" width="100%"> {%foreach $tplData.post as $item%} {%if $item@index>2%}{%break%}{%/if%} <tr> <td> <a href="{%$item.link%}" target="_blank" class="op_tieba_kv_list_subject" title="{%$item.subject%}"> {%$titleLenB = strlen($item.subject) - mb_strlen($item.subject,'utf-8')%} {%if $titleLenB < 30%}{%$limit = 40%}{%else%}{%$limit = 50%}{%/if%} {%if $item.pic == "true"%} {%$limit = $limit-3%}{%/if%} {%if $item.fine =="true"%} {%$limit = $limit-3%}{%/if%} {%if $item.top =="true"%} {%$limit = $limit-4%}{%/if%} {%$item.subject|limitlen:$limit|highlight:0%} </a> {%if $item.fine == "true"%} <span class="op_tieba_kv_list_fine">&nbsp;</span> {%/if%} {%if $item.top == "true"%} <span class="op_tieba_kv_list_top">&nbsp;</span> {%/if%} {%if $item.pic == "true"%} <span class="op_tieba_kv_list_pic">&nbsp;</span> {%/if%} </td> <td class="op_tieba_kv_list_table_td"> <span>点击：{%$item.click|limitlen:10%}</span> </td> <td class="op_tieba_kv_list_table_td"> <span class="op_tieba_kv_item_rate">回复：{%$item.reply|limitlen:10%}</span> </td> </tr> {%/foreach%}</table>{%if $tplData.morelink%} <a target="_blank" href="{%$tplData.morelink%}" class="c-offset">更多{%$tplData.word|limitlen:80|highlight:0%}吧的内容&gt;&gt;</a>{%/if%}{%/block%}{%block name="foot"%}<div class="c-offset">{%fe_fn_c_showurl%}</div>{%/block%}