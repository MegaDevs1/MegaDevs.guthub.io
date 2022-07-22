<?php 
session_start();
include 'user.php';

$Active = mysqli_query($con,"UPDATE users SET Status = 0  WHERE ID = '$userID'"); 
session_destroy();
header("location: ../index.php");



 ?>