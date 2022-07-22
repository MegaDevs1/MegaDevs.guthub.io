<?php  
include 'config.php';
if (isset($_GET['ID'])) {
	$ID = $_GET['ID'];

 $Delete = mysqli_query($con , "DELETE FROM notes WHERE NoteID = '$ID'");
	if ($Delete) {

		 $message = "Note " . $ID . " Was Successfully Deleted";

		   echo "<script type='text/javascript'>
        alert('$message')
        location.replace('viewNote.php')
        </script>";
	}

}

?>