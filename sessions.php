<?php
include 'database.php';
$sql = "SELECT name, date FROM session WHERE type='". $_GET["session"] ."'";
$result = $GLOBALS['database']->query($sql);
while($row = $result->fetch_assoc()){		//create <aside> links
	echo $row["name"] .'<br>'. $row["date"] ."<br>";
}
?>