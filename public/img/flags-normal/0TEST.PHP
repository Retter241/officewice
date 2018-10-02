<?php

$basepath = 'D:/openserver/OSPanel/domains/laraOW/officewice/public/img/flags-normal';
$filelist = scandir($basepath);
foreach($filelist as $i => $filename) {
if($filename !== '.' && $filename !== '..') {
     rename ($basepath.'/'.$filename, $basepath.'/'.strtoupper($filename));
}
}
