{%extends 'c_base.tpl'%} {%block name='data_modifier'%} {%$extData.feData.hasBorder = true%}{%/block%}{%block name='content'%}{%foreach $tplData.classify as $classifyItem%}<div style="margin-top:-5px;overflow:hidden;" data-click="{'fm':'beha'}"> <span class="op_merchant_bordSpan">{%$classifyItem['title']|escape:'html'%}</span> <div class="c-tabs op_merchant_tabs"> <div class="c-tabs c-tabs-content"> <ul class="c-tabs-nav"> <li class="c-tabs-nav-li c-tabs-nav-selected">全部</li>  {%foreach $tplData.tag as $item%} {%if ($item['key']===$classifyItem['name'])%} <li class="c-tabs-nav-sep op_merchant_hide"></li> <li class="c-tabs-nav-li"> {%$item['name']|escape:'html'%} </li> {%/if%} {%/foreach%} </ul> </div> </div> </div>{%/foreach%}<span></span><table class="c-table"> <thead> <tr> <th style="width:140px;">项目</th> <th style="width:100px;">加盟金额</th> <th style="width:100px;">所在区域</th> <th style="width:70px;">在线咨询</th> </tr> </thead> <tbody class="op_tbody"> {%for $loop_i=0 to 4%} <tr> <td><a href="{%$tplData.projectItem[$loop_i]['url']|escape:'html'%}" target="_blank" style="color:#0000CC;">{%$tplData.projectItem[$loop_i]['name']|escape:'html'%}</a></td> <td style="color:#FF8A00;">{%$tplData.projectItem[$loop_i]['amount']|escape:'html'%}</td> <td>{%$tplData.projectItem[$loop_i]['area']|escape:'html'%}</td> <td><a class="c-btn c-btn-mini" href="{%$tplData.projectItem[$loop_i]['consultUrl']|escape:'html'%}" target="_blank">我要留言</a></td> </tr>{%if $loop_i==count($tplData.projectItem)-1%} {%break%} {%/if%} {%/for%} </tbody></table><div style="margin-top:6px;">{%foreach $tplData.moreLink as $item%} <a href="{%$item['url']|escape:'html'%}" class="op_merchant_moreLink" target="_blank">{%$item['name']|escape:'html'%}</a>{%/foreach%}</div><script >
    //为阿拉丁单条结果实例创建数据
    //此标签用来准备注释，不需要添加 data-merge
    /*
    A.setup('key1', 'value1');
    A.setup({
        key2: 'value2',
        key3: 'value3'
    });
    */
    
    {%$items=$tplData.projectItem%}
    {%$classifyItems=$tplData.classify%}
    {%$tagItems=$tplData.tag%}
    {%$countClassifyItems=count($tplData.classify)%}
    {%$countItems=count($tplData.projectItem)%}
    {%$countTagItems=count($tplData.tag)%}
    
     A.setup({
         
         'classify': [
             {%for $loop_i=0 to $countClassifyItems-1%}
                "{%$classifyItems[$loop_i]['name']%}"
                {%if $loop_i!=$countClassifyItems-1%},{%/if%}
             {%/for%}
         ],
         'projectItems': [
             {%for $loop_i=0 to $countItems-1%}
                {
                     name: "{%$items[$loop_i]['name']|escape:'javascript'%}",
                     amount: "{%$items[$loop_i]['amount']|escape:'javascript'%}",
                     area: "{%$items[$loop_i]['area']|escape:'javascript'%}",
                     consultUrl: "{%$items[$loop_i]['consultUrl']|escape:'javascript'%}",
                     url: "{%$items[$loop_i]['url']|escape:'javascript'%}",
                     tags: "{%$items[$loop_i]['tags']|escape:'javascript'%}"
                }
                {%if $loop_i!=$countItems-1%},{%/if%}
             {%/for%}
         ],
         'tag': [
             {%for $loop_i=0 to $countTagItems-1%}
                {
                     name: "{%$tagItems[$loop_i]['name']|escape:'javascript'%}",
                     type: "{%$tagItems[$loop_i]['type']|escape:'javascript'%}",
                     key: "{%$tagItems[$loop_i]['key']|escape:'javascript'%}"
                }
                {%if $loop_i!=$countTagItems-1%},{%/if%}
             {%/for%}
         ]
         /*
         ,          
         {%for $loop_i=0 to $countClassifyItems-1%}
             "{%$classifyItems[$loop_i]['name']|escape:'javascript'%}": [
                 {%for $loop_j=0 to count($tplData[$classifyItems[$loop_i]['name']])-1%}
                    "{%$tplData[$classifyItems[$loop_i]['name']][$loop_j]['type']|escape:'javascript'%}"
                    {%if $loop_j!=count($tplData[$classifyItems[$loop_i]['name']])-1%},{%/if%}
                 {%/for%}
             ]
             {%if $loop_i!=$countClassifyItems-1%},{%/if%}
         {%/for%}
         */
         
         
         
         
    });
</script>{%/block%}