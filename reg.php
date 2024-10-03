<?php
include_once('fix_mysql.inc.php');
error_reporting(0);
 $db = mysql_select_db('dream',@mysql_connect('localhost','root','')); ?>
<?php
if (isset($_POST['submit'])){
$fname = $_POST['fname'];
$sname = $_POST['sname'];
$lname = $_POST['lname'];
$Gender = $_POST['gender'];
$birthday = $_POST['birthday'];
$residence= $_POST['residence'];
$pob = $_POST['pob'];
$ministry = $_POST['ministry'];
$mobile= $_POST['mobile'];
$email= $_POST['email'];
$password = $_POST['password'];


$query = @mysql_query("select * from members where  mobile = '$mobile'  ")or die(mysql_error());
$count = mysql_num_rows($query);

if ($count > 0){ ?>
<script>
alert('This Member Already Exists');
window.location = "index.php";
</script>
<?php
}else{
mysql_query("insert into members (fname,sname,lname,Gender,birthday,residence,pob,ministry,mobile,email,thumbnail,password,id) 
values('$fname','$sname','$lname','$Gender','$birthday','$residence','$pob','$ministry','$mobile','$email','uploads/none.png','$password','$mobile')")or die(mysql_error());

mysql_query("insert into activity_log (date,username,action) values(NOW(),'$admin_username','Added member $mobile')")or die(mysql_error());
?>
<script>
window.location = "index.php";
$.jGrowl("Member Successfully added", { header: 'Member add' });
</script>
<?php
}
}
?>