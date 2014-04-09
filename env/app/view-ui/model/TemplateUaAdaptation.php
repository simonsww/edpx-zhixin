<?php

/**
 * User agent Adaptation, for template selection of pad
 * @author chenjinsheng
 *
 */
class TemplateUaAdaptation {
	private static $_instance = null;
	
	private $_ua_string = '';
	protected function __construct($ua) {
		$this->_ua_string = $ua;
	}
	
	public function getInstance($ua = '') {
		if (null === self::$_instance) {
			self::$_instance = new TemplateUaAdaptation($ua);
		}
		return self::$_instance;
	}
	
	public function get_ua_strategy() {
		$arrRes = array('type'=>'', 'tpl'=>'','name'=>'','rollback_name'=>'');
		if (empty($this->_ua_string)) {
			return $arrRes;
		}
		// 全部UA适配策略配置
		$adaptions = Bd_Conf::getConf('tpl_uaadaptation/TEMPLATE_UA_ADAPTATION');
		if (empty($adaptions)) {
			return $arrRes;
		}
		
		$obj = UserAgent::getInstance(VUI_CONF_PATH.'/'.'ualist_exact');
		// 获取下全部的UA字段，包括厂商、机型、操作系统、系统版本号、浏览器、浏览器版本号等等
		$arrFields = $obj->getFieldsFromUA($this->_ua_string);
		
		// 未查到相关字段，不做任何处理
		if (empty($arrFields) || !is_array($arrFields)) {
			return $arrRes;
		}
		// 遍历适配规则，应用命中的策略
		foreach ($adaptions as $perAdapt) {
			if (empty($perAdapt['rule']) || !is_array($perAdapt['rule'])) {
				continue;
			}
			$bHint = true;
			// rule中的字段均是UA所要强制匹配上的
			foreach ($perAdapt['rule'] as $key=>$pattern) {
				if (!preg_match('/'.$pattern.'/', $arrFields[$key])) {
					$bHint = false;
				}
			}
			if (!$bHint) {
				continue;
			}
			// 适配策略的应用目前包括模板类型(baidu/baiduhd)、模板名(page.2.0.tpl)、退化模板名（page.tpl)
			$arrRes['type'] = isset($perAdapt['strategy']['type']) ? trim($perAdapt['strategy']['type']) : '';
			$arrRes['tpl'] = isset($perAdapt['strategy']['tpl']) ? trim($perAdapt['strategy']['tpl']) : '';
			$arrRes['none_tpl'] = isset($perAdapt['strategy']['none_tpl']) ? trim($perAdapt['strategy']['none_tpl']) : '';
			$arrRes['rollback_name'] = isset($perAdapt['strategy']['rollback_name']) ? trim($perAdapt['strategy']['rollback_name']) : '';
			$arrRes['rollback_none_name'] = isset($perAdapt['strategy']['rollback_none_name']) ? trim($perAdapt['strategy']['rollback_none_name']) : '';
            $arrRes['name'] = isset($perAdapt['strategy']['name'])? trim($perAdapt['strategy']['name']):'';  
			break;
		}
		
		return $arrRes;
	}
}
