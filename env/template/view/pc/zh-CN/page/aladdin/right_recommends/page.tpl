{%extends 'c_right_base.tpl'%} {%block name='content'%}<style>.opr-recommends-img{height:{%fe_fn_c_get_img_height col=4%}px}</style><div class="cr-title"> {%$tplData.title%}</div>{%foreach array_slice($tplData.list, 0, 8) as $escaped_li%}{%if $escaped_li@index % 4 === 0%}{%if $escaped_li@index != 0%} </div> {%/if%}<div class="c-row c-gap-top">{%/if%} <div class="c-span4 {%if ($escaped_li@index+1) % 4 === 0%} c-span-last opr-recommends-lastspan{%else if ($escaped_li@index+2) % 4 === 0%} c-span-last-s{%/if%} opr-recommends-item" data-click="{'rsv_re_ename':'{%$escaped_li.name%}'}"> <div class="opr-recommends-p"> <a target="_blank" href="{%build_search_url params="`$escaped_li.params`"%}"> <img {%$escaped_li.img|img_base64_render%} class="c-img c-img4 opr-recommends-img"/> </a> {%if $escaped_li.layer%}<a href="javascript:;" class="opr-recommends-layerbtn opr-recommends-layerbtn{%$escaped_li.layer.icontype%}"></a>{%/if%} </div> <div class="c-gap-top-small"><a target="_blank" title="{%$escaped_li.name%}" href="{%build_search_url params="`$escaped_li.params`"%}">{%$escaped_li.name|limitlen:20%}</a></div> {%if $escaped_li.attrpic || $escaped_li.attr%} <div> {%if $escaped_li.attrpic%}<img {%$escaped_li.attrpic|img_base64_render%} class="opr-recommends-imgtext"/>{%else%}{%$escaped_li.attr%}{%/if%} </div> {%/if%} {%*浮层内容*%} {%if $escaped_li.layer%} {%$escaped_layer=$escaped_li.layer%} <textarea class="opr-recommends-hide">
            <div class="opr-recommends-layer xpath-log" data-click="{'fm':'{%$extData.feData.fm%}','rsv_srcid':'{%$extData.resourceid%}'}">
                <table>
                    <tr>
                        <td><img class="c-img c-img6 c-gap-right" {%$escaped_layer.img|img_base64_render%}/></td>
                        <td class="opr-recommends-layer-li">
                            {%foreach $escaped_layer.li as $escaped_item%}
                            <div class="{%if $escaped_item@index > 0%}c-gap-top{%/if%}">
                                <strong class="c-gray">{%$escaped_item.title%}</strong>
                                <div>
                                    {%foreach $escaped_item.link as $escaped_link%}
                                    <a target="_blank" title="{%$escaped_link.text%}" href="{%$escaped_link.href%}" {%if $escaped_link@index > 0%}class="c-gap-left-small"{%/if%}>{%$escaped_link.text|limitlen:20%}</a>
                                    {%/foreach%}
                                </div>
                            </div>
                            {%/foreach%}
                        </td>
                    </tr>
                </table>
            </div>
        </textarea> {%/if%} </div>{%/foreach%}</div>{%/block%}