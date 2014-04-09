{%fis_widget%}{%*输出多义词*%}{%function name="exportSynword"%}{%if $ismax eq 1%}{%section name=items loop=$syndata max=2%}<li><a href="{%$syndata[items].surl%}" target="_blank" data-click="
                            {
                                'T': '{%$serverTime%}',
                                'y': '{%$res.identifyStr%}',
                                'rsv_bkjq': 1
                            }
                        ">{%$syndata[items].sword|limitlen:40|highlight:4%}</a></li>{%/section%}<li><a href="{%$res.offsetInfo.urlEncoded%}" target="_blank" style="color:#7a77c8;"  data-click="
                            {
                                'T': '{%$serverTime%}',
                                'y': '{%$res.identifyStr%}',
                                'rsv_bkjq': 1
                            }
                        ">查看全部{%$syndata|count%}条含义&gt;&gt;</a></li>{%else%}{%section name=items loop=$syndata%}<li><a href="{%$syndata[items].surl%}" target="_blank" data-click="
                            {
                                'T': '{%$serverTime%}',
                                'y': '{%$res.identifyStr%}',
                                'rsv_bkjq': 1
                            }
                        ">{%$syndata[items].sword|limitlen:40|highlight:4%}</a></li>{%/section%}{%/if%}{%/function%}{%function name="exportSingleSynword"%}{%section name=items loop=$syndata%}<a href="{%$syndata[items].surl%}" target="_blank" data-click="
                            {
                                'T': '{%$serverTime%}',
                                'y': '{%$res.identifyStr%}',
                                'rsv_bkjq': 1
                            }
                        ">{%$syndata[items].sword|limitlen:40|highlight:4%}</a>{%/section%}{%/function%}{%*输出目录*%}{%function name="exportCatalog"%}{%if $data|count gte 2%}{%$loopmax = 6%}{%if $data|count gt 6%}{%$loopmax = 5%}{%/if%}{%section name=items loop=$data max={%$loopmax%}%}{%if $smarty.section.items.index neq 0%}-{%/if%}<a href="{%$res.offsetInfo.urlEncoded%}{%$data[items].anchor%}" target="_blank" data-click="
                            {
                                'T': '{%$serverTime%}',
                                'y': '{%$res.identifyStr%}',
                                'rsv_bkjq': 1
                            }
                        ">{%$data[items].name|limitlen:10|highlight:4%}</a>{%/section%}{%if $data|count gt 6%}-<a href="{%$res.offsetInfo.urlEncoded%}" target="_blank" data-click="
                            {
                                'T': '{%$serverTime%}',
                                'y': '{%$res.identifyStr%}',
                                'rsv_bkjq': 1
                            }
                        ">查看全部&gt;&gt;</a>{%/if%}{%/if%}{%/function%}<li class="bds-list" id="{%$resIndex%}" tpl="se_as_baike"><h3><a href="{%get_url token=$res.productType originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}" target="_blank" data-click="
                    {
                        'F': '{%$res.strategyStr[0]%}',
                        'F1': '{%$res.strategyStr[1]%}',
                        'F2': '{%$res.strategyStr[2]%}',
                        'F3': '{%$res.strategyStr[3]%}',
                        'T': '{%$serverTime%}',
                        'y': '{%$res.identifyStr%}',
                        'rsv_bkjq': 1
                    }
                ">{%$res.offsetInfo.title|limitlen:60|highlight:2%}</a></h3><div><p>{%if $res.dispData.content1%}{%$res.dispData.content1|limitlen:138|highlight:6%}{%else%}{%$res.offsetInfo.summary|limitlen:138|highlight:6%}{%/if%}</p><div>{%if $res.dispData.synword|count > 0%}<span>其他含义：</span>{%if $res.dispData.synword|count == 1%}{%exportSingleSynword syndata=$res.dispData.synword%}{%else%}<ul style="padding-left:1em;">{%$synwords=$res.dispData.synword%}{%if $synwords|count lte 3%}{%exportSynword syndata=$synwords%}{%else%}{%exportSynword syndata=$synwords ismax=1%}{%/if%}{%*exportSynword data=$res.dispData.synword*%}</ul>{%/if%}{%else%}{%exportCatalog data=$res.dispData.catalog%}{%/if%}</div><p class="showurl"><cite>{%if $res.dispData.DispUrl%}{%$res.dispData.DispUrl|url_bold_html%}{%else%}{%$res.offsetInfo.urlDisplay|url_limit:45:true%}{%/if%}</cite><time>{%display_as_time FactorTimePrecision=$res.dispData.FactorTimePrecision FactorTime=$res.dispData.FactorTime LastModTime=$res.dispData.LastModTime LinkFoundTime=$res.dispData.LinkFoundTime timeShow=$res.timeShow lastModified=$res.offsetInfo.lastModified serverTime=$serverTime%}</time>{%if $res.offsetInfo.code neq '简体'%}{%$res.offsetInfo.code%}{%/if%}{%if strlen($res.snapshootKey) > 0%}{%if $res.docType < 0%}-<a data-nolog href="{%$cache_domain%}/c?{%$res.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" 
                                {%if !($urlPara.ct & 0x40000)%}
                                        target="_blank" 
                                {%/if%}
                            >{%$lable_cache%}</a>{%/if%}{%/if%}</p></div></li>{%/fis_widget%}