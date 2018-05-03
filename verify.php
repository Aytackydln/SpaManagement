<?php
include 'database.php';
session_start();
$servername = "localhost";
$dbname = "odev";
if(isset($_SESSION["user"])){
	$user = $_SESSION["user"];
}else die();
if(isset($_SESSION["password"])){
	$password = $_SESSION["password"];
}else $password = "";

$sql = "SELECT username, password FROM account WHERE username='". $user . "' AND password='". $password ."'";
$result = $GLOBALS['database']->query($sql);

if ($result) {
    // output data of each row
	echo $_SESSION["user"];
} else {
	session_unset();
}

?>