<?php
	include 'header.php';
?>

<h1>Article page</h1>

<div class="article-container">
<?php
  	$title = mysqli_real_escape_string($conn, $_GET['title']);
		$date = mysqli_real_escape_string($conn, $_GET['date']);
	$sql = "SELECT * FROM info WHERE a_event='$title' AND a_date='$date'";
	$result = mysqli_query($conn, $sql);
	$queryResult = mysqli_num_rows($result);
	if ($queryResult > 0) {
		while ($row = mysqli_fetch_assoc($result)) {
			echo "<div class='article-box'>";
				echo "<h3>".$row['a_event']."</h3>";
				echo "<p>".$row['a_note']."</p>";
				echo "<a href=\"" . $row["a_URL"]. "\">Source</a>";
				echo "<p>".$row['a_date']."</p>";
			echo "</div>";
		}
	} else {
		echo "There are no articles.";
	}
?>
</div>

</body>
</html>
