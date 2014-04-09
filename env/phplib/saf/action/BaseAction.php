<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 
 
 
/**
 * @file BaseAction.php
 * @author niuyunkun(niuyunkun@baidu.com)
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/07/04 15:41:41
 * @version $Revision$ 
 * @brief 通用业务逻辑基类
 *  
 **/
abstract class Saf_Action_BaseAction {
    const DICT_READ = 1; 					/**< 当前数据可读       */
    const DICT_WRITE = 3; 					/**< 当前数据可写       */

    const REQUEST_PARAM = 'request_param';  /**< 字典：接收到的POST GET数据                 */
    const ADAPT_INFO = 'adapt_info';        /**< 字典：终端适配信息                         */
    const USER_INFO = 'user_info';          /**< 字典：登录者用户信息                       */
    const PUBLIC_PARAM = 'public_param';    /**< 字典：公共字典                             */
    const LOG_NOTICE = 'log_notice';        /**< 字典：要保存的LOG                          */
    const SAVE_PASSPORT = 'save_passport';  /**< 字典：session回写数据                      */
    const PASS_LOGA = 'pass_loga';          /**< 字典：保存用于进行隐含登录的前端所需数据   */

    //字典仓库
    protected static $arrDict = array(
        self :: REQUEST_PARAM   => array('data' => array(), 'status' => self :: DICT_READ),  //CGI数据(cgi流程)
        self :: ADAPT_INFO      => array('data' => array(), 'status' => self :: DICT_READ),  //适配数据（adapt流程）
        self :: USER_INFO       => array('data' => array(), 'status' => self :: DICT_READ),  //SESSION数据(session/loga/uuap流程)
        self :: SAVE_PASSPORT   => array('data' => array(), 'status' => self :: DICT_WRITE), //向pass回写数据（session/loga流程）
        self :: PUBLIC_PARAM    => array('data' => array(), 'status' => self :: DICT_WRITE), //公用变量（public流程）
        self :: LOG_NOTICE      => array('data' => array(), 'status' => self :: DICT_WRITE), //LOG数据（log流程）
        self :: PASS_LOGA       => array('data' => array(), 'status' => self :: DICT_READ),  //PASS_LOGA数据（loga流程）
    );

    /**
     * @brief 设置字典内容
     *
     * @param $type-字典类型
     *       （REQUEST_PARAM/ADAPT_INFO/USER_INFO/PUBLIC_PARAM/LOG_NOTICE/SAVE_PASSPORT/PASS_LOGA）
     * @param $arrValue-字典内容
     * @return success-true failed-false
     * @retval boolean
     * @author niuyunkun 
     * @date 2012/07/06
    **/
    protected static function __setDict($type, $arrValue) 
    {
        if (!is_array($arrValue)) 
        {
            Saf_SmartMain :: setSafLog("当前写入字典的变量不是数组(" . var_export($arrValue, true) . ")", 0);
            return false;
        }
        if (self :: DICT_WRITE === (self :: $arrDict[$type]['status'] & self :: DICT_WRITE)) 
        {
            self :: arrSuperMerge( self :: $arrDict[$type]['data'], $arrValue );
            return true;
        }
        Saf_SmartMain :: setSafLog("没有写字典({$type})的权限", 0);
        return false;
    }

    /**
     * @brief 获取字典内容
     *
     * @param $type-字典类型
     *       （REQUEST_PARAM/ADAPT_INFO/USER_INFO/PUBLIC_PARAM/LOG_NOTICE/SAVE_PASSPORT/PASS_LOGA）
     * @return success-array failed-false
     * @retval array/boolean
     * @author niuyunkun 
     * @date 2012/07/06
    **/
    protected static function __getDict($type) 
    {
        if (self :: DICT_READ === (self :: $arrDict[$type]['status'] & self :: DICT_READ))
        {
            return self :: $arrDict[$type]['data'];
        } 
        else 
        {
            Saf_SmartMain ::setSafLog("没有写字典(" . $type . ")的权限", 0);
            return false;
        }
    }

    /**
     * @brief 增强多维数组合并，将&$arrHistoryLog数组中array类型的key全部展开成K-V形式
     *        并平行储存于&$arrHistoryLog对应数组中
     *
     * @param arrat &$arrHistory
     * @param array &$arrInputValue
     * @return 失败false
     * @author cuichao02
     * @date 2012/07/06
    **/
    protected function arrSuperMerge(&$arrHistoryLog, &$arrValue)
    {
        if (!is_array($arrHistoryLog)) 
        {
            $arrHistoryLog = array();
        }
        foreach ($arrValue as $k=>&$v)
        {
            if (!is_array($v)) 
            {
                $arrHistoryLog[$k] = $v;
            }
            else 
            {
                self :: arrSuperMerge($arrHistoryLog[$k], $v);
            }
        }
    }

    protected $objHook;           /**< Hook对象                                         */
    protected $actionDict;        /**< 由子类设置指定actionStartUpInit函数中字典的名字  */

    /**
     * @brief 由子类的construct函数调用，初始化$this->objHook对象
     *
     * @param  string $actionName action名字符串与配置文件对应
     * @see 各子类的__construct()
     * @author chenyijie
     * @date 2012/10/15 19:49:12
    **/
    protected function actionConstruct($actionName)
    {
        $arrHook = Saf_SmartMain :: getHook();
        if (count($arrHook) > 0 && isset($arrHook[$actionName]))
        {
            $hookClassName = $arrHook[$actionName];
            if (class_exists($hookClassName))
            {
                $this->objHook = new $hookClassName();
            }
            else
            {
                Saf_SmartMain :: setSafLog( "class (".$hookClassName.") does not exist", 2 );
            }
        }
    }    

    /**
     * @brief 执行子类actionStartUp()接口之前需要运行的逻辑
     *
     * @see Saf_SmartMain::adapterStart()
     * @note 设置$this->actionDict指定的字典为可写状态，调用用户自定义Hook类的hookStartUpHead()接口
     * @author chenyijie
     * @date 2012/10/15 19:53:34
    **/
    public function actionStartUpInit()
    {
        //开启字典写权限 
        if (isset($this->actionDict))
        {
            self :: $arrDict[self :: $this->actionDict]['status'] = self :: DICT_WRITE;
        }
        //执行用户自定义Hook
        if (is_object($this->objHook))
        {
            $this->objHook->hookStartUpHead();
        }
    }

    /**
     * @brief 执行子类actionStartUp()接口之后需要运行的逻辑
     *
     * @see Saf_SmartMain::adapterStart()
     * @note 调用用户自定义Hook类的hookStartUpTail()接口,设置$this->actionDict指定的字典为只读状态
     * @author chenyijie
     * @date 2012/10/15 19:53:34
    **/
    public function actionStartUpFinish()
    {
        //执行用户自定义Hook
        if (is_object($this->objHook))
        {
            $this->objHook->hookStartUpTail();
        }
        //关闭字典写权限
        if (isset($this->actionDict))
        {
            self :: $arrDict[self :: $this->actionDict]['status'] = self :: DICT_READ;
        }
    }

    /**
     * @brief 执行子类actionShutDown()接口之前需要运行的逻辑
     *
     * @see Saf_SmartMain::adapterEnd()
     * @note 调用用户自定义Hook类的hookShutDownHead()接口
     * @author chenyijie
     * @date 2012/10/15 19:53:34
    **/
    public function actionShutDownInit()
    {
        //执行用户自定义Hook
        if (is_object($this->objHook))
        {
            $this->objHook->hookShutDownHead();
        }
    }

    /**
     * @brief 执行子类actionShutDown()接口之后需要运行的逻辑
     *
     * @see Saf_SmartMain::adapterEnd()
     * @note 调用用户自定义Hook类的hookShutDownTail()接口
     * @author chenyijie
     * @date 2012/10/15 19:53:34
    **/
    public function actionShutDownFinish()
    {
        //执行用户自定义Hook
        if (is_object($this->objHook))
        {
            $this->objHook->hookShutDownTail();
        }
    }
    
    /**
     * @brief 子类必须实现的接口在每个app中的Action被初始化之前调用
     *        SAF各流程的主逻辑
     *
     * @return  true/false 
     * @retval  bool 
     * @note 此接口返回值不具意义 
     * @author chenyijie
     * @date 2012/10/11 18:49:23
    **/
    public abstract function actionStartUp();

    /**
     * @brief 子类必须实现的接口在每个app中的Action逻辑执行完成之后调用
     *        SAF各流程的主逻辑
     *
     * @return  true/false
     * @retval  bool
     * @note 此接口返回值不具意义
     * @author chenyijie
     * @date 2012/10/11 18:49:35
    **/
    public abstract function actionShutDown();

}

/* vim: set ts=4 sw=4 sts=4 tw=100 */
