<?php
include("essential.php");
dbconnect();
if(isset($_GET['msg'])){
        echo "<p style='background-color:#1C478E;font-size:14pt;color:#FFFFFF;text-align:right;'>" . $_GET['msg'] . "</p>";
}

$query = "select buildingName from Building;";
$r='bname';
$list1=generate_list($query,$r);

?>


<?php require_once('header.php'); ?>
<script type='text/javascript' src='./js/livevalidation_standalone.js'></script>
<?php

$gID = getCurGroup();

if($gID != 2){ 
	        die("You do not have sufficient privileges to access this page");
}

?>

<form name='insert' action='s_addbuild2.php' method='post'>
<h2>Add Building</h2>
<table class="indent-form">

<tr><td>
Enter the new Building's Name : </td><td><input type='text' id='enter' name = 'Bname' />
<script type="text/javascript">
var f2 = new LiveValidation('enter');
f2.add( Validate.Presence );
</script>

</td>
</tr>
<tr><td></td><td><input type='submit' name='add' value='Add'/></td>
</tr></table>
</form><br/><br/><br/>
<h2> Delete Building </h2>
<form name='delete' action='s_addbuild2.php' method='post'>
<table class="indent-form">
<tr><td>
Building Name: </td>
<td><?php echo $list1 ?></td>
</tr><tr><td></td><td><input type='submit' name='delete' value='Delete' /></td>
</tr></table>
</form>
<?php require_once('footer.php'); ?>

