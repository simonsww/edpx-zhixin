<?php

function smarty_modifier_isUrl($url)
{
    return preg_match("/^(http:\/\/)?([a-zA-Z0-9-_]+\.){1,4}(mobi|com|cn|org|net|edu|gov)$/",$url);
}

/* vim: set expandtab: */

?>
