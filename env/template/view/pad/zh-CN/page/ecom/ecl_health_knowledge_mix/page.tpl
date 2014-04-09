{%extends 'c_base.tpl'%}
{%block name='content'%}
<tr><td>
<style type="text/css">
.ecl-health-knowledge-mix{width:538px;font-size:15px}.ecl-health-knowledge-mix .knowledge-lines{margin-top:2px}.ecl-health-knowledge-mix .item-pic-link{float:left;text-decoration:none;color:#FFF;margin-top:4px}.ecl-health-knowledge-mix .item-pic-link span{display:block;width:121px;height:19px;position:absolute;margin-top:75px;background:rgba(0,0,0,0.5)}.ecl-health-knowledge-mix .item-pic-link i{display:block;width:121px;text-align:center;line-height:19px;position:absolute;margin-top:75px;font-style:normal;cursor:pointer}
.ecl-health-knowledge-mix .item-pic-link img{border:0;width:121px;height:91px}.ecl-health-knowledge-mix .knowledge-links{margin-left:138px;line-height:23px}.ecl-health-knowledge-mix .knowledge-links .item-info{line-height:22px}.ecl-health-knowledge-mix .knowledge-links .item-category{float:right;color:#666}.ecl-health-knowledge-mix .knowledge-showurl{line-height:19px}.ecl-health-knowledge-mix .tag-links{clear:both;padding-left:11px;line-height:23px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/health/point.gif') 0 7px no-repeat}
.ecl-health-knowledge-mix .tag-links em{color:#00C;margin:0 6px}
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
      <a class="item-pic-link" target="blank" href="{%$item.picUrl%}">
        <span></span><i>{%$item.picTitle%}</i>
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
        <p class="knowledge-showurl c-showurl">{%$tplData.showUrl%}</p>
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
  <p class="knowledge-showurl c-showurl">{%$tplData.showUrl%}</p>
  {%/if%}
</div>
{%/strip%}
<script>(function(doc){var Anti=function(e){function n(n){var t=window.event||n;for(p=t.target||t.srcElement;p&&"A"!=p.tagName;)if(p=p.parentNode,p===e)return!1;l=(new Date).getTime(),f=9999,v=t.clientX,d=t.clientY,h=E?l-E:0,i()&&o()}function t(){g=(new Date).getTime(),f=g-l,i()&&o()}function r(e){var n=window.event||e;T+=1,w||(w=n.clientX),s||(s=n.clientY),E=(new Date).getTime()}function i(){if(c=0,m=/\?url\=([^\.]+)\./.exec(p.href)){for(var e=0;T*L%99+9>e;++e)c+=m[1].charCodeAt(f*e%m[1].length);return!0}return!1}function o(){var e="&ck="+[c,T,f,v,d,w,s,h].join(".");
if(p.href){var n=p.href;-1==n.indexOf("&ck=")?p.href+=e:p.href=n.replace(/&ck=[\w.]*/,e)}}function u(n,t){for(var r,i=0;r=n[i];i++)window.attachEvent?e.attachEvent("on"+r,t[i]):window.addEventListener?e.addEventListener(r,t[i],!1):e["on"+r]=t[i],k[r]=t[i]}function a(n){for(var t,r=0;t=n[r];r++)window.detachEvent?e.detachEvent("on"+t,k[t]):window.removeEventListener?e.removeEventListener(t,k[t],!1):e["on"+t]=null}var c,f,v,d,w,s,h,m,l,E,g,p,L=0,T=0;f=v=d=w=s=h=m=l=E=g=p=0;var k={};return{setTimesign:function(e){return L=e,this
},bind:function(){return u(["mouseover","mousedown","mouseup"],[r,n,t]),this},unbind:function(){return a(["mouseover","mousedown","mouseup"]),this}}};;(new Anti(doc.getElementById('ecl-health-knowledge-mix'))).setTimesign({%$tplData.signTime%}).bind()})(document)</script>
</td></tr>
{%/block%}