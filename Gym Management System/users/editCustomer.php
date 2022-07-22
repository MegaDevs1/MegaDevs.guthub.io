<?php 
include 'config.php';
include 'user.php';
if (!isset($_SESSION['userName'])) {
    header('location: login.php');
}
if (isset($_POST['add'])) {
$Name=$_POST['Name'];
$ID=$_GET['ID'];
$RDate= date("Y-m-d");
$Gender = $_POST['Gender'];
$BundlePrice = $_POST['BundlePrice'];
$Phone = $_POST['Phone'];
$Shift=$_POST['Shift'];
$Address=$_POST['Address'];
$StartingD = $_POST['StartingD'];
$EndingD=$_POST['EndingD'];

$Picture1 = $_FILES['Picture1']['name'];
$tmp = $_FILES['Picture1']['tmp_name'];
$size = $_FILES['Picture1']['size'];
$Location = "include/CustomerImage/";

if (!empty($Name) &&  !empty($BundlePrice) && !empty($Phone) && !empty($Shift) && !empty($Gender)  ) {
if (move_uploaded_file($tmp, $Location.$Picture1)) {
$sql3 = mysqli_query($con , "SELECT * FROM bundles WHERE BundleName='$BundlePrice'");
$fetch1 = mysqli_fetch_array($sql3); 

$Bname=$fetch1['1'];
$sql = mysqli_query($con , "UPDATE `customers` SET `Name`='$Name',`RegDate`='$RDate',`Bundle`='$Bname',`StartingDate`='$StartingD',`Phone`='$Phone',`Shift`='$Shift',`EndingDate`='$EndingD',`Gender`='$Gender',`Address`='$Address',`Custimage`='$Picture1' WHERE ID='$ID'");
if ($sql) {
    // $success = '<script>
    //  alertify.success("Customer is Successfully added");
    // </script>';
     echo "<script type='text/javascript'>
        alert('Customer has been Edited')
        location.replace('viewcust.php')
        </script>";
} 
else {
        //   $Danger =  '<script>
        //  alertify.warning("Data Is Not Saved");
        // </script>';
    echo "<script type='text/javascript'>
        alert('Data is Not Saved')
        </script>";
    echo mysqli_error($con);
}
}
else{
$sql3 = mysqli_query($con , "SELECT * FROM bundles WHERE BundleName='$BundlePrice'");
$fetch1 = mysqli_fetch_array($sql3); 

$Bname=$fetch1['1'];
$sql = mysqli_query($con , "UPDATE `customers` SET `Name`='$Name',`Paid`='0',`RegDate`='$RDate',`Bundle`='$Bname',`StartingDate`='$StartingD',`Phone`='$Phone',`Shift`='$Shift',`EndingDate`='$EndingD',`Gender`='$Gender',`Address`='$Address',`Custimage`='$Picture1' WHERE ID='$ID'");
if ($sql) {
    // $success = '<script>
    //  alertify.success("Customer is Successfully added");
    // </script>';
     echo "<script type='text/javascript'>
        alert('Customer has been Edited')
        location.replace('viewcust.php')
        </script>";
} 
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
                    <h1 class="h3 mb-4 text-gray-800 text text-center"><i class="fas fa-pen"></i>Update Customer info</h1>
                    <form class="user" method="POST" enctype="multipart/form-data">
                    <?php 
                    include 'config.php';
                    $ID=$_GET['ID'];
                    $q=mysqli_query($con,"SELECT * FROM customers WHERE ID='$ID'");
                    $f=mysqli_fetch_array($q);
                     ?>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user font-weight-bold" id="exampleFirstName" name="Name" 
                                            placeholder="Full Name" value="<?php echo $f['1']; ?>">
                                            <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($Name)): ?>
                                                   <?php $check1 = '<script>
                                                   alertify.error("Enter your Fullname ");
                                                   </script>';;?>
                                                <?php endif ?>
                                            <?php endif ?> 
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <select name="Gender" class="form-control font-weight-bold" id="exampleInputEmail" 
                                            style="border-radius: 20px" required>
                                            <option selected="" class="font-weight-bold"><?php echo $f['9']; ?></option>
                                            <option value="male" class="font-weight-bold">Male</option>
                                            <option value="female" class="font-weight-bold">Female</option>
                                             <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($_POST['Gender'])): ?>
                                                   <?php $check2 = '<script>
                                                   alertify.error("Select Gender");
                                                   </script>';;?>
                                                <?php endif ?>
                                            <?php endif ?>  
                                            </select>
                                    </div>
                                   </div> 
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                            <select name="BundlePrice" class="form-control " id="exampleInputEmail" style="border-radius: 20px ">
                                            <option selected="" ><?php echo $f['4']; ?></option>
                                           <?php 
                                            include 'config.php';
                                            $sql2 = mysqli_query($con, "SELECT * FROM `bundles`");
                                            while ($fetch = mysqli_fetch_array($sql2)) {
                                             ?>
                                            <option class="font-weight-bold" value="<?php echo $fetch['1'] ?>">
                                            <?php echo $fetch['1']." Membership"?>
                                            </option>
                                            <?php } ?>
                                        </select>
                                          <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($BundlePrice)): ?>
                                                   <?php $check3 = '<script>
                                                   alertify.error("Select Bundle");
                                                   </script>';;?>
                                                <?php endif ?>
                                            <?php endif ?>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="numeric" name="Phone" class="form-control form-control-user font-weight-bold" id="exampleRepeatPassword" placeholder="Phone" value="<?php echo $f['6']; ?>">
                                        <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($Phone)): ?>
                                                   <?php $check4 = '<script>
                                                   alertify.error("Enter Your Phone No");
                                                   </script>';;?>
                                                <?php endif ?>
                                            <?php endif ?> 
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <select name="Shift" class="form-control font-weight-bold" id="exampleInputEmail" 
                                            style="border-radius: 20px" required>
                                            <option selected="" class="font-weight-bold"><?php echo $f['7']; ?></option>
                                            <option value="Morning" class="font-weight-bold">Morning</option>
                                            <option value="Afternoon" class="font-weight-bold">Afternoon</option>
                                            <option value="Evening" class="font-weight-bold">Evening</option>
                                             <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($_POST['Shift'])): ?>
                                                   <?php $check2 = '<script>
                                                   alertify.error("Select shift");
                                                   </script>';;?>
                                                <?php endif ?>
                                            <?php endif ?>  
                                            </select>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" name="Address" class="form-control form-control-user font-weight-bold" id="exampleRepeatPassword" placeholder="Address" value="<?php echo $f['13']; ?>">
                                        <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($Phone)): ?>
                                                   <?php $check4 = '<script>
                                                   alertify.error("Enter Your Phone No");
                                                   </script>';;?>
                                                <?php endif ?>
                                            <?php endif ?> 
                                    </div>
                                </div>
                                <div class="form-group row">
                            <input type="text" name="CustID" id="search" class="form-control font-weight-bold col-lg-6 "
                                autocomplete="off" placeholder="search Customer name here...." hidden="">
                            <div id="output" hidden=""></div>
                            <div class="col-sm-6 mb-3 mb-sm-0">
                            <label class="">Starting Date</label>
                                <input type="date" name="StartingD" class="form-control form-control-user font-weight-bold"
                                    name="CustID" placeholder="Enter Customer ID" value="<?php echo $f['5']; ?>">
                            </div>
                            <div class="col-sm-6 mb-3 mb-sm-0">
                            <label class="">Ending Date</label>
                                <input type="date" name="EndingD"
                                    class="form-control form-control-user font-weight-bold" id="exampleInputEmail"
                                    placeholder="Paid Amount" value="<?php echo $f['8']; ?>">
                            </div>
                        </div>
                        <div class="col-sm-12 mb-3">
                        <!-- <img src="include/CustomerImage/<?php echo $f['14']; ?>" alt="" height="200px" width="200px"> -->
                        <?php echo $row['0']; ?>
                                            <br><?php 
                                            if ($f['9']=="female" && empty($f['14'])) {
                                                echo '<img src="img/undraw_profile_1.svg" height="100px" width="100px" style="border-radius: 50px">';
                                            }elseif ($f['9']=="male" && empty($f['14'])) {
                                                echo '<img src="img/undraw_profile_2.svg" height="100px" width="100px" style="border-radius: 50px">';
                                            }else{
                                             ?>
                                            <img src="include/CustomerImage/<?php echo $f['14']; ?>" height="100px" width="100px" name="picture" style="border-radius: 50px">
                                            <?php } ?>
                                    <input type="file" class="" id="exampleFirstName" name="Picture1" value="include/CustomerImage/<?php echo $f['14']; ?>">
                                         <!-- <?php if (isset($_POST['add'])): ?>
                                            <?php if (empty($Date)): ?>
                                                <span class="text-danger ">Image is Missing</span>
                                            <?php endif ?>
                                        <?php endif ?> -->
                                    </div>
                                <button type="submit" name="add" class="btn btn-primary btn-user btn-block font-weight-bold">
                                    Edit Customer
                              </button>
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
    <script src="alert/alertify.js"></script>


    <script type="text/javascript">
    window.preventDefault();
    </script>
</body>

</html>
   <?php 
    if (isset($_POST['add'])) {

        echo $success;
        echo $Danger; 
        echo $check1; 
        echo $check2; 
        echo $check3; 
        echo $check4; 
        echo $check5;   
}
    ?>