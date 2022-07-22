<?php  
include 'config.php';
if (isset($_GET['ID'])) {
	$ID = $_GET['ID'];

 $Delete = mysqli_query($con , "DELETE FROM deletedCustomer WHERE ID = '$ID'");
	if ($Delete) {

		 $message = "User " . $ID . " Was Successfully Deleted";

		   echo "<script type='text/javascript'>
        alert('$message')
        location.replace('viewdeclinedcustomers.php')
        </script>";
	}

}

?>