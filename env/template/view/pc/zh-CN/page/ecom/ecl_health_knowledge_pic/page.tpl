{%extends 'c_base.tpl'%}
{%block name='content'%}
<style type="text/css">
{%if $tplData.tplType==2%}
.ecl-health-knowledge-mix{width:538px;font-size:13px}.ecl-health-knowledge-mix .knowledge-lines{margin-top:2px}.ecl-health-knowledge-mix .item-pic-link{float:left;text-decoration:none;color:#FFF;margin-top:4px;position:relative;height:91px}.ecl-health-knowledge-mix .item-pic-link i{display:block;width:121px;text-align:center;line-height:16px;position:absolute;bottom:0;font-style:normal;cursor:pointer;background:#000;filter:alpha(opacity=70)\8;background:rgba(0,0,0,0.7)}.ecl-health-knowledge-mix .item-pic-link img{border:0;width:121px;height:91px}
.ecl-health-knowledge-mix .knowledge-links{margin-left:138px;line-height:21px}.ecl-health-knowledge-mix .knowledge-links .item-info{line-height:20px}.ecl-health-knowledge-mix .knowledge-links .item-category{float:right;color:#666}.ecl-health-knowledge-mix .knowledge-showurl{line-height:19px}.ecl-health-knowledge-mix .knowledge-showurl .c-icon{margin-left:5px}.ecl-health-knowledge-mix .tag-links{clear:both;padding-left:11px;line-height:21px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/health/point.gif') 0 7px no-repeat}
.ecl-health-knowledge-mix .tag-links em{color:#00C;margin:0 5px}
{%elseif $tplData.tplType==3%}
.ecl-health-kpl{width:538px;font-size:13px}.ecl-health-kpl .knowledge-lines{margin-top:6px}.ecl-health-kpl .knowledge-lines{border:#e3e3e3 1px solid;border-right-color:#ececec;border-bottom-color:#e0e0e0;box-shadow:1px 1px 1px #ececec}.ecl-health-kpl .knowledge-line{padding-bottom:7px}.ecl-health-kpl .knowledge-info{margin-top:12px;margin-bottom:3px;padding:0 8px}.ecl-health-kpl .knowledge-info p{line-height:19px;color:#333}.ecl-health-kpl .knowledge-info p b{color:#666;font-weight:400}.ecl-health-kpl .knowledge-info p span{color:#000;margin:0 5px}
.ecl-health-kpl .knowledge-info .info-morelink{float:right}.ecl-health-kpl .knowledge-info .info-morelink i{font-style:normal;font-family:'宋体'}.ecl-health-kpl .knowledge-info .info-link-list a{margin-right:15px}.ecl-health-kpl .knowledge-info .info-link-list a:last-child{margin-right:0}.ecl-health-kpl .line-item{float:left;width:121px;margin-top:9px;margin-right:11px}.ecl-health-kpl .line-item p{margin-top:8px}.ecl-health-kpl .item-first{margin-left:9px;_margin-left:5px}.ecl-health-kpl .item-last{margin-right:10px;_margin-right:9px}
.ecl-health-kpl .item-pic-link{display:block;height:91px;text-decoration:none;color:#FFF;position:relative}.ecl-health-kpl .item-pic-link i{display:block;line-height:16px;position:absolute;font-style:normal;cursor:pointer;bottom:0;_bottom:-1px;width:100%;text-align:center;background:#000;filter:alpha(opacity=60);background:rgba(0,0,0,0.5)}.ecl-health-kpl .item-pic-link img{border:0;width:121px;height:91px}.ecl-health-kpl p.item-link{text-decoration:underline;line-height:20px;margin-top:4px;text-align:center}
.ecl-health-kpl .knowledge-showurl{margin-top:5px}.ecl-health-kpl .knowledge-showurl .c-icon{margin-left:5px}.ecl-health-kpl-morelink{padding:6px 0 7px;margin:0 10px;text-align:center;border-top:1px solid #ececec}.ecl-health-kpl-morelink i{font-style:normal;font-family:'宋体'}
{%else%}
.ecl-health-knowledge-pic{width:538px;font-size:13px}.ecl-health-knowledge-pic .knowledge-lines{margin-top:6px}.ecl-health-knowledge-pic .knowledge-lines{border:#e3e3e3 1px solid;border-right-color:#ececec;border-bottom-color:#e0e0e0;box-shadow:1px 1px 1px #ececec}.ecl-health-knowledge-pic .line-item{float:left;width:121px;margin-top:9px;margin-right:11px}.ecl-health-knowledge-pic .line-item p{margin-top:8px}.ecl-health-knowledge-pic p.item-info{color:#656565;margin-top:5px;margin-bottom:13px;text-align:center}
.ecl-health-knowledge-pic .line-info{clear:left}.ecl-health-knowledge-pic .line-info .line-item{margin-top:0}.ecl-health-knowledge-pic .item-first{margin-left:9px;_margin-left:5px}.ecl-health-knowledge-pic .item-last{margin-right:10px;_margin-right:9px}.ecl-health-knowledge-pic .item-pic-link{display:block;height:91px;text-decoration:none;color:#FFF}.ecl-health-knowledge-pic .item-pic-link span{display:block;width:121px;height:16px;position:absolute;margin-top:75px;background:#000;background:rgba(0,0,0,0.5);background:#000\9;filter:alpha(opacity=50)\9}
.ecl-health-knowledge-pic .item-pic-link i{display:block;width:121px;text-align:center;line-height:16px;position:absolute;margin-top:75px;font-style:normal;cursor:pointer}.ecl-health-knowledge-pic .item-pic-link img{border:0;width:121px;height:91px}.ecl-health-knowledge-pic p.item-link{text-decoration:underline;line-height:20px;margin-top:4px;text-align:center}.ecl-health-knowledge-pic .knowledge-morelinks{margin:6px 0 0}.ecl-health-knowledge-pic .relative-links{margin:5px 10px 2px 9px;border-top:#e3e3e3 1px solid;padding:5px 0}
.ecl-health-knowledge-pic .relative-links span{color:#666;float:left;line-height:18px}.ecl-health-knowledge-pic .relative-links div{margin-left:65px;line-height:18px}.ecl-health-knowledge-pic .relative-links a{margin-right:15px}.ecl-health-knowledge-pic .knowledge-showurl{margin-top:5px}.ecl-health-knowledge-pic .knowledge-showurl .c-icon{margin-left:5px}
{%/if%}
</style>

{%strip%}
<div id="ecl-health-knowledge-remix">
{%if $tplData.tplType==2%}
{%*医疗找知识中间页导流卡片*%}
<div id="ecl-health-knowledge-mix" class="ecl-health-knowledge-mix">
  <h3 class="t">
    <a data-click="{rsv_vspos:0}" target="_blank" href="{%$tplData.queryUrl%}">{%$tplData.queryTitle%}</a>
    {%if $tplData.showHomepage%}
      <span class="icon-gw">官网</span>
    {%/if%}
  </h3>

  
  <div class="knowledge-lines c-clearfix">
    <div class="knowledge-line">

      {%*图片链接*%}
      {%if !empty($tplData.picLinks)%}
      {%$item=$tplData.picLinks[0]%}
      <a class="item-pic-link" target="_blank" href="{%$item.picUrl%}">
        <i>{%$item.picTitle%}</i>
        <img src="{%$item.pic%}">
      </a>
      {%/if%}
      
      {%*文字链接*%}
      <div class="knowledge-links">
        {%foreach $tplData.links as $item%}
          <div>
            <p>
              {%if $item.categoryTitle%}
              <span class="item-category"> 
                {%$item.categoryTitle%}
              </span>
              {%/if%}
              <a target="_blank" href="{%$item.url%}">{%$item.title|highlight:0%}</a>
            </p>
            {%if $item.intro%}
            <p class="item-info">{%$item.intro|highlight:0%}</p>
            {%/if%}
          </div>
        {%/foreach%}
        {%*兼容上一个版本*%}
        {%if empty($tplData.tagLinks)%}
        <p class="knowledge-showurl c-showurl">
          {%$tplData.showUrl%}
          <a href="http://baozhang.baidu.com/guarantee/" target="_blank" class="c-icon c-icon-bao"></a>
        </p>
        {%/if%}
      </div>

      {%if $tplData.tagLinks%}
      <div class="tag-links">
        {%foreach $tplData.tagLinks as $item%}
        <a target="_blank" href="{%$item.url%}">{%$item.title%}</a>
        {%if !$item@last%}
        <em>-</em>
        {%/if%}
        {%/foreach%}
      </div>
      {%/if%}

    </div>
  </div>
  {%*兼容上一个版本*%}
  {%if !empty($tplData.tagLinks)%}
  <p class="knowledge-showurl c-showurl">
    {%$tplData.showUrl%}
    <a href="http://baozhang.baidu.com/guarantee/" target="_blank" class="c-icon c-icon-bao"></a>
  </p>
  {%/if%}
</div>

{%elseif $tplData.tplType==3%}
{%*医疗手术卡片图片版*%}
<div id="ecl-health-kpl" class="ecl-health-kpl">
  <h3 class="t">
    <a data-click="{rsv_vspos:0}" target="_blank" href="{%$tplData.queryUrl%}">{%$tplData.queryTitle%}</a>
    {%if $tplData.showHomepage%}
      <span class="icon-gw">官网</span>
    {%/if%}
  </h3>

  {%*图片链接*%}
  <div class="knowledge-lines">
    <div class="knowledge-info">
      {%if $tplData.info.intro%}
      <p>
        <a data-click="{rsv_vspos:1}" target="_blank" href="{%$tplData.info.detailLink%}" class="info-morelink">详情<i>&gt;&gt;</i></a>
        <b>病症概述：</b>{%$tplData.info.intro%}
      </p>
      {%/if%}
      <p class="info-link-list"><b>医院解答：</b>
          {%foreach $tplData.links as $item%}
            <a data-click="{rsv_vspos:2}" target="_blank" href="{%$item.url%}">{%$item.title|highlight:0%}</a>
          {%/foreach%}
      </p>
    </div>

    {%*这里只处理一行的情况，多行要按4个一行处理*%}
    {%$tmpLinks=array_slice($tplData.picLinks,0,4)%}
    <div class="knowledge-line c-clearfix" data-click="{rsv_vspos:1}">
      {%foreach $tmpLinks as $item%}
      <div class="line-item{%if $item@index%4==0%} item-first{%/if%}{%if $item@index%4==3%} item-last{%/if%}">
        <a data-click="{rsv_vspos:3}" class="item-pic-link" target="_blank" href="{%$item.picUrl%}">
          <i>{%$item.picTitle%}</i>
          <img src="{%$item.pic%}">
        </a>
        <p class="item-link"><a target="_blank" href="{%$item.url%}">{%$item.title%}</a></p>
      </div>
      {%/foreach%}
    </div>

    <div class="ecl-health-kpl-morelink">
      <a data-click="{rsv_vspos:10}" target="_blank" href="{%$tplData.moreUrl%}">
        查看全部<i>&gt;&gt;</i>
      </a>
    </div>

  </div>

  <p class="knowledge-showurl c-showurl">
    {%$tplData.showUrl%}
    <a href="http://baozhang.baidu.com/guarantee/" target="_blank" class="c-icon c-icon-bao"></a>
  </p>
</div>

{%else%}
{%*医疗找知识中间页导流卡片*%}
<div id="ecl-health-knowledge-pic" class="ecl-health-knowledge-pic">
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
        <p class="item-link"><a target="_blank" href="{%$item.url%}">{%$item.title%}</a></p>
      </div>
      {%/foreach%}

      {%if 0!==$tplData.showInfo%}
      <div class="line-info">
      {%foreach $tmpLinks as $item%}
        <div class="line-item{%if $item@index%4==0%} item-first{%/if%}{%if $item@index%4==3%} item-last{%/if%}">
          <p class="item-info">{%$item.info%}</p>
        </div>
      {%/foreach%}
      </div>
      {%/if%}
    </div>

    {%if !empty($tplData.links)%}
    <div class="relative-links">
      <span>医院解答：</span>
      <div>
        {%foreach $tplData.links as $item%}
          <a target="_blank" href="{%$item.url%}">{%$item.title|highlight:0%}</a>
          {%if $item@index%2%}
            <br/>
          {%/if%}
        {%/foreach%}
      </div>
    </div>
    {%/if%}

  </div>

  {%*查看全部相关链接*%}
  {%if $tplData.moreUrl%}
  <p class="knowledge-morelinks">
    <a target="_blank" href="{%$tplData.moreUrl%}">{%$tplData.moreTitle%}</a>
  </p>
  {%/if%}
  <p class="knowledge-showurl c-showurl">
    {%$tplData.showUrl%}
    <a href="http://baozhang.baidu.com/guarantee/" target="_blank" class="c-icon c-icon-bao"></a>
  </p>
</div>

{%/if%}
</div>
{%/strip%}

<script>A.setup('anti', function(doc){var Anti=function(n){function e(e){var t=window.event||e;for(p=t.target||t.srcElement;p&&"A"!=p.tagName;)if(p=p.parentNode,p===n)return!1;m=(new Date).getTime(),f=9999,v=t.clientX,d=t.clientY,l=E?m-E:0,i()&&o()}function t(){g=(new Date).getTime(),f=g-m,i()&&o()}function r(n){var e=window.event||n;T+=1,s||(s=e.clientX),w||(w=e.clientY),E=(new Date).getTime()}function i(){if(c=0,h=/\?url\=([^\.]+)\./.exec(p.href)){for(var n=0;T*L%99+9>n;++n)c+=h[1].charCodeAt(f*n%h[1].length);return!0}return!1}function o(){var n="&ck="+[c,T,f,v,d,s,w,l].join(".");
if(p.href){var e=p.href;-1==e.indexOf("&ck=")?p.href+=n:p.href=e.replace(/&ck=[\w.]*/,n)}}function u(e,t){for(var r,i=0;r=e[i];i++)window.attachEvent?n.attachEvent("on"+r,t[i]):window.addEventListener?n.addEventListener(r,t[i],!1):n["on"+r]=t[i],b[r]=t[i]}function a(e){for(var t,r=0;t=e[r];r++)window.detachEvent?n.detachEvent("on"+t,b[t]):window.removeEventListener?n.removeEventListener(t,b[t],!1):n["on"+t]=null,b[t]=null}var c,f,v,d,s,w,l,h,m,E,g,p,L=0,T=0;f=v=d=s=w=l=h=m=E=g=p=0;var b={};return{setTimesign:function(n){return L=n,this
},bind:function(){return u(["mouseover","mousedown","mouseup"],[r,e,t]),this},unbind:function(){return a(["mouseover","mousedown","mouseup"]),this},dispose:function(){n&&(this.unbind(),n=null,b=null)}}};var anti = new Anti( doc.getElementById('ecl-health-knowledge-remix'));anti.setTimesign( +"{%$tplData.signTime%}" );anti.bind();return anti;}(document));A.setup(function(){this.dispose = function(){this.data.anti.dispose()}});</script>
{%/block%}