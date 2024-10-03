<?php include_once('fix_mysql.inc.php'); ?>
<?php include('header.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('sidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
                        <!-- block -->
				
				<?php	
	             $count_log=mysql_query("select * from attendance");
	             $count = mysql_num_rows($count_log);
				
                 ?>
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left"><i class="icon-user"></i> Church Attendees</div>
								<div class="muted pull-right">
								Number of attendees: <span class="badge badge-info"><?php  echo $count; ?></span>
								</div>
                            </div>
							<div class="container-fluid">
  <!-- <div class="row-fluid"> 
     <div class="empty">
	     <div class="pull-right">
		   <a href="print_members.php" class="btn btn-info" id="print" data-placement="left" title="Click to Print"><i class="icon-print icon-large"></i> Print List</a> 		      
		   <script type="text/javascript">
		     $(document).ready(function(){
		     $('#print').tooltip('show');
		     $('#print').tooltip('hide');
		     });
		   </script>        	   
         </div>
      </div>
    </div>  -->
</div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form action="delete_member.php" method="post">
  									<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
									<script type="text/javascript">
									 $(document).ready(function(){
									 $('#delete').tooltip('show');
									 $('#delete').tooltip('hide');
									 });
									</script>
									<?php include('modal_delete.php'); ?>
										<thead>		
		    <tr>			        
                	<th>Name</th>
                    <th>Mobile No. </th>
                    <th>Date </th>     				
		    </tr>
		</thead>
<tbody>
<!-----------------------------------Content------------------------------------>
<?php
		$members_query = mysql_query("select * from attendance")or die(mysql_error());
		while($row = mysql_fetch_array($members_query)){
		$username = $row['id'];
		$id= $row['id'];
	
		?>
									
		<tr>
		 <!-- <td width="70">
									     <input id="optionsCheckbox" class="uniform_on" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
								        </td> -->
		    <td><?php echo $row['name']; ?></td>
            <td><?php echo $row['mobile']; ?></td>
			<td><?php echo $row['date']; ?></td>
            </tr>
											
	<?php } ?>   

</tbody>
									</table>
								</form>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>


                </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>