<?php include("essential.php"); ?>
<?php require_once('header.php'); ?>
<div class="post">
  <h2 class="title"><a href="#">room request form </a></h2>
  <div class="entry">
  </div>
</div>
<script type="text/javascript">
 
function timedMsg()
{
	var t=setTimeout("document.getElementById('kapi').style.display='none';",4000);
}

</script>

<script type='text/javascript' src='js/livevalidation_standalone.js'></script>
<script language="javascript" type="text/javascript" src="js/jquery.min.js"></script>
<script language="javascript" type="text/javascript" src="js/calendarDateInput.js"></script>
<script language="javascript" type="text/javascript" src="js/addRequest.js"></script>
<script language="javascript" type="text/javascript" src="js/autofill.js"></script>
<?php if(isset($_GET['msg'])){
		        echo "<p id='kapi' style='background-color:#1C478E;font-size:14pt;color:#FFFFFF;text-align:right;'>" . $_GET['msg']. "</p>";?>
<script language="JavaScript" type="text/javascript">timedMsg()</script>
<?php
}
?>

<form action="addRequest.php" autocomplete="on" method="POST">
	<table class='center'>
	<tr><td> Name:</td><td><input type="text" name="creator" id="P1"><br> </tr>
	<tr><td> Email: </td><td><input type="email" name="creatorEmail" id="P2" autocomplete="off"><br></tr>
	<tr><td> Phone No: </td><td><input type="text" name="creatorPhone" id="P3" maxlength=10><br></tr>
	<tr><td> Are you requesting for someone else?</td><td><input type="checkbox" id="switchAlias"/></tr>
	<tr class="CP"><td> Details of concerned person:</td></tr>
	<tr class="CP"><td> Name:</td><td><input type="text" name="concernedPName" id="CP1"><br></tr>
	<tr class="CP"><td> Email: </td><td><input type="email" name="concernedPEmail" id="CP2" autocomplete="off"><br></tr>
	<tr class="CP"><td> Phone No:</td> <td><input type="text" name="concernedPPhone" id="CP3" maxlength=10><br></tr>
	<tr><td> <span style="font-weight: bold;">Details of Event:</span></td><td></tr>
<!--	<tr><td> Title:</td><td><input type="text" name="eventTitle" id="ti1"><br></tr>-->
	<?php 
echo "<tr><td>Event Title:</td><td>";
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
<?php //if($_GET['roomName']){ echo "<select name ='room' id = 'room'><option name= '".$_GET['roomName']."' value='".$_GET['roomName']."'>".$_GET['roomName']."</option></select>";}    ?>
	<tr> <td>Event Type : </td> 
	<td> <input type='radio' name='reqType' value='One Time' checked='true' class="repeat" id="repType1"/> One Time </td></tr><tr><td></td>
	<td><input type='radio' name='reqType' value='Multiple' id="repType2" class="repeat"/> Multiple </td></tr>
	<tr class="days"><td></td><td><input type="checkbox" name='day[]' value="1"/>Sunday</td><td>
		         <input type="checkbox" name='day[]' value="2"/>Monday</td></tr>
	<tr class="days"><td></td><td><input type="checkbox" name='day[]' value="3"/>Tuesday</td><td>
		         <input type="checkbox" name='day[]' value="4"/>Wednesday</td></tr>
	<tr class="days"><td></td><td><input type="checkbox" name='day[]' value="5"/>Thursday</td><td>
		         <input type="checkbox" name='day[]' value="6"/>Friday</td></tr>
	<tr class="days"><td></td><td><input type="checkbox" name='day[]' value="7"/>Saturday</td></tr>
	<tr><td> Start Date: </td><td><div id='sdivdate'>  <script>DateInput('eventStartDate', true,'YYYY-MM-DD')</script></div></td></tr>
	<tr><td> End Date: </td><td><div id='edivdate'>  <script>DateInput('eventEndDate', true,'YYYY-MM-DD')</script> </div> </td></tr>
	<tr> <td>Start Timeslot : </td>	
	<td> <?php echo generateTimeSlot("eventStartTime"); ?> </td>	
	</tr>
	<tr> <td>End Timeslot : </td>
	<td> <?php echo generateTimeSlot("eventEndTime"); ?></td>
	</tr>
		
	<tr> <td>Confirm from: </td>
	<td><div id='priveleged_users'>
	<select name='concernedAdmin' id='confirmedBy'>
	<?php printNextGroupOptions(0); ?> <!-- Default will be the value of $curGroup of the user currently logged in-->
	</select></div></td></tr><br/>
	<tr> <td> Activity/Reason: </td><td>
	<textarea id='description'  name='eventDesc'/></textarea></tr>
	<tr><td>CC: </td><td><input type="text" name="cc"></td></tr>
	<tr><td>
	<?php
	require_once("recaptchalib.php");
	$publickey = "6LfA-NgSAAAAAI9-J_Llw-K2OkhfZxSzJy0IElfM";
	echo recaptcha_get_html($publickey);
	?>
	</td></tr>
	<tr><td><input type='submit' name='submit' id='submit' class='center' value='Book Room'/></td></tr>
	<tr><td><input type='reset' class='center' value='Reset'/></td></tr>
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
<?php require_once('footer.php'); ?>
