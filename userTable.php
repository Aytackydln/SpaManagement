<table id="table">
		<caption>Users</caption>
		<tr>
			<th>Username</th>
			<th>Password</th> 
		</tr>
<?php
include 'database.php';	

$sql = "SELECT username, password FROM account";
$result = $GLOBALS['database']->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><th>" . $row["username"] . "</th><th>" . $row["password"] . "</th></tr>";
    }
} else {
    echo "No users";
}
?>
</table>