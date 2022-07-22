<?php 
include 'config.php';
// include 'user.php';
// if (!isset($_SESSION['userName'])) {
//     header('location: index.php');
// }
if (isset($_POST['Register'])) {
$Name = mysqli_real_escape_string($con, $_POST['Name']);
// $RDate = date("Y-m-d");
$Phone = mysqli_real_escape_string($con, $_POST['PhoneNo']);
$Username= mysqli_real_escape_string($con, $_POST['Username']);
$Email= mysqli_real_escape_string($con, $_POST['Email']);
$Password= mysqli_real_escape_string($con, $_POST['Password']);
$Shift= mysqli_real_escape_string($con, $_POST['Shift']);
$userType= mysqli_real_escape_string($con, $_POST['userType']);
$Picture1 = $_FILES['Picture']['name'];
$tmp = $_FILES['Picture']['tmp_name'];
$size = $_FILES['Picture']['size'];
$Location = "include/profiles/";
$Password_hash = password_hash($Password , PASSWORD_DEFAULT);
// $hash = substr($Password_hash, 0, 60);
if (!empty($Name) && !empty($Phone) && !empty($Username) && !empty($Password) && !empty($userType) || !empty($Email) || !empty($Shift) || !empty($Picture1)){
if (move_uploaded_file($tmp, $Location.$Picture1)) {
$sql = mysqli_query($con , "INSERT INTO `users`(`Name`, `Username`, `Email`, `Phone`, `Shift`, `userType`, `Status`, `UserProfile`, `Password`) VALUES ('$Name' , '$Username' , '$Email' , '$Phone' , '$Shift' , '$userType' , '0' , '$Picture1' , '$Password_hash')");
if ($sql) {
    // $success = '<script>
    //  alertify.success("Customer is Successfully added");
    // </script>';
    echo "<script type='text/javascript'>
        alert('Account Created Successfully')
        location.replace('Register.php')
        </script>";
}
}
}
else{
 echo "<script type='text/javascript'>
        alert('Please Fill in All Blanks')
        location.replace('Register.php')
        </script>";
 }
}
 ?>
<!DOCTYPE html>
<html lang="en">

<head>
<?php include 'title.php'; ?>
</head>

<body id="page-top">

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
                    <div class="container">
                         <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                
                    <div class="col">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-regular font-weight-bold mb-4">Register Account</h1>
                            </div>
                            <form method="POST" enctype="multipart/form-data">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" name="Name" class="form-control form-control-user" id="exampleFirstName" placeholder="name" autocomplete="off">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user" id="exampleLastName" name="PhoneNo" placeholder="PhoneNo" autocomplete="off">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6">
                                    <input type="text" class="form-control form-control-user" id="exampleInputEmail" name="Username" placeholder="Username" autocomplete="off">
                                </div>
                                    <div class="col-sm-6">
                                    <input type="Email" class="form-control form-control-user" id="exampleInputEmail" name="Email" placeholder="Email" autocomplete="off">
                                </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user" name="Password" id="exampleInputPassword" placeholder="Password" autocomplete="off">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="file" class="form-control-user" id="exampleFirstName" name="Picture" autocomplete="off">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                         <select class="form-control" id="exampleInputPassword" name="Shift"  autocomplete="off">
                                                <option selected="">Please choose Shift</option>
                                                <option value="Morning">Morning</option>
                                                <option value="Evening">Evening</option>
                                                <option value="Morning">Both</option>
                                            </select>
                                    </div>
                                <div class="col-sm-6 mb-3 ">
                                            <select class="form-control "
                                            id="exampleInputPassword" name="userType" required="" autocomplete="off">
                                                <option selected="">Please choose User-Type</option>
                                                <option value="Superadmin">Superadmin</option>
                                                <option value="Admin">Admin</option>
                                                <option value="user">User</option>
                                            </select>
                                    </div>
                                </div>    
                                <button name="Register" class="btn btn-primary btn-user btn-block mb-3"> Register Account </button> 
                            </form>
                    </div>
                </div>
        </div>

    </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            
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
                    <a class="btn btn-primary" href="logout.php">Logout</a>
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