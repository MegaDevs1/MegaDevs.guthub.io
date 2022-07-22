<?php 
include 'config.php';
include 'user.php';
if (!isset($_SESSION['userName'])) {
    header('location: index.php');
}
if (isset($_POST['update'])) {
$CustID = $_POST['CustID'];
// $PTraining = $_POST['PTraining'];
$Present = 1;
$date=date("Y-m-d");



$check = mysqli_query($con,"SELECT * FROM `customers` WHERE ID='$CustID'");
$result = mysqli_fetch_array($check);
$Days=$result['15']-1;



 // $fetch=mysqli_fetch_array($sql);
if ($result['8']== $date || $result['8']<$date || $Days==0 || $Days<1) {

        echo '<audio id="myAudio"  autoPlay>
        <source src="End.mp3" type="audio/mp3">
      </audio>';
        //echo '<script>alert("Workout has Successfully Updated")</script>';
    }else{
        $update = mysqli_query($con,"INSERT INTO `UpdateWorkoutStatus`(`CustID`, `Date`, `PresentCust`) VALUES ('$CustID','$date',$Present)");

 $sql = mysqli_query($con,"UPDATE `customers` SET `Days`='$Days' WHERE `ID`= '$CustID'");
if ($update&&$sql) {
    

    
        echo '<script>alert("Workout has Successfully Updated")</script>';
    }
 else{
        echo '<script>alert("Something is wrong");</script>';
    }

}

// else{


    // echo '<script>alert("Your Data is Not Saved!");</script>';
    // echo mysqli_error($con); 
//}
// echo '<audio id="myAudio"  autoPlay>
//         <source src="End.mp3" type="audio/mp3">
//       </audio>';
}

 ?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Muscle Challenge</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top" >

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
<?php include 'sidebar.php'; ?>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
               <?php include 'topbar.php'; ?>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800 text text-center"><i class="fas fa-pen"></i>Update Workouts</h1>
                    <form class="user" method="POST">
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="exampleFirstName" name="CustID" required 
                                            placeholder="Customer ID">
                                    </div>
                                   
                                </div>
                                
                              
                                
                                
                              <button type="submit" name="update" class="btn btn-primary btn-user btn-block">
                                    Update
                                </button>
                                <hr>

                            </form>

                </div>
                <!-- /.container-fluid -->
                <!-- <audio id="myAudio"  autoPlay>
                     <source src="End.mp3" type="audio/mp3">
                </audio> -->


            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <?php include 'footer.php'; ?>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>