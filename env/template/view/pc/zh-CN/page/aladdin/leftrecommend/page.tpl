{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style >.op_leftrecommend_main{font-size:14px}.op_leftrecommend_main a{margin-right:10px}</style>{%fe_fn_title_prefix%}<p class="op_leftrecommend_main"> <span>{%$tplData.tip%}</span> {%$loop_maxcount=count($tplData.newquery)%}{%for $op_loop_count=0 to 4%}{%if $op_loop_count<$loop_maxcount%} {%if $tplData.newquery[$op_loop_count]['cont']!=""%}<a target="_self" href="javascript:void(0);">{%$tplData.newquery[$op_loop_count]['cont']|limitlen:20%}</a>{%/if%} {%else%}{%break%}{%/if%}{%/for%}</p><script >
(function() {
    var queryArr = [{%$loop_maxcount=count($tplData.newquery)%}{%for $op_loop_count=0 to 4%}{%if $op_loop_count<$loop_maxcount%}'{%$tplData.newquery[$op_loop_count]['cont']%}', {%else%}{%break%}{%/if%}{%/for%}''];
    queryArr.pop();
    A.setup({'queryArr': queryArr});
})();
</script><script >A.setup(function() {var _this = this,url = 'http://www.baidu.com/s?ie=utf-8&rsv_recom=1&wd=',a = _this.find('.op_leftrecommend_main:first a');for (var i = 0; i < a.length; i++) {a[i].href = url + encodeURIComponent(_this.data.queryArr[i]);}});</script>{%$FE_GBVAR.wrapper_suffix%}{%/block%}