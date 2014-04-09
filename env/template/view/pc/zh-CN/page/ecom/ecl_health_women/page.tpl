{%extends 'c_base.tpl'%}
{%block name='content'%}
{%$debugon=0%}
<style type="text/css">
.ecl-health-women{width:538px;font-size:13px}.ecl-health-women .knowledge-lines{margin-top:6px}.ecl-health-women .knowledge-lines{border:#e3e3e3 1px solid;border-right-color:#ececec;border-bottom-color:#e0e0e0;box-shadow:1px 1px 1px #ececec;padding-bottom:9px}.ecl-health-women .line-item{float:left;width:121px;margin-top:9px;margin-right:11px}.ecl-health-women .line-item p{margin-top:8px}.ecl-health-women .item-first{margin-left:9px;_margin-left:5px}.ecl-health-women .item-last{margin-right:10px;_margin-right:9px}
.ecl-health-women .item-pic-link{display:block;height:91px;text-decoration:none;color:#FFF}.ecl-health-women .item-pic-link span{display:block;width:121px;height:16px;position:absolute;margin-top:75px;background:#000;background:rgba(0,0,0,0.5);background:#000\9;filter:alpha(opacity=50)\9}.ecl-health-women .item-pic-link i{display:block;width:121px;text-align:center;line-height:16px;position:absolute;margin-top:75px;font-style:normal;cursor:pointer}.ecl-health-women .item-pic-link img{border:0;width:121px;height:91px}
.ecl-health-women .relative-links{margin:5px 10px 2px 9px;border-top:#e3e3e3 1px solid;padding:5px 0}.ecl-health-women .relative-links span{color:#666;float:left;line-height:18px}.ecl-health-women .relative-links div{margin-left:65px;line-height:18px}.ecl-health-women .relative-links a{margin-right:15px}.ecl-health-women .knowledge-showurl{margin-top:5px}.ecl-health-women .knowledge-showurl .c-icon{margin-left:5px}
</style>
{%strip%}
{%*医疗手术卡片图片版*%}
<div id="ecl-health-women" class="ecl-health-women">
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
    <div class="knowledge-line c-clearfix" data-click="{rsv_vspos:1}">
      {%foreach $tmpLinks as $item%}
      <div class="line-item{%if $item@index%4==0%} item-first{%/if%}{%if $item@index%4==3%} item-last{%/if%}">
        <a class="item-pic-link" target="_blank" href="{%$item.picUrl%}">
          <span></span><i>{%$item.picTitle%}</i>
          <img src="{%$item.pic%}">
        </a>
      </div>
      {%/foreach%}

    </div>

  </div>

  <p class="knowledge-showurl c-showurl">
    {%$tplData.showUrl%}
    <a href="http://baozhang.baidu.com/guarantee/" target="_blank" class="c-icon c-icon-bao"></a>
  </p>
</div>

{%/strip%}
{%/block%}