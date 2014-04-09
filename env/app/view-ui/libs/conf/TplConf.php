<?php

// instead of config_load in php extension,
// implements by php raw code.
// 
// by liuting03@

class TplConf
{
	public static function config_load($confdir, $confname, $confrange = NULL) {
		// range of configure is ignored, just take this position in case
		// of undefied function
		if ($confdir == NULL || $confname == NULL) {
			return false;
		}
		
		// remove the redundant tail '/'
		// $confdir = rtrim($confdir, '/');
		// get file content from real path of the conf
		$conffile = $confdir . '/' . $confname;
		$content = file_get_contents($conffile);
		if ($content === false) {
			return false;
		}
		
		// interpret the content
		$confarr = array();
		$subtag = false;
		
		$lines = explode("\n", $content);
		foreach ($lines as $idx => $line) {
			$line = trim($line);
		
			$length = strlen($line);
			$firchar = substr($line, 0, 1);
			
			// ignoring blank white line and annotation '#'
			if ($firchar == '' || $firchar == '#') continue;
			// currently, consider nothing about '[]'
			if ($firchar == '[') { 
				// die() or log()
				CLog::warning("TplConf error: not support array now: file[$conffile]");
				continue;
			}

			// "key : value" branch
			// normally, key is beginning with [a-zA-Z0-9], print warning if not
			// such as, "// k:v", ".k:v", ":v", ":"
			// 
			// "@" encounts
			if ($firchar == '@') {
				// remove the first '@', and tag it as a sub array
				$line = substr($line, 1);
				$subtag = true;
			} else if (!ctype_alnum($firchar)) {
				CLog::warning("TplConf error: firstchar[$firchar]: file[$conffile]");
				continue;
			} else {
				$subtag = false;
			}

			$key = '';
			$val = '';

			// position of ':'
			$colonpos = strpos($line, ':');

			// colon found or not, legal key-value pair
			if ($colonpos === false) {
				// die() or log()
				CLog::warning("TplConf error: ':'not found : file[$conffile]");
				continue;
			}
			
			$key = rtrim(substr($line, 0, $colonpos));
			$val = ltrim(substr($line, $colonpos + 1));

			// key-value enqueue
			if ($subtag == true) {
				// converting next text into an index array
				//    @arrayname : 1
				//    @arrayname : 2
				// => {'arrayname': {[0] => 1, [1] => 2}}
				$confarr[$key][] = $val;
			} else {
				$confarr[$key] = $val;
			}
		}

		return $confarr;
	}
};
	
?>
