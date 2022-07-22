<?php  
include 'config.php';
if (isset($_GET['ID'])) {
	$ID = $_GET['ID'];

	$sql = mysqli_query($con, "DELETE 	FROM  enrollment WHERE ID = $ID");

	$message = "user " . $ID . " Was Successfully DELETED";

        echo "<script type='text/javascript'>
        alert('$message')
        location.replace('ViewEnrollment.php')
        </script>";
}
?>