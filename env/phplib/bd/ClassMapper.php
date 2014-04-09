<?php
/**
 * brief of ClassMapper.php:
 * 
 * 扫描目录生成类映射数据，用于配合Bd_Autoloader的自动加载。
 * 移植自Bingo1以及贴吧club的自动加载。
 * 
 * @author zhangdongjin(zhangdongjin@baidu.com)
 * @date 2011/11/23 14:40:05
 * @version $Revision: 1.6 $ 
 * @todo 
 */

class Bd_ClassMapper
{
    /**
     * @brief   对给定的一组目录，找出其中所有的类到文件的关系映射
     *
     * @params  $dirs - 目录数组
     * @return  array
     * @retval  array(
     *              'class1' => '/xxx/xxx/xxx/xx.php'
     *              'class2' => '/xxx/xxx/xxx/xx.php'
     *              ...
     *              )
     **/
    public static function buildMap($arrDirs)
    {
        if(is_string($arrDirs))
        {
            $arrDirs = array($arrDirs);
        }

        $arrClasses = array();

        foreach($arrDirs as $dir)
        {
            if($dir{strlen($dir) - 1} == '/')
            {
                $dir = substr($dir, 0, strlen($dir) - 1);
            }
            $files = self::__getAllFilesRecu($dir);
            $classes = self::__buildClassPath($files);
            $arrClasses = array_merge($arrClasses, $classes);
        }
        return $arrClasses;
    }

    /**
     * @brief   对给定的一组文件，找到其中存在的class并得到class->file的映射 
     *
     * @return  private static function 
     * @retval   
     * @date 2009/07/09 11:49:34
     **/
    private static function __buildClassPath($files)
    {
        $classPath = array();
        foreach($files as $per)
        {
            // 检查文件后缀
            $tail = substr($per, -4);
            if($tail != '.php' && $tail != '.inc')
            {
                continue;
            }

            // 正则匹配出类和接口
            preg_match_all('~^\s*(?:abstract\s+|final\s+)?(?:class|interface)\s+(\w+)~mi',
                file_get_contents($per), $res);
            if(count($res[1]) == 0)
            {
                continue;
            }

            // 处理每个类或接口
            foreach($res[1] as $value)
            {
                $tmp = trim($value);
                if($tmp !== '')
                {
                    if(isset($classPath[$tmp]))
                    {
                        trigger_error("classname '$tmp' conflict: '$per' and '{$classPath[$tmp]}' !", E_USER_ERROR);
                    }
                    $classPath[$tmp] = $per;
                }
            }
        }
        return $classPath;
    }

    /**
     * @brief 递归获取文件夹下的所有文件
     * @desc  考虑到php本身对递过层次的限制，为避免core dump，此处采用广搜遍历
     *
     * @return  private static function 
     * @retval   
     * @date 2009/07/09 11:52:32
     **/
    private static function __getAllFilesRecu($dir)
    {
        $first = 0;
        $last = 1;
        $queue = array($dir);
        $files = array();
        while($first < $last) 
        {
            $value = $queue[$first++];
            if(!is_dir($value))
            {
                if(is_file($value))
                {
                    array_push($files,$value);   
                }
            }
            else
            {
                $arr = scandir($value);
                if($arr === false)
                {
                    continue;
                }
                foreach($arr as $per)
                {
                    if($per{0} == '.')
                    {
                        continue;
                    }
                    $tmp = $value."/".$per;
                    $queue[$last++] = $tmp;
                }
            }
        }
        return $files;
    }
}

?>
