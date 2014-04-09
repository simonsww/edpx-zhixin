{%extends 'c_base.tpl'%}
{%block name='content'%}
<style type="text/css">
.ecl-health-knowledge-mix{width:538px;font-size:13px}.ecl-health-knowledge-mix .knowledge-lines{margin-top:2px}.ecl-health-knowledge-mix .item-pic-link{float:left;text-decoration:none;color:#FFF;margin-top:4px;position:relative;height:91px}.ecl-health-knowledge-mix .item-pic-link i{display:block;width:121px;text-align:center;line-height:16px;position:absolute;bottom:0;font-style:normal;cursor:pointer;background:#000;filter:alpha(opacity=70)\8;background:rgba(0,0,0,0.7)}.ecl-health-knowledge-mix .item-pic-link img{border:0;width:121px;height:91px}
.ecl-health-knowledge-mix .knowledge-links{margin-left:138px;line-height:21px}.ecl-health-knowledge-mix .knowledge-links .item-info{line-height:20px}.ecl-health-knowledge-mix .knowledge-links .item-category{float:right;color:#666}.ecl-health-knowledge-mix .knowledge-showurl{line-height:19px}.ecl-health-knowledge-mix .knowledge-showurl .c-icon{margin-left:5px}.ecl-health-knowledge-mix .tag-links{clear:both;padding-left:11px;line-height:21px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/health/point.gif') 0 7px no-repeat}
.ecl-health-knowledge-mix .tag-links em{color:#00C;margin:0 5px}
</style>
{%strip%}{%*医疗找知识中间页导流卡片*%}
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
{%/strip%}
<script>A.setup('anti', function(doc){var Anti=function(n){function e(e){var t=window.event||e;for(p=t.target||t.srcElement;p&&"A"!=p.tagName;)if(p=p.parentNode,p===n)return!1;m=(new Date).getTime(),f=9999,v=t.clientX,d=t.clientY,l=E?m-E:0,i()&&o()}function t(){g=(new Date).getTime(),f=g-m,i()&&o()}function r(n){var e=window.event||n;T+=1,s||(s=e.clientX),w||(w=e.clientY),E=(new Date).getTime()}function i(){if(c=0,h=/\?url\=([^\.]+)\./.exec(p.href)){for(var n=0;T*L%99+9>n;++n)c+=h[1].charCodeAt(f*n%h[1].length);return!0}return!1}function o(){var n="&ck="+[c,T,f,v,d,s,w,l].join(".");
if(p.href){var e=p.href;-1==e.indexOf("&ck=")?p.href+=n:p.href=e.replace(/&ck=[\w.]*/,n)}}function u(e,t){for(var r,i=0;r=e[i];i++)window.attachEvent?n.attachEvent("on"+r,t[i]):window.addEventListener?n.addEventListener(r,t[i],!1):n["on"+r]=t[i],b[r]=t[i]}function a(e){for(var t,r=0;t=e[r];r++)window.detachEvent?n.detachEvent("on"+t,b[t]):window.removeEventListener?n.removeEventListener(t,b[t],!1):n["on"+t]=null,b[t]=null}var c,f,v,d,s,w,l,h,m,E,g,p,L=0,T=0;f=v=d=s=w=l=h=m=E=g=p=0;var b={};return{setTimesign:function(n){return L=n,this
},bind:function(){return u(["mouseover","mousedown","mouseup"],[r,e,t]),this},unbind:function(){return a(["mouseover","mousedown","mouseup"]),this},dispose:function(){n&&(this.unbind(),n=null,b=null)}}};var anti = new Anti( doc.getElementById('ecl-health-knowledge-mix'));anti.setTimesign( +"{%$tplData.signTime%}" );anti.bind();return anti;}(document));A.setup(function(){this.dispose = function(){this.data.anti.dispose()}});</script>
{%/block%}