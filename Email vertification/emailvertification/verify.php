<?php
	# account verification
	$token = $_GET['token'];
	$activated = 1;

$servername = "127.0.0.1";
$usernamedb = "root";
$passworddb = "raspberry";
$dbname= "email";

$connect = new mysqli($servername, $usernamedb, $passworddb, $dbname);
if ($connect->connect_error) {
    die("Connection failed: " . $connect->connect_error);
}
$sql="SELECT * FROM `users` WHERE `token`='$token'";
	  $result= $connect->query($sql);
	  if($result->num_rows> 0) {
			  	 	echo "Valid Token";
			  	 	echo "<br>";
					echo "Token = $token<br>";


					$servername = "127.0.0.1";
					$usernamedb = "root";
					$passworddb = "raspberry";
					$dbname= "email";

						$connect = new mysqli($servername, $usernamedb, $passworddb, $dbname);
						if ($connect->connect_error) {
						    die("Connection failed: " . $connect->connect_error);
						}

						$sqlu = "SELECT * FROM `users` WHERE `activated` = 0 AND `token` = '$token'";

						$result_query = $connect->query($sqlu);
						if($result_query->num_rows> 0)
						{
							echo "Result is true\n<br>";
								$sqlu = "UPDATE `users` SET `activated` = 1 WHERE `token` = '$token'";
								 $connect->query($sqlu);
								  // header("refresh:0.5; url=index.php");

						}else{echo "Failed";}





	 }else{
		echo "Not valid Token";
		echo "<br>";
		echo "Go away! Hackerman";
		echo "<br>";
	}


	# if so, then activate account

	# if not: hack attempt?

?>
