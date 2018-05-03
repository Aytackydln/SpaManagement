<?php
include 'database.php';	
session_start();
if(isset($_GET["user"])){
	$user = $_GET["user"];
}else $user = "";
if(isset($_GET["password"])){
	$password = $_GET["password"];
}else $password = "";

$sql = "SELECT username, password FROM account WHERE username='" . $user. "'";
$result = $GLOBALS['database']->query($sql);

if ($result->num_rows) {
    // output data of each row
	$row = $result->fetch_assoc();
	if($row["password"]==$_GET['password']){
		echo $_SESSION["user"];
	$_SESSION["user"] = $_GET['user'];
	$_SESSION["password"] = $_GET['password'];
	header('Location: ' . $_SERVER['HTTP_REFERER']);
	}else{
		echo "wrong password";
	}
	
} else {
	echo "no such username";
	session_unset();
}
?>