<?php 
include 'config.php';
include 'user.php';
if (!isset($_SESSION['userName'])) {
    header('location: index.php');
}
if (isset($_POST['btn'])) {
$NoteSubject = $_POST['NoteSubject'];
$NoteBody = $_POST['NoteBody'];
$Date = $_POST['Date'];
$sendU=$_POST['sendU'];
if (!empty($NoteSubject) && !empty($NoteBody && !empty($Date) && !empty($sendU))) {

    $sql = mysqli_query($con,"INSERT INTO `notes`(`NoteSubject`, `NoteBody`, `username`, `Date`) VALUES ('$NoteSubject', '$NoteBody','$sendU',  '$Date');");
if ($sql) {
      echo "<script type='text/javascript'>
        alert('Note has been Added')
        location.replace('addNote.php')
        </script>";
}
}
else {
      echo "<script type='text/javascript'>
        alert('Data is not Saved')
        location.replace('addNote.php')
        </script>";
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
                    <h1 class="h3 mb-4 font-weight-bold text-dark text text-center"><i class="fas fa-plus">   </i> Add Note</h1>
                    <form class="user font-weight-bold text-dark" method="POST">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user font-weight-bold" id="exampleFirstName" placeholder="Note Subject" name="NoteSubject">
                                          <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($NoteSubject)): ?>
                                                   <?php $check1 = '<script>
                                                   alertify.error("Enter NoteSubject     ");
                                                   </script>';;?>
                                                <?php endif ?>
                                            <?php endif ?> 
                                    </div>
                                    <div class="col-sm-6">
                                    <input type="text" class="form-control form-control-user font-weight-bold" id="exampleInputEmail" name="NoteBody" placeholder="Note Body">
                                     <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($NoteDescription)): ?>
                                                   <?php $check3 = '<script>
                                                   alertify.error("Enter Note Description");
                                                   </script>';;?>
                                                <?php endif ?>
                                            <?php endif ?> 
                                </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="Date" class="form-control form-control-user font-weight-bold" id="exampleInputPassword" placeholder="date" name="Date">
                                         <?php if (isset($_POST['add'])): ?>
                                                <?php if (empty($Date)): ?>
                                                   <?php $check5 = '<script>
                                                   alertify.error("Enter Date");
                                                   </script>';;?>
                                                <?php endif ?>
                                            <?php endif ?> 
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <select name="sendU" class="form-control" style="border-radius: 20px">
                                       <option selected>Choose one</option>
                                       <option value="all">All users</option>
                                       <?php 
                                            include 'config.php';
                                            $sql2 = mysqli_query($con, "SELECT * FROM `users`");
                                            while ($fetch = mysqli_fetch_array($sql2)) {
                                             ?>
                                            <option class="font-weight-bold" value="<?php echo $fetch['1'] ?>">
                                            <?php echo $fetch['1']?>
                                            </option>
                                            <?php } ?>
                                   </select>
                                    </div>
                                                                        
                                </div>
                                <button type="submit" name="btn" class="btn-lg btn-primary btn-user btn-block fs-4 text-decoration-none font-weight-bold">Add Note</button>
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

    <?php 
    if (isset($_POST['btn'])) {
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