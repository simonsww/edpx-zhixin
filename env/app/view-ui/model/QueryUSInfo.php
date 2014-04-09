<?php
/**
 * 查询US的字段集合
 * @author jiachunxin
 *
 */
class QueryUSInfo extends IDLEntity {
	// 版本号
	public $version = 3;
	// 时间
	public $time;
	// 查询串
	public $word;
	public $wordNoSyntax;
	// 其他结果的查询串(类似于知心)
	public $otherResultQuery;
	// 编码格式,无用字段
	public $language = 0;
	// 用户IP
	public $ip;
	public $isInterPage;
	// 是否bws重查
	public $isBwsRetry;
	// 直接设为1了。ctpl 0、php 1
	public $ctpl_or_php = 1;
	// 个人喜好
	public $preference;
	// 登陆用户名
	public $passportUserName;
	// 日文阿拉丁用户自定义数据
	public $JpAlaPre;
	public $codeType;
	// 是否为DEBUG查询
	public $isDebug;
	// 策略名
	public $strategyName;
	// 站点名
	public $siteName;
	public $lastModified;
	// 模板名
	public $templateName;
	// sample id
	public $sid;
	// cookie
	public $cookie;
	// 是否需要特殊库服务
	public $needsp;
	// 第几页
	public $pageNo;
	public $queryId;
	public $beforeUrl;
	// 计费名
	public $accountName;
	// 是否内容类聚
	public $isContCluster;
	// 是否站点内聚
	public $isSiteCluster;
	// 起始位置
	public $pageNum;
	// 请求条数
	public $resNum;
	// 用户需要的结果语言设置
	public $resultLang;
	// 用户需要的结果地域
	public $resultLocale;
	public $urlParam;
	public $requestCode;
	public $usm;
	// url 参数的mcpack二进制包
	public $UrlParaPack;
	// 是否修改广告数量
	public $enalbeModifyUsm;
	// 是否请求US进行结构化和阿拉丁飘红
	public $need_open_disphilight;
	// 是否需要从US获取RSSE结果信息
	public $need_RsSE_result;
	// 是否需要ERS结果
	public $need_ers_result;
	// 是否需要ASP结果
	public $need_asp_result;
	// 是否需要AS结果
	public $need_as_result;
	// 模板中的请求RSSE的command号
	public $template_rsse_command;
	// ERS服务需要的参数
	// 上一次的查询串 baisong
	public $preQueryWord;
	// 用户请求来源 baisong
	public $querySource;
	// 是否内部访问流量
	public $isInternalFlow;
	// 广告ID信息
	public $srcId;
	// RS的模板名
	public $templateForRs;
	// ASP访问需要的参数
	public $beforeQueryId;
	// noscript：判断是否有noscript域，如果其值为1表示不支持js，其他表示支持js；
	public $noscript;
	// cookie_noscript：判断是否有cookie_noscript域，如果其值为1表示不支持js，其他表示支持js；
	public $cookieNoscript;
	// 渠道ID，32个字节，因此CHANNEL_ID_LEN为33个字节
	public $channel;
	// /< come from which RS.(RS id)
	public $rsPos;
	// /< 平台属性,默认为pc
	public $platformName;
	public $is_bws_re;
	public $useragent_full;
	// 360 new switch
	public $confuse_Switch;
	// /< 保护结果数量
	public $protectNum;
	public $ec_src;
	public $php_default_platform;
	// /<url中传递的dsp参数
	public $dspName;
	
	/// UserAgent透传字段
	public $uaFields;

	// queryLang, 国际化需要
	public $query_lang;
	// displayLanguage, 展现语言, 模板选择后的语言, ar-EG/zh-CN等
	public $displayLang;
	
	public $ipv6Address;
	public $refer;
	public $needProtect;
	public $protectPPSwitch;
	public $nojc;
	public $super_se_flag;
	public $isContainPunc;
	public $wordNoPunc;
	public $clusterMod;
	public $wordEnc;
	public $extraStr;
	public $strategy_state;
	public $prompt_flag;
	public $passport_user_id;
	public $need_interleaving;
	public $comeFrom;
	// IS预查询项目新增四个字段
	/**
	 * 
		asp跟ps新增以下4个字段:
		（1）	mod : 标识ps下发流量类型 normal: 0 , pre:1, confirm:2， uint16_t, 默认值为0;
		（2）	cqid : confirm query id,  为本次confirm请求命中的pre预测请求的searchid(ps这边的qid), uint64_t ，默认值为0;
		（3）	isid : IS session id , 标识用户一次session中所有的pre和confirm序列的唯一id值， uint64_t ，默认值为0;
		（4）	chk :  校验字段，uint64_t; 目前低32位传递值为pre_tm ,即本次confirm命中的pre请求的的查询时间, 默认值为0。
		confirm请求： ps发送给asp的请求中，新加以上mod, cqid, isid, chk四个字段;
		pre预测请求： ps 发送给asp的请求中，mod=1, isid进行赋值，cqid和chk字段赋默认值0；
		normal请求： ps发送给asp的请求中，mod=0，其他字段赋默认值0；
	 */
	public $mod;
	public $cqid;
	public $isid;
	public $chk;
	public $f4s;
	//标识是否是IS请求
	public $isbd;
	//用户历史sug
	public $hsug;
	//请求sug服务获取到的sug信息
	public $sug;
	//前端已有cache的query列表
	public $clist;
	//第几次confirm
	public $csq;
	//前端事件策略标识
	public $pstg;
	//是否需要debug信息
	public $isDebugSwitch;
	
	//BFE传下来的的国家字段
	public $country_str;
}
