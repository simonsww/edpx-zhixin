<?php
/**
 * view-ui限制右侧出图个数策略
 * @author zhangzhibiao(zhangzhibiao01@baidu.com)
 * @date: 2014.03.07
 * @brief: 右侧图片行数限制策略,来自ue规范.右侧图片行数最多3行(now).
 */

class RightPicLimit extends Strategy {
    // 限制循环次数,避免死循环
    const MAXLOOPNUM = 10;

    public function run(&$arrData, $arrConf) {
        if (empty ( $arrData ) || !is_array($arrData)) {
            return false;
        }
        // 1. 获取图片限制策略相关配置,主要是行数和每行展现的个数, 区分pc和pad
        $picConf = Util::getConf('/right_pic_limit', 'PICTURE_FIELD');
        $picCountPerLine = 0;
        $maxLineCount = 0;
        $platForm = $arrData['uiControl']['platform'];
        if ($platForm == 'pc') {
            $picCountPerLine = $picConf['PC']['PICTURE_COUNT_PERLINE'];
            $maxLineCount = $picConf['PC']['MAX_PICTURE_LINE'];
        } else {
            $picCountPerLine = $picConf['PAD']['PICTURE_COUNT_PERLINE'];
            $maxLineCount = $picConf['PAD']['MAX_PICTURE_LINE'];
        }
        // 2. get picture regex,这个功能本版暂不实现
        //$picReg = $picConf['reg'];
        // 3. traverse all results, caculating pictures
        $rightResult = & $arrData['uiData']['rightResult']['item'];
        //var_dump($rightResult);
        if (is_array($rightResult) && !empty($rightResult)) {
            $totalLoop = 0;
            $totalLine = 0;
            do {
                $totalLine = 0;
                $maxIdx = 0;
                $maxCount = 0;
                $maxLine = 0;
                foreach ($rightResult as $itemIdx => &$arrItem) {
                    if (empty($arrItem['multi_pic'])) { // has no picture
                        continue;
                    }
                    $picCount = 0;
                    $tplData = &$arrItem['dispData']['resultData']['tplData'];
                    //this->count_pictures($tplData, $picReg, $picCount);
                    // 获取图片个数
                    if (!isset($tplData['list#num#baidu'])) {
                        $picCount = 1 * $picCountPerLine;
                    } else if (isset($tplData['showrow'])) {
                        $picCount = $tplData['showrow'] * $picCountPerLine;
                    } else {
                        $picCount = $tplData['list#num#baidu'];
                    }
                    // 计算图片行数
                    $picLineNum = ceil($picCount / $picCountPerLine);
                    if ($picCount >= $maxCount) {
                        $maxIdx = $itemIdx;
                        $maxCount = $picCount;
                        $maxLine = $picLineNum;
                    }
                    $totalLine += $picLineNum;
                }
                //echo $maxLineCount."\t".$totalLine;
                // 判断是否超出行数限制
                if ($totalLine > $maxLineCount) {
                    //echo "totalline".$totalLine."\tmaxCount:".$maxCount."\t"."maxline:".$maxLine."\n";
                    $tpl = &$rightResult[$maxIdx]['dispData']['resultData']['tplData'];
                    if (isset($tpl['showrow'])) {
                        // 增加隐藏的行
                        if ($tpl['showrow'] > 1) {
                            $tpl['showrow'] = $tpl['showrow'] - 1;
                        }
                    }
                    else { 
                        for ($index = $maxCount - 1;
                             $index >= ($maxLine - 1) * $picCountPerLine;
                             $index--) {
                        // 更新图片个数
                            unset($tpl['list'][$index]);
                            $tpl['list#num#baidu'] = count($tpl['list']);
                        }
                    }
                    $totalLine -= 1;
                }

                $totalLoop += 1;
            } while ($totalLine > $maxLineCount && $totalLoop < self::MAXLOOPNUM);
            //var_dump($rightResult);
        }

        return true;
    }
    
    public function count_pictures($arrData, $reg, &$count = 0) {
        if (empty ( $arrData ) || !is_array($arrData)) {
            return false;
        }
        foreach ($arrData as $idx => $item) {
            if (is_array($item)) {
                $this->count_pictures($item, $reg, $count);
            } else if (preg_match($reg, $item)) {
                $count += 1;
            }
        }
        return true;
    }

}

