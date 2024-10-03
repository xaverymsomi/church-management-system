 <?php
 include_once('fix_mysql.inc.php');
 include('lib/dbcon.php'); 
 dbcon(); 
 include('session.php');
 $new_password  = $_POST['new_password'];
 mysql_query("update members set password = '$new_password' where id = '$session_id'")or die(mysql_error());
 ?>