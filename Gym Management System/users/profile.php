<?php  
include 'user.php';
if (!isset($_SESSION['userName'])) {
    header('location: index.php');
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

    <title>Your Profile</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <?php include 'Sidebar.php'; ?>
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
                    <h1 class="h3 mb-4 text-gray-800 text-center">Your Profile</h1>
                    <div class="container">
    
     <div class="row text-warning">
            <div class="col">
                <div class="text-center card-box">
                    <div class="member-card pt-2 pb-2">
                        <div class=" mx-auto"><img height="100px" width="200px" src="img/undraw_profile.svg" class="rounded-circle img-thumbnail" alt="profile-image"</div>
                        <div class="">
                            <h4 class="font-weight-bold"><?php echo $getUser; ?></h4>
                            <?php  
                            include 'config.php';
                            $user = $_SESSION['userName'];
                            $sql = mysqli_query($con,"SELECT * FROM users WHERE Username='$user'");
                            $row = mysqli_fetch_array($sql);
                            ?>
                            <p class="text-muted">@Email <span>| </span><span><a  href="mailto:<?php  echo $row['3']; ?>" class="text-pink font-weight-bold"><?php echo $row['3']; ?></a></span></p>
                        </div>

                        <!-- <button type="button" class="btn btn-warning mt-3 btn-rounded waves-effect w-md waves-light">Message Now</button> -->
                        </div>
                     </div>
                </div>
            </div>
            <table class="table">
                <tr>
                <td>Your Name</td>
                <td>Your Number</td>
                <td>Your Email</td>
                <td>Your Privilage</td>    
                </tr>
                <tr>
                <?php  
                $sql1 = mysqli_query($con, "SELECT * FROM users WHERE UserName = '$user'");
                $fetch = mysqli_fetch_array($sql1);
                ?>
                     <td><?php echo $fetch['1']; ?></td>
                     <td><?php echo $fetch['4']; ?></td>
                     <td><?php echo $fetch['3']; ?></td>
                     <td><?php echo $fetch['6']; ?></td>

                </tr>
               
            </table>
            
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