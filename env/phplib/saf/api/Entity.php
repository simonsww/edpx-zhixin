<?php
/**
 * @copyright Copyright (c) www.baidu.com
 * @author张天鸿 zhangtianhong@baidu.com
 * @date 2011-8-9
 * @version 
 */
class Saf_Api_Entity {

    /**
     * 实体的对象转换为数组函数
     * @return array 转换后的数组
     */
    public function toArray(){
        return $this->_value($this);
    }

    private function _value($value) {
        if (is_object($value)) {
            $arrResult = (array) $value;
            return $this->_value($arrResult);
        } elseif (is_array($value)) {
            $arrResult = array();
            foreach ($value as $k => $v) {
                $arrResult[$k] = $this->_value($v);
            }
            return $arrResult;
        } else {
            return $value;
        }    
    }

    /**
     * 从数据中填充数据,支持递归
     * @param array $arrData 数据
     * @return bool 是否填充成功
     */
    public function loadFromArray($data) {
        if (is_object($data)) {
            $data = (array) $data;
        }
        if (!is_array($data)) {
            return false;
        }
        $arrClassVars = get_class_vars(get_class($this));
        foreach ($data as $key => $value) {
            if (!array_key_exists($key,$arrClassVars)) {
                continue;
            }
            if (is_object($this->$key)) {
                $this->$key->loadFromArray($value);
            } else {
                if (is_object($value)) {
                    $this->loadFromArray($data);
                } else {
                    if (is_array($value)) {
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

/* vim: set ts=4 sw=4 sts=4 tw=100 */
