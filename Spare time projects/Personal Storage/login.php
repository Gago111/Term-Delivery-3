<?php include('server.php')?>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="refresh" content="30">
  <meta charset= "UTF-8">
  <meta http-quiv= "X-Compatible" content= "IE=edge">
  <title>Login Page</title>
  <link rel="stylesheet"  type="text/css" href="style2.css"></link>

</head>
  <body>

 <?php
if (isset($_POST['username']))
{
  $username = htmlspecialchars($username);
}
if (isset($_POST['password']))
  $password = htmlspecialchars($password);




?>
  <form method="post" action="login.php">
    <?php include('errors.php'); ?>
       <div class="container">
       <img src="img/lock.jpg">
       <form action= "login.php" method= "post" accept-charset="utf8">

        <div class="form-input">
        <input type="text" name="username"
         placeholder="Enter Username"
         required>
         </div>

         <div class="form-input">
         <input type="password"
         name="password" placeholder="Enter Password"
         required>
         </div>
        <input type="submit" name="login_user"
        value="LOGIN" class="btn-login"><br>
  </form>
</div>
</body>
</html>
