<?php
include_once('fix_mysql.inc.php');
//core
function dbcon(){
	$user = "root";
	$pass = "";
	$host = "localhost";
	$db = "dream";
	@mysql_pconnect($host,$user,$pass);
	mysql_select_db($db);
}

function host(){
	$h = "http://".$_SERVER['HTTP_HOST']."/bankdb/";
	return $h;
}

function hRoot(){
	$url = $_SERVER['DOCUMENT_ROOT']."/bankdb/";
	return $url;
}

//parse string
function gstr(){
    $qstr = $_SERVER['QUERY_STRING'];
    parse_str($qstr,$dstr);
    return $dstr;
}

?>
