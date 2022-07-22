<?php 
include 'timedout.php'; 
?>
<!DOCTYPE html>
<html>
<head>
<?php include 'title.php'; ?>
</head>
<body>
 <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index1.php">
                <div class="sidebar-brand-icon rotate-n-15">
                   
                </div>
                <div class="sidebar-brand-text mx-1">Carro Edeg Gym</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="index1.php">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Interface
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#Notes" data-toggle="collapse" data-target="#Notes"
                    aria-expanded="true" aria-controls="collapse">
                    <i class="fas fa-fw fa-book"></i>
                    <span>Notes</span>
                </a>
                <div id="Notes" class="collapse" aria-labelledby="headingTwo" data-parent="#Notes">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Notes:</h6>
                        <a class="collapse-item" href="AddNote.php">Make Notes </a>
                        <a class="collapse-item" href="ViewNote.php">View Notes</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#Customers" data-toggle="collapse" data-target="#Customers"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-pen"></i>
                    <span>Customers</span>
                </a>
                <div id="Customers" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#Customers">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Customer Info:</h6>
                        <a class="collapse-item" href="viewcust.php">View Customers</a>
                        <!-- <a class="collapse-item" href="addcustomer.php">Add Customer</a> -->
<!--                          <a class="collapse-item" href="Workoutday.php">Update Workout</a>
 -->                         <!-- <a class="collapse-item" href="attendprofile.php">Latest Member</a> -->
                       <a class="collapse-item" href="viewCustWithEnd.php">Customer's With Ending</a>
<!--                        <a class="collapse-item" href="ViewnewCust.php">New Members</a>
 -->                       
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <!-- <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#DCustomers"
                    aria-expanded="true" aria-controls="DCustomers">
                    <i class="fas fa-fw fa-box"></i>
                    <span>Daily Customers</span>
                </a>
                <div id="DCustomers" class="collapse" aria-labelledby="HeadingPayment"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Customers Info:</h6>
                        <a class="collapse-item" href="viewDailtyCustomers.php">View Daily Customers</a>
                        <a class="collapse-item" href="DailyCustomers.php">Add Daily Customer</a>
                    </div>
                </div>
            </li> -->

            <!-- Nav Item - Utilities Collapse Menu -->
            <!-- <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#Payment"
                    aria-expanded="true" aria-controls="Payment">
                    <i class="fas fa-fw fa-dollar-sign"></i>
                    <span>Payment</span>
                </a>
                <div id="Payment" class="collapse" aria-labelledby="HeadingPayment"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Payment Info:</h6>
                        <a class="collapse-item" href="viewpayment.php">View Payment</a>
                        <a class="collapse-item" href="addpayment.php">Add Payment</a>
                        <a class="collapse-item" href="offcash.php">Off Cash</a>
                        <a class="collapse-item" href="CustNotPaid.php">Unpayed Customers</a>
                        <a class="collapse-item" href="viewOwedCustomer.php">Owed Customers</a>
                    </div>
                </div>
            </li>
 -->
        
           
           
      <!-- <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#Enrollment"
                    aria-expanded="true" aria-controls="Enrollment">
                    <i class="fas fa-fw fa-box"></i>
                    <span>Enrollment</span>
                </a>
                <div id="Enrollment" class="collapse" aria-labelledby="HeadingErollment"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Services Info:</h6>
                        <a class="collapse-item" href="ViewEnrollment.php">View Enrollment</a>
                    </div>
                </div>
            </li> -->

                         <!-- Nav Item - Utilities Collapse Menu -->
            <!-- <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#Services"
                    aria-expanded="true" aria-controls="Services">
                    <i class="fas fa-fw fa-box"></i>
                    <span>Services</span>
                </a>
                <div id="Services" class="collapse" aria-labelledby="HeadingServices"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Services Info:</h6>
                        <a class="collapse-item" href="Viewservices.php">View Services</a>
                        <a class="collapse-item" href="addservices.php">Add Services</a>
                    </div>
                </div>
            </li> -->
            
            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <!-- <div class="sidebar-heading">
                Users
            </div>
 -->
            <!-- Nav Item - Pages Collapse Menu -->
            <!-- <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-user"></i>
                    <span>Users activity</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">user Screens:</h6>
                        <a class="collapse-item" href="register.php">Register user</a>
                        <a class="collapse-item" href="forgetpass.php">Forgot Password</a>
                    </div>
                </div>
            </li> -->

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="viewdeclinedcustomers.php">
                    <i class="fas fa-fw fa-trash"></i>
                    <span>Declined Customers</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="generateReport.php">
                    <i class="fas fa-fw fa-book"></i>
                    <span>Reports</span></a>
            </li>
            <!-- Nav Item - Tables -->
<!--             <li class="nav-item">
                <a class="nav-link" href="tables.html">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Tables</span></a>
            </li> -->

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            <!-- Sidebar Message -->
<!--             <div class="sidebar-card d-none d-lg-flex">
                <img class="sidebar-card-illustration mb-2" src="img/undraw_rocket.svg" alt="...">
                <p class="text-center mb-2"><strong>Welcome admin</strong>Samiir axmed</p>
                <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to Pro!</a>
            </div>
 -->
        </ul>
        <!-- End of Sidebar -->
</body>
</html>