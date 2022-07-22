<!DOCTYPE html>
<html>
<head>
  <?php include 'title.php'; ?>
</head>
<body>
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                        <blockquote class="text text-success text-center"><b>Welcome !</b></blockquote>
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw" style="color: blue"></i>
                                <!-- Counter - Alerts -->
                                <?php 
                                    include 'config.php';
                                    $date=date("Y-m-d");
                                     $q=mysqli_query($con,"SELECT * FROM `customers` WHERE `Gender` ='female'  AND `EndingDate`<='$date' ORDER BY `ID` DESC limit 5");
                                     if ($q) {
                                        // $f=mysqli_fetch_array($q);
                                        // $rest=$f['8']-$f['5'];
                                        // if ($rest<='3') {
                                        //     echo "is Ending";
                                        
                                    ?>
                                <span class="badge badge-danger badge-counter"><?php echo mysqli_num_rows($q); ?></span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <?php while ($row=mysqli_fetch_array($q)) {
                                    ?>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                     
                                    <div>
                                   
                                        <div class="small text-gray-500"><?php echo $row['8']; ?></div>
                                        <span class="">
                                        <p><b>Ended Membership</b><br>
                                        <b> Name</b> : <?php echo $row['1']; ?> <br>     
<!--                                         <b>Membership </b> : <?php echo $row['4']; ?> <br>
 -->                                        <b>Phone No </b> : <?php echo $row['6']; ?><br>
                                        </p>
                                        </span>
                                    </div>
                                    
                                </a>
       <?php } } ?>
                                <a class="dropdown-item text-center small text-gray-500" href="viewCustWithEnd.php">Show All Alerts</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->


                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-dark font-weight-bold">
                                    <?php echo $getUser; ?>
                                </span>
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <a class="dropdown-item font-weight-bold text-dark" href="profile.php">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-dark"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item font-weight-bold text-dark" href="updateworkout.php">
                                    <i class="fas fa-eye fa-sm fa-fw mr-2 text-dark"></i>
                                    attends
                                </a>
    
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item font-weight-bold text-dark"  href="#" data-toggle="modal" data-target="#logoutModal"> 
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-dark font-weight-bold"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>

                 <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title font-weight-bold text-dark" id="exampleModalLabel">Ready to ?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body font-weight-bold text-dark">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="logout.php">Logout</a>
                </div>
            </div>
        </div>
    </div>

</body>
</html>