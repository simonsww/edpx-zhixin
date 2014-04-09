{%extends 'c_base.tpl'%}
{%block name='content'%}
{%$debugon=0%}
<style type="text/css">
.ecl-med-healthcare{width:538px;font-size:12px}.ecl-med-healthcare h4.t{padding:0;margin:0 0 1px;font-weight:normal;font-size:medium}.ecl-med-healthcare-main{margin-top:8px;border:1px solid #ebebeb;padding:0 9px;box-shadow:#EEE 1px 1px 1px 0}.ecl-med-healthcare .c-showurl{margin-top:6px}.ecl-med-healthcare .c-showurl .c-icon{margin-left:5px}.ecl-med-healthcare-list .list-item{overflow:auto;border-bottom:1px solid #f3f3f3}.ecl-med-healthcare-list .item-head{padding-top:5px;overflow:auto;_font-family:'宋体'}
.ecl-med-healthcare-list .item-title{font-size:14px;line-height:25px}.ecl-med-healthcare-list .item-head-right{float:right;padding-top:1px}.ecl-med-healthcare-list .item-head-right em{vertical-align:4px;*vertical-align:1px;line-height:18px;color:#666}.ecl-med-healthcare-list .item-pic-link{float:left;width:108px;padding-left:23px}.ecl-med-healthcare-list .item-pic-link img{width:75px;height:75px}.ecl-med-healthcare-list .item-middle{margin-left:131px;margin-right:90px;line-height:20px}.ecl-med-healthcare-list .item-middle .indent{text-indent:-5px}
.ecl-med-healthcare-list .item-tag-links{margin-bottom:6px}.ecl-med-healthcare-list .item-tag-links em{margin:0 9px;color:#888}.ecl-med-healthcare-list .item-right{float:right;width:90px;text-align:right;padding-top:15px}.ecl-med-healthcare-list .item-detail-link{display:inline-block;margin-top:9px;width:71px;line-height:22px;text-align:center;background:#388bff;color:#FFF;text-decoration:none}.ecl-med-healthcare-footer{clear:both}.ecl-med-healthcare-footer .footer-line{line-height:32px;border-bottom:1px solid #f3f3f3}
.ecl-med-healthcare-footer .footer-line a{margin-right:20px}.ecl-med-healthcare-footer .footer-title{color:#666}.ecl-med-healthcare-footer .footer-knowledge{border-bottom:0}.ecl-med-healthcare-morelink{margin:0;padding:7px 0;text-align:center}.ecl-med-healthcare-morelink i{font-family:'宋体';font-style:normal}.ecl-med-healthcare .list-item{font-size:13px}.ecl-med-healthcare .item-pic-link img{margin-top:4px}.ecl-med-healthcare .item-price{color:#ff8400;font-weight:bold;display:inline-block;width:71px;text-align:center}
.ecl-med-healthcare .item-detail-link{margin-top:7px}.ecl-med-healthcare .item-tag-links{margin-top:2px;margin-bottom:7px}
</style>
{%strip%}{%*医疗保健品卡片*%}
<div class="ecl-med-healthcare">
  <h4 class="t">
    <a data-click="{rsv_vspos:0}" target="_blank" href="{%$tplData.queryUrl%}">{%$tplData.queryTitle%}</a>
  </h4>

  <div class="ecl-med-healthcare-main">

    {%*列表项目*%}
    <div class="ecl-med-healthcare-list">

      {%foreach $tplData.medList as $item%}
      <div class="list-item">

        {%*主链*%}
        <div class="item-head"{%if $debugon%} data-debug="{%$item.debug|escape:'html'%}"{%/if%}>
          <div class="item-head-right">
            <em>
              查看
              {%if $item.watch.num>10000%}
              {%($item.watch.num/10000)|string_format:'%d'%}万
              {%else%}
              {%$item.watch.num%}
              {%/if%}
              次
            </em>
          </div>
          <a data-click="{rsv_vspos:1}" target="_blank" class="item-title" href="{%$item.link%}">
            {%$item.name%}
          </a>
        </div>

        {%*中间*%}
        <div class="item-body">
          <a class="item-pic-link" data-click="{rsv_vspos:2}" target="_blank" href="{%$item.link%}">
            <img src="{%$item.pic%}">
          </a>

          <div class="item-right">
            <span class="item-price">
              ￥{%$item.price%}
            </span>
            <a data-click="{rsv_vspos:4}" class="item-detail-link" target="_blank" href="{%$item.detailLink%}">
              查看详情
            </a>
          </div>
          
          <div class="item-middle">
            <p class="indent">【主要成分】{%$item.major%}</p>
            <p class="indent">【产品作用】{%$item.effect%}</p>
            <p class="indent">【适用人群】{%$item.crowd%}</p>
            <p class="item-tag-links">
              {%foreach $item.tagLinks as $item_link%}
              <a data-click="{rsv_vspos:5}" target="_blank" href="{%$item_link.link%}">
                {%$item_link.title%}
              </a>
              {%if !$item_link@last%}
              <em>|</em>
              {%/if%}
              {%/foreach%}
              
              {%if $item.review.num%}
              <em>|</em>
              <a data-click="{rsv_vspos:5}" target="_blank" href="{%$item.review.link%}">
                用户评价（{%$item.review.num%}条）
              </a>
              {%/if%}

            </p>
          </div>
        </div>

      </div>
      {%/foreach%}  

    </div>
    <div class="ecl-med-healthcare-morelink">
      <a data-click="{rsv_vspos:10}" target="_blank" href="{%$tplData.queryUrl%}">查看更多相关保健品<i>&gt;&gt;</i></a>
    </div>
  </div>



  <p class="c-showurl">
    {%$tplData.showUrl%}
    <a href="http://baozhang.baidu.com/guarantee/" target="_blank" class="c-icon c-icon-bao"></a>
  </p>
</div>
{%/strip%}
{%/block%}