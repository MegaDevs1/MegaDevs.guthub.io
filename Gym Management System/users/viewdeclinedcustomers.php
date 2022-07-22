<?php  
include 'user.php';
if (!isset($_SESSION['userName'])) {
    header('location: login.php');
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
                    <h1 class="h3 mb-2 text-gray-800">View Deleted Customer's</h1>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Deleted Customer's Info</h6>
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered font-weight-bold text-dark" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                         <tr class="font-weight-bold text-dark">
                                            <td>ID</td>
                                            <td>CustID</td>
                                            <td>Name</td>
                                            <td>Register Date</td>
                                            <td>Bundle Type</td>
                                            <td>Training Days</td>
                                            <td>Phone</td>
                                            <td>Shift</td>
                                            <td>Left Days</td>
                                            <td>Gender</td>
                                            <td>Approve</td>
                                            <td>Payment</td>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                             <tr class="font-weight-bold text-dark">
                                            <td>ID</td>
                                            <td>CustID</td>
                                            <td>Name</td>
                                            <td>Register Date</td>
                                            <td>Bundle Type</td>
                                            <td>Training Days</td>
                                            <td>Phone</td>
                                            <td>Shift</td>
                                            <td>Left Days</td>
                                            <td>Gender</td>
                                            <td>Approve</td>
                                            <td>Payment</td>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                         <?php 
                                    include 'config.php';
                                    $sql=mysqli_query($con,"SELECT * FROM deletedcustomer WHERE Gender='female' ORDER BY ID DESC");
                                    while ($row=mysqli_fetch_array($sql)) {
                                    
                                     ?>
                                        <tr class="font-weight-bold text-dark">
                                            <td><?php echo $row['17']; ?></td>
                                            <td><?php echo $row['0']; ?></td>
                                            <td><?php echo $row['1']; ?></td>
                                            <td><?php echo $row['3']; ?></td>
                                            <td><?php echo $row['4']; ?></td>
                                            <td><?php echo $row['5']; ?></td>
                                            <td><?php echo $row['6']; ?></td>
                                            <td><?php echo $row['7']; ?></td>
                                            <td><?php echo $row['8']; ?></td>
                                            <td><?php echo $row['9']; ?></td>
                                            <td><a href="ApproveDeclinedCustomers.php?ID=<?php echo $row['0']; ?>" class="btn btn-success font-weight-bold">Approve</a></td>
                                            <?php  if($row['2'] == 1) {
                                                ?>
                                            <td><p class="text-info font-weight-bold col-md-11">Paid</p></td> <?php } elseif ($row['2'] == 0) {
                                                ?>
                                              <td><p class="text-dark font-weight-bold" href="#">Not Paid</p></td> 
                                              <?php } ?>
                                        </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
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

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>
        <script src="alert/alertify.js"></script>
    <script type="text/javascript">
            window.preventDefault();
    </script>


</body>

</html>