<?php 
include 'config.php';
include 'user.php';
if (!isset($_SESSION['userName'])) {
    header('location: index.php');
}
if (isset($_POST['btn'])) {
$CustID=$_POST['CustID'];
$PaidDate = date("Y-m-d");
$PaidAmount = $_POST['PaidAmount'];
$PType = $_POST['PType'];
$Discount=$_POST['Discount'];
$Balance =   $PaidAmount - $Discount;
$ZaadNO = $_POST['ZaadNO'];
$paidStatus = 1;
$OwedAmount=$_POST['OwedAmount'];

$sql = mysqli_query($con , "SELECT * FROM `customers` WHERE ID = '$CustID'");
$row = mysqli_fetch_array($sql);
if ($row) {
$Paid = $row['2']+1;
$CustName = $row['1'];
$inID=$row['0'];

if (!empty($CustID) && !empty($PaidAmount) || !empty($Discount) && !empty($ZaadNO) && !empty($PType) || !empty($OwedAmount)) {
$sql1 = mysqli_query($con,"INSERT INTO `payment` (`CustID`, `CustName`, `PayDate`, `PaidAmount`, `Discount`, `Zaad No`, `PaidStatus`,`PaymentType`,`AmountOwed` , `Previllage`) VALUES ('$CustID', '$CustName', '$PaidDate', '$Balance', '$Discount', '$ZaadNO', '$paidStatus','$PType','$OwedAmount','$getUser')");
$ups=mysqli_query($con,"UPDATE `customers` SET `Paid`='$paidStatus' WHERE ID='$CustID'");

 if ($sql1 && $ups) {
        echo '<script>alert("Payment is Successfully added");</script>';
        header("location: invoice.php?ID=$inID");
    // $success =  '<script>
    //  alertify.success("Payment is Successfully added");
    // </script>';
        //  echo "<script type='text/javascript'>
        // alert('Payment has been Edited')
        // location.replace('addpayment.php')
        // </script>";
}
}
else {
    // echo mysqli_error($con);
 echo  '<script>
      alert("Data si not Saved");
     </script>';}
}
}
else {
    // $Danger =  '<script>
    //  alertify.warning("Your ID is Not found!");
    // </script>';
    echo mysqli_error($con);
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
                    <h1 class="h3 mb-4 text text-center font-weight-bold text-dark"><i class="fas fa-plus"> </i> Add Payment</h1>
                    <form class="user font-weight-bold text-dark" method="POST">
                        <div class="form-group row">
                        <div class="col-sm-6 mb-3">
                                <input type="text" name="CustID" class="form-control form-control-user font-weight-bold" name="CustID" placeholder="Enter Customer ID" required="">
                            </div>
                            <div class="col-sm-6 mb-3">
                                <input type="numeric" name="PaidAmount"
                                    class="form-control form-control-user font-weight-bold" id="exampleInputEmail"
                                    placeholder="Paid Amount" required=""> 
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6">
                                <select name="PType" class="form-control font-weight-bold" id="exampleInputEmail" style="border-radius: 50px " required="">
                                    <option selected="">Select Payment Type</option>
                                    <option value="Zaad">Zaad</option>
                                    <option value="Edahab">Edahab</option>
                                    <option value="Cash">Cash</option>

                                </select>
                                
                            </div>
                            <br>
                            <div class="col-sm-6">
                                <input type="numeric" name="Discount" class="form-control form-control-user font-weight-bold" id="exampleInputEmail"
                                    placeholder="Discount" value="0">
                            </div>
                            </div>
                            <div class="col-sm-12">
                                <input type="numeric" name="ZaadNO" class="form-control form-control-user font-weight-bold" id="exampleInputEmail" placeholder="Zaad NO" autocomplete="off" required="">
                            </div>
                            <br>
                            <div class="col-sm-12">
                                <input type="numeric" name="OwedAmount" class="form-control form-control-user font-weight-bold" id="exampleInputEmail" placeholder="Owed Amount" autocomplete="off" value="0">
                            </div>
                            <br>
                            <button type="submit" name="btn" class="btn-lg btn-primary btn-user btn-block fs-4 text-decoration-none font-weight-bold">Add
                            Payment</button>
                        <hr>

                    </form>

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