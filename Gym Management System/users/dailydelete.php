<?php 
include 'config.php';
if (isset($_GET['ID'])) {
	$ID = $_GET['ID'];


	

    $Delete = mysqli_query($con , "DELETE FROM `daily customers` WHERE ID = '$ID'");
	if ($Delete) {

		 $message = "User " . $ID . " Was Successfully Deleted";

		   echo "<script type='text/javascript'>
        alert('$message')
        location.replace('viewDailtyCustomers.php')
        </script>";
	}else {
	$error = "Column ". $ID . " Was Not Successfully Deleted";
	   echo "<script type='text/javascript'>
        alert('$message')
        location.replace('viewDailtyCustomers.php')
        </script>";
	}
}
?>
<script type="text/javascript">
    window.preventDefault();
</script>