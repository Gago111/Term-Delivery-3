<?php
$page = $_SERVER['PHP_SELF'];
$sec = "30";
header("Refresh: $sec; url=$page");
function pingDomain($domain){
    $starttime = microtime(true);
    $file      = fsockopen ($domain, 80, $errno, $errstr, 10);
    $stoptime  = microtime(true);
    $status    = 0;

    if (!$file) $status = -1;
    else {
        fclose($file);
        $status = ($stoptime - $starttime) * 1000;
        $status = floor($status);
    }
    return $status;
}
?>

<DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "DTD/xhtml1-transitional.dtd">
<html>
<head>
<link rel="stylesheet" href="style.css">
<body>
      <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" name="domain">
        Domain name:
        <table>
          <input name="domainname" type="text" >
          <input type="submit" name="submitBtn" value="Ping domain">
        </table>
      </form>
<?php

    if (isset($_POST['submitBtn'])){
        $domainbase = (isset($_POST['domainname'])) ? $_POST['domainname'] : '';
        $domainbase = str_replace("http://","",strtolower($domainbase));

        echo '<table>';

        $status = pingDomain($domainbase);
        if ($status != -1) echo "<tr><td>http://$domainbase ($status ms)</td><tr>";
        else  echo "<tr><td>http://$domainbase is DOWN</td><tr>";

         echo '</table>';
    }
?>
</body>
</html>
              <?php
              echo "<pre>";
              $host1 = 'www.google.com';
              $pingTime1 = shell_exec('ping -q -c1 '. $host1 .'  | cut -d "/" -s -f5');

              $host2 = 'www.youtube.com';
              $pingTime2 = shell_exec('ping -q -c1 '. $host2 .'  | cut -d "/" -s -f5');

              $host3 = 'www.facebook.com';
              $pingTime3 = shell_exec('ping -q -c1 '. $host3 .'  | cut -d "/" -s -f5');

              echo "Google:" . $pingTime1 . "ms\n";
              echo "Youtube:" . $pingTime2 . "ms\n";
              echo "Facebook:" . $pingTime3 . "ms\n";

      $query = "SELECT * FROM `ping`";
      $search_result = filterTable($query);

function filterTable($query)
{
      $connect = mysqli_connect("127.0.0.1", "root", "raspberry", "network");
      $filter_Result = mysqli_query($connect, $query);
      return $filter_Result;
}
?>
<?php while($row = mysqli_fetch_array($search_result)):?>
<br>
<form class="" action="changes.php" method="post">
 <?php echo "URL: " . $row['url'] . " | Avarage ms: " . $row['ms'];?>
</form>
<?php endwhile;?>
