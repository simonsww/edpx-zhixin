{%extends 'c_base.tpl'%}
{%block name='content'%}
{%$debugon=0%}
{%if $tplData.tplType==3%}{%*改版卡片实验*%}
    <style type="text/css">
    .ecl-med-pl{width:538px;font-size:12px}.ecl-med-pl h4.t{padding:0;margin:0 0 1px;font-weight:normal;font-size:medium}.ecl-med-pl-main{margin-top:8px;border:1px solid #ebebeb;padding:0 9px;box-shadow:#EEE 1px 1px 1px 0}.ecl-med-pl .c-showurl{margin-top:6px}.ecl-med-pl .c-showurl .c-icon{margin-left:5px}.ecl-med-pl-footer{clear:both}.ecl-med-pl-footer .footer-line{line-height:32px;border-bottom:1px solid #f3f3f3}.ecl-med-pl-footer .footer-line a{margin-right:20px}.ecl-med-pl-footer .footer-title{color:#666}.ecl-med-pl-footer .footer-knowledge{border-bottom:0}
.ecl-med-pl-morelink{margin:0;padding:7px 0;text-align:center}.ecl-med-pl-morelink i{font-family:'宋体';font-style:normal}.ecl-med-pl-info{margin:11px 0 10px}.ecl-med-pl-info p{line-height:21px;text-indent:-6px;color:#333;font-size:13px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;word-wrap:normal;_width:578px}.ecl-med-pl-list{overflow:hidden;_zoom:1;padding-bottom:9px;border-bottom:1px solid #f3f3f3}.ecl-med-pl-list .list-item{float:left;width:121px;margin-right:11px;font-size:12px}
.ecl-med-pl-list .item-last{margin-right:0}.ecl-med-pl-list .item-piclink img{display:block;width:121px;height:121px}.ecl-med-pl-list .item-link{display:block;line-height:20px;margin-top:6px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;word-wrap:normal;_width:121px}.ecl-med-pl-list p{line-height:20px}.ecl-med-pl-list .item-volume{color:#666}.ecl-med-pl-list .item-price{color:#ff8a00}.ecl-med-pl-list .item-volume-price{overflow:hidden;white-space:nowrap;text-overflow:ellipsis;word-wrap:normal;_width:121px}
.ecl-med-pl-list .item-review{width:78px;display:inline-block;*display:inline;*zoom:1;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;word-wrap:normal;vertical-align:bottom;*font-family:'宋体'}.ecl-med-pl-list .link-shangqiao{line-height:18px;width:35px;text-align:center;color:#666;border:1px solid #d7d7d7;background:#f9f9f9;text-decoration:none;margin-right:5px;display:inline-block;*display:inline;*zoom:1}.ecl-med-pl-list .link-shangqiao:hover{border-color:#388bff}.ecl-med-pl-list .link-shangqiao:hover{border-color:#388bff}
.ecl-med-pl-list .link-shangqiao:active{border-color:#a2a6ab;background-color:#f0f0f0;box-shadow:inset 1px 1px 1px #c7c7c7;-webkit-box-shadow:inset 1px 1px 1px #c7c7c7;-moz-box-shadow:inset 1px 1px 1px #c7c7c7;-o-box-shadow:inset 1px 1px 1px #c7c7c7}
    </style>
    {%strip%}{%*医疗药品实验卡片*%}
<div class="ecl-med-pl">
  <h4 class="t">
    <a data-click="{rsv_vspos:0}" target="_blank" href="{%$tplData.queryUrl%}">{%$tplData.queryTitle%}</a>
  </h4>

  <div class="ecl-med-pl-main">

    {%*药品信息*%}
    <div class="ecl-med-pl-info">
      <p>【适应症】{%$tplData.info.major%}</p>
      <p>【功&#12288;效】{%$tplData.info.effect%}</p>
      <p>【禁&#12288;忌】{%$tplData.info.forbidden%}</p>
    </div>

    {%*列表项目*%}
    <div class="ecl-med-pl-list">
        {%foreach $tplData.medList as $item%}
        <div class="list-item{%if $item@last%} item-last{%/if%}">

          <a data-click="{rsv_vspos:1}" target="_blank" href="{%$item.picLink%}" class="item-piclink">
            <img src="{%$item.pic%}">
          </a>

          <a data-click="{rsv_vspos:2}" title="{%$item.title|strip_tags %}" target="_blank" href="{%$item.link%}" class="item-link">
            {%$item.title%}
          </a>
          <p class="item-volume-price" title="￥{%$item.price%}起 [{%$item.volume%}]">

            <span class="item-price">￥{%$item.price%}起 </span>            
            <span class="item-volume">[{%$item.volume%}]</span>
          </p>
          <p>
            {%if $item.shangqiao%}
            <a data-click="{rsv_vspos:3}"  target="_blank" href="{%$item.shangqiao%}" class="link-shangqiao">咨询</a>
            {%/if%}

            {%if $item.review && $item.review.num%}
            <a title="{%$item.review.num%}条评论" data-click="{rsv_vspos:4}" class="item-review" target="_blank" href="{%$item.review.link%}">
                {%$item.review.num%}条评论
            </a>
            {%/if%}
          </p>
        </div>
        {%/foreach%}  
    </div>

    <div class="ecl-med-pl-morelink">
      <a data-click="{rsv_vspos:10}" target="_blank" href="{%$tplData.queryUrl%}">查看更多相关药品<i>&gt;&gt;</i></a>
    </div>
  </div>

  <p class="c-showurl">
    {%$tplData.showUrl%}
    <a href="http://baozhang.baidu.com/guarantee/" target="_blank" class="c-icon c-icon-bao"></a>
  </p>
</div>
{%/strip%}
{%elseif $tplData.tplType==1%}{%*收缩卡片*%}
    <style type="text/css">
    .ecl-med-collapse{width:538px;font-size:12px}.ecl-med-collapse h4.t{padding:0;margin:0 0 1px;font-weight:normal;font-size:medium}.ecl-med-collapse-main{margin-top:8px;border:1px solid #ebebeb;padding:0 9px;box-shadow:#EEE 1px 1px 1px 0}.ecl-med-collapse .c-showurl{margin-top:6px}.ecl-med-collapse .c-showurl .c-icon{margin-left:5px}.ecl-med-collapse-list .list-item{overflow:auto;border-bottom:1px solid #f3f3f3}.ecl-med-collapse-list .item-head{padding-top:5px;overflow:auto;_font-family:'宋体'}
.ecl-med-collapse-list .item-title{font-size:14px;line-height:25px}.ecl-med-collapse-list .item-head-right{float:right;padding-top:1px}.ecl-med-collapse-list .item-head-right em{vertical-align:4px;*vertical-align:1px;line-height:18px;color:#666}.ecl-med-collapse-list .item-pic-link{float:left;width:108px;padding-left:23px}.ecl-med-collapse-list .item-pic-link img{width:75px;height:75px}.ecl-med-collapse-list .item-middle{margin-left:131px;margin-right:90px;line-height:20px}.ecl-med-collapse-list .item-middle .indent{text-indent:-5px}
.ecl-med-collapse-list .item-tag-links{margin-bottom:6px}.ecl-med-collapse-list .item-tag-links em{margin:0 9px;color:#888}.ecl-med-collapse-list .item-right{float:right;width:90px;text-align:right;padding-top:15px}.ecl-med-collapse-list .item-detail-link{display:inline-block;margin-top:9px;width:71px;line-height:22px;text-align:center;background:#388bff;color:#FFF;text-decoration:none}.ecl-med-collapse-footer{clear:both}.ecl-med-collapse-footer .footer-line{line-height:32px;border-bottom:1px solid #f3f3f3}
.ecl-med-collapse-footer .footer-line a{margin-right:20px}.ecl-med-collapse-footer .footer-title{color:#666}.ecl-med-collapse-footer .footer-knowledge{border-bottom:0}.ecl-med-collapse-morelink{margin:0;padding:7px 0;text-align:center}.ecl-med-collapse-morelink i{font-family:'宋体';font-style:normal}.ecl-med-collapse-list a{text-decoration:none}.ecl-med-collapse-list a em{text-decoration:none}.ecl-med-collapse-list a:hover{text-decoration:underline}.ecl-med-collapse-list a:hover em{text-decoration:underline}
.ecl-med-collapse-list .item-head-arrow{float:right;width:66px;margin-left:44px;padding-top:4px;text-align:right;font-size:13px}.ecl-med-collapse-list .item-body{display:none}.ecl-med-collapse-list .item-title em{pointer-events:none}.ecl-med-collapse-list .item-head{_height:30px;_overflow:hidden;padding-top:4px;padding-bottom:3px}.ecl-med-collapse-list .item-head-right{padding-top:2px;width:100px;font-size:13px}.ecl-med-collapse-list .item-expand a{text-decoration:underline}.ecl-med-collapse-list .item-expand a em{text-decoration:underline}
.ecl-med-collapse-list .item-expand .item-head{_height:30px;_overflow:hidden;padding-top:10px;padding-bottom:0}.ecl-med-collapse-list .item-expand .item-body{display:block;padding-top:5px}.ecl-med-collapse-list .item-expand .item-detail-link{margin-top:14px;text-decoration:none}.ecl-med-collapse-list .item-expand .item-tag-links{margin-top:2px;margin-bottom:11px}
    </style>
    {%strip%}{%*医疗药品收缩版卡片*%}
<div class="ecl-med-collapse">
  <h4 class="t">
    <a data-click="{rsv_vspos:0}" target="_blank" href="{%$tplData.queryUrl%}">{%$tplData.queryTitle%}</a>
  </h4>

  <div class="ecl-med-collapse-main">

    {%*列表项目*%}
    <div class="ecl-med-collapse-list">

      {%foreach $tplData.medList as $item%}
      <div class="list-item{%if $item@first%} item-expand{%/if%}">

        {%*主链*%}
        <div class="item-head"{%if $debugon%} data-debug="{%$item.debug|escape:'html'%}"{%/if%}>
      
          <a data-click="{rsv_vspos:3}" class="item-head-arrow" target="_blank" href="{%$item.review.link%}">
              {%$item.review.num%}条评论
          </a>
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
            [{%$item.producer%}]{%$item.name%}
          </a>
        </div>

        {%*中间*%}
        {%if $item@first%}
        <div class="item-body">
          <a class="item-pic-link" data-click="{rsv_vspos:2}" target="_blank" href="{%$item.link%}">
            <img src="{%$item.pic%}">
          </a>
          
          <div class="item-right">
            <a data-click="{rsv_vspos:4}" class="item-detail-link" target="_blank" href="{%$item.detailLink%}">
              查看详情
            </a>
          </div>

          <div class="item-middle">
            <p class="indent">【适应症】{%$item.major%}</p>
            <p class="indent">【功效】{%$item.effect%}</p>
            <p class="item-tag-links">
              {%foreach $item.tagLinks as $item_link%}
              <a data-click="{rsv_vspos:5}" target="_blank" href="{%$item_link.link%}">
                {%$item_link.title%}
              </a>
              {%if !$item_link@last%}
              <em>|</em>
              {%/if%}
              {%/foreach%}
            </p>
          </div>
        </div>
        {%/if%}

      </div>
      {%/foreach%}  

    </div>
    <div class="ecl-med-collapse-morelink">
      <a data-click="{rsv_vspos:10}" target="_blank" href="{%$tplData.queryUrl%}">查看更多相关药品<i>&gt;&gt;</i></a>
    </div>
  </div>

  <p class="c-showurl">
    {%$tplData.showUrl%}
    <a href="http://baozhang.baidu.com/guarantee/" target="_blank" class="c-icon c-icon-bao"></a>
  </p>
</div>
{%/strip%}
{%else%}{%*展开卡片*%}
    <style type="text/css">
    .ecl-med-general{width:538px;font-size:12px}.ecl-med-general h4.t{padding:0;margin:0 0 1px;font-weight:normal;font-size:medium}.ecl-med-general-main{margin-top:8px;border:1px solid #ebebeb;padding:0 9px;box-shadow:#EEE 1px 1px 1px 0}.ecl-med-general .c-showurl{margin-top:6px}.ecl-med-general .c-showurl .c-icon{margin-left:5px}.ecl-med-general-list .list-item{overflow:auto;border-bottom:1px solid #f3f3f3}.ecl-med-general-list .item-head{padding-top:5px;overflow:auto;_font-family:'宋体'}
.ecl-med-general-list .item-title{font-size:14px;line-height:25px}.ecl-med-general-list .item-head-right{float:right;padding-top:1px}.ecl-med-general-list .item-head-right em{vertical-align:4px;*vertical-align:1px;line-height:18px;color:#666}.ecl-med-general-list .item-pic-link{float:left;width:108px;padding-left:23px}.ecl-med-general-list .item-pic-link img{width:75px;height:75px}.ecl-med-general-list .item-middle{margin-left:131px;margin-right:90px;line-height:20px}.ecl-med-general-list .item-middle .indent{text-indent:-5px}
.ecl-med-general-list .item-tag-links{margin-bottom:6px}.ecl-med-general-list .item-tag-links em{margin:0 9px;color:#888}.ecl-med-general-list .item-right{float:right;width:90px;text-align:right;padding-top:15px}.ecl-med-general-list .item-detail-link{display:inline-block;margin-top:9px;width:71px;line-height:22px;text-align:center;background:#388bff;color:#FFF;text-decoration:none}.ecl-med-general-footer{clear:both}.ecl-med-general-footer .footer-line{line-height:32px;border-bottom:1px solid #f3f3f3}.ecl-med-general-footer .footer-line a{margin-right:20px}
.ecl-med-general-footer .footer-title{color:#666}.ecl-med-general-footer .footer-knowledge{border-bottom:0}.ecl-med-general-morelink{margin:0;padding:7px 0;text-align:center}.ecl-med-general-morelink i{font-family:'宋体';font-style:normal}.ecl-med-general-morelink{text-align:left}
    </style>
    {%strip%}{%*医疗药品卡片*%}
<div class="ecl-med-general">
  <h4 class="t">
    <a data-click="{rsv_vspos:0}" target="_blank" href="{%$tplData.queryUrl%}">{%$tplData.queryTitle%}</a>
  </h4>

  <div class="ecl-med-general-main">

    {%*列表项目*%}
    <div class="ecl-med-general-list">

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
            [{%$item.producer%}]{%$item.name%}
          </a>
        </div>

        {%*中间*%}
        <div class="item-body">
          <a class="item-pic-link" data-click="{rsv_vspos:2}" target="_blank" href="{%$item.link%}">
            <img src="{%$item.pic%}">
          </a>

          <div class="item-right">
            <a data-click="{rsv_vspos:3}" class="item-review-link" target="_blank" href="{%$item.review.link%}">
              {%$item.review.num%}条评论
            </a>
            <a data-click="{rsv_vspos:4}" class="item-detail-link" target="_blank" href="{%$item.detailLink%}">
              查看详情
            </a>
          </div>
          
          <div class="item-middle">
            <p class="indent">【适应症】{%$item.major%}</p>
            <p class="indent">【功效】{%$item.effect%}</p>
            <p class="item-tag-links">
              {%foreach $item.tagLinks as $item_link%}
              <a data-click="{rsv_vspos:5}" target="_blank" href="{%$item_link.link%}">
                {%$item_link.title%}
              </a>
              {%if !$item_link@last%}
              <em>|</em>
              {%/if%}
              {%/foreach%}
            </p>
          </div>
        </div>

      </div>
      {%/foreach%}  

    </div>

    {%*底部链接*%}
    <div class="ecl-med-general-footer">

      <div class="footer-line footer-knowledge">
        <em class="footer-title">相关问答：</em>
          {%foreach $tplData.QALinks as $item%}
          <a data-click="{rsv_vspos:6}" target="_blank" href="{%$item.link%}">
            {%$item.title%}
          </a>
          {%/foreach%}
      </div>

    </div>
  </div>

  <div class="ecl-med-general-morelink">
    <a data-click="{rsv_vspos:10}" target="_blank" href="{%$tplData.queryUrl%}">查看更多相关药品<i>&gt;&gt;</i></a>
  </div>

  <p class="c-showurl">
    {%$tplData.showUrl%}
    <a href="http://baozhang.baidu.com/guarantee/" target="_blank" class="c-icon c-icon-bao"></a>
  </p>
</div>
{%/strip%}
    <script>
        A.setup(function() {
            
        });
    </script>
{%/if%}
{%/block%}