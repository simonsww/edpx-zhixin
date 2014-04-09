{%fis_widget%}{%*输出多义词*%}{%function name="exportSynword"%}{%if $ismax eq 1%}{%section name=items loop=$syndata max=2%}<li><a href="{%$syndata[items].surl%}" target="_blank" data-click="
                            {
                                'T': '{%$serverTime%}',
                                'y': '{%$res.identifyStr%}',
                                'rsv_bkjq': 1
                            }
                        ">{%$syndata[items].sword|limitlen:40|highlight:3%}</a></li>{%/section%}<li><a href="{%$res.offsetInfo.urlEncoded%}" target="_blank" style="color:#7a77c8;"  data-click="
                            {
                                'T': '{%$serverTime%}',
                                'y': '{%$res.identifyStr%}',
                                'rsv_bkjq': 1
                            }
                        ">查看全部含义&gt;&gt;</a></li>{%* 查看全部{%$syndata|count%}条含义&gt;&gt;</a></li> *%}{%else%}{%section name=items loop=$syndata%}<li><a href="{%$syndata[items].surl%}" target="_blank" data-click="
                            {
                                'T': '{%$serverTime%}',
                                'y': '{%$res.identifyStr%}',
                                'rsv_bkjq': 1
                            }
                        ">{%$syndata[items].sword|limitlen:40|highlight:3%}</a></li>{%/section%}{%/if%}{%/function%}{%function name="exportSingleSynword"%}{%section name=items loop=$syndata%}<a href="{%$syndata[items].surl%}" target="_blank" data-click="
                            {
                                'T': '{%$serverTime%}',
                                'y': '{%$res.identifyStr%}',
                                'rsv_bkjq': 1
                            }
                        ">{%$syndata[items].sword|limitlen:40|highlight:4%}</a>{%/section%}{%/function%}{%*输出目录*%}{%function name="exportCatalog"%}{%if $data|count >= 2%}{%$loopmax = 6%}{%if $data|count > 6%}{%$loopmax = 5%}{%/if%}{%$slinklength = 0%}{%foreach $data as $foo%}{%*计算子链总长度*%}{%$slinklength = $slinklength + $foo.name|limitlen:20|string_display_len%}{%if $foo@iteration > $loopmax || $slinklength > 60%}{%*如果前N（N≤6）个子链的展现长度之和大于60字节时，则只展现前N-1个子链接+更多*%}{%break%}{%/if%}{%if $foo@iteration !=1%}-{%/if%}<a href="{%$res.offsetInfo.urlEncoded%}{%$foo.anchor%}" target="_blank" data-click="                       
                {
                'rsv_bkjq': 1
                }
                ">{%$foo.name|limitlen:20|highlight:3%}</a>{%/foreach%}{%if $data|count > 6 || $slinklength > 60%}-<a href="{%$res.offsetInfo.urlEncoded%}" target="_blank" data-click="
                            {
                                'T': '{%$serverTime%}',
                                'y': '{%$res.identifyStr%}',
                                'rsv_bkjq': 1
                            }
                        ">更多&gt;&gt;</a>{%/if%}{%/if%}{%/function%}<li class="bds-list" id="{%$resIndex%}" tpl="se_st_baike" mu="{%get_mu originUrl=$res.offsetInfo.url encryptionUrl=$res.encryptionUrl%}"><h3><a href="{%get_url token=$res.productType originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}" target="_blank" data-click="
                    {
                        'F': '{%$res.strategyStr[0]%}',
                        'F1': '{%$res.strategyStr[1]%}',
                        'F2': '{%$res.strategyStr[2]%}',
                        'F3': '{%$res.strategyStr[3]%}',
                        'T': '{%$serverTime%}',
                        'y': '{%$res.identifyStr%}',
                        'rsv_bkjq': 1
                    }
                ">{%$res.offsetInfo.title|limitlen:60|highlight:2%}</a></h3><div><p>{%if $res.dispData.baike.content1%}{%$res.dispData.baike.content1|limitlen:138|highlight:3%}{%else%}{%$res.offsetInfo.summary|limitlen:138|highlight:6%}{%/if%}</p><div>{%if $res.dispData.baike.synword|count > 0%}<span>其他含义：</span>{%if $res.dispData.baike.synword|count == 1%}{%exportSingleSynword syndata=$res.dispData.baike.synword%}{%else%}<ul style="padding-left:1em;">{%$synwords=$res.dispData.baike.synword%}{%if $synwords|count lte 3%}{%exportSynword syndata=$synwords%}{%else%}{%exportSynword syndata=$synwords ismax=1%}{%/if%}{%*exportSynword data=$res.dispData.baike.synword*%}</ul>{%/if%}{%else%}{%exportCatalog data=$res.dispData.baike.catalog%}{%/if%}</div><p class="showurl"><cite>{%if $res.dispData.DispUrl%}{%$res.dispData.DispUrl|host%}{%else%}{%$res.offsetInfo.urlDisplay|host%}{%/if%}/</cite><time>{%display_as_time FactorTimePrecision=$res.dispData.FactorTimePrecision FactorTime=$res.dispData.FactorTime LastModTime=$res.dispData.LastModTime LinkFoundTime=$res.dispData.LinkFoundTime timeShow=$res.timeShow lastModified=$res.offsetInfo.lastModified serverTime=$serverTime%}</time>{%if $res.offsetInfo.code neq '简体'%}{%$res.offsetInfo.code%}{%/if%}{%if strlen($res.snapshootKey) > 0%}{%if $res.docType < 0%}-<a href="{%$cache_domain%}/c?{%$res.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" 
                                {%if !($urlPara.ct & 0x40000)%}
                                        target="_blank" 
                                {%/if%}
                            >{%$lable_cache%}</a>{%/if%}{%/if%}</p></div></li>{%/fis_widget%}