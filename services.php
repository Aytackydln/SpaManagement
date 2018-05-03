<?php 
	include 'database.php';
?>
<!doctype html>
<html>
<head>
	<title> Services </title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link href="css/bootstrap.css" rel="stylesheet"> 
    <link href="style.css" rel="stylesheet"> 
	<link href='/fullcalendar.min.css' rel='stylesheet' />
	<link href='/fullcalendar.print.min.css' rel='stylesheet' media='print' />
	<script src='/lib/moment.min.js'></script>
	<script src='fullcalendar.min.js'></script>
	<script> 
	function eventClicked(sid){
		var dropdown = document.createElement("div");
		dropdown.classList.add("dropdown-content");
		dropdown.innerHTML= '<a href="#">Link 1</a><a href="#">Link 2</a><a href="#">Link 3</a>';
		document.getElementById(sid).parentElement.appendChild(dropdown);
	}
	</script>
</head>

<body>
	<?php 
	$active="services";
	include 'nav.php'; 
	?>	
	<main>
		<article>
<?php
	$section = "";
	$sql = "SELECT type FROM sections";
	$result = $GLOBALS['database']->query($sql);
	if(isset($_GET["section"])){
		$section=$_GET["section"];
		echo "<header>". $section ."</header>
		<aside><ul>";
	}else {		//If no section selected, pick first session
		$row = $result->fetch_assoc();
		$section = $row["type"];
		echo "<header>". $section ."</header>
		<aside><ul>";
		echo '<li><a href="services.php?section='. $row["type"] . '">'. $row["type"] .'</a></li>';
	}
	while($row = $result->fetch_assoc()){		//create <aside> links
		echo '<li><a href="services.php?section='. $row["type"] . '">'. $row["type"] .'</a></li>';
	}
	echo "</ul></aside>";
	$sql = "SELECT description FROM sections WHERE type='". $section ."'";
	$result = $GLOBALS['database']->query($sql);
	$row = $result->fetch_assoc();
	echo $row["description"];
?>
		</article>
		<div id='calendar'></div>
	</main>
	<footer>
	
    <!-- jquery libraries -->
    <script src="js/jquery.min.js"></script> 
    <!-- bootsrap libraries -->
    <script src="js/bootstrap.min.js"></script> 
	<script src="js/setuser.js"></script>
	<?php
		include 'loadcalendar.php';
	?>
</body>