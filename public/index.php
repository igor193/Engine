<?php
require_once('../config/config.php');
// die("index str 3");

$url_array = explode("/", $_SERVER['REQUEST_URI']);
$count_urlarray = count($url_array) - 2; 
 
if($url_array[1] == "")
	$page_name = "index";
else    
	$page_name = $url_array[$count_urlarray];

$variables = prepareVariables($page_name);
echo renderPage($page_name, $variables);
