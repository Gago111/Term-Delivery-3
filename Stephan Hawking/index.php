<?php
	include 'header.php';
?>
<html>
<head>
	<script> window.scroll({ top: 2500, left: 0, behavior: 'smooth' }); </script>
<link rel="stylesheet" href="style5.css">
<body>
<form action="search.php" method="POST">
	<input type="text" name="search" >
	<button type="submit" name="submit">Search</button>
</form>

<div class="UL">
<ul>
<li><a href="#">About</a>
 <ul>
	<li><a href="who.html">Who was Stephan Hawking</a></li>
	<li><a href="Earlylife.html">Early Life</a></li>
	<li><a href="schools.html">Schools</a></li>
	<li><a href="disease.html"> Disease</a></li>
</ul>
</li>
<li><a href="#">Projects</a>
	<ul>
		<li><a href="starshoot.html">Starshoot</a></li>
		<li><a href="breakthrough.html">Breakthrough</a></li>
		<li><a href="alienlife.html">Alien Life</a></li>
	</ul>
</li>
<li><a href="sources.html">Sources</a>
</li>
</ul>
</div>
<div class="article-container">
<?php
	$sql = "SELECT * FROM info";
	$result = mysqli_query($conn, $sql);
	$queryResult = mysqli_num_rows($result);
	if ($queryResult > 0) {
		while ($row = mysqli_fetch_assoc($result)) {
			echo "<div class='article-box'>";
				echo "<h3>".nl2br($row['a_event'])."</h3>";
				echo "<p>".nl2br($row['a_note']) ."</p>";
				echo "<p>".nl2br($row['a_date'])."</p>";
				echo "<a href=\"" . $row["a_URL"]. "\">Source</a>";
		}
	} else {
		echo "There are no notes.";
	}
?>
</div>
</body>
</html>
