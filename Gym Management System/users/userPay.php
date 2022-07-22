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
                    <h1 class="h3 mb-4 text-gray-800 text text-center"><i class="fas fa-pen"></i>Account Status</h1>
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
                                     $show=mysqli_query($con,"SELECT * FROM `payment`")
                                     ?>
                                      <div><h5>Zaad : </h5></div>
                                      <div><h5>Zaad : </h5></div>
                                      <div><h5>Zaad : </h5></div>
                                     <div><h5>Date : <?php echo date("Y-m-d"); ?></h5> </div>
                              <?php } ?>
                                 </div>

                                   <!--  <button type="submit" name="save" class="btn btn-success btn-user btn-block">
                                    Save
                                </button>   -->
                                   
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
                        <span>Copyright &copy; All right Reserved ZamDev</span>
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