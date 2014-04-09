{%*
* @fileOverview 中间页模板-公共变量
* @author       刘悦
* @version      1.0
* @date         2012/12/11
*%}{%* 全局变量定义 *%}{%$searchAction = '/s' scope='global'%}{%$serverTime = $tplData.queryInfo.listTime scope='global'%}{%$productEncKey = $tplData.queryInfo.productEncKey scope='global'%}{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}{%$queryUbs = $tplData.queryInfo.pQueryMap.ubs scope='global'%}{%$querySymbol = $tplData.queryInfo.pQueryMap.symbol scope='global'%}{%$queryNopunc = $tplData.queryInfo.pQueryMap.nopunc scope='global'%}{%$queryEnc = $tplData.queryInfo.wordNoSyntaxEncoded scope='global'%}{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}{%$pageNo = $tplData.queryInfo.pageNo scope='global'%}{%$queryId = $tplData.queryInfo.queryId scope='global'%}{%$pageEncoding = $tplData.queryInfo.outputEncode scope='global'%}{%$queryEncoding = $urlPara.ie scope='global'%}{%$resIndex = ($pageNo-1)*$tplData.queryInfo.resNum+1 scope='global'%}{%$needubs = '1' scope='global'%}{%* 通用文本、样式 *%}{%$style_link_color = '#0000cc' scope='global'%}{%$lable_html_title = '_百度搜索' scope='global'%}{%$lable_submit_value = '百度一下' scope='global'%}{%$lable_foot_year = "{%date('Y')%}" scope='global'%}{%$lable_foot_word = '此内容系百度根据您的指令自动搜索的结果，不代表百度赞成被搜索网站的内容或立场' scope='global'%}{%$lable_help = '帮助' scope='global'%}{%$lable_pre_page = '上一页' scope='global'%}{%$lable_for_page = '下一页' scope='global'%}{%$logo = '<img src="http://www.baidu.com/img/baidu_jgylogo3.gif" width="117" height="38" border="0" alt="到百度首页" title="到百度首页">' scope='global'%}{%* 提示 *%}{%$topHint = $tplData.asResult.topHint scope='global'%}{%$bottomHint = $tplData.asResult.bottomHint scope='global'%}{%$hint_filter_fornone = '搜索结果可能不符合相关法律法规和政策，未予显示。建议尝试其他相关词。' scope='global'%}{%$hint_filter_fornone_baidurt = '根据相关法律法规和政策，部分搜索结果未予显示。' scope='global'%}{%$hint_none_part1 = '抱歉，没有找到与<span style="font-family:宋体">“</span>' scope='global'%}{%$hint_none_part2 = '<span style="font-family:宋体">”</span>相关的' scope='global'%}{%$hint_none_part3 = '微博结果。' scope='global'%}{%$hint_baidurt_none_part3 = '网页结果。' scope='global'%}{%$hint_baidurt_none_part4 = '新闻结果。' scope='global'%}{%$hint_baidurt_none_part5 = '论坛结果。' scope='global'%}{%$hint_baidurt_none_part6 = '博客结果。' scope='global'%}{%$hint_baidurt_none_part7 = '视频结果。' scope='global'%}{%$hint_none_part4 = '建议：' scope='global'%}{%$hint_none_part5 = '阅读' scope='global'%}{%$hint_none_part6 = '帮助' scope='global'%}{%$hint_none_part7 = '检查输入是否正确' scope='global'%}{%$hint_none_part8 = '简化输入词' scope='global'%}{%$hint_none_part9 = '尝试其他相关词，如同义、近义词等' scope='global'%}{%$hint_onlysyb_part1 = '<span style="font-family:宋体">“</span>' scope='global'%}{%$hint_onlysyb_part2 = '<span style="font-family:宋体">”</span>不在查询范围内，建议尝试其他相关词。' scope='global'%}{%$hint_amount_and_time_part1 = '百度为您找到相关结果' scope='global'%}{%$hint_amount_and_time_part2 = '约' scope='global'%}{%$hint_amount_and_time_part3 = '个' scope='global'%}{%$hint_search_part1 = '提示：为了提供最相关的结果，我们省略了一些内容相似的条目，' scope='global'%}{%$hint_search_part2 = '点击这里' scope='global'%}{%$hint_search_part3 = '可以看到所有搜索结果。' scope='global'%}{%$hint_searchbytime_part1 = '您现在选择的是在时间段内进行搜索，' scope='global'%}{%$hint_searchbytime_part2 = '点击此处' scope='global'%}{%$hint_searchbytime_part3 = '查看全部搜索结果' scope='global'%}{%$hint_searchbyzone_part1 = '您现在选择的是在地区内进行搜索，' scope='global'%}{%$hint_searchbyzone_part2 = '点击此处' scope='global'%}{%$hint_searchbyzone_part3 = '查看互联网全部搜索结果' scope='global'%}{%$hint_omit = '提示：限于网页篇幅，部分结果未予显示。' scope='global'%}{%* URL加密 *%}{%$resToken["tieba"] = ($tplData.templateConfig.token_tieba=="1") scope='global'%}{%$resToken["zhidao"] = ($tplData.templateConfig.token_zhidao=="1") scope='global'%}{%$resToken["baike"] = ($tplData.templateConfig.token_baike=="1") scope='global'%}{%$resToken[""] = false scope='global'%}{%$urlEncryption = ($tplData.templateConfig.URLEncryption=="1")?true:false scope='global'%}{%$urlEncMaxLen = ($tplData.templateConfig.urlEncMaxLen)?$tplData.templateConfig.urlEncMaxLen:2000 scope='global'%}{%* 域 *%}{%$static_domain = 'http://s1.bdstatic.com/r/www' scope='global'%}{%$www_domain = 'http://www.baidu.com' scope='global'%}{%$news_domain = 'http://news.baidu.com' scope='global'%}{%$music_domain = 'http://music.baidu.com' scope='global'%}{%$image_domain = 'http://image.baidu.com' scope='global'%}{%$ikown_domain = 'http://zhidao.baidu.com' scope='global'%}{%$tieba_domain = 'http://tieba.baidu.com' scope='global'%}{%$video_domain = 'http://video.baidu.com' scope='global'%}{%$baike_domain = 'http://baike.baidu.com' scope='global'%}{%$map_domain = 'http://map.baidu.com' scope='global'%}{%$wenku_domain = 'http://wenku.baidu.com' scope='global'%}{%$more_domain = 'http://www.baidu.com/more/' scope='global'%}{%$c_domain = 'http://c.baidu.com' scope='global'%}{%$ubs_domain = 'http://sclick.baidu.com' scope='global'%}{%$ubs_url = '/w.gif' scope='global'%}{%$suggestion_src = 'http://www.baidu.com/cache/sug/js/bdsug-1.1.js' scope='global'%}{%* 静态文件地址 类型名_模块名_功能名	请写【绝对路径】 *%}{%* JS部分  *%}{%$JS_WEIBO_RESULT = '/cache/midpage/baiduwb/js/weibo.js' scope='global'%}{%$JS_TANGRAM = '/cache/midpage/js/tangram_base.js' scope='global'%}{%* CSS部分 *%}{%* IMG部分 *%}{%$IMG_WWW_ALL = '/img/i-1.0.0.png' scope='global'%}{%$IMG_WEIBO = '/cache/midpage/baiduwb/img/weibo-1.0.gif' scope='global'%}{%* 以下参数UI已经进行过滤，配置xss白名单 *%}{%$urlArgs.cl = ($urlPara.cl != 3)?"&cl=`$urlPara.cl`":""  scope='global'%} {%$urlArgs.ct = ($urlPara.ct != 0) ? "&ct=`$urlPara.ct`":"" scope='global'%}{%$urlArgs.tn = ($urlPara.tn != 'baidu') ? "&tn=`$urlPara.tn`":"" scope='global'%}{%$urlArgs.rn = ($urlPara.rn != 10) ? "&rn=`$urlPara.rn`":"" scope='global'%}{%$urlArgs.ie = ($urlPara.ie != 'gb2312') ? "&ie=`$urlPara.ie`":"" scope='global'%}{%$urlArgs.lm = ($urlPara.lm != 0) ? "&lm=`$urlPara.lm`":"" scope='global'%}{%$urlArgs.si = (strlen($urlPara.si) > 0) ? "&si=`$urlPara.si`":"" scope='global'%}{%$urlArgs.z_type = ($urlPara.z_type == 3) ? "&z=`$urlPara.z|vui_escape:'url'`":"" scope='global'%}{%$urlArgs.ch = ($urlPara.ch != 0) ? "&ch=`$urlPara.ch`":"" scope='global'%}{%$urlArgs.f = ($urlPara.f == 1 || $urlPara.f == 3)?"&f=`$urlPara.f`":""  scope='global'%} {%$urlArgs.rtt = ($urlPara.rtt)?"&rtt=`$urlPara.rtt|vui_escape:'url'`":""  scope='global'%} {%$urlArgs.bsst = ($urlPara.bsst)?"&bsst=`$urlPara.bsst|vui_escape:'url'`":""  scope='global'%}{%$urlArgs.wb = ($urlPara.wb)?"&wb=`$urlPara.wb`":""  scope='global'%} {%$urlArgs.oe = ($urlPara.oe)?"&oe=`$urlPara.oe`":""  scope='global'%}{%$urlArgs.usm = ($urlPara.usm !=0) ? "&usm=`$urlPara.usm`":"" %}{%* 以下参数UI未进行过滤，需要转义 *%}{%$urlArgs.sts= (strlen($urlPara.sts) > 0) ? "&sts=`$urlPara.sts|vui_escape:'html'|vui_escape:'url'`":"" scope='global'%}{%$urlArgs.vit = ($urlPara.vit) ? "&vit=`$urlPara.vit|vui_escape:'html'|vui_escape:'url'`":"" scope='global'%}{%$urlArgs.dsp = ($urlPara.dsp) ? "&dsp=`$urlPara.dsp|vui_escape:'html'|vui_escape:'url'`":"" scope='global'%}{%$isOldSnapshootOn = ($tplData.templateConfig.isOldSnapshootOn=="1")?true:false scope='global'%}{%$cache_domain = 'http://cache.baiducontent.com' scope='global'%}{%$queryUbs = $tplData.queryInfo.pQueryMap.ubs|vui_escape:'html'|vui_escape:'url' scope='global'%}{%$queryId = $tplData.queryInfo.queryId|vui_escape:'html'|vui_escape:'url' scope='global'%}{%$resIndex = ($pageNo-1)*$tplData.queryInfo.resNum+1 scope='global'%}{%$lable_cache = '百度快照' scope='global'%}