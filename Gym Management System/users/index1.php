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
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                       <!--  <a href="generateReport.php" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> -->
                                <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                     <?php 
                                    include 'config.php';
                                     $q=mysqli_query($con,"SELECT * FROM `notes`  ORDER BY `NoteID` DESC");
                                     if ($q) {
                                     ?>
                                <span class="badge badge-danger badge-counter"><?php echo mysqli_num_rows($q); ?></span>
                                <?php } ?><i class="fa fas-chat"></i>
                                </button> -->
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-bottom-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="font-weight-bold text-success text-uppercase mb-1">Customers</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                    <?php  
                                                include 'config.php';
                                                $getTotal = mysqli_query($con, "SELECT COUNT(ID) AS totalClient FROM Customers WHERE Gender='female'");
                                                while ($totalClient =mysqli_fetch_array($getTotal)) {
                                                    echo $totalClient['totalClient'];
                                                }
                                                ?> 
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-user-circle fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <!-- Ending customers Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-bottom-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="font-weight-bold text-info text-uppercase mb-1">Ending Customers</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                    <?php  
                                                include 'config.php';
                                                $date=date("Y-m-d");
                                                $getTotal = mysqli_query($con, "SELECT COUNT(ID) AS totalClient FROM Customers WHERE EndingDate <= '$date' AND Previllage = '$getUser'");
                                                while ($totalClient =mysqli_fetch_array($getTotal)) {
                                                    echo $totalClient['totalClient'];
                                                }
                                                ?> 
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earning Card Example -->
                      <!--   <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-bottom-dark shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="font-weight-bold text-secondery text-uppercase mb-1"> Earnings</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                              <?php  
                                                include 'config.php';
                                                $getTotal = mysqli_query($con, "SELECT SUM(PaidAmount) AS  totalClient FROM Payment WHERE Previllage = '$getUser'");
                                                while ($totalClient =mysqli_fetch_array($getTotal)) {
                                                            echo "$" . $totalClient['totalClient'];
                                                }
                                                ?> 
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                        <!-- Earning Card Example -->
                        
                        <!-- Declined Card Example -->
                        
                        <!-- Earning Card Example -->
                        <!-- <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-bottom-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="font-weight-bold text-uppercase mb-1" style="color: #145A32;">Today's Users</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                
                                                <?php   
                                                include 'config.php';
                                                $getTotal = mysqli_query($con, "SELECT COUNT(ID) AS totalClient FROM `users`");
                                                $totalClient =mysqli_fetch_array($getTotal);
                                                echo $totalClient['totalClient'];
                                                ?> 
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-users fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                        <!-- Earnings (Monthly) Card Example -->
                        <!-- <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-bottom-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="font-weight-bold text-primary text-uppercase mb-1">Service</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">4</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-book fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->

                        <!-- Earnings (Monthly) Card Example -->
                       <!--  <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-bottom-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="font-weight-bold text-primary text-uppercase mb-1">Bundles</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">3</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-book fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                        <!-- Earnings (Monthly) Card Example -->
                        <!-- <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-bottom-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="font-weight-bold text-primary text-uppercase mb-1">Joining Per Day</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                <?php   
                                                include 'config.php';
                                                $date=date("Y-m-d");
                                                $getTotal = mysqli_query($con, "SELECT COUNT(ID) AS totalClient FROM `enrollment` WHERE Date='$date'");
                                                while ($totalClient =mysqli_fetch_array($getTotal)) {
                                                    echo $totalClient['totalClient'];
                                                }
                                                ?>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-book fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                        <!-- Earnings (Monthly) Card Example -->
                       <!--  <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-bottom-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="font-weight-bold text-primary text-uppercase mb-1">Active Users</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                <?php   
                                                include 'config.php';
                                                $getTotal = mysqli_query($con, "SELECT COUNT(ID) AS totalClient FROM `users` WHERE Status='1'");
                                                while ($totalClient =mysqli_fetch_array($getTotal)) {
                                                    echo $totalClient['totalClient'];
                                                }
                                                ?>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-book fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
 -->


                 </div>

                    <!-- Content Row -->
                    <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Charts</h1>
                    <p class="mb-4">Halkan waxaynu u adeegsan doona inaynu kuso bandhigno wixi summary ah ku saabsan Dakhliga.</p>

                    <!-- Content Row -->
                    <div class="row">

                        <div class="col-xl-8 col-lg-7">

                            <!-- Area Chart -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Area Chart</h6>
                                </div>
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myAreaChart"></canvas>
                                    </div>
                                    <hr>
                                    Styling for the area chart can be found in the
                                </div>
                            </div>

                            <!-- Bar Chart -->
                            <!-- <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Bar Chart</h6>
                                </div>
                                <div class="card-body">
                                    <div class="chart-bar">
                                        <canvas id="myBarChart"></canvas>
                                    </div>
                                    <hr>
                                    Styling for the bar chart can be found in the
                                    <code>/js/demo/chart-bar-demo.js</code> file.
                                </div>
                            </div>
 -->
                        </div>

                        <!-- Donut Chart -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Donut Chart</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-pie pt-4">
                                        <canvas id="myPieChart"></canvas>
                                    </div>
                                    <hr>
                                    Styling for the donut chart can be found in the
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                    <!-- Content Row -->

                            <!-- Color System -->


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

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Important Messages</h5>
        <button type="button" class="btn btn-close" data-bs-dismiss="modal" aria-label="Close">x</button>
      </div>
      <div class="modal-body">
    <?php 
    include 'config.php';
    $q=mysqli_query($con,"SELECT * FROM `notes`  ORDER BY `NoteID` DESC limit 5");
    if ($q) {
       while ($sh=mysqli_fetch_array($q)) {

    ?>
    <div>
                                   
   <div class="small text-gray-500"><?php echo $sh['1']; ?><br><?php echo $sh['4']; ?></div>
   <span class="">
   <p>
   <?php echo $sh['2']; ?> 
   </p>
   
   </span>
   
   </div>
<?php }} ?>
                                    
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
<!--         <a href="viewenrollment.php" type="button" class="btn btn-primary">Viewed all</a>
 -->      </div>
    </div>
  </div>
</div>

   
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../boots/js/bootstrap.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>