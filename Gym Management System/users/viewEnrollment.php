<?php  
include 'user.php';
if (!isset($_SESSION['userName'])) {
    header('location: index.php');
}
?>
<!DOCTYPE html>
<html lang="en">

<?php include 'title.php'; ?>

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

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Enrollment info</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Gender</th>
                                            <th>Bundle</th>
                                            <th>Phone</th>
                                            <th>Shift</th>
                                            <th>Date</th>
                                            <th>Approve</th>
                                            <th>Decline</th>
                                           
                                        </tr>
                                    </thead>
                                    <?php   

                                      include 'config.php';
                                      
                                      $sql = mysqli_query($con,"SELECT * FROM Enrollment");
                                      while ($row = mysqli_fetch_array($sql)) {
                                     ?>
                                    <tbody>
                                        <tr>
                                            <td><?php echo $row['0']; ?></td>
                                            <td><?php echo $row['1'];?></td>
                                            <td><?php echo $row['2'];?></td>
                                            <td><?php echo $row['3']; ?></td>
                                            <td><?php echo $row['4']; ?></td>
                                            <td><?php echo $row['5']; ?></td>
                                            <td><?php echo $row['6']; ?></td>
                                            <td><a href="enrollApprove.php?ID=<?php echo $row['0'] ?>" class="btn-lg btn-success" style="text-decoration: none;">Approve</a></td>
                                            <td><a href="DeleteEnrollment.php?ID=<?php echo $row['0'] ?>" class="btn-lg btn-danger"  style="text-decoration: none;">Delete</a>
                                        </tr>
                                        
                                    </tbody>
                                    <?php   } ?>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
                </div>
                <!-- /.container-fluid -->

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
<!-- 
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
 -->
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>