<?php
$servername = "localhost";
$dbname = "odev";
$username = "root";
$password = "";

// Create connection
if(isset($GLOBALS['database'])){}
else $GLOBALS['database'] = new mysqli($servername, $username, $password, $dbname);
?>