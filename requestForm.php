<?php include("essential.php"); ?>
<?php require_once('header.php');
?>
<div class="post">
  <h2 class="title"><a href="#">room request form </a></h2>
  <div class="entry">
  </div>
</div>
<script type='text/javascript' src='js/livevalidation_standalone.js'></script>
<script language="javascript" type="text/javascript" src="js/jquery.min.js"></script>
<script language="javascript" type="text/javascript" src="js/calendarDateInput.js"></script>
<script language="javascript" type="text/javascript" src="js/addRequest.js"></script>
<!--script language="javascript" type="text/javascript" src="js/autofill.js"></script-->
<form action="addRequest.php" id='reqForm' autocomplete="on" method="POST">
	<table class='center'>
	<tr><td> Name:</td><td><input type="text" name="creator" id="P1"><br> </tr>
	<tr><td> Email: </td><td><input type="email" name="creatorEmail" id="P2" autocomplete="off" value='<?php echo phpCAS::getUser(); ?>'
 readonly><br></tr>
	<tr><td> Phone No: </td><td><input type="text" name="creatorPhone" id="P3" maxlength=10><br></tr>
	<tr><td> Are you requesting for someone else?</td><td><input type="checkbox" id="switchAlias"/></tr>
	<tr class="CP"><td> Details of concerned person:</td></tr>
	<tr class="CP"><td> Name:</td><td><input type="text" name="concernedPName" id="CP1"><br></tr>
	<tr class="CP"><td> Email: </td><td><input type="email" name="concernedPEmail" id="CP2" autocomplete="off"><br></tr>
	<tr class="CP"><td> Phone No:</td> <td><input type="text" name="concernedPPhone" id="CP3" maxlength=10><br></tr>
	<tr><td> <span style="font-weight: bold;">Details of Event:</span></td><td></tr>
<!--	<tr><td> Title:</td><td><input type="text" name="eventTitle" id="ti1"><br></tr>-->
	<?php 
echo "<tr><td>Event Type:</td><td>";
$query = "select * from eventTitle";
echo generate_list($query,"eventTitle");
echo "</td>";
?>
	<tr><td> Select Building: </td><td> 
	<?php 
if($_GET['buildingname'])
{
echo generateBuildingList1("buildingName",$_GET['buildingname']); 
}
else
{
echo generateBuildingList("buildingName");
} ?>
	</td></tr>
<?php 
	echo "<tr><td> Select Room:</td><td>";
	if($_GET['buildingname'])
	 {echo generateRoomList1("room",$_GET['roomName']); }
	else
	 {echo generateRoomList("room"); }
	
	echo "</td></tr>";?>
	<tr> <td>Event Frequency : </td> 
	<td> <input type='radio' name='reqType' value='One Time' checked='true' class="repeat" id="repType1"/> One Time </td></tr><tr><td></td>
	<td><input type='radio' name='reqType' value='Multiple' id="repType2" class="repeat"/> Multiple </td></tr>
	<tr class="days"><td></td><td><input type="checkbox" name='day[]' value="1" class='weekday'/>Sunday</td><td>
		         <input type="checkbox" name='day[]' value="2" class='weekday'/>Monday</td></tr>
	<tr class="days"><td></td><td><input type="checkbox" name='day[]' value="3" class='weekday'/>Tuesday</td><td>
		         <input type="checkbox" name='day[]' value="4" class='weekday'/>Wednesday</td></tr>
	<tr class="days"><td></td><td><input type="checkbox" name='day[]' value="5"/ class='weekday'>Thursday</td><td>
		         <input type="checkbox" name='day[]' value="6" class='weekday'/>Friday</td></tr>
	<tr class="days"><td></td><td><input type="checkbox" name='day[]' value="7" class='weekday'/>Saturday</td><td>
		         <input type="checkbox" id='all' value="all" />All</td></tr>
	<tr id="startDate"><td> Start Date: </td><td><div id='sdivdate'>  <script>DateInput('eventStartDate', true,'YYYY-MM-DD')</script></div></td></tr>
	<tr id="endDate"><td> End Date: </td><td><div id='edivdate'>  <script>DateInput('eventEndDate', true,'YYYY-MM-DD')</script> </div> </td></tr>
	<tr> <td>Start Timeslot : </td>	
	<td> <?php echo generateTimeSlot("eventStartTime"); ?> </td>	
	</tr>
	<tr> <td>End Timeslot : </td>
	<td> <?php echo generateTimeSlot("eventEndTime"); ?></td>
	</tr>
		
	<tr> <td>Confirm from: </td>
	<td><div id='priveleged_users'>
	<select name='concernedAdmin' id='confirmedBy'>
	<?php printNextGroupOptions(getCurGroup()); ?> <!-- Default will be the value of $curGroup of the user currently logged in-->
	</select></div></td></tr><br/>
	<tr> <td> Activity Description: </td><td>
	<textarea id='description'  name='eventDesc'/></textarea></tr>
	<tr><td>CC: </td><td><input type="text" name="cc"></td></tr>
	<tr><td></td><td>
	<?php
	require_once("recaptchalib.php");
	$publickey = "6LfA-NgSAAAAAI9-J_Llw-K2OkhfZxSzJy0IElfM";
	echo recaptcha_get_html($publickey);
	?>
	</td></tr>
	<tr><td></td><td><input type='submit' name='submit' id='submit' class='center' value='Book Room'/>
	<input type='reset' class='center' value='Reset'/></td></tr>
	</table>
	<script type="text/javascript">
	var f21 = new LiveValidation('P1');
	f21.add( Validate.Presence );
	var f11 = new LiveValidation('P2');
	f11.add(Validate.Presence);
	</script>
	<script type="text/javascript">

	var f10 = new LiveValidation('P3');
	f10.add(Validate.Presence );
	f10.add( Validate.Numericality );
	var f12 = new LiveValidation('ti1');
	f12.add( Validate.Presence );
	</script>

	</form>	
	<script language="javascript" type="text/javascript">
<?php if(isset($_GET['buildingname'])){
	?>
		$(document).ready(function(){
				$('select.room').attr('value','<?php echo $_GET['roomName'];  ?>');
				$('select#buildingName').attr('value','<?php echo $_GET['buildingname'];  ?>');
				<?php $time=strtotime($_GET['Start_Date'])  ?>
				$month='<?php echo date('m',$time)-1; ?>'
				$year='<?php echo date('Y',$time); ?>'
				$day='<?php echo date('d',$time); ?>'
				$('select#eventStartDate_Month_ID.calendarDateInput.mymonth').attr('value',$month);
				$('select#eventStartDate_Day_ID.calendarDateInput.myday').attr('value',$day);
				<?php $time=strtotime($_GET['End_Date'])  ?>
				$month='<?php echo date('m',$time)-1; ?>'
				$year='<?php echo date('Y',$time); ?>'
				$day='<?php echo date('d',$time); ?>'
				$('select#eventEndDate_Month_ID.calendarDateInput.mymonth').attr('value',$month);
				$('select#eventEndDate_Day_ID.calendarDateInput.myday').attr('value',$day);
				$('select#eventStartTime').attr('value','<?php echo $_GET['Start_Time'] ?>');
				$('select#eventEndTime').attr('value','<?php echo $_GET['End_Time'] ?>');

		})
	<?php
}
else{

	?>
	$(document).ready(function(){
		document.forms[0].buildingName.options[0].selected=true;
		document.forms[0].room.options[0].selected=true;
		document.forms[0].eventTitle.options[0].selected=true;
	});
	<?php
}
if(getCurGroup()==6){
	?>
	$(document).ready(function(){
			if($('#eventStartTime').val()>'17:00:00' ) {            
					$('#confirmedBy :nth-child(2)').attr('selected','selected');
			}
	});
	<?php

}
?>

</script>
<?php require_once('footer.php'); ?>
