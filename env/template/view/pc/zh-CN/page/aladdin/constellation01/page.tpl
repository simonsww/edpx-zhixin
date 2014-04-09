{%extends 'c_base.tpl'%} {%block name='content'%}{%$imgs=['http://www.baidu.com/aladdin/img/stars/baiyang.png',
    'http://www.baidu.com/aladdin/img/stars/jinniu.png',
    'http://www.baidu.com/aladdin/img/stars/shuangzi.png',
    'http://www.baidu.com/aladdin/img/stars/juxie.png',
    'http://www.baidu.com/aladdin/img/stars/shizi.png',
    'http://www.baidu.com/aladdin/img/stars/chunv.png',
    'http://www.baidu.com/aladdin/img/stars/tianping.png',
    'http://www.baidu.com/aladdin/img/stars/tianxie.png',
    'http://www.baidu.com/aladdin/img/stars/sheshou.png',
    'http://www.baidu.com/aladdin/img/stars/mojie.png',
    'http://www.baidu.com/aladdin/img/stars/shuiping.png',
    'http://www.baidu.com/aladdin/img/stars/shuangyu.png'
]%}<div class="c-row c-gap-bottom-small op_constellation01"> {%$loop_maxcount=count($tplData.constellation)%}{%for $op_loop_count=0 to 11%}{%if $op_loop_count<$loop_maxcount%} <a href="{%$tplData.constellation[$op_loop_count]['link']%}" target="_blank" class="c-span8 {%if ($op_loop_count+1)%3==0%} c-span-last{%/if%} op_constellation01_anchor"> <div class="c-clearfix {%if $op_loop_count >= 3%}c-gap-top{%/if%}" mouseover="this.style.backgroundColor = '#d9e1f6';" onmouseout="this.style.backgroundColor = 'transparent'"> <div class="op_constellation01_left c-gap-right-small"><img class="c-img c-img3" src="{%$imgs[$op_loop_count]%}"></div> <div class="op_constellation01_left"> <div class="op_constellation01_title">{%$tplData.constellation[$op_loop_count]['title']|escape:'html'%}</div> <div  class="op_constellation01_subtitle">{%$tplData.constellation[$op_loop_count]['subtitle']|replace:"月":"."|replace:"日":""|escape%}</div> </div> </div> </a> {%else%}{%break%}{%/if%}{%/for%}</div>{%if $tplData.link%}<div> {%$loop_maxcount=count($tplData.link)%}{%for $op_loop_count=0 to 2%}{%if $op_loop_count<$loop_maxcount%}<a {%if $op_loop_count>0%} class="c-gap-left"{%/if%} href="{%$tplData.link[$op_loop_count]['url']%}" target="_blank" >{%$tplData.link[$op_loop_count]['content']|escape:'html'%}</a>{%else%}{%break%}{%/if%}{%/for%}</div>{%/if%}{%/block%}