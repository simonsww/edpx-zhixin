{%extends 'base_div.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style>.op-iframe-tieba{font-size:13px}.op-iframe-tieba p{margin-top:5px}</style>{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}_百度贴吧" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div class="op-iframe-tieba"> <div> {%if $tplData.peoplenumber || $tplData.postnumber%} <p> {%if $tplData.peoplenumber%} <span>月活跃用户：<strong>{%$tplData.peoplenumber%}</strong>人</span> {%/if%} {%if $tplData.peoplenumber%}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{%/if%} {%if $tplData.postnumber%} <span>累积发贴：<strong>{%$tplData.postnumber%}</strong></span> {%/if%} </p> {%/if%} {%if $tplData.tag%} <p> {%foreach $tplData.tag as $item%} <a target="_blank" href="{%$item.link%}">{%$item.name%}({%$item.number%})</a> {%if !$item@last%} &nbsp;&nbsp;|&nbsp;&nbsp; {%/if%} {%/foreach%} </p> {%/if%} </div> <div id="op_iframe_aladdin" style="margin-top:15px;"></div> <div>{%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}</div></div><script type="text/javascript" >
   A.init(function(){
       var _this = this,c;
       var appinfo_json = {
            app_id:'{%$tplData.appid%}',
            src:'{%$tplData.iframelink%}',
            height:{%$tplData.defaultheight|escape:'javascript'%}
        };
       A.use('renderIframe3', function(){
           c = A.ui.renderIframe3({
               container : 'op_iframe_aladdin',
               relay : 'http://www.baidu.com/cache/app/aladdin/bdaladdinrelay.html',
               width : 540,
               zone : 'app-list'
           });
           c.render(appinfo_json,{});
       });
       this.dispose = function(){
            c&&c.dispose&&c.dispose();
        };
   });
</script>{%$FE_GBVAR.wrapper_suffix%}{%/block%}