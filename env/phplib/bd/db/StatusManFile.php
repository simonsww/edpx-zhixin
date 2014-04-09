<?php
/***************************************************************************
 *   
 *   Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 *   
 ***************************************************************************/
 
 
 
/**
 * @file $FILE NAME$
 * @author $DoxygenToolkit_authorName$
 * @date 2011/01/20 14:19:45
 * @brief  $Revision$
 *  
 */

class Bd_Db_StatusManFile implements Bd_Db_IStatusMan
{
    private $path;

    public function __construct($path)
    {
        $this->path = $path;
        if(!file_exists($path))
        {
            @mkdir($path, 0777, true);
        }
    }

    public function load($host, $port)
    {
        $file = $this->getFile($host, $port);
        if(!file_exists($file))
        {
            return NULL;
        }
        $ret = unserialize(file_get_contents($file));
        return ($ret !== FALSE)?$ret:NULL;
    }

    public function save($host, $port, $status)
    {
        $file = $this->getFile($host, $port);
        return file_put_contents($file, serialize($status)) > 0;
    }

    public function clean($host, $port)
    {
        @unlink($this->getFile($host, $port));
    }

    public function cleanAll()
    {
        $dir = @opendir($this->path);
        if(!$dir)
        {
            return true;
        }
        while(($file = readdir($dir)) !== false)
        {
            @unlink("{$this->path}/$file");
        }
        closedir($dir);
        return true;
    }

    private function getFile($host, $port)
    {
        return $this->path."/$host:$port";
    }
}
/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
