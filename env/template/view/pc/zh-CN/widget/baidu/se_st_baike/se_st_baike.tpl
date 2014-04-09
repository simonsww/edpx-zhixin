{%fis_widget%}{%*输出多义词*%}{%function name="exportSynword"%}{%if $ismax eq 1%}{%section name=items loop=$syndata max=2%}<li><a href="{%$syndata[items].surl%}" target="_blank" data-click="						
						{
							'rsv_bkjq': 1
						}
					">{%$syndata[items].sword|limitlen:40|highlight:3%}</a></li>{%/section%}<li><a href="{%$res.offsetInfo.urlEncoded%}" target="_blank" style="color:#7a77c8;"  data-click="						
					{
						'rsv_bkjq': 1
					}
				">查看全部{%$syndata|count%}条含义&gt;&gt;</a></li>{%else%}{%section name=items loop=$syndata%}<li><a href="{%$syndata[items].surl%}" target="_blank" data-click="						
						{
							'rsv_bkjq': 1
						}
					">{%$syndata[items].sword|limitlen:40|highlight:3%}</a></li>{%/section%}{%/if%}{%/function%}{%function name="exportSingleSynword"%}{%section name=items loop=$syndata%}<a href="{%$syndata[items].surl%}" target="_blank" data-click="                     
        	        {
	                    'rsv_bkjq': 1
                	}
          		">{%$syndata[items].sword|limitlen:40|highlight:4%}</a>{%/section%}{%/function%}{%*输出目录*%}{%function name="exportCatalog"%}{%if $data|count gte 2%}{%$loopmax = 6%}{%if $data|count gt 6%}{%$loopmax = 5%}{%/if%}{%section name=items loop=$data max={%$loopmax%}%}{%if $smarty.section.items.index neq 0%}-{%/if%}<a href="{%$res.offsetInfo.urlEncoded%}{%$data[items].anchor%}" target="_blank" data-click="						
					{
						'rsv_bkjq': 1
					}
				">{%$data[items].name|limitlen:10|highlight:3%}</a>{%/section%}{%if $data|count gt 6%}-<a href="{%$res.offsetInfo.urlEncoded%}" target="_blank" data-click="
                    {
                        'rsv_bkjq': 1
                    }
                ">查看全部&gt;&gt;</a>{%/if%}{%/if%}{%/function%}<table id="{%$resIndex%}" class="result{%if $isSameSize==1%} c-res{%/if%}" cellpadding="0" cellspacing="0" mu="{%get_mu originUrl=$res.offsetInfo.url encryptionUrl=$res.encryptionUrl%}"><tr><td class="f"><h3 class="t"><a href="{%get_url token=$res.productType originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}" target="_blank" data-click="
						{
							'F': '{%$res.strategyStr[0]%}',
							'F1': '{%$res.strategyStr[1]%}',
							'F2': '{%$res.strategyStr[2]%}',
							'F3': '{%$res.strategyStr[3]%}',
							'T': '{%$serverTime%}',
							'y': '{%$res.identifyStr%}',
							'rsv_bkjq': 1
						}
					">{%$res.offsetInfo.title|limitlen:60|highlight:2%}</a>{%fis_widget_inline%}{%if $isUserLogin == 1 && $isFavoOn == 1%}{%if $res.favoFlag == 1%}<span class="tsuf"><span class="fav fav_add" data-fav="1" data-id="{%$res.favoItemId%}" title="点击取消收藏" onmousedown="return c({'fm':'bfav','url':this.getAttribute('data-url'),'title':this.getAttribute('data-title'),'p1':bds.se.favo.favPos(this),'p2':0,'p3':1,tab:this.getAttribute('data-fav')});"></span></span>{%else%}<span class="tsuf"><span class="fav fav_nor" data-fav="0" data-id="0" title="点击收藏" onmousedown="return c({'fm':'bfav','url':this.getAttribute('data-url'),'title':this.getAttribute('data-title'),'p1':bds.se.favo.favPos(this),'p2':0,'p3':1,tab:this.getAttribute('data-fav')});"></span></span>{%/if%}{%/if%}{%/fis_widget_inline%}</h3><div style="padding-top:3px;"><font size="-1"><p>{%if $res.dispData.baike.content1%}{%$res.dispData.baike.content1|limitlen:150|highlight:3%}{%else%}{%$res.offsetInfo.summary|limitlen:150|highlight:6%}{%/if%}</p><div>{%if $res.dispData.baike.synword|count > 0%}<span>其他含义：</span>{%if $res.dispData.baike.synword|count == 1%}{%exportSingleSynword syndata=$res.dispData.baike.synword%}{%else%}<ul style="padding-left:1em;">{%$synwords=$res.dispData.baike.synword%}{%if $synwords|count lte 3%}{%exportSynword syndata=$synwords%}{%else%}{%exportSynword syndata=$synwords ismax=1%}{%/if%}{%*exportSynword data=$res.dispData.baike.synword*%}</ul>{%/if%}{%else%}{%exportCatalog data=$res.dispData.baike.catalog%}{%/if%}</div><p class="g">{%if $res.dispData.DispUrl%}{%$res.dispData.DispUrl|url_bold_html%}{%else%}{%$res.offsetInfo.urlDisplay|url_limit:45:true%}{%/if%}{%$res.dispData.baike.date%}{%if $isOldSnapshootOn%}{%if strlen($res.snapshootKey) > 0%}-<a data-nolog href="{%$cache_domain%}/c?{%$res.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" {%if !($urlPara.ct & 0x40000)%} target="_blank" {%/if%} class="m">{%$lable_cache%}</a>{%/if%}{%/if%}</p></font></div></td></tr></table>{%/fis_widget%}