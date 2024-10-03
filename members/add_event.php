   <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left"><i class="icon-plus-sign icon-large"> ADD EVENT</i></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form method="post">
				<table>
					<tr>
						<td style="color: #003300; font-weight: bold; font-size: 16px">Add Event Here:</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td><input type="text" name="title" placeholder="Title"></td>
					</tr>
					
					<tr>
						<td><input type="date" name="date" required="required" value="Date" min=
     <?php
         echo date('Y-m-d');
     ?> value="<?php print(date("Y-m-d")); ?> ></td>
					</tr>
					<tr>
						<td>
							<textarea name="content" placeholder="" class="text" required="required"></textarea>
						</td>
					</tr>
					<tr>
						<td>
							<textarea name="content" placeholder="Location" class="text" required="required"></textarea>
						</td>
					</tr>
					<tr>
						<td><input type="submit" name="send" value="SAVE"></td>
					</tr>
				</table>
			</form>
								</div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
								
<?php

include_once('fix_mysql.inc.php');
if(isset($_POST['send'])){
						
	// new code begins
						$title = $_POST['title'];
						$date = $_POST['date'];
						$content = $_POST['content'];

						$date = mysql_escape_string($date);
						$duplicate = false;	

						try {
							$sql = "SELECT COUNT(*) as count FROM event WHERE date = '$date' ";
							$res = mysql_query($sql)  or die(mysql_error());
							$data = mysql_fetch_assoc($res);
							if ($data['count'] > 0) {
								echo '<center>An event already exists on this date.Please choose another date</center>';
								$duplicate = true;
							}
						    } catch (Exception $e) {

							}
							if (     $title!=''&&$date!=''&&$content!=''&&$duplicate==false)
{

   try
   {
        $sql = "INSERT INTO event (Title, Date, content) VALUES ('$title', '$date', '$content')";
        $res = mysql_query($sql)  or die(mysql_error());
    } 
    catch (Exception $e) 
    {
       echo "<center><div class=\"denied\">",  $e->getMessage(), "</div></center>";

	}
	if(isset($res))
   {  
	  //header('location: /events.php');
	  echo("<script>location.href = '../members/events.php';</script>");
   }
   else
   {

 echo"<center><div class=\"denied\">SERVER ERROR</div></center>";
   }
}
?>
	 <!-- new code fine ends -->

<!-- 
// old code begins
// 						$title = $_POST['title'];
// 						$date = $_POST['date'];
// 						$content = $_POST['content'];
// 							$qry = "INSERT INTO event (Title,Date,content)
// 							VALUES('$title','$date','$content')";
// 							$result = mysql_query($qry)or die(mysql_error());
// 							if($result == TRUE){
// 								echo "<script type = \"text/javascript\">
											
// 											window.location = (\"events.php\")
// 											</script>";
// 							} else{
// 								echo "<script type = \"text/javascript\">
// 											alert(\"message Not Send. Try Again\");
// 											</script>";
// 							}
// 					}


// ?> -->
<!-- old code ends here -->


<!-- new code -->
<?php
}

?>