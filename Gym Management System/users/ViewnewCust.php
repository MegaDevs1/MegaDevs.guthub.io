<?php 
include 'links.php'; 
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
                    <h1 class="h3 mb-2 text-gray-800">View New Customers</h1>
                    <form method="POST">
                     <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    <label class="label-control">Start Date</label>
                                        <input type="date" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="First Name" name="StartD" required="">
                                    </div>
                                    <div class="col-sm-6">
                                    <label class="label-control">End Date</label>
                                        <input type="date" class="form-control form-control-user" id="exampleLastName"
                                             name="EndD" required="">
                                    </div>
                                </div>
                    <br>
                    <button type="submit" name="done" class="btn btn-info form-control">Search</button>
                    </form>
                    <br>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Customer Info</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr class="font-weight-bold text-dark">
                                            <td>ID#</td>
                                            <td>Image</td>
                                            <td>Name</td>
                                            <td>Register Date</td>
                                            <td>Bundle Type</td>
                                            <td>Phone</td>
                                            <td>Shift</td>
                                            <td>Gender</td>
                                            <td>Update</td>
                                            <td>Decline</td>

                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php 
                                    include 'config.php';
                                    @$StartD=$_POST['StartD'];
                                    @$EndD=$_POST['EndD'];
                                    if (isset($_POST['done'])) {
                                    
                                    $sql=mysqli_query($con,"SELECT * FROM `customers` WHERE RegDate BETWEEN '$StartD' AND '$EndD' AND Previllage = '$getUser' ORDER BY `ID` DESC");
                                    while ($row=mysqli_fetch_array($sql)) {
                                    
                                     ?>
                                        <tr class="font-weight-bold text-dark">
                                            <td><?php echo $row['0']; ?></td>
                                            <td><?php 
                                            if ($row['9']=="female" && empty($row['14'])) {
                                                echo '<img src="img/undraw_profile_1.svg" height="100px" width="100px" style="border-radius: 50px">';
                                            }elseif ($row['9']=="male" && empty($row['14'])) {
                                                echo '<img src="img/undraw_profile_2.svg" height="100px" width="100px" style="border-radius: 50px">';
                                            }else{
                                             ?>
                                            <img src="include/CustomerImage/<?php echo $row['14']; ?>" height="100px" width="100px" style="border-radius: 50px">
                                            <?php } ?>
                                            </td>
                                            <td><?php echo $row['1']; ?></td>
                                            <td><?php echo $row['3']; ?></td>
                                            <td><?php echo $row['4']; ?></td>
                                            <td><?php echo $row['6']; ?></td>
                                            <td><?php echo $row['8']; ?></td>
                                            <td><?php echo $row['9']; ?></td>
                                            <td><a href="editCustomer.php?ID=<?php echo $row['0']; ?>" class="btn btn-primary"><i class="fas fa-edit"></i></a></td>
                                            
                                               <td><button class="btn btn-danger"><a class="text-light text-decoration-none font-weight-bold" href="DeclineCustomer.php?ID=<?php echo $row['0'] ?>"><i class="fas fa-trash"></i></a></button></td>
                                        </tr>
                                        <?php } ?>
                                        <?php }else{
                                    include 'config.php';
                                    @$StartD=$_POST['StartD'];
                                    @$EndD=$_POST['EndD'];
                                    if (!isset($_POST['done'])) {
                                    
                                    $sql=mysqli_query($con,"SELECT * FROM `customers` WHERE Previllage = '$getUser' ORDER BY `ID` DESC limit 20");
                                    while ($row=mysqli_fetch_array($sql)) { ?>
                                        
                                    
                                   
                                        <tr class="font-weight-bold text-dark">
                                            <td><?php echo $row['0']; ?></td>
                                            <td><?php 
                                            if ($row['9']=="female" && empty($row['14'])) {
                                                echo '<img src="img/undraw_profile_1.svg" height="100px" width="100px" style="border-radius: 50px">';
                                            }elseif ($row['9']=="male" && empty($row['14'])) {
                                                echo '<img src="img/undraw_profile_2.svg" height="100px" width="100px" style="border-radius: 50px">';
                                            }else{
                                             ?>
                                            <img src="include/CustomerImage/<?php echo $row['14']; ?>" height="100px" width="100px" style="border-radius: 50px">
                                            <?php } ?>
                                            </td>
                                            <td><?php echo $row['1']; ?></td>
                                            <td><?php echo $row['3']; ?></td>
                                            <td><?php echo $row['4']; ?></td>
                                            <td><?php echo $row['6']; ?></td>
                                            <td><?php echo $row['8']; ?></td>
                                            <td><?php echo $row['9']; ?></td>
                                            <td><a href="editCustomer.php?ID=<?php echo $row['0']; ?>" class="btn btn-primary"><i class="fas fa-edit"></i></a></td>
                                            
                                               <td><button class="btn btn-danger"><a class="text-light text-decoration-none font-weight-bold" href="DeclineCustomer.php?ID=<?php echo $row['0'] ?>"><i class="fas fa-trash"></i></a></button></td>
                                        </tr>
                                        <?php }} ?>
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