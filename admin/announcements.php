<?php
include '../database.php';		
if(isset($_POST["delete"])){
	$sql = "DELETE FROM `announcements` WHERE `announcements`.`aid` = " . $_POST["delete"];
	echo $GLOBALS['database']->query($sql);
}
else if(isset($_POST["insert"])){
	$target_dir = "../banners/";
	$target_file = $target_dir . basename($_FILES["image"]["name"]);
	if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
        echo "The file ". basename( $_FILES["image"]["name"]). " has been uploaded.";
		$sql = "INSERT INTO `announcements` (`title`, `image`, `link`) VALUES ('". $_POST["title"] ."', '". $_FILES["image"]["name"] ."', '". $_POST["link"] ." ')";
		$GLOBALS['database']->query($sql);
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}
else echo "hello bratan";
?>

<!doctype html>
<html>
<head>
	<title> Super secret admin page </title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <link href="../style.css" rel="stylesheet"> 
</head>

<body>
<form target="form" action="announcements.php" enctype="multipart/form-data" method="post">
	<label for="title" style="width:8em;display: inline-block;">Title:</label>
	<input type="text" name="title" id="title" width="100%" required autofocus><br>
	<label for="image" style="width:8em;display: inline-block;">Image:</label>
	<input type="file" name="image" id="image" width="100%" accept="image/*" required><br>
	<label for="link" style="width:8em;display: inline-block;">Link:</label>
	<input type="text" name="link" id="link" width="100%"><br>
	<input type="submit" name="insert" value="insert">
</form>
<form target="form" action="announcements.php">
	<table>
	<tr><th>id</th><th>title</th><th>image</th><th>link</th><th>delete</th></tr>
	<?php
		$sql = "SELECT aid, title, image, link FROM announcements";
		$result = $GLOBALS['database']->query($sql);
		$title_count = 0;
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$title_count++;
				echo '<tr><th>'. $row["aid"] .
				'</th><th>'. $row["title"] .
				'</th><th>'. $row["image"] .
				'</th><th>'. $row["link"] .
				'</th><th><input name="delete" type="submit" value="'.
				$row["aid"].
				'"></th></tr>';
			}
		} else {
		}
	?>
</table>
</form>
	
    <!-- jquery libraries -->
    <script src="../js/jquery.min.js"></script> 
    <!-- bootsrap libraries -->
    <script src="../js/bootstrap.min.js"></script> 
</body>