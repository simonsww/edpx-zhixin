<?php
/**
 * idl实体的父类
 * 目前只是简单实现了实体到数组、实体到mcpack包的转换
 * @author jiachunxin
 *
 */
class IDLEntity {
	/**
	 * 实体的对象转换为mcpack包
	 *
	 * @return array 转换后的数组
	 */
	public function toMcpack() {
		$arr = $this->_value ( $this );
		$ret = Util::mcpack_normal ( $arr );
		if ($ret === false) {
			return false;
		}
		return mc_pack_array2pack ( $ret );
	}
	
	/**
	 * 实体的对象转换为数组函数
	 *
	 * @return array 转换后的数组
	 */
	public function toArray() {
		return $this->_value ( $this );
	}
	
	private function _value($value) {
		if (is_object ( $value )) {
			$arrResult = ( array ) $value;
			return $this->_value ( $arrResult );
		} elseif (is_array ( $value )) {
			$arrResult = array ();
			foreach ( $value as $k => $v ) {
				$arrResult [$k] = $this->_value ( $v );
			}
			return $arrResult;
		} else {
			return $value;
		}
	}
	
	/**
	 * 从数据中填充数据,支持递归
	 *
	 * @param $arrData array
	 *       	 数据
	 * @return bool 是否填充成功
	 */
	public function loadFromArray($data) {
		if (is_object ( $data )) {
			$data = ( array ) $data;
		}
		if (! is_array ( $data )) {
			return false;
		}
		$arrClassVars = get_class_vars ( get_class ( $this ) );
		foreach ( $data as $key => $value ) {
			if (! array_key_exists ( $key, $arrClassVars )) {
				continue;
			}
			if (is_object ( $this->$key )) {
				$this->$key->loadFromArray ( $value );
			} else {
				if (is_object ( $value )) {
					$this->loadFromArray ( $data );
				} else {
					if (is_array ( $value )) {
						$this->$key = $value;
					} else {
						$this->$key = $value;
					}
				}
			}
		}
		return true;
	}
}