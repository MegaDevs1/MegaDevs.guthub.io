<?php 
include 'config.php';
if (isset($_POST['add'])) {
$Fname=$_POST['Fname'];
$Shift=$_POST['Shift'];
$Gender = $_POST['Gender'];
$Enterdate = $_POST['Enterdate'];
$Phone = $_POST['Phone'];
// $sql3 = mysqli_query($con , "SELECT * FROM `bundles` WHERE `BundlePrice` = '$BundlePrice'");
// $fetch1 = mysqli_fetch_array($sql3); 
// $lol1 = $fetch1['3'];
// if (!empty($Fname) && !empty($Lname) && !empty($Gender) && !empty($phone)  && !empty($Hours)) {
$sql = mysqli_query($con , "INSERT INTO `daily customers`(`Fname`, `Date`, `Phone`, `Gender`, `shift`) VALUES ('$Fname', '$Enterdate', '$Phone', '$Gender', '$Shift')");
if ($sql) {
    // $success = '<script>
    //  alertify.success("Customer is Successfully added");
    // </script>';
     echo "<script>
        alert('Customer is Successfully added')
        location.replace('DailyCustomers.php')
        </script>";

}
else {
        //   $Danger =  '<script>
        //  alertify.warning("Data Is Not Saved");
        // </script>';
     echo "<script>
        alert('Data is not Saved')
        location.replace('DailyCustomers.php')
        </script>";
    echo mysqli_error($con);
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
                    <h1 class="h3 mb-4 text-gray-800 text text-center"><i class="fas fa-plus"> </i> Add Customer info</h1>
                    <form class="user" method="POST">
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user font-weight-bold" id="exampleFirstName" name="Fname" 
                                            placeholder="Enter Customer's FullName">
                                            <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($_POST['Fname'])): ?>
                                                   <?php $check1 = '<script>
                                                   alertify.error("Fullname Is Empty");
                                                   </script>';;?>
                                                <?php endif ?>
                                            <?php endif ?> 
                                    </div>
                                    
                                    <div class="col-sm-6">
                                        <!-- <input type="numeric" name="Phone" class="form-control form-control-user font-weight-bold" id="exampleRepeatPassword" placeholder="Phone"> -->
                                        
                                    </div>
                                </div>
                                <div class="form-group row">
                                <div class="col-sm-6 mb-3">
                                   <input type="date" id="typeNumber" step="" class="form-control form-control-user font-weight-bold" name="Enterdate" placeholder="Enter date" />
                                      <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($$_POST['Enterdate'])): ?>
                                                   <?php $check5 = '<script>
                                                   alertify.error("Enter Played Date");
                                                   </script>';;?>
                                                <?php endif ?>
                                            <?php endif ?> 
                                 </div>
                                 <div class="col-sm-6 mb-3">
                                   <input type="text" id="typeNumber" step="" class="form-control form-control-user font-weight-bold" name="Phone" placeholder="Enter Phone" />
                                      <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($_POST['Phone'])): ?>
                                                   <?php $check5 = '<script>
                                                   alertify.error("Enter Phone Hours");
                                                   </script>';;?>
                                                <?php endif ?>
                                            <?php endif ?> 
                                 </div>

                                </div>
                                <div class="form-group row">
                                <div class="col-sm-6 mb-3">
                                   <select name="Gender" class="form-control font-weight-bold" id="exampleInputEmail" 
                                            style="border-radius: 20px" required>
                                            <option selected="" class="font-weight-bold">Choose Gender</option>
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
                                 <div class="col-sm-6 mb-3">
                                  <select name="Shift" class="form-control font-weight-bold" id="exampleInputEmail" 
                                            style="border-radius: 20px" required>
                                            <option selected="" class="font-weight-bold">Choose Shift</option>
                                            <option value="Morning" class="font-weight-bold">Morning</option>
                                            <option value="Afternoon" class="font-weight-bold">Afternoon</option>
                                            <option value="Evening" class="font-weight-bold">Evening</option>
                                             <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($_POST['Shift'])): ?>
                                                   <?php $check2 = '<script>
                                                   alertify.error("Select shift");
                                                   </script>';?>
                                                <?php endif ?>
                                            <?php endif ?>  
                                            </select>
                                 </div>

                                </div>
                                    
                                 <br>
                                <button type="submit" name="add" class="btn btn-primary btn-user btn-block font-weight-bold">
                                    Add Customer
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
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    <script src="alert/alertify.js"></script>

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
    <script type="text/javascript">
    window.preventDefault();
    </script>
</body>

</html>

