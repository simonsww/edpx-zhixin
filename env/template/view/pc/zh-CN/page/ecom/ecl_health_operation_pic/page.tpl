{%extends 'c_base.tpl'%}
{%block name='content'%}
{%$debugon=0%}
{%if $tplData.tplType==2%}
<style type="text/css">
.ecl-health-opl {
  width: 538px;
  font-size: 13px;
}
.ecl-health-opl .knowledge-lines {
  margin-top: 6px;
}
.ecl-health-opl .knowledge-lines {
  border: #E3E3E3 1px solid;
  border-right-color: #ECECEC;
  border-bottom-color: #E0E0E0;
  box-shadow: 1px 1px 1px #ECECEC;
}
.ecl-health-opl .knowledge-line {
  padding-bottom: 7px;
}
.ecl-health-opl .knowledge-info {
  margin-top: 12px;
  margin-bottom: 3px;
  padding: 0 8px;
}
.ecl-health-opl .knowledge-info p {
  line-height: 19px;
  color: #333;
}
.ecl-health-opl .knowledge-info p b {
  color: #666;
  font-weight: 400;
}
.ecl-health-opl .knowledge-info p span {
  color: #000;
  margin: 0 5px;
}
.ecl-health-opl .knowledge-info .info-morelink {
  float: right;
}
.ecl-health-opl .knowledge-info .info-morelink i {
  font-style: normal;
  font-family: '宋体';
}
.ecl-health-opl .knowledge-info .info-link-list a {
  margin-right: 15px;
}
.ecl-health-opl .knowledge-info .info-link-list a:last-child {
  margin-right: 0;
}
.ecl-health-opl .line-item {
  float: left;
  width: 121px;
  margin-top: 9px;
  margin-right: 11px;
}
.ecl-health-opl .line-item p {
  margin-top: 8px;
}
.ecl-health-opl .item-first {
  margin-left: 9px;
  _margin-left: 5px;
}
.ecl-health-opl .item-last {
  margin-right: 10px;
  _margin-right: 9px;
}
.ecl-health-opl .item-pic-link {
  display: block;
  height: 91px;
  text-decoration: none;
  color: #FFF;
  position: relative;
}
.ecl-health-opl .item-pic-link i {
  display: block;
  line-height: 16px;
  position: absolute;
  font-style: normal;
  cursor: pointer;
  bottom: 0;
  _bottom: -1px;
  width: 100%;
  text-align: center;
  background: #000;
  filter: alpha(opacity=60);
  background: rgba(0, 0, 0, 0.5);
}
.ecl-health-opl .item-pic-link img {
  border: none;
  width: 121px;
  height: 91px;
}
.ecl-health-opl p.item-link {
  text-decoration: underline;
  line-height: 20px;
  margin-top: 4px;
  text-align: center;
}
.ecl-health-opl .knowledge-showurl {
  margin-top: 5px;
}
.ecl-health-opl .knowledge-showurl .c-icon {
  margin-left: 5px;
}
.ecl-health-opl-morelink {
  padding: 6px 0 7px;
  margin: 0 10px;
  text-align: center;
  border-top: 1px solid #ECECEC;
}
.ecl-health-opl-morelink i {
  font-style: normal;
  font-family: '宋体';
}

</style>
{%strip%}
{%*医疗手术卡片图片版*%}
<div id="ecl-health-opl" class="ecl-health-opl">
  <h3 class="t">
    <a data-click="{rsv_vspos:0}" target="_blank" href="{%$tplData.queryUrl%}">{%$tplData.queryTitle%}</a>
    {%if $tplData.showHomepage%}
      <span class="icon-gw">官网</span>
    {%/if%}
  </h3>

  {%*图片链接*%}
  <div class="knowledge-lines">
    <div class="knowledge-info">
      {%if $tplData.info && $tplData.info.intro%}
      <p>
        <a data-click="{rsv_vspos:1}" target="_blank" href="{%$tplData.info.detailLink%}" class="info-morelink">详情<i>&gt;&gt;</i></a>
        <b>手术概述：</b>{%$tplData.info.intro%}
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
          {%if $item.picTitle%}
          <i>{%$item.picTitle%}</i>
          {%/if%}
          <img src="{%$item.pic%}">
        </a>
        <p class="item-link"><a target="_blank" href="{%$item.url%}">{%$item.title%}</a></p>
      </div>
      {%/foreach%}
    </div>

    <div class="ecl-health-opl-morelink">
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

{%/strip%}
<script>A.setup('anti', function(doc){var Anti=function(n){function e(e){var t=window.event||e;for(p=t.target||t.srcElement;p&&"A"!=p.tagName;)if(p=p.parentNode,p===n)return!1;m=(new Date).getTime(),f=9999,v=t.clientX,d=t.clientY,l=E?m-E:0,i()&&o()}function t(){g=(new Date).getTime(),f=g-m,i()&&o()}function r(n){var e=window.event||n;T+=1,s||(s=e.clientX),w||(w=e.clientY),E=(new Date).getTime()}function i(){if(c=0,h=/\?url\=([^\.]+)\./.exec(p.href)){for(var n=0;T*L%99+9>n;++n)c+=h[1].charCodeAt(f*n%h[1].length);return!0}return!1}function o(){var n="&ck="+[c,T,f,v,d,s,w,l].join(".");
if(p.href){var e=p.href;-1==e.indexOf("&ck=")?p.href+=n:p.href=e.replace(/&ck=[\w.]*/,n)}}function u(e,t){for(var r,i=0;r=e[i];i++)window.attachEvent?n.attachEvent("on"+r,t[i]):window.addEventListener?n.addEventListener(r,t[i],!1):n["on"+r]=t[i],b[r]=t[i]}function a(e){for(var t,r=0;t=e[r];r++)window.detachEvent?n.detachEvent("on"+t,b[t]):window.removeEventListener?n.removeEventListener(t,b[t],!1):n["on"+t]=null,b[t]=null}var c,f,v,d,s,w,l,h,m,E,g,p,L=0,T=0;f=v=d=s=w=l=h=m=E=g=p=0;var b={};return{setTimesign:function(n){return L=n,this
},bind:function(){return u(["mouseover","mousedown","mouseup"],[r,e,t]),this},unbind:function(){return a(["mouseover","mousedown","mouseup"]),this},dispose:function(){n&&(this.unbind(),n=null,b=null)}}};var anti = new Anti( doc.getElementById('ecl-health-opl'));anti.setTimesign( +"{%$tplData.signTime%}" );anti.bind();return anti;}(document));A.setup(function(){this.dispose = function(){this.data.anti.dispose()}});</script>
{%else%}
<style type="text/css">
.ecl-health-operation-pic{width:538px;font-size:13px}.ecl-health-operation-pic .knowledge-lines{margin-top:6px}.ecl-health-operation-pic .knowledge-lines{border:#e3e3e3 1px solid;border-right-color:#ececec;border-bottom-color:#e0e0e0;box-shadow:1px 1px 1px #ececec}.ecl-health-operation-pic .line-item{float:left;width:121px;margin-top:9px;margin-right:11px}.ecl-health-operation-pic .line-item p{margin-top:8px}.ecl-health-operation-pic .item-first{margin-left:9px;_margin-left:5px}.ecl-health-operation-pic .item-last{margin-right:10px;_margin-right:9px}
.ecl-health-operation-pic .item-pic-link{display:block;height:91px;text-decoration:none;color:#FFF}.ecl-health-operation-pic .item-pic-link span{display:block;width:121px;height:16px;position:absolute;margin-top:75px;background:#000;background:rgba(0,0,0,0.5);background:#000\9;filter:alpha(opacity=50)\9}.ecl-health-operation-pic .item-pic-link i{display:block;width:121px;text-align:center;line-height:16px;position:absolute;margin-top:75px;font-style:normal;cursor:pointer}.ecl-health-operation-pic .item-pic-link img{border:0;width:121px;height:91px}
.ecl-health-operation-pic p.item-link{text-decoration:underline;line-height:20px;margin-top:4px;text-align:center}.ecl-health-operation-pic .relative-links{margin:5px 10px 2px 9px;border-top:#e3e3e3 1px solid;padding:5px 0}.ecl-health-operation-pic .relative-links span{color:#666;float:left;line-height:18px}.ecl-health-operation-pic .relative-links div{margin-left:65px;line-height:18px}.ecl-health-operation-pic .relative-links a{margin-right:15px}.ecl-health-operation-pic .knowledge-showurl{margin-top:5px}.ecl-health-operation-pic .knowledge-showurl .c-icon{margin-left:5px}
</style>
{%strip%}
{%*医疗手术卡片图片版*%}
<div id="ecl-health-operation-pic" class="ecl-health-operation-pic">
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
          {%if $item.picTitle%}
          <span></span><i>{%$item.picTitle%}</i>
          {%/if%}
          <img src="{%$item.pic%}">
        </a>
        <p class="item-link"><a target="_blank" href="{%$item.url%}">{%$item.title%}</a></p>
      </div>
      {%/foreach%}

    </div>

    {%if !empty($tplData.links)%}
    <div class="relative-links">
      <span>医院解答：</span>
      <div>
        {%foreach $tplData.links as $item%}
          <a {%if $debugon%} data-debug="{%$item.debug|escape:'html'%}"{%/if%} target="_blank" href="{%$item.url%}">{%$item.title|highlight:0%}</a>
          {%if $item@index%2%}
            <br/>
          {%/if%}
        {%/foreach%}
      </div>
    </div>
    {%/if%}

  </div>

  <p class="knowledge-showurl c-showurl">
    {%$tplData.showUrl%}
    <a href="http://baozhang.baidu.com/guarantee/" target="_blank" class="c-icon c-icon-bao"></a>
  </p>
</div>

{%/strip%}
<script>A.setup('anti', function(doc){var Anti=function(n){function e(e){var t=window.event||e;for(p=t.target||t.srcElement;p&&"A"!=p.tagName;)if(p=p.parentNode,p===n)return!1;m=(new Date).getTime(),f=9999,v=t.clientX,d=t.clientY,l=E?m-E:0,i()&&o()}function t(){g=(new Date).getTime(),f=g-m,i()&&o()}function r(n){var e=window.event||n;T+=1,s||(s=e.clientX),w||(w=e.clientY),E=(new Date).getTime()}function i(){if(c=0,h=/\?url\=([^\.]+)\./.exec(p.href)){for(var n=0;T*L%99+9>n;++n)c+=h[1].charCodeAt(f*n%h[1].length);return!0}return!1}function o(){var n="&ck="+[c,T,f,v,d,s,w,l].join(".");
if(p.href){var e=p.href;-1==e.indexOf("&ck=")?p.href+=n:p.href=e.replace(/&ck=[\w.]*/,n)}}function u(e,t){for(var r,i=0;r=e[i];i++)window.attachEvent?n.attachEvent("on"+r,t[i]):window.addEventListener?n.addEventListener(r,t[i],!1):n["on"+r]=t[i],b[r]=t[i]}function a(e){for(var t,r=0;t=e[r];r++)window.detachEvent?n.detachEvent("on"+t,b[t]):window.removeEventListener?n.removeEventListener(t,b[t],!1):n["on"+t]=null,b[t]=null}var c,f,v,d,s,w,l,h,m,E,g,p,L=0,T=0;f=v=d=s=w=l=h=m=E=g=p=0;var b={};return{setTimesign:function(n){return L=n,this
},bind:function(){return u(["mouseover","mousedown","mouseup"],[r,e,t]),this},unbind:function(){return a(["mouseover","mousedown","mouseup"]),this},dispose:function(){n&&(this.unbind(),n=null,b=null)}}};var anti = new Anti( doc.getElementById('ecl-health-operation-pic'));anti.setTimesign( +"{%$tplData.signTime%}" );anti.bind();return anti;}(document));A.setup(function(){this.dispose = function(){this.data.anti.dispose()}});</script>
{%/if%}
{%/block%}