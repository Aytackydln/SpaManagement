<div class="slideshow-container">
<?php
include 'database.php';	

$sql = "SELECT title, image, link FROM announcements";
$result = $GLOBALS['database']->query($sql);
$title_count = 0;
if ($result->num_rows > 0) {
    // output data of each row
	 while($row = $result->fetch_assoc()) {
		 $title_count++;
        echo '<div class="mySlides fade">
			<img src="banners/'. $row["image"] .'" style="width:100%">
			<div class="text">'. $row["title"] .'</div>
		</div>';
    }
} else {
}
echo '	<!-- Next and previous buttons -->
		<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
		<a class="next" onclick="plusSlides(1)">&#10095;</a>
		</div>
		<br>
		<div style="text-align:center">';
for ($i=1; $i<=$title_count; $i++) {
    echo '<span class="dot" onclick="currentSlide('. $i .')"></span>';
}
echo '</div>';
?>