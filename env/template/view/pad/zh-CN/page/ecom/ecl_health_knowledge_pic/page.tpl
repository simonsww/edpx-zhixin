{%extends 'c_base.tpl'%}
{%block name='content'%}
<tr><td>
<style type="text/css">
.ecl-health-knowledge-pic{width:620px;font-size:16px}.ecl-health-knowledge-pic .knowledge-lines{margin-top:6px}.ecl-health-knowledge-pic .knowledge-lines{border:#e3e3e3 1px solid;border-right-color:#ececec;border-bottom-color:#e0e0e0;box-shadow:1px 1px 1px #ececec}.ecl-health-knowledge-pic .line-item{float:left;width:141px;margin-top:9px;margin-right:11px}.ecl-health-knowledge-pic .line-item p{margin-top:8px}.ecl-health-knowledge-pic p.item-info{color:#656565;margin-top:5px;margin-bottom:13px;text-align:center}
.ecl-health-knowledge-pic .line-info{clear:left}.ecl-health-knowledge-pic .line-info .line-item{margin-top:0}.ecl-health-knowledge-pic .item-first{margin-left:9px;_margin-left:5px}.ecl-health-knowledge-pic .item-last{margin-right:10px}.ecl-health-knowledge-pic .item-pic-link{display:block;height:105px;text-decoration:none;color:#FFF}.ecl-health-knowledge-pic .item-pic-link span{display:block;width:139px;height:21px;position:absolute;margin-top:84px;background:rgba(0,0,0,0.5)}.ecl-health-knowledge-pic .item-pic-link i{display:block;width:139px;text-align:center;line-height:21px;position:absolute;margin-top:84px;font-style:normal;cursor:pointer}
.ecl-health-knowledge-pic .item-pic-link img{border:0;width:139px;height:105px}.ecl-health-knowledge-pic p.item-link{text-decoration:underline;line-height:20px;margin-top:4px;text-align:center}.ecl-health-knowledge-pic .knowledge-morelinks{margin:6px 0 0}.ecl-health-knowledge-pic .relative-links{margin:5px 10px 2px 9px;border-top:#e3e3e3 1px solid;padding:5px 0}.ecl-health-knowledge-pic .relative-links span{color:#666;float:left;line-height:22px}.ecl-health-knowledge-pic .relative-links div{margin-left:65px;line-height:21px}
.ecl-health-knowledge-pic .relative-links a{margin-right:15px}.ecl-health-knowledge-pic .knowledge-showurl{margin-top:5px}
</style>
{%strip%}{%*医疗找知识中间页导流卡片*%}
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
        <a class="item-pic-link" target="blank" href="{%$item.picUrl%}">
          <span></span><i>{%$item.picTitle%}</i>
          <img src="{%$item.pic%}">
        </a>
        <p class="item-link"><a target="blank" href="{%$item.url%}">{%$item.title%}</a></p>
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
  <p class="knowledge-showurl c-showurl">{%$tplData.showUrl%}</p>
</div>
{%/strip%}
<script>(function(doc){var Anti=function(e){function n(n){var t=window.event||n;for(p=t.target||t.srcElement;p&&"A"!=p.tagName;)if(p=p.parentNode,p===e)return!1;l=(new Date).getTime(),f=9999,v=t.clientX,d=t.clientY,h=E?l-E:0,i()&&o()}function t(){g=(new Date).getTime(),f=g-l,i()&&o()}function r(e){var n=window.event||e;T+=1,w||(w=n.clientX),s||(s=n.clientY),E=(new Date).getTime()}function i(){if(c=0,m=/\?url\=([^\.]+)\./.exec(p.href)){for(var e=0;T*L%99+9>e;++e)c+=m[1].charCodeAt(f*e%m[1].length);return!0}return!1}function o(){var e="&ck="+[c,T,f,v,d,w,s,h].join(".");
if(p.href){var n=p.href;-1==n.indexOf("&ck=")?p.href+=e:p.href=n.replace(/&ck=[\w.]*/,e)}}function u(n,t){for(var r,i=0;r=n[i];i++)window.attachEvent?e.attachEvent("on"+r,t[i]):window.addEventListener?e.addEventListener(r,t[i],!1):e["on"+r]=t[i],k[r]=t[i]}function a(n){for(var t,r=0;t=n[r];r++)window.detachEvent?e.detachEvent("on"+t,k[t]):window.removeEventListener?e.removeEventListener(t,k[t],!1):e["on"+t]=null}var c,f,v,d,w,s,h,m,l,E,g,p,L=0,T=0;f=v=d=w=s=h=m=l=E=g=p=0;var k={};return{setTimesign:function(e){return L=e,this
},bind:function(){return u(["mouseover","mousedown","mouseup"],[r,n,t]),this},unbind:function(){return a(["mouseover","mousedown","mouseup"]),this}}};;(new Anti(doc.getElementById('ecl-health-knowledge-pic'))).setTimesign({%$tplData.signTime%}).bind()})(document)</script>
</td></tr>
{%/block%}