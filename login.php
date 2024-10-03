<?php
include_once('fix_mysql.inc.php');

$host="localhost";
		$uname="root";
		$pas="";
		$db_name="dream";

		$tbl_name="members";
		
		@mysql_connect("$host","$uname","$pas") or die ("cannot connect");
		mysql_select_db("$db_name") or die ("cannot select db");
		?>
<?php
if (isset($_POST['login'])){

$username=$_POST['username'];
$password=$_POST['password'];

$login_query=mysql_query("select * from members where mobile='$username' and password='$password'");
$count=mysql_num_rows($login_query);
$row=mysql_fetch_array($login_query);


if ($count > 0){
session_start();
$_SESSION['id']=$row['id'];
header('location:members/dashboard.php');

}else{
	header('location:index.php');
}
}

?>

