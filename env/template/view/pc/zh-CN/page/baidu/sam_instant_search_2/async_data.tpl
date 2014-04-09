{%if preg_match('/(msie|lbbrowser|maxthon)/i',$tplData.queryInfo.userAgent)
    ||(preg_match('/windows.*safari/i',$tplData.queryInfo.userAgent)&&!preg_match('/chrome/i',$tplData.queryInfo.userAgent))
%}{%include file='baidu/async_data.tpl'%}{%else%}{%include file='sam_instant_search_2/async_data_nologin.tpl'%}{%/if%}