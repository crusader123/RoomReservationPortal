<?php

include("essential.php");
include("header.php");
dbconnect();
if(isset($_GET['id'])){
	$id=$_GET['id'];
}
else{
	die("Invalid link");
}
//require_once("header.php");
//$id=19;
if($id==0)
{
	$sq="select * from Instances where eventStartDate='".$_GET['eventStartDate']."' and room='".$_GET['roomName']."' and eventStartTime<='".$_GET['eventStartTime']."' and eventEndTime >='".$_GET['eventEndTime']."' and eventTitle='$_GET[eventTitle]';";
$res=execute($sq);
$col1=array("RequestID","hash","Request made by:","Requester Email","Requester Phone ","Concerned Person Phone ","Concerned Person Email"," Concerned Person Phone","Request Status","Group of Requester","Request Date","Event Start Date","Event End Date","Event Start Time","Event End Time ","Title of the Event","Event Description","Days of Event","Id of Admin handling this request","Room","Request Type","Reason for accept/reject","Request last modified");
$num_row=mysql_num_fields($res);
$col=mysql_fetch_row($res);
}
else
{
$sq="select * from Requests where reqNo =".$id.";";
//echo $sq;
$res=execute($sq);
$col1=array("RequestID","hash","Request made by:","Requester Email","Requester Phone ","Concerned Person Phone ","Concerned Person Email"," Concerned Person Phone","Request Status","Group of Requester","Request Date","Event Start Date","Event End Date","Event Start Time","Event End Time ","Title of the Event","Event Description","Days of Event","Id of Admin handling this request","Room","Request Type","Reason for accept/reject","Request last modified");
$num_row=mysql_num_fields($res);
$col=mysql_fetch_row($res);
} ?>
<div class="post">
<h2 class="title">Request Details</h2>
<table id="box-table-a">
<thead>
<tr>
<th scope="col">Fields</th>
<th scope="col">Details</th>
</tr>
</thead>


<?php 
	$i=0;
	while($i<$num_row){
	if($i!=1)
	{
		if($i==17)
		{
			$col[$i]=explosion($col[$i]);
		}
?>
		<tr>
		<td>
<?php
		echo $col1[$i];
?>
		</td>
		<td>
<?php         
		echo $col[$i]; 
?>
		</td>
		</tr>
<?php
	}
	$i++;
}
?>
</table>
<?php 
$gID = getCurGroup();
if($gID==2){
	if(isset($_POST['delInstance'])){
			//Remove Code here!
	}	
	?>
	<form method=POST>
	<br><button type='submit' name='delInstance'>Delete</button>
	</form>
	<?php
}
?>
</div>
<?php include("footer.php"); ?>
