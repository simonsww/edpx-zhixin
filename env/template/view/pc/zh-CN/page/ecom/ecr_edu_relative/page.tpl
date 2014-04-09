{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.container_l .ecr-edu-relative-container{width:440px}.container_s .ecr-edu-relative-container{width:270px}.container_s .ecr-edu-relative-link3,.container_s .ecr-edu-relative-link4{display:none}.container_s .ecr-edu-relative-link2{margin-right:0}.ecr-edu-relative-container{font-size:13px;color:#333}.ecr-edu-relative-subtitle{font-size:14px;zoom:1;position:relative;background:url(http://www.baidu.com/aladdin/img/right_relainfo/horizon.png) repeat-x 0 bottom}.ecr-edu-relative-subtitle strong{font-weight:700;background:#fff;margin-right:30px;padding-right:10px}
.ecr-edu-relative-list div{float:left;margin:10px 20px 0 0;width:72px;_margin-right:12px}.ecr-edu-relative-list a{display:inline-block;text-align:center;text-decoration:underline}.ecr-edu-relative-list img{height:68px;width:68px;border:1px solid #d2d2d2}.ecr-edu-relative-list .ecr-edu-relative-link4{margin-right:0}.ecr-edu-relative-name{width:78px;text-align:center;word-wrap:break-word;overflow:hidden;padding:1px 0;position:relative;left:-4px}
</style>

{%if $tplData.right_edu%}
    {%$edu_count = count($tplData.right_edu)%}
    {%if $edu_count > 0%}
    <div class="ecr-edu-relative-container">
        <div class="ecr-edu-relative-subtitle">{%if $tplData.rectype eq 1%}<strong>留学移民中介</strong>{%else%}<strong>培训机构</strong>{%/if%}</div>
        <div class="ecr-edu-relative-list c-clearfix" >
            {%foreach $tplData.right_edu as $edu%}
            {%$img_len = ($edu.img|count_characters:true)%}
            {%if $img_len > 0%}
            <div class="ecr-edu-relative-link{%$edu@index%}" >
                <a target="_blank" href="{%$edu.url|escape:'html'%}"><img width="68" height="68" src="{%$edu.img|escape:'html'%}" title="{%$edu.rawtitle|escape:'html'%}" alt="{%$edu.title|escape:'html'%}"/>
                </a><p class="ecr-edu-relative-name"><a title="{%$edu.rawtitle|escape:'html'%}" target="_blank" href="{%$edu.url|escape:'html'%}">{%$edu.title|escape:'html'%}</a></p>
            </div>
            {%/if%}
            {%/foreach%}
        </div>
    </div>
    {%/if%}
{%/if%}


{%/block%}
