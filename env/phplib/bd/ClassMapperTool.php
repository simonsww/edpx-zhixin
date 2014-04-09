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

class Bd_ClassMapperTool
{
    public static function export($arrDirs)
    {
        var_export(Bd_ClassMapper::buildMap($arrDirs));
    }
}

Bd_Init::init();
array_shift($argv);
Bd_ClassMapperTool::export($argv);

?>
