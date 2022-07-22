<?php 
session_start();
include 'config.php';
if (isset($_SESSION['userName'])) {
	

$user = $_SESSION['userName'];



$sql = mysqli_query($con,"SELECT * FROM users WHERE userName='$user'");
$myUser = mysqli_fetch_array($sql);

$getUser =  $myUser['1'];
$userID=$myUser['0'];
}
 ?>