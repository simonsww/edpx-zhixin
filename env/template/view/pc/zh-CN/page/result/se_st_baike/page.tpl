{%extends 'base.tpl'%} {%block name="result_functions_ext"%}{%*输出多义词*%}{%function name="exportSynword"%}{%if $ismax eq 1%}{%section name=items loop=$syndata max=2%}<li><a href="{%$syndata[items].surl%}" target="_blank" data-click="						
						{
							'rsv_bkjq': 1
						}
					">{%$syndata[items].sword|limitlen:40|highlight:3%}</a></li>{%/section%}<li><a href="{%$tplData.classicInfo.urlEncoded%}" target="_blank" style="color:#7a77c8;"  data-click="						
					{
						'rsv_bkjq': 1
					}
				">查看全部含义&gt;&gt;</a></li>{%*百科条数数据推送错误，暂时去掉条数显示与ala保持一致，节后问题修复后加上该数据*%}{%*">查看全部{%$syndata|count%}条含义&gt;&gt;</a></li>*%}{%else%}{%section name=items loop=$syndata%}<li><a href="{%$syndata[items].surl%}" target="_blank" data-click="						
						{
							'rsv_bkjq': 1
						}
					">{%$syndata[items].sword|limitlen:40|highlight:3%}</a></li>{%/section%}{%/if%}{%/function%}{%function name="exportSingleSynword"%}{%section name=items loop=$syndata%}<a href="{%$syndata[items].surl%}" target="_blank" data-click="                     
	        {
	            'rsv_bkjq': 1
	      	}
			">{%$syndata[items].sword|limitlen:40|highlight:4%}</a>{%/section%}{%/function%}{%*输出目录*%}{%function name="exportCatalog"%}{%if $data|count >= 2%}{%*子链数量最多不超过6个，如果子链总量大于6，则展现5个子链+更多*%}{%$loopmax = 6%}{%if $data|count > 6%}{%$loopmax = 5%}{%/if%}{%$slinklength = 0%}{%foreach $data as $foo%}{%*计算子链总长度*%}{%$slinklength = $slinklength + $foo.name|limitlen:20|string_display_len%}{%if $foo@iteration > $loopmax || $slinklength > 60%}{%*如果前N（N≤6）个子链的展现长度之和大于60字节时，则只展现前N-1个子链接+更多*%}{%break%}{%/if%}{%if $foo@iteration !=1%}&nbsp;-&nbsp;{%/if%}<a href="{%$tplData.classicInfo.urlEncoded%}{%$foo.anchor%}" target="_blank" data-click="						
				{
				'rsv_bkjq': 1
				}
				">{%$foo.name|limitlen:20|highlight:3%}</a>{%/foreach%}{%if $data|count > 6 || $slinklength > 60%}&nbsp;-&nbsp;<a href="{%$tplData.classicInfo.urlEncoded%}" target="_blank" data-click="
				{
				'rsv_bkjq': 1
				}
				">更多&gt;&gt;</a>{%/if%}{%/if%}{%/function%}{%/block%}{%block name="result_content"%}<h3 class="t">{%$titleUrl = {%rs_get_url token=$tplData.classicInfo.productType originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}%}<a href="{%$titleUrl%}" target="_blank" data-click="
			{
				'F': '{%$tplData.classicInfo.strategyStr[0]%}',
				'F1': '{%$tplData.classicInfo.strategyStr[1]%}',
				'F2': '{%$tplData.classicInfo.strategyStr[2]%}',
				'F3': '{%$tplData.classicInfo.strategyStr[3]%}',
				'T': '{%$serverTime%}',
				'y': '{%$tplData.classicInfo.identifyStr%}',
				'rsv_bkjq': 1
			}
		">{%$tplData.classicInfo.title|limitlen:60|highlight:2%}</a></h3><div><p>{%if $tplData.baike.content1%}{%$tplData.baike.content1|limitlen:150|highlight:3%}{%else%}{%$tplData.classicInfo.summary|limitlen:150|highlight:6%}{%/if%}</p><div>{%if $tplData.baike.synword|count > 0%}<span>其他含义：</span>{%if $tplData.baike.synword|count == 1%}{%exportSingleSynword syndata=$tplData.baike.synword%}{%else%}<ul style="padding-left:1em;">{%$synwords=$tplData.baike.synword%}{%if $synwords|count lte 3%}{%exportSynword syndata=$synwords%}{%else%}{%exportSynword syndata=$synwords ismax=1%}{%/if%}{%*exportSynword data=$tplData.baike.synword*%}</ul>{%/if%}{%else%}{%exportCatalog data=$tplData.baike.catalog%}{%/if%}</div><div class="f13"><span class="g">{%$tplData.classicInfo.urlDisplay|host%}/{%if $tplData.baike.date%}&nbsp;{%$tplData.baike.date%}{%/if%}&nbsp;{%fis_widget_inline name="info_tools" url=$titleUrl title=$tplData.classicInfo.view.title%}{%if $title && $url%}<div class="c-tools" id="tools_{%$tplData.classicInfo.urlSign%}" data-tools='{"title":"{%$title|escape:javascript|escape%}","url":"{%$url|escape:javascript|escape%}"}'><a class="c-tip-icon"><i class="c-icon c-icon-triangle-down-g"></i></a></div>{%/if%}{%/fis_widget_inline%}</span>{%if $isOldSnapshootOn%}{%if strlen($tplData.classicInfo.snapshootKey) > 0%}&nbsp;-&nbsp;<a data-nolog href="{%$cache_domain%}/c?{%$tplData.classicInfo.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" {%if !($urlPara.ct & 0x40000)%} target="_blank" {%/if%} class="m">{%$lable_cache%}</a>{%/if%}{%/if%}</div></div>{%/block%}