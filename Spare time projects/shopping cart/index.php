 <?php
// include_once('server.php');
//
// if (!isset($_SESSION['username'])) {
//   $_SESSION['msg'] = "You must log in first";
//   header('location: login.php');
// }
//
// if (isset($_GET['logout'])) {
//   session_destroy();
//   unset($_SESSION['username']);
//   header("location: login.php");
// }

?>
 <!DOCTYPE HTML>
<html>
<head>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
  <script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/css?family=Gugi" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
  <title>Shopping cart (beta) </title>
</head>
<body>
<header>
  <img src="shopz.png.png">
  <div class="wrap">
    <div class="search">
    <input type="text" class="searchTerm"
    placeholder="What are you looking for?">
    <button type="submit" class="searchButton">
      <i class="fas fa-search"></i>
      </button>
        </div>
      </div>

</div>

    <div class="container">
      <h1 class="logo"></h1>
      <nav>
        <ul>
          <li><a href="#">Categories</a></li>
          <li><a href="#">Your Recommendations</a></li>
          <li><a href="#">Today's Deals</a></li>
          <li><a href="#">Gift Cards</a></li>
        </ul>
      </nav>
    </div>
</header>

<div id="shopcart">
 <a href="cart.php"> <i class="fas fa-cart-plus"></i></a>
</div>




<!-- <div id="login">
  <a href="login.php">Login</a>
</div>
<div id="register">
  <a href="register.php">Register</a>
</div> -->

</body>
</html>
  </header>
