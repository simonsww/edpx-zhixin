{%extends 'base.tpl'%}
{%block name='content'%}
<tr>
	<td class="f" data-fm="alop">{%$item=str_replace($extData.resourceid|cat:'_','',$extData.fetchkey)%}
		{%fe_fn_title_prefix%}
		<a target="_blank" href="{%$tplData.url%}" ><em>{%$item%}</em>_百度百科</a>
		{%fe_fn_title_suffix title="{%$item%}_百度百科" url="{%$tplData.url%}"%}
		<div style="padding-top:3px;">
				<p>
					{%if $tplData.content1%}
						{%$tplData.content1|limitlen:138|highlight:4%}
					{%/if%}
				</p>
				<div>
					{%if isset($tplData.synword) && ($tplData.synword|count gt 0)%}
						<span>其他含义：</span>
                        {%if $tplData.synword|count eq 1%}
                            <a href="{%$tplData.synword[0].surl%}" target="_blank" data-click="{'rsv_bkjq': 1}" title="{%$tplData.synword[0].sword%}">{%$tplData.synword[0].sword|limitlen:40|highlight:4%}</a>
                        {%else%}
						<ul style="padding-left:1em;">
							{%if $tplData.synword|count lte 3%}
								{%foreach $tplData.synword as $item%}									
									<li>
										<a href="{%$item.surl%}" target="_blank" data-click="{'rsv_bkjq': 1}" title="{%$item.sword%}">{%$item.sword|limitlen:40|highlight:4%}</a>
									</li>
								{%/foreach%}
							{%else%}
								{%foreach $tplData.synword as $item%}
									{%if $item@index lt 2%}								
									<li>
										<a href="{%$item.surl%}" target="_blank" data-click="{'rsv_bkjq':1}" title="{%$item.sword%}">{%$item.sword|limitlen:40|highlight:4%}</a>
									</li>
									{%else%}{%break%}{%/if%}
								{%/foreach%}
								<li><a href="{%if $tplData.polyseme[0].url%}{%$tplData.polyseme[0].url%}{%else%}{%$tplData.url%}{%/if%}" target="_blank" style="color:#7a77c8;" data-click="{'rsv_bkjq': 1}">查看全部含义&gt;&gt;</a></li>		
							{%/if%}
						</ul>
                        {%/if%}
					{%else%}
						{%if isset($tplData.catalog) && ($tplData.catalog|count gte 2)%}
							{%$tempDatalinelen=0%}
							{%*子链接个数小于等于6*%}
                            {%if $tplData.catalog|count lte 6%}
                                {%foreach $tplData.catalog as $item%} 
									{%$tempDatalinelen=$tempDatalinelen+($item.name|string_display_len)%}
									{%if $tempDatalinelen<=60%}
										{%if $item@index neq 0%}- {%/if%}<a href="{%$tplData.url%}{%$item.anchor%}" target="_blank" data-click="{'rsv_bkjq': 1}" title="{%$item.name%}">{%$item.name|limitlen:20|highlight:4%}</a>  
									{%else%}
										- <a href="{%$tplData.url%}" target="_blank" data-click="{'rsv_bkjq': 1}">更多&gt;&gt;</a>
										{%break%}
									{%/if%}
                                {%/foreach%}
							{%*子链接个数大于6*%}
                            {%else%}
                                {%foreach $tplData.catalog as $item%}
									{%$tempDatalinelen=$tempDatalinelen+($item.name|string_display_len)%}
                                    {%if $item@index lte 4%}
										{%if $tempDatalinelen<=60%}
											{%if $item@index neq 0%}- {%/if%}<a href="{%$tplData.url%}{%$item.anchor%}" target="_blank" data-click="{'rsv_bkjq': 1}"  title="{%$item.name%}" >{%$item.name|limitlen:20|highlight:4%}</a>
										{%else%}
											- <a href="{%$tplData.url%}" target="_blank" data-click="{'rsv_bkjq': 1}">更多&gt;&gt;</a>
											{%break%}
										{%/if%}
                                    {%else%}
                                        - <a href="{%$tplData.url%}" target="_blank" data-click="{'rsv_bkjq': 1}">更多&gt;&gt;</a>
                                        {%break%}
                                    {%/if%}
                                {%/foreach%}
                            {%/if%}
							
						{%/if%}
					{%/if%}
				</div>
				<span style="font-size:15px;">
					{%fe_fn_showurl showurl="{%$tplData.showurl|limitlen:60%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}
				</span>
		</div>
	</td>
</tr>
{%/block%}