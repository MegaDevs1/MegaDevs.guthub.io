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
$Balance =  $PaidAmount - $Discount;
$ZaadNO = $_POST['ZaadNO'];
$paidStatus = 1;
$OwedAmount=$_POST['OwedAmount'];

$sql = mysqli_query($con , "SELECT * FROM `customers` WHERE ID = '$CustID'");
$row = mysqli_fetch_array($sql);
if ($row) {
$Paid = $row['2']+1;
$Cbundle = $row['4'];
$sql5 = mysqli_query($con , "SELECT * FROM `Bundles` WHERE BundlePrice = '$Cbundle'");
$row5 = mysqli_fetch_array($sql5);
    
$CustName = $row['1'];
$lol1 = $row5['3'];
$lol2 = $row5['2'];

if (!empty($CustID) && !empty($PaidAmount) && !empty($PType) || !empty($Discount) && !empty($Balance) && !empty($ZaadNO) || $OwedAmount) {
    
    $lol = mysqli_query($con,"INSERT INTO `payment` (`CustID`, `CustName`, `PayDate`, `PaidAmount`, `Discount`, `Zaad No`, `PaidStatus`,`PaymentType`,`AmountOwed`, `Previllage`) VALUES ('$CustID', '$CustName', '$PaidDate', '$Balance', '$Discount', '$ZaadNO', '$paidStatus','$PType','$OwedAmount','$getUser')");
    $ups=mysqli_query($con,"UPDATE `customers` SET `Paid`='$paidStatus' WHERE ID='$CustID'");


 if ($lol && $ups) {
        echo '<script>alert("Payment is Successfully added");
         location.replace("Custnotpaid.php")        
        </script>';

    // $success =  '<script>
    //  alertify.success("Payment is Successfully added");
    // </script>';
        //  echo "<script type='text/javascript'>
        // alert('Payment has been Edited')
        // location.replace('addpayment.php')
        // </script>";
}

else {
    echo mysqli_error($con);
 echo  '<script>
      alert("Data si not Saved");
     </script>';
}
}else{
     echo  '<script>
      alert("Please fill in the blanks");
     </script>';
}
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
                    <h1 class="h3 mb-4 text-gray-800 text text-center"><i class="fas fa-pen"></i>Add Payment</h1>
                    
                    <form class="user" method="POST">
                        <div class="form-group row">
                            <input type="text" name="CustID" id="search" class="form-control font-weight-bold col-lg-6 "
                                autocomplete="off" placeholder="search Customer name here...." hidden="">
                            <div id="output" hidden=""></div>
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <input type="text" name="CustID" class="form-control form-control-user font-weight-bold"
                                    name="CustID" placeholder="Enter Customer ID" value="<?php $ID=$_GET['ID']; echo $ID; ?>">
                            </div>
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <input type="numeric" name="PaidAmount"
                                    class="form-control form-control-user font-weight-bold" id="exampleInputEmail"
                                    placeholder="Paid Amount">
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6">
                                <select name="PType" class="form-control" id="exampleInputEmail"
                                    style="border-radius: 50px ">
                                    <option selected="">Select Payment Type</option>
                                    <option value="Zaad">Zaad</option>
                                    <option value="Edahab">Edahab</option>
                                    <option value="Cash">Cash</option>

                                </select>
                                
                            </div>
                            <br>
                            <div class="col-sm-6">
                                <input type="numeric" name="Discount"
                                    class="form-control form-control-user font-weight-bold" id="exampleInputEmail"
                                    placeholder="Discount" value="0">
                            </div>
                            </div>
                            <div class="col-sm-12">
                                <input type="numeric" name="ZaadNO"
                                    class="form-control form-control-user font-weight-bold" id="exampleInputEmail"
                                    placeholder="Zaad NO" autocomplete="off">
                            </div>
                            <br>
                            <div class="col-sm-12">
                                <input type="numeric" name="OwedAmount"
                                    class="form-control form-control-user font-weight-bold" id="exampleInputEmail"
                                    placeholder="Owed Amount" autocomplete="off" value="0">
                            </div>
               
                            <br>
                            <button type="submit" name="btn"
                            class="btn-lg btn-primary btn-user btn-block fs-4 text-decoration-none font-weight-bold">Add
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