<?php  
include 'config.php';
include 'user.php';
if (!isset($_SESSION['userName'])) {
    header('location: index.php');
}
if (isset($_GET['ID'])) {
	$ID = $_GET['ID'];

	$select = mysqli_query($con ,"SELECT * FROM deletedcustomer WHERE ID = '$ID'");
	$row = mysqli_fetch_array($select);
	$Name = $row['1'];
	$paidstatus=$row['2'];
	$RegDate=$row['3'];
	$bundle=$row['4'];
	$StartingDate=$row['5'];
	$phone=$row['6'];
	$shift=$row['7'];
	$EndingDate=$row['8'];
	$Gender = $row['9'];
	$username =$row['10'];
	$password=$row['11'];
	$active=$row['12'];
	$Address=$row['13'];
	$Custimage=$row['14'];
	$Days=$row['15'];


	$insert = mysqli_query($con, "INSERT INTO `customers` (`ID`, `Name`, `Paid`, `RegDate`, `Bundle`, `StartingDate`, `Phone`, `Shift`, `EndingDate`, `Gender`, `username`, `password`, `ActiveStatus`, `Address`, `Custimage`, `Days`) VALUES ('$ID' , '$Name', '$paidstatus','$RegDate','$bundle','$StartingDate','$phone','$shift','$EndingDate','$Gender','$username','$password','$active','$Address','$Custimage','$Days')");
	if ($insert) {
		 $message = "User " . $ID . " Was Successfully Approved";

		   echo "<script type='text/javascript'>
        alert('$message')
        location.replace('viewdeclinedcustomers.php')
        </script>";
	}else{
		echo "isnot working";
		echo mysqli_error($con);
	}

 $Delete = mysqli_query($con , "DELETE FROM deletedCustomer WHERE ID = '$ID'");
	if ($Delete) {

		 $message = "User " . $ID . " Was Successfully Deleted";

		   echo "<script type='text/javascript'>
        alert('$message')
        location.replace('viewdeclinedcustomers.php')
        </script>";
	}
	else {
		echo mysqli_error($con);
	}

}


?>