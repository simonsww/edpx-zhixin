<?php
/** 
 * chenjinsheng@baidu.com
 * CSS合并到头部，JS合并到尾部
 * 2013-10-15
 */
class CssHeadJsFoot {
	public static function getCssJs($type, $arrTplNames, $arrCSSUI) {
		$cssStr = '';
		$jsStr = '';
		$cssUI = '';
		$strLog = '';

		$uiArr = array();
		// 必须去重
		$arrTplNames = array_keys(array_flip($arrTplNames));
		$arrSmartyConf = CSmarty::getConf();
		// 预处理CSS、JS合并，读取文件
		foreach ($arrTplNames as $tpl) {
			$cssjsPath = CSmarty::getHeadCssFootJsPath(VUI_TEMPLATE_PATH, 
				$arrSmartyConf['platform'], 
				$arrSmartyConf['language'], 
				$type,
				$tpl);

			if (!file_exists($cssjsPath)) continue;
			require("{$cssjsPath}");
			
			$strLog .= $tpl.'(';
			$className = 'CssJs_Util_'.$tpl;
			if (class_exists($className) && method_exists($className, 'getHeadCss')) {
				$cssStr .= call_user_func(array($className, 'getHeadCss'));
				if(!empty($cssStr)) $strLog .= 'css,';
			}
			
			if (class_exists($className) && method_exists($className, 'getFootJs')) {
				$jsStr .= call_user_func(array($className, 'getFootJs'));
				if(!empty($jsStr)) $strLog .= 'js,';
			}

			if (class_exists($className) && method_exists($className, 'getCssUI')) {
				$arrUis = call_user_func(array($className, 'getCssUI'));
				if (!empty($arrUis) && is_array($arrUis)) {
					$uiArr = array_merge($uiArr, $arrUis);
					$strLog .= implode('_', $arrUis);
				}
			}
			$strLog .= ')';
		}

		$uiArr = array_unique($uiArr);
		if (!empty($uiArr)) {
			// 通用组件的位置放在大搜索目录下
			foreach($uiArr as $ui) {
				if (empty($arrCSSUI[$ui]['common'])) {
					CLog::warning("Invalid UiCss:$ui");
				} else {
					$cssUI .= $arrCSSUI[$ui]['common'];
				}
			}
		}
		$GLOBALS['logArr']['merge'] = $strLog;

		return array('cssMerge'=>$cssUI.' '.$cssStr, 'jsMerge'=>$jsStr);
	}
}
