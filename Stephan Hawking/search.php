<h1>Search Page</h1>

<div class="article-container">
<?php
	include 'header.php';

	if (isset($_POST["submit"])) {
		$search = mysqli_real_escape_string($conn, $_POST['search']);
		$sql = "SELECT * FROM info WHERE a_event LIKE '%$search%' OR a_note LIKE '%$search%' OR a_date LIKE '%$search%' OR a_URL LIKE '%$search%'";
		$result = mysqli_query($conn, $sql);
		$queryResult = mysqli_num_rows($result);
		if ($queryResult > 0) {
			while ($row = mysqli_fetch_assoc($result)) {
				echo "<a href=article.php?title=".$row['a_event']."&date=".$row['a_date']."'><div class='article-box'>";
				echo "<h3>".$row['a_event']."</h3>";
				echo "<p>".$row['a_note']."</p>";
			  echo  "<a href=\"" . $row["a_URL"]. "\">Source</a>";
				echo "<p>".$row['a_date']."</p>";
				echo "</div></a>";
			}
		} else {
			echo "There are no articles.";
		}
	} else {
		echo "There are no results!";
	}
?>
</div>
