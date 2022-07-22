<?php  
include 'user.php';
if (!isset($_SESSION['userName'])) {
    header('location: index.php');
}
?>
<!DOCTYPE html>
<html lang="en">

<head>

<?php include 'links.php'; ?>


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
                    <h1 class="h3 mb-4 text-gray-800 text-center">Latest Member</h1>
                    <div class="container">
    
     <div class="row text-warning">
            <div class="col">
                <div class="text-center card-box">
                    <div class="member-card pt-2 pb-2">
                    <?php include 'config.php';
                    $date=date("Y-m-d");
                    $se=mysqli_query($con,"SELECT * FROM `updateworkoutstatus` WHERE Date='$date' ORDER BY `updateworkoutstatus`.`UpdateID` DESC limit 1 ");
                    $fe=mysqli_fetch_array($se);
                    $ID=$fe['1'];
                    $q=mysqli_query($con,"SELECT * FROM customers WHERE ID='$ID'");
                    
                    if ($q) {
                        $show=mysqli_fetch_array($q);
                   ?>
                        <div class=" mx-auto"><?php 
                                            if ($show['9']=="female" && empty($show['14'])) {
                                                echo '<img src="img/undraw_profile_1.svg" height="100px" width="100px" style="border-radius: 50px">';
                                            }elseif ($show['9']=="male" && empty($show['14'])) {
                                                echo '<img src="img/undraw_profile_2.svg" height="100px" width="100px" style="border-radius: 50px">';
                                            }elseif ($show['9']=="male" && !empty($show['14'])) {
                                             ?>
                                            <img src="include/CustomerImage/<?php echo $show['14']; ?>" height="100px" width="100px" style="border-radius: 50px">
                                            <?php }else{ ?>
                                            <img src="img/undraw_profile.svg" height="100px" width="100px" style="border-radius: 50px">
                                            <?php } ?>
                                    </div>
                        <div class="">
                            <h4><?php echo $show['1']; ?></h4>
                            <p class="text-muted">End Date <span>| </span><span><?php echo $show['8']; ?></span></p>
                        </div>

                        <!-- <button type="button" class="btn btn-warning mt-3 btn-rounded waves-effect w-md waves-light">Message Now</button> -->
                        </div>
                     </div>
                </div>
            </div>

            <table class="table">
                <tr>
                   <td>Your Name</td>
                <td>Left Days</td>
                 <td>Your Number</td>
                </tr>
                <tr>

   <!-- -->
                    <td><?php echo $show['1']; ?></td>
                     <td><?php echo $show['15']; ?></td>
                     <td><?php echo $show['6']; ?></td>

                </tr>
            </table>
            <?php } ?>
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