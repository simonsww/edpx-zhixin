{%extends 'base_div.tpl'%}
{%block name='content'%}
<style type="text/css">
.ecl-health-knowledge-pic{width:538px;font-size:13px}.ecl-health-knowledge-pic .knowledge-lines{margin-top:8px}.ecl-health-knowledge-pic .knowledge-lines{border:#e3e3e3 1px solid;border-right-color:#ececec;border-bottom-color:#e0e0e0;box-shadow:1px 1px 1px #ececec}.ecl-health-knowledge-pic .line-item{float:left;width:121px;margin-top:15px;margin-right:11px}.ecl-health-knowledge-pic .line-item p{margin-top:8px}.ecl-health-knowledge-pic p.item-info{color:#656565;margin-top:5px;margin-bottom:13px}.ecl-health-knowledge-pic .line-info{clear:left}
.ecl-health-knowledge-pic .line-info .line-item{margin-top:0}.ecl-health-knowledge-pic .item-first{margin-left:9px;_margin-left:5px}.ecl-health-knowledge-pic .item-last{margin-right:10px}.ecl-health-knowledge-pic .item-pic-link{display:block;height:91px;text-decoration:none;color:#FFF}.ecl-health-knowledge-pic .item-pic-link span{display:block;width:121px;height:16px;position:absolute;margin-top:75px;background:#000;background:rgba(0,0,0,0.5);background:#000\9;filter:alpha(opacity=50)\9}.ecl-health-knowledge-pic .item-pic-link i{display:block;width:121px;text-align:center;line-height:16px;position:absolute;margin-top:75px;font-style:normal;cursor:pointer}
.ecl-health-knowledge-pic .item-pic-link img{border:0;width:121px;height:91px}.ecl-health-knowledge-pic p.item-link{text-decoration:underline;line-height:20px;margin-top:6px}.ecl-health-knowledge-pic .knowledge-morelinks{margin:9px 0 7px}
</style>
{%strip%}{%*医疗找知识中间页导流卡片*%}
<div class="ecl-health-knowledge-pic">
  <h3 class="t">
    <a data-click="{rsv_vspos:0}" target="_blank" href="{%$tplData.queryUrl%}">{%$tplData.queryTitle%}</a>
    {%if $tplData.showHomepage%}
      <span class="icon-gw">官网</span>
    {%/if%}
  </h3>

  {%*图片链接*%}
  <div class="knowledge-lines">
    {%*这里只处理一行的情况，多行要按4个一行处理*%}
    {%$tmpLinks=array_slice($tplData.picLinks,0,4)%}
    <div class="knowledge-line" data-click="{rsv_vspos:1}">
      {%foreach $tmpLinks as $item%}
      <div class="line-item{%if $item@index%4==0%} item-first{%/if%}{%if $item@index%4==3%} item-last{%/if%}">
        <a class="item-pic-link" target="blank" href="{%$item.picUrl%}">
          <span></span><i>{%$item.picTitle%}</i>
          <img src="{%$item.pic%}">
        </a>
        <p class="item-link"><a target="blank" href="{%$item.url%}">{%$item.title%}</a></p>
      </div>
      {%/foreach%}
      <div class="line-info">
      {%foreach $tmpLinks as $item%}
        <div class="line-item{%if $item@index%4==0%} item-first{%/if%}{%if $item@index%4==3%} item-last{%/if%}">
          <p class="item-info">{%$item.info%}</p>
        </div>
      {%/foreach%}
      </div>
      <div style="clear:both"></div>
    </div>

  </div>

  {%*查看全部相关链接*%}
  {%if $tplData.moreUrl%}
  <p class="knowledge-morelinks">
    <a target="_blank" href="{%$tplData.moreUrl%}">{%$tplData.moreTitle%}</a>
  </p>
  {%/if%}
  <p class="c-showurl">{%$tplData.showUrl%}</p>
</div>
{%/strip%}
{%/block%}