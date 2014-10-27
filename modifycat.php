<?php require_once('header.php'); ?>
<?php
include("essential.php"); 
dbconnect();

$gID = getCurGroup();

if($gID != 2){
	die("Insufficient privileges");
}

	if(ISSET($_POST['delete']))
	{
		if(empty($_POST['cat_sel']))
		{
			header("Location:modifycat.php?msg='Category to be deleted is not selected'");	
			die();
		}
		$q = "delete from Category where catName='".$_POST['cat_sel']."';";
		execute($q);
		header("Location:modifycat.php?msg='Category deleted successfully'");
	}	
	if(ISSET($_GET['msg']))
	{
		echo "<p style='background-color:#1C478E;font-size:14pt;color:#FFFFFF;text-align:center;'>" . $_GET['msg'] . "</p>";

	}

?>
<html>
<body>
<head>
<script type='text/javascript' src='./js/livevalidation_standalone.js'></script>
<script language="javascript" type="text/javascript" src="js/jquery.min.js"></script>
</head>
<h2>Add Category</h2>
<form name = 'add_category' method = 'POST' action ="deletecat.php">
<table class="cat-form">
<tr>
<td>Category name</td>
<td><input type = 'text' name = 'cat_name' id='cat_nam'/>
</tr>
</br>
<tr>
<td>Description:</td>
<td>
<textarea rows = '4' cols = '50' name = 'description'></textarea></td>
</tr>
<tr>
<td></td>
<td><input type = 'submit' name = 'add' value='Add Category'/>
</tr>
<script type="text/javascript">
var f21 = new LiveValidation('cat_nam');
f21.add( Validate.Presence );
</script>
</table>
</form>
<?php
$q = "select catName from Category;";
	$r = execute($q);
	$x = "cat_sel";
	$list = generate_list($q, $x);
?>
<h2>Delete Category</h2>
<form name = 'delete_category' method = 'POST' action = "modifycat.php">
<table class="cat-form">
<tr>
<td>Category name</td>
<td><?php echo $list;?></td>
</tr><br/>
<tr>
<td></td>
<td><input type = 'submit' name = 'delete' value = 'Delete Category'/></td>
</tr>
</table>
</form>
</table>
</form>

</body>
</html>
<?php require_once('footer.php'); ?>
