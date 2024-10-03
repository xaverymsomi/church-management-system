<?php
include_once('fix_mysql.inc.php');
        include('lib/dbcon.php');
		dbcon(); 
		session_start();	
		$username = $_POST['username'];
		$password = $_POST['password'];
		
		/*................................................ admin .....................................................*/
			$query = "SELECT * FROm admin WHERE username='$username' AND password='$password'";
			$result = mysql_query($query)or die(mysql_error());
			$row = mysql_fetch_array($result);
			$num_row = mysql_num_rows($result);
			
		/*...................................................student ..............................................*/
		$query_student = mysql_query("SELECT * FROm student WHERE username='$username' AND password='$password'")or die(mysql_error());
		$num_row_student = mysql_num_rows($query_student);
		$row_student = mysql_fetch_array($query_student);
		
		if( $num_row > 0 ) { 
		$_SESSION['id']=$row['admin_id'];
		echo 'true_admin';
		
		mysql_query("insert into user_log (username,login_date,admin_id)values('$username',NOW(),".$row['admin_id'].")")or die(mysql_error());
		
		}else if ($num_row_student > 0){
		$_SESSION['student']=$row_student["student_id"];
		echo 'true';
		
		mysql_query("insert into user_log (username,login_date,student_id)values('$username',NOW(),".$row_student["student_id"].")")or die(mysql_error());
	
		 }else{ 
				echo 'false';
		}	
				
		?>