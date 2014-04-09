<!DOCTYPE html><!--STATUS OK-->{%block name="global_vars"%}{%/block%}{%block name="global_functions"%}{%/block%}<html><head>{%block name="index_meta"%}<meta http-equiv="content-type" content="text/html;charset=utf-8">{%/block%}{%block name="index_dns"%}<link rel="dns-prefetch" href="//s1.bdstatic.com"/><link rel="dns-prefetch" href="//t1.baidu.com"/><link rel="dns-prefetch" href="//t2.baidu.com"/><link rel="dns-prefetch" href="//t3.baidu.com"/><link rel="dns-prefetch" href="//t10.baidu.com"/><link rel="dns-prefetch" href="//t11.baidu.com"/><link rel="dns-prefetch" href="//t12.baidu.com"/>{%/block%}{%block name="index_title"%}<title>百度一下，你就知道</title>{%/block%}{%block name="index_head_style"%}{%/block%}{%block name="index_head_script"%}{%/block%}</head><body>{%block name="index_body_start"%}{%/block%}<div id="wrapper" style="display:none">{%*
   以下代码的注释 
        (function(){
            if(!location.hash.match(/[^a-zA-Z0-9](wd|word)=/)){
                document.getElementById("wrapper").style.display='block';
                function jumpHash(){
                    if(location.hash&&location.hash.match(/[^a-zA-Z0-9](wd|word)=/)){
                        location.replace("http://www.baidu.com/s?"+location.href.match(/#(.*)$/)[1]);
                    }
                }
                if("onhashchange" in window){
                    window.onhashchange=jumpHash;
                }else{
                    setInterval(jumpHash,200);
                }
            }else{
                location.replace("http://www.baidu.com/s?"+location.href.match(/#(.*)$/)[1]);
            }
        })();
*%}<script>!function(){function a(){location.hash&&location.hash.match(/[^a-zA-Z0-9](wd|word)=/)&&location.replace("http://www.baidu.com/s?"+location.href.match(/#(.*)$/)[1])}location.hash.match(/[^a-zA-Z0-9](wd|word)=/)?location.replace("http://www.baidu.com/s?"+location.href.match(/#(.*)$/)[1]):(document.getElementById("wrapper").style.display="block","onhashchange"in window?window.onhashchange=a:setInterval(a,200))}();</script><div id="content">{%block name="index_login"%}{%/block%}<div id="m">{%block name="index_logo"%}{%/block%}{%block name="index_search"%}{%/block%}{%block name="index_links"%}{%/block%}</div></div>{%block name="index_about"%}{%/block%}</div>{%block name="index_foot_script"%}{%/block%}{%block name="index_body_end"%}{%/block%}{%block name="index_html_end"%}{%/block%}</body></html>