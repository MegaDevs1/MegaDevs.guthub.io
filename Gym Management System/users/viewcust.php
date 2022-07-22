<?php 
include 'config.php';
include 'user.php';
if (!isset($_SESSION['userName'])) {
    header('location: index.php');
}
if (isset($_POST['add'])) {
$Name=$_POST['Name'];
$RDate= date("Y-m-d");
$Gender = $_POST['Gender'];
$BundlePrice = $_POST['BundlePrice'];
$Phone = $_POST['Phone'];
$Shift=$_POST['Shift'];
$Address=$_POST['Address'];
$StartingD = $_POST['StartingD'];
$EndingD=$_POST['EndingD'];
$to = strtotime($StartingD);
$fr = strtotime($EndingD);
$Total = $fr - $to;
$LeftDays = floor($Total/(60*60*24));

$Picture1 = $_FILES['Picture1']['name'];
$tmp = $_FILES['Picture1']['tmp_name'];
$size = $_FILES['Picture1']['size'];
$Location = "include/CustomerImage/";

if (!empty($Name) &&  !empty($BundlePrice) && !empty($Phone) && !empty($Shift) && !empty($Gender)) {
if (move_uploaded_file($tmp, $Location.$Picture1)) {
$sql3 = mysqli_query($con , "SELECT * FROM bundles WHERE BundleName='$BundlePrice'");
$fetch1 = mysqli_fetch_array($sql3); 
// $Days=$fetch1['3'];

$Bname=$fetch1['1'];
$sql = mysqli_query($con , "INSERT INTO `customers` (`ID`, `Name`, `Paid`, `RegDate`, `Bundle`, `StartingDate`, `Phone`, `Shift`, `EndingDate`, `Gender`, `Address`, `Custimage`,`LeftDays` , `Previllage`) VALUES (NULL, '$Name', '0', '$RDate', '$Bname', '$StartingD', '$Phone', '$Shift', '$EndingD', '$Gender','$Address','$Picture1','$LeftDays','$getUser')");
$t=date("M");

if ($sql) {
    // $success = '<script>
    //  alertify.success("Customer is Successfully added");
    // </script>';
    echo "<script type='text/javascript'>
        alert('Customer is Successfully added')
        location.replace('ViewCust.php')
        </script>";
} 
else {
        //   echo "<script type='text/javascript'>
        // alert('data is not Saved')
        
        // </script>";
    echo mysqli_error($con);
}
}
}else{
    echo "<script type='text/javascript'>
        alert('Please fill in all blanks')
        location.replace('Viewcust.php')
        </script>";
}
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
                    <div class="d-sm-flex align-items-center justify-content-between mb-4"> 
                       <h1 class="h3 mb-2 text-gray-800">View Customers</h1>
                       <a class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-lg font-weight-bold p-2" href="#" data-toggle="modal" data-target="#Modal"><i class="fas fa-plus text-white p-2"> </i>Customer</a>
                    </div>
                     <div class="modal fade-example-modal-lg" id="Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title text-dark font-weight-bold" id="exampleModalLabel">Add Customer</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">×</span>
                           </button>
                        </div>
                  <div class="modal-body">
                     <form class="user font-weight-bold text-dark" method="POST" enctype="multipart/form-data">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user font-weight-bold" id="exampleFirstName" name="Name" 
                                            placeholder="Full Name">
                                            <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($Name)): ?>
                                                   <?php $check1 = '<script>
                                                   alertify.error("Enter Fullname ");
                                                   </script>';?>
                                                <?php endif ?>
                                            <?php endif ?> 
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <select name="Gender" class="form-control font-weight-bold" id="exampleInputEmail" 
                                            style="border-radius: 20px" required>
                                            <option selected="" class="font-weight-bold">Choose Gender</option>
                                            <option value="male" class="font-weight-bold">Male</option>
                                            <option value="female" class="font-weight-bold">Female</option>
                                             <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($Gender)): ?>
                                                   <?php $check2 = '<script>
                                                   alertify.error("Select Gender");
                                                   </script>';?>
                                                <?php endif ?>
                                            <?php endif ?>  
                                            </select>
                                    </div>
                                   </div> 
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                            <select name="BundlePrice" class="form-control font-weight-bold" id="exampleInputEmail" style="border-radius: 20px ">
                                            <option selected="">Select Bundle Type</option>
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
                                                   </script>';?>
                                                <?php endif ?>
                                            <?php endif ?>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="numeric" name="Phone" class="form-control form-control-user font-weight-bold" id="exampleRepeatPassword" placeholder="Phone">
                                        <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($Phone)): ?>
                                                   <?php $check4 = '<script>
                                                   alertify.error("Enter Your Phone No");
                                                   </script>';?>
                                                <?php endif ?>
                                            <?php endif ?> 
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
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
                                    <div class="col-sm-6">
                                        <input type="numeric" name="Address" class="form-control form-control-user font-weight-bold" id="exampleRepeatPassword" placeholder="Address">
                                        <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($Phone)): ?>
                                                   <?php $check4 = '<script>
                                                   alertify.error("Enter Your Phone No");
                                                   </script>';?>
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
                                    name="CustID" placeholder="Enter Customer ID">
                            </div>
                            <div class="col-sm-6 mb-3 mb-sm-0">
                            <label class="">Ending Date</label>
                                <input type="date" name="EndingD"
                                    class="form-control form-control-user font-weight-bold" id="exampleInputEmail"
                                    placeholder="Paid Amount">
                            </div>
                        </div>
                        <div class="col-sm-12 mb-3">
                                    <input type="file" class=" " id="exampleFirstName" name="Picture1">
                                         <?php if (isset($_POST['btn'])): ?>
                                            <?php if (empty($Date)): ?>
                                                <span class="text-danger ">Image is Missing</span>
                                            <?php endif ?>
                                        <?php endif ?>
                                    </div>
                                <button type="submit" name="add" class="btn btn-primary btn-user btn-block font-weight-bold">
                                    Add Customer
                              </button>
                            </form>    
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary col-2 p-2" type="button" data-dismiss="modal">Cancel</button>
               </div>
            </div>
        </div>
    </div>

                    <!-- Page Heading -->

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
                                            <td>Starting Date</td>
                                            <td>Phone</td>
                                            <td>Shift</td>
                                            <td>Ending Date</td>
                                            <td>Gender</td>
                                            <td>Update</td>
                                            <td>Decline</td>

                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php 
                                    include 'config.php';
                                    $sql=mysqli_query($con,"SELECT * FROM `customers` WHERE  Gender='female'  ORDER BY `ID` DESC");
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
                                            <td><?php echo $row['5']; ?></td>
                                            <td><?php echo $row['6']; ?></td>
                                            <td><?php echo $row['7']; ?></td>
                                            <td><?php echo $row['8']; ?></td>
                                            <td><?php echo $row['9']; ?></td>
                                            <td><a href="editCustomer.php?ID=<?php echo $row['0']; ?>" class="btn btn-primary"><i class="fas fa-edit"></i></a></td>
                                            
                                               <td><a class="btn btn-danger text-light text-decoration-none font-weight-bold" href="DeclineCustomer.php?ID=<?php echo $row['0'] ?>"><i class="fas fa-trash"></i></a></td>
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