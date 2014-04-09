{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecl-right_edu_relative-container strong{position:relative;top:9px;padding-right:8px;background:#fff;font-size:14px}.ecl-right_edu_relative-list{border-top:1px solid #e1e1e1;padding-top:15px}.ecl-right_edu_relative-list div{float:left;margin:10px 20px 0 0;width:72px}.ecl-right_edu_relative-list div img{width:68px;height:68px;border:1px solid #d2d2d2}.ecl-right_edu_relative-list div a{color:#00c;text-decoration:none;text-align:center;display:block;font-size:12px}.ecl-right_edu_relative-list div a:hover{text-decoration:underline}
.container_s .ecl-right_edu_relative-link3,.container_s .ecl-right_edu_relative-link4{display:none}.container_s .ecl-right_edu_relative-link2{margin-right:0}
</style>

<div class="ecl-right_edu_relative-container">
	{%$edu_count = count($tplData.right_edu)%}
	{%if $edu_count > 0%}
	{%if $tplData.rectype eq 1%}
	<strong>留学移民中介</strong>
	{%else%}
	<strong>培训机构</strong>
	{%/if%}
	<div class="ecl-right_edu_relative-list c-clearfix" >
		{%foreach $tplData.right_edu as $edu%}
		{%$img_len = ($edu.img|count_characters:true)%}
		{%if $img_len > 0%}
		<div {%if $edu@index eq $edu_count-1%} style="margin-right:0;"{%/if%} class="ecl-right_edu_relative-link{%$edu@index%}" >
		<a target="_blank" href="{%$edu.url|escape:'html'%}"><img width="68" height="68" src="{%$edu.img|escape:'html'%}" title="{%$edu.title|escape:'html'%}" alt="{%$edu.title|escape:'html'%}"/><span>{%$edu.title|escape:'html'%}<span></a></div>
		{%/if%}
		{%/foreach%}
	</div>
	{%/if%}
</div>


{%/block%}
