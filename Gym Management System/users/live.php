<?php
include 'config.php';
 
  if (isset($_POST['query'])) {
     
    $sql = mysqli_query($con, "SELECT * FROM Customers WHERE ID LIKE '{$_POST['query']}%' LIMIT 20");
    // $sql1 = mysqli_query($con, "SELECT * FROM Customers WHERE Name LIKE '{$_POST['query']}%' LIMIT 20");
  if (mysqli_num_rows($sql) > 0) {
     while ($user = mysqli_fetch_array($sql)) {
      echo $user['ID'];
  }
  } else {
    echo "<p style='color:red'>User not found...</p>";
  }
 
}
?>
