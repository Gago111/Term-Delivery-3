<?php
 
      
                   # registration
	

                if (isset($_POST['username']) &&
		isset($_POST['email']) &&
		isset($_POST['pwd1']) &&
		isset($_POST['pwd2']))
	{
		# all fields provided
		if (preg_match('/[a-zA-Z0-9]{6,}/', $_POST['username']))
		{
			echo "Username OK<br>";
		}
		else
		{
			echo "Username WRONG! Go away!<br>";
			exit;
		}

		# all other checks go here

		echo "Success!<br>";

		# generate activation token
               
		$token = sha1(time().['a', 'b', 'c'][rand(0,2)]);
		echo "TOKEN = $token<br>"; 


# add token in DB
$db = mysqli_connect('127.0.0.1', 'root', 'raspberry', 'email');
$sql = "INSERT INTO `users` (`token`) VALUES ('$token')";
mysqli_query($db,$sql);

		# generate activation mail link
		$link = 'http://86.87.179.147/mail.php/emailvertification/mail.php?token=' . $token;
		header('Location: ' . $link);
		echo "LINK = $link<br>";
		echo "Account activated";

		# send email
		exit;
	}
	else
	{
		if (count($_POST) != 4)
		{
			if (count($_POST) == 0)
			{
				# all good, first load
			}
			else
			{
				echo "Count mismatch, required fields not provided.<br>Go away!";
				exit;
			}
		}
		else
		{
			echo "Go away!";
			exit;
		}
	}
	# - username
	# - email
	# - password
	# - password confirmation
?>
<!DOCTYPE html>
<html>
<head>
	<p> Register here and we will send you an confirmation link </p>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Register</title>
	<link rel="stylesheet" href="">
	<script>
		  function checkPassword(str)
		  {
		    var re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}$/;
		    return re.test(str);
		  }

		  function checkForm(form)
		  {
		    if(form.username.value == "") {
		      alert("Error: Username cannot be blank!");
		      form.username.focus();
		      return false;
		    }
		    re = /^\w+$/;
		    if(!re.test(form.username.value)) {
		      alert("Error: Username must contain only letters, numbers and underscores!");
		      form.username.focus();
		      return false;
		    }
		    if(form.pwd1.value != "" && form.pwd1.value == form.pwd2.value) {
		      if(!checkPassword(form.pwd1.value)) {
		        alert("The password you have entered is not valid!");
		        form.pwd1.focus();
		        return false;
		      }
		    } else {
		      alert("Error: Please check that you've entered and confirmed your password!");
		      form.pwd1.focus();
		      return false;
		    }
		    return true;
		  }

		  // polyfill for RegExp.escape
		  if(!RegExp.escape) {
		    RegExp.escape = function(s) {
		      return String(s).replace(/[\\^$*+?.()|[\]{}]/g, '\\$&');
		    };
		  }
  	</script>
</head>s
<body>
	<form action="" method="POST" accept-charset="utf-8">
                
		<input type="text" name="username" value="" placeholder="Your username" required pattern="[a-zA-Z0-9]{6,}"><br>
		<input type="text" name="email" value=""  placeholder="Your gmail" required><br>
		<input type="password" name="pwd1" value="" placeholder="Your password" required title="Password must contain at least 6 characters, including UPPER/lowercase and numbers" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" onchange="this.setCustomValidity(this.validity.patternMismatch ? this.title : '');
  if(this.checkValidity()) form.pwd2.pattern = RegExp.escape(this.value);
"><br>
	<input title="Please enter the same password as above" type="password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="pwd2" onchange="this.setCustomValidity(this.validity.patternMismatch ? this.title : '');"><br>
		<input type="submit" name="" value="">
	</form>
</body>
</html>
