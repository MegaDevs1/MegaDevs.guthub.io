<?php 
include 'user.php';
if (!isset($_SESSION['userName'])) {
    header('location: index.php');
}
include 'links.php'; 
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

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

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
                    <h1 class="h3 mb-2 text-gray-800">View Owed Money</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Owed Money Info</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                  <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Cust ID</th>
                                            <th>Customer Name</th>
                                            <th>Paid Date</th>                 
                                            <th>paidAmount</th>
                                            <th>Discount</th>
                                            <th>Send NO</th>
                                            <th>Payment Type</th>
                                            <th>Update</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                        
                                            <th>ID</th>
                                            <th>Cust ID</th>
                                            <th>Customer Name</th>
                                            <th>Paid Date</th>
                                            <th>paidAmount</th>
                                            <th>Discounted Pay</th>
                                            <th>Send NO</th>
                                            <th>Payment Type</th>
                                            <th>Update</th>
                                            <th>Delete</th>

                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <?php 
                                    include 'config.php';
                                    $sql=mysqli_query($con,"SELECT * FROM `payment` WHERE AmountOwed > 0 AND Previllage = '$getUser' ORDER BY `PayID` DESC");
                                    while ($row=mysqli_fetch_array($sql)) {
                                    
                                     ?>
                                        <tr class="font-weight-bold"> 
                                             <td><?php echo $row['0']; ?></td>
                                            <td><?php echo $row['1']; ?></td>
                                            <td><?php echo $row['2']; ?></td>
                                            <td><?php echo $row['3']; ?></td>
                                            <td><?php echo $row['4']; ?></td>
                                            <td><?php echo $row['5']; ?></td>
                                            <td><?php echo $row['6']; ?></td>
                                            <td><?php echo $row['8']; ?></td>
                                            <td><a href="EditPayment.php?ID=<?php echo $row['0']; ?>" class="btn btn-primary">Update</button></td>
                                            <td><a class="btn btn-danger class="text-light text-decoration-none font-weight-bold" href="paymentDelete.php?ID=<?php echo $row['0'] ?>"><i class="fas fa-trash"></i></a></td>
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

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

</body>

</html>