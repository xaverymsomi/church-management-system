
  <div class="row-fluid">
                        <!-- block -->
 <div class="block">
 <div class="navbar navbar-inner block-header">
<div class="muted pull-left"><i class="icon-plus-sign icon-large"> Add Attendee</i></div>
</div>
<div class="block-content collapse in">
                                <div class="span12">
								
								 <!--------------------form------------------->
								<form method="post">
					<!-- <div class="control-group">
                                <p> <div class="controls">
                                   <p>
                                     <input class="input focused" name="fname" id="focusedInput" type="text" placeholder = "First Name" required> 
                                   </p>
                                 </div>
                                  </div>
								  </p>
								  <div class="control-group">
                                <p> <div class="controls">
                                   <p>
                                     <input class="input focused" name="sname" id="focusedInput" type="text" placeholder = "Surname"> 
                                   </p>
                                 </div>
                                  </div> -->
								  <div class="control-group">
                                <p> <div class="controls">
                                   <p>
                                     <input class="input focused" name="name" id="focusedInput" type="text" placeholder = "Name" required> 
                                   </p>
                                 </div>
                                  </div>
								  <div class="control-group">
                                <p> <div class="controls">
                                   <p>
                                      <!-- <select class="input focused" name="gender" id="focusedInput" required="required" type="text">
  <option value="Select Gender">Select Gender</option>
  <option value="male">male</option>
  <option value="Female">Female</option>

</select>   -->
                                   </p>
                                 </div>
                                  </div>
                  </p>
                  <p>
                  <div class="control-group">
                                <p> <div class="controls">
                                   <p>
                                     <input class="input focused" name="mobile" id="focusedInput" type="text" placeholder = "Mobile number" required> 
                                   </p>
                                 </div>
                                  </div>
</p>
								  <div class="control-group">
                                <p> <div class="controls">
                                   <p>
                                     <input class="input focused" name="date" id="focusedInput" type="date" min="<?php echo date('Y-m-d') ;?>" placeholder = "Date" required> 
                                   </p>
                                 </div>
                                  </div>
								  </p>
								  <!-- <div class="control-group"> -->
                                <!-- <p> <div class="controls">
                                   <p>
                                     <input class="input focused" name="residence" id="focusedInput" type="text" placeholder = "Residence" required> 
                                   </p>
                                 </div>
                                  </div> -->
								  </p>
								<!-- <div class="control-group">
                                <p> <div class="controls">
                                   <p>
                                     <input class="input focused" name="pob" id="focusedInput" type="text" placeholder = "place of birth" required> 
                                   </p>
                                 </div>
                                  </div> -->
								  </p>		
										
										<!-- <div class="control-group">
                                <p> <div class="controls">
                                   <p>
                                    <select class="input focused" name="ministry" id="focusedInput" required="required" type="text">
  <option value="">Select ministry</option>
  <option value="None">None</option>
  <option value="Praise and Worship">Praise and Worship</option>
  <option value="Ushering">Ushering</option>
  <option value="Hostessing">Hostessing</option>
  <option value="media and IT">media and IT</option>
  <option value="Sunday School">Sunday School</option>
</select>  
                                   </p>
                                 </div>
                                  </div> -->
								  </p>
									
								  </p>
								  <!-- <div class="control-group">
                                <p> <div class="controls">
                                   <p>
                                     <input class="input focused" name="email" id="focusedInput" type="email" placeholder = "Email" > 
                                   </p>
                                 </div>
                                  </div> -->
								  </p>
								 							 
								  </p>
								  <!-- <div class="control-group">
                                <p> <div class="controls">
                                   <p>
                                     <input class="input focused" name="password" id="focusedInput" type="password" placeholder = "password " required> 
                                   </p>
                                 </div>
                                  </div> -->
								  </p>
                                    </div>
										
                                
                                        
										<div class="control-group">
                                          <div class="controls">
 <button name="save" class="btn btn-info" id="save" data-placement="right" title="Click to Save"><i class="icon-plus-sign icon-large"> Save</i></button>
												<script type="text/javascript">
	                                            $(document).ready(function(){
	                                            $('#save').tooltip('show');
	                                            $('#save').tooltip('hide');
	                                            });
	                                            </script>
                                          </div>
                                        </div>
                                </form>
								
								</div>
                            </div>
                        </div>
                        <!-- /block -->
                  				 
<?php

include_once('fix_mysql.inc.php');
if (isset($_POST['save'])){
$name = $_POST['name'];
$mobile= $_POST['mobile'];
$date = $_POST['date'];


$query = @mysql_query("select * from attendance where  mobile = '$mobile'  ")or die(mysql_error());
$count = mysql_num_rows($query);

if ($count > 0){ ?>
<script>
alert('This Attendance Record Already Exists');
</script>
<?php
}else{
mysql_query("insert into attendance (name,mobile,date) 
values('$name','$mobile','$date')")or die(mysql_error());

mysql_query("insert into activity_log (date,username,action) values(NOW(),'$admin_username','Added attendance $mobile')")or die(mysql_error());
?>
<script>
window.location = "add_attendance.php";
$.jGrowl("Attendance Successfully added", { header: 'Attendance add' });
</script>
<?php
}
}
?>