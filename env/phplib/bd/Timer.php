<?php

/**
 * Timer - 计时器，可选ms/s级精度，支持累加
 *
 * @author: zhangdongjin@baidu.com
 * @note: 内部采用us计时，不会导致累加误差
 */

class Bd_Timer
{
    const PRECISION_MS = 1;
    const PRECISION_S = 2;
    const PRECISION_US = 3;

    private $begTime = 0;
    private $timeUsed = 0;
    private $stopped = true;
    private $precision;

    /** 
     * 构造函数
     * 
     * @param [in] $start: bool
     *              是否立即开始计时
     * @param [in] $precision: int
     *              返回精度，支持ms和s精度，默认为ms
     */
    function __construct($start = false, $precision = Bd_Timer::PRECISION_MS)
    {
        $this->precision = $precision;

        if($start)
        {
            $this->start();
        }
    }

    
    /** 
     * start timer
     * 
     * 启动定时器
     * 
     * @return boolean
     * @note 对已启动定时器执行本函数将会失败
     * @see stop()
     */ 
    function start()
    {
        if(!$this->stopped)
        {
            return false;
        }

        $this->stopped = false;
        $this->begTime = self::getTimeStamp(self::PRECISION_US);
        return true;
    }

    /** 
     * stop timer
     * 
     * 暂停定时器
     * 
     * @return boolean/int
     *          false - 失败
     *          >= 0  - 本阶段计时的时间，为定时器精度
     * @note 对已暂停定时器执行本函数将会失败
     * @see start()
     */
    function stop()
    {
        if($this->stopped)
        {
            return false;
        }

        $this->stopped = true;
        $thisTime = self::getTimeStamp(self::PRECISION_US) - $this->begTime;
        $this->timeUsed += $thisTime;

        switch($this->precision)
        {
        case self::PRECISION_MS:
            return intval($thisTime/1000);

        case self::PRECISION_S:
            return intval($thisTime/1000000);

        default:
            return $thisTime;
        }
    }

    /** 
     * reset timer
     * 
     * 重置定时器
     */
    function reset()
    {
        $this->begTime = 0;
        $this->timeUsed = 0;
        $this->stopped = true;
    }

    /** 
     * 获取累积时间
     * 
     * @param [in] $precision: int
     *              返回精度，支持ms和s精度，默认为定时器精度
     * @return int
     */
    function getTotalTime($precision = null)
    {
        if($precision === null)
        {
            $precision = $this->precision;
        }

        switch($precision)
        {
        case self::PRECISION_MS:
            return intval($this->timeUsed/1000);

        case self::PRECISION_S:
            return intval($this->timeUsed/1000000);

        default:
            return $this->timeUsed;
        }
    }

    /** 
     * 获取当前时间戳
     * 
     * @param [in] $precision: int
     *              返回精度，支持us/ms/s，默认为ms
     * @return int
     */
    static function getTimeStamp($precision = Bd_Timer::PRECISION_MS)
    {
        switch($precision)
        {
        case Bd_Timer::PRECISION_MS:
            return intval(microtime(true)*1000);

        case Bd_Timer::PRECISION_S:
            return time();

        case Bd_Timer::PRECISION_US:
            return intval(microtime(true)*1000000);

        default:
            return 0;
        }
    }
}
