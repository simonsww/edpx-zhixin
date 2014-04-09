<?php

/**
 * TimerGroup - 计时器组，用于综合控制多个定时器
 *
 * @author: zhangdongjin@baidu.com
 */

class Bd_TimerGroup
{
    private $arrTimer = array();
    private $precision;

    /** 
     * 构造函数
     * 
     * @param [in] $precision: int
     *              返回精度，支持ms和s精度，默认为ms
     */
    function __construct($precision = Bd_Timer::PRECISION_MS)
    {
        $this->precision = $precision;
    }

    /** 
     * 重置定时器组
     * 
     * @param [in] $completely:
     *              是否完全重置
     *              true  - 销毁所有定时器
     *              false - 重置所有定时器
     */
    function reset($completely = false)
    {
        if($completely)
        {
            $this->arrTimer = array();
            return;
        }
        foreach($this->arrTimer as $timer)
        {
            $timer->reset();
        }
    }

    /** 
     * 启动指定定时器
     * 
     * @param [in] $strName: string
     *              定时器名称
     *
     * @return true  - ok
     *         false - 指定定时器已启动
     *
     * @note 自动创建不存在的定时器
     */
    function start($strName)
    {
        if(!array_key_exists($strName, $this->arrTimer))
        {
            $this->arrTimer[$strName] = new Bd_Timer(true, $this->precision);
            return true;
        }
         else
        {
            return $this->arrTimer[$strName]->start();
        }
    }

    /** 
     * 停止指定定时器
     * 
     * @param [in] $strName: string
     *              定时器名称
     *
     * @return int   - 指定定时器本阶段的计时，精度同定时器设置
     *         false - 指定定时器不存在
     */
    function stop($strName)
    {
        if(!array_key_exists($strName, $this->arrTimer))
        {
            return false;
        }
        return $this->arrTimer[$strName]->stop();
    }

    /** 
     * 获取总计时时间
     * 
     * @param [in] $strName: string
     *              定时器名称，null表示获取所有定时器的时间
     *
     * @param [in] $precision: int
     *              返回精度，支持ms/s，默认为定时器精度
     *
     * @return array - (定时器名 => 计时)的数组
     *         int   - 指定定时器的计时
     *         false - 指定定时器不存在
     */
    function getTotalTime($strName = null, $precision = null)
    {
        if($strName !== null)
        {
            if(!array_key_exists($strName, $this->arrTimer))
            {
                return false;
            }
            return $this->arrTimer[$strName]->getTotalTime($precision);
        }

        $arrTime = array();
        foreach($this->arrTimer as $name => $timer)
        {
            $arrTime[$name] = $timer->getTotalTime($precision);
        }
        return $arrTime;
    }
}
