<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : TrendyBiz
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20120818

--><?php session_start(); ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Room Allocation Portal - Team 18</title>
<link href="http://fonts.googleapis.com/css?family=Dancing+Script|Open+Sans+Condensed:300" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="js/jquery.min.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper">
	<div id="menu-wrapper">
		<div id="menu" class="container">
			<ul>
				<li class="current_page_item"><a href="login.php">Homepage</a></li>
				<li><a href="conflictTable.php">Conflict View</a></li>
				<li><a href="giveFeedback.php">Feedback</a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="#">Links</a></li>
				<li><a href="?logout=true">Logged in as <?php echo $_SESSION['username']; ?></a></li>
			</ul>
		</div>
	</div>
	<div class="divider">&nbsp;</div>
	<div id="page" class="container">
                <div id="content">
<!--Split 1-->
