<?php
/**
 *
 *
 * @file function.import_js.php
 * @package plugins
 * @author wangpeng20@baidu.com
 * @date 2012-12-17 10:47
 */
    function importTangram($files, $returnFile = true,&$config){
//        global $MATCHED, $DEBUG, $IMPORTED;
        $MATCHED=&$config['MATCHED'];
        $DEBUG=&$config['DEBUG'];
        $IMPORTED=&$config['IMPORTED'];
        $output = "";

        if(is_string($files)){
            $files = array($files);
        }else if(!is_array($files)){
            return $output;
        }
        if($DEBUG)
            var_dump($files);
        foreach($files as $file){
            if(strrpos($file, '*')){
                $output .= importTangram(getPackage(str_replace(array(".", '*'), array('/', ''), $file)), true,$config);
            }elseif(in_array($file, $IMPORTED)){
                continue;
            }else{
                $IMPORTED[] = $file;

                //            echo "file name:".$file."\n";
                $file = str_replace(".", '/', $file) . ".js";
                //          echo "file name:".$file."\n";
                //        echo "\n";

                if($DEBUG)
                    echo "Importing: " . $file . ", returnFile $returnFile\n";
                if(!in_array($file, $MATCHED)){
                    $content = file_get_contents(getRealFilePath($file,$config['PATH']));
                    if(!$content){
                        if($DEBUG)
                            echo "no content... \n;";
                        continue;
                    }
                    $MATCHED[] = $file;
                    $matches = array();
                    //去掉注释
                    $content = trim(preg_replace("/\/\*(.*?)\*\//ies", "", $content));
                    $output .= preg_replace("/\/\/\/import\s+([\w\-\$]+(\.[\w\-\$]+)*);?/ies", "importTangram('\\1',true,\$config)", $content);

                }
            }
        }
        return $output;
    }

    function getRealFilePath($filename,$path){
//        global $PATH;

//        $path = $PATH;
        //把当前目录放到最前面
        array_unshift($path, "./");
        //echo $filename."\n";
        foreach($path as $eachPath){
            if(@file_exists($eachPath . $filename)){
                return $eachPath . $filename;
            }
        }
    }

    function getPackage($packagePath){
        $files = array();
        //echo "package Path:".$packagePath."\n";
        if ($handle = opendir(getRealFilePath($packagePath))) {
            while ($file = readdir($handle)) { 
                if(strrpos($file, ".js") && substr($file,0,1) != ".")
                    $files[] = substr($packagePath . $file, 0, -3); //把最后的.js去掉，适应importTangram的输入
            }
            // print_r($files); 
            closedir($handle); 
        }
        return $files;
    }
