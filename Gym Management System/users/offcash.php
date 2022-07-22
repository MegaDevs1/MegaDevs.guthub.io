<?php  
include 'config.php';
include 'user.php';
if (!isset($_SESSION['userName'])) {
    header('location: index.php');
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
<?php include 'links.php'; ?>
    
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
                    <h1 class="h3 mb-4 text-gray-800 text text-center"><i class="fas fa-book"> </i> Account Status</h1>
                    <form class="user" method="POST">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <!-- <input type="numeric"  name="Cash" class="form-control form-control-user" required
                                            placeholder="Cash" value="">
                                         -->
                                        
                                    </div>
                                    <div class="col-sm-6">
                                        <!-- <input type="date" class="form-control form-control-user" id="exampleLastName" name="offcashDate" required 
                                            > -->
                                    </div>
                                </div>
                                <div class="form-group text-center">
                                 
                                    
                                 
                                    <?php
                                     include 'config.php';
                                    $date= date("Y-m-d");
                                     $sql = mysqli_query($con,"SELECT SUM(`PaidAmount`) as ZaadTotal FROM `payment` WHERE `PaymentType`='Zaad' and Previllage='$getUser' AND PayDate='$date'");
                                     $sql1 = mysqli_query($con,"SELECT SUM(`PaidAmount`) as EdahabTotal FROM `payment` WHERE `PaymentType`='Edahab' and Previllage='$getUser' AND PayDate='$date'");
                                     $sql2 = mysqli_query($con,"SELECT SUM(`PaidAmount`) as CashTotal FROM `payment` WHERE `PaymentType`='Cash' and Previllage='$getUser' AND PayDate='$date'");
                                     $sql3 = mysqli_query($con,"SELECT SUM(`PaidAmount`) as Total FROM `payment` WHERE Previllage='$getUser' AND PayDate='$date'");

                                     if ($sql && $sql1 && $sql2 && $sql3) {
                                       $show=mysqli_fetch_assoc($sql);
                                       $show1=mysqli_fetch_assoc($sql1);
                                       $show2=mysqli_fetch_assoc($sql2);
                                       $show3=mysqli_fetch_assoc($sql3);
                                     
                                    
                                     ?>
                                     <div class="form-group text-center">
                                        <div><label>Zaad :<?php if ( $show['ZaadTotal']==0) {
                                          echo " $0";
                                        }else{ echo " $".$show['ZaadTotal']; }?> </label> </div>
                                       <div><label>Edahab :<?php if ( $show1['EdahabTotal']==0) {
                                          echo " $0";
                                        }else{ echo " $".$show1['EdahabTotal']; }?></label> </div>
                                        <div><label>Cash :<?php if ( $show2['CashTotal']==0) {
                                          echo " $0";
                                        }else{ echo " $".$show2['CashTotal']; }?></label> </div>
                                        <div><label>Total Amount :<?php if ( $show3['Total']==0) {
                                          echo " $0";
                                        }else{ echo " $".$show3['Total']; }?></label> </div>
                                     </div>
                                 </div>
                                      <?php } ?>
                                   <!--  <button type="submit" name="save" class="btn btn-success btn-user btn-block">
                                    Save
                                </button>   -->
                                   
                               <hr>
                               <b><h6></h6></b>
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

 <!-- Calculate Modal-->
<!--     <div class="modal fade" id="Calculate" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel2"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel2">Calculate The Cash-Off</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">

                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div> -->


    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>