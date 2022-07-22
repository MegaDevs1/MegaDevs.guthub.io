<?php 
include 'config.php';
include 'user.php';
if (!isset($_SESSION['userName'])) {
    header('location: login.php');
}
if (isset($_GET['ID'])) {
	$ID = $_GET['ID'];


	

    $Delete = mysqli_query($con , "DELETE FROM `payment` WHERE PayID = '$ID'");
	if ($Delete) {

		 $message = "Payment " . $ID . " Was Successfully Deleted";

		   echo "<script type='text/javascript'>
        alert('$message')
        location.replace('viewpayment.php')
        </script>";
	}
	else {
	$error = "Payment ". $ID . " Was Not Deleted";
	   echo "<script type='text/javascript'>
        alert('$error')
        location.replace('viewpayment.php')
        </script>";
	}
}
?>
<script type="text/javascript">
    window.preventDefault();
</script>