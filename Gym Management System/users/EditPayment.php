<?php 
include 'config.php';
include 'user.php';
if (!isset($_SESSION['userName'])) {
    header('location: index.php');
}
include 'config.php';
$ID=$_GET['ID']; 
$query=mysqli_query($con,"SELECT * FROM payment WHERE PayID='$ID'");
if ($query) {
$show=mysqli_fetch_array($query);
$CustID = $show['1'];
if (isset($_POST['btn'])) {
$CustName =$_POST['CustName'];
$PaidDate = date("Y-m-d");
$PaidAmount = $_POST['PaidAmount'];
$PType = $_POST['PType'];
$Discount=$_POST['Discount'];
$Balance =   $PaidAmount - $Discount;
$ZaadNO = $_POST['ZaadNO'];
$PaidStatus = 1;
$OwedAmount=$_POST['OwedAmount'];

$sql1 = mysqli_query($con,"UPDATE `payment` SET `CustID`= '$CustID',`CustName`= '$CustName',`PayDate`= '$PaidDate',`PaidAmount`= '$PaidAmount',`Discount`= '$Discount',`Zaad No`= '$ZaadNO',`PaidStatus`= '$PaidStatus',`PaymentType`= '$PType' ,`AmountOwed`= '$OwedAmount' ,`Previllage`= '$getUser' WHERE PayID = '$ID'");

 if ($sql1 ) {
        // echo '<script>alert("Payment is Successfully added");</script>';

    // $success =  '<script>
    //  alertify.success("Payment is Successfully added");
    // </script>';
         echo "<script type='text/javascript'>
        alert('Payment has been Edited')
        window.location='viewpayment.php'
        </script>";
}
else {
    echo mysqli_error($con);
 echo  '<script>
      alert("Data si not Saved");
     </script>';
 }
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
                    <h1 class="h3 mb-4 text-gray-800 text text-center"><i class="fas fa-pen"></i>Update Payment</h1>
                    <?php
                    
                     ?>
                    <form class="user" method="POST">
                        <div class="row">
                            <div class="col-sm-6 mb-3 ">
                                <input type="text" name="CustName" class="form-control form-control-user font-weight-bold"
                                 placeholder="Enter Customer ID" value="<?php echo $show['2']; ?>">
                            </div>
                            <div class="col-sm-6 mb-3 ">
                                <input type="numeric" name="PaidAmount"
                                    class="form-control form-control-user font-weight-bold" id="exampleInputEmail"
                                    placeholder="Paid Amount" value="<?php echo $show['4']; ?>">
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6">
                                <select name="PType" class="form-control" id="exampleInputEmail"
                                    style="border-radius: 50px ">
                                    <option selected=""><?php echo $show['8']; ?></option>
                                    <option value="Zaad">Zaad</option>
                                    <option value="Edahab">Edahab</option>
                                    <option value="Cash">Cash</option>

                                </select>
                                
                            </div>
                            <br>
                            <div class="col-sm-6">
                                <input type="numeric" name="Discount"
                                    class="form-control form-control-user font-weight-bold" id="exampleInputEmail"
                                    placeholder="Discount" value="<?php echo $show['5']; ?>">
                            </div>
                            </div>
                            <div class="col-sm-12">
                                <input type="numeric" name="ZaadNO"
                                    class="form-control form-control-user font-weight-bold" id="exampleInputEmail"
                                    placeholder="Zaad NO" autocomplete="off" value="<?php echo $show['6']; ?>">
                            </div>
                            <br>
                            <div class="col-sm-12">
                                <input type="numeric" name="OwedAmount"
                                    class="form-control form-control-user font-weight-bold" id="exampleInputEmail"
                                    placeholder="Owed Amount" autocomplete="off" value="<?php echo $show['9']; ?>">
                            </div>
                            <?php } ?>
                            <br>
                            <button type="submit" name="btn"
                            class="btn-lg btn-primary btn-user btn-block fs-4 text-decoration-none font-weight-bold">Edit
                            Payment</button>
                        <hr>

                    </form>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
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
    <script src="alert/alertify.js"></script>
    <script>
    window.preventDefault();
    </script>
    <?php 
    if (isset($_POST['add'])) {
    echo $success;
    echo $Danger; 
    echo $check1; 
    echo $check2; 
    echo $check3; 
    echo $check4; 
    echo $check5; 
    echo $check6; 
    }
    ?>
</body>

</html>