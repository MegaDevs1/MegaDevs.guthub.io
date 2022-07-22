<?php  
include 'user.php';
if (!isset($_SESSION['userName'])) {
    header('location: index.php');
}
?>
<!DOCTYPE html>
<html>
<head>
    <?php include 'links.php'; ?>
    <title></title>
</head><!-- onload="print()" -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/fontawesome.min.css">
<body onload="print()">
<div style="height: 45px"></div>
    <?php
    include 'config.php';
    $startDate = $_POST['StartD'];
    $endDate = $_POST['EndD'];
    $selected = $_POST['type'];
    if (!empty($startDate) && !empty($endDate)) {
        ?>
        <a href="generatereport.php"><i class="fas fa-arrow-left m-4"></i></a>

    <h1 class="text-center text"><?php echo $selected." Report"; ?></h1>
 <p class="text-center text"><?php $h=date("H")+2; echo date("M-D-Y, $h-i"); ?></p> 
    <?php
    if ($selected == "Payment") {
        ?>
         
        <table class="table" style="color: black">
    

        <thead>
            <tr>
            <td>ID#</td>
            <td>Customer Name</td>
            <td>Paid Amount</td>
            <td>Owed Amount</td>
            <td>PayDate</td>
            <td>Paid Phone</td>
            <td>Payment Type</td>
            </tr>
        </thead>
      
        <tr>
            <?php  
            $sql = mysqli_query($con , "SELECT * FROM payment WHERE PayDate BETWEEN '$startDate' AND '$endDate'");
            while ($row = mysqli_fetch_array($sql)) {
                ?>
                <td><?php echo $row['0']; ?></td>
                <td><?php echo $row['2']?></td>
                <td><?php echo $row['5']; ?></td>
                <td><?php echo $row['10']; ?></td>
                <td><?php echo $row['4']; ?></td>
                <td><?php echo $row['7']; ?></td>
                <td><?php echo $row['9']; ?></td>
                </tr>
                <?php } ?>
                <tr>
                
                <td colspan="2">
            <?php

            $total= mysqli_query($con,"SELECT COUNT(PayID) AS TotalPay FROM payment WHERE PayDate BETWEEN '$startDate' AND '$endDate'");

                while ($all=mysqli_fetch_assoc($total)) {
                    if (empty($all['TotalPay'])) {
                     echo "0";
                    }else{
                      echo "Total Customers: ".$all['TotalPay'];
                    }
                }


     ?>
     </td>

                <td>
            <?php

            $total= mysqli_query($con,"SELECT SUM(PaidAmount) AS TotalPay FROM payment WHERE PayDate BETWEEN '$startDate' AND '$endDate'");

                while ($all=mysqli_fetch_assoc($total)) {
                    if (empty($all['TotalPay'])) {
                     echo "0";
                    }else{
                      echo "Total Amount: ".$all['TotalPay'];
                    }
                }


     ?>
     </td>
     <td>
            <?php

            $total= mysqli_query($con,"SELECT SUM(AmountOwed) AS TotalPay FROM payment WHERE PayDate BETWEEN '$startDate' AND '$endDate'");

                while ($all=mysqli_fetch_assoc($total)) {
                    if (empty($all['TotalPay'])) {
                     echo "0";
                    }else{
                      echo "Total Owed Amount: ".$all['TotalPay'];
                    }
                }


     ?>
     </td>
            </tr>
            
                

                <?php } ?>
                <?php 
                 if ($selected == "Customer") {
                    ?>
    <table class="table">               
        <tr>
            <td>ID</td>
            <td>Customer Name</td>
            <td>registered Date</td>
            <td>Address</td>
            <td>Phone</td>
            <td>Membership</td>
            <td>Shift</td>
            <td>Gender</td>
            <td>Started Date</td>
            <td>Ending Date</td>
        </tr>
        <tr>
            <?php  
            $sql = mysqli_query($con , "SELECT * FROM customers WHERE RegDate BETWEEN '$startDate' AND '$endDate' AND Gender='female'");
            while ($row = mysqli_fetch_array($sql)) {
                ?>
                <td><?php echo $row['0']; ?></td>
                <td><?php echo $row['1'];?></td>
                <td><?php echo $row['3']; ?></td>
                <td><?php echo $row['13']; ?></td>
                <td><?php echo $row['6']; ?></td>
                <td><?php echo $row['4']; ?></td>
                <td><?php echo $row['7']; ?></td>
                <td><?php echo $row['9']; ?></td>
                <td><?php echo $row['5']; ?></td>
                <td><?php echo $row['8']; ?></td>
            </tr>

            <?php }?>
            <tr>
            <?php

            $total= mysqli_query($con,"SELECT COUNT(ID) AS TotalPay FROM Customers WHERE RegDate BETWEEN '$startDate' AND '$endDate'");

                while ($all=mysqli_fetch_assoc($total)) {
                    if (empty($all['TotalPay'])) {
                     echo "0";
                    }else{
                      echo "Total Customers: ".$all['TotalPay'];
                    }
                }


     ?>
            </tr>
            <?php }?>
            <?php 
                 if ($selected == "Ending") {
                    ?>
    <table class="table">               
        <tr>
            <td>ID</td>
            <td>Customer Name</td>
            <td>registered Date</td>
            <td>Address</td>
            <td>Phone</td>
            <td>Membership</td>
            <td>Shift</td>
            <td>Gender</td>
            <td>Started Date</td>
            <td>Ending Date</td>
        </tr>
        <tr>
            <?php  
            $sql = mysqli_query($con , "SELECT * FROM customers WHERE `EndingDate`-`StartingDate`<3 AND RegDate BETWEEN '$startDate' AND '$endDate' AND Gender='female' ORDER BY `customers`.`ID` DESC
");
            while ($row = mysqli_fetch_array($sql)) {
                ?>
                <td><?php echo $row['0']; ?></td>
                <td><?php echo $row['1'];?></td>
                <td><?php echo $row['3']; ?></td>
                <td><?php echo $row['13']; ?></td>
                <td><?php echo $row['6']; ?></td>
                <td><?php echo $row['4']; ?></td>
                <td><?php echo $row['7']; ?></td>
                <td><?php echo $row['9']; ?></td>
                <td><?php echo $row['5']; ?></td>
                <td><?php echo $row['8']; ?></td>
            </tr>

            <?php }}?>
            <tr>
            <?php

            $total= mysqli_query($con,"SELECT COUNT(ID) AS TotalPay FROM customers WHERE `EndingDate`-`StartingDate`<3 AND RegDate BETWEEN '$startDate' AND '$endDate' ORDER BY `customers`.`ID` DESC
");

                


     ?>
            </tr>
            <?php }?>
            <?php 
                 if ($selected == "Updated") {
                    ?>
    <table class="table">               
        <tr>
            <td>ID</td>
            <td>Customer Name</td>
            <td>registered Date</td>
            <td>Address</td>
            <td>Phone</td>
            <td>Membership</td>
            <td>Shift</td>
            <td>Gender</td>
            <td>Started Date</td>
            <td>Ending Date</td>
        </tr>
        <tr>
            <?php 
            $Y=date("m");
            $sql = mysqli_query($con , "SELECT * FROM `customers` WHERE `ID` in (SELECT updatedCust FROM pay WHERE PDate BETWEEN '$startDate' AND '$endDate') ORDER BY `customers`.`ID` DESC");
            while ($row = mysqli_fetch_array($sql)) {
                ?>
                <td><?php echo $row['0']; ?></td>
                <td><?php echo $row['1'];?></td>
                <td><?php echo $row['3']; ?></td>
                <td><?php echo $row['13']; ?></td>
                <td><?php echo $row['6']; ?></td>
                <td><?php echo $row['4']; ?></td>
                <td><?php echo $row['7']; ?></td>
                <td><?php echo $row['9']; ?></td>
                <td><?php echo $row['5']; ?></td>
                <td><?php echo $row['8']; ?></td>
            </tr>

            <?php }}?>
            <tr>
            <?php

//             $total= mysqli_query($con,"SELECT COUNT(ID) AS TotalPay FROM customers WHERE `EndingDate`-`StartingDate`<3 AND RegDate BETWEEN '$startDate' AND '$endDate' ORDER BY `customers`.`ID` DESC
// ");

//                 while ($all=mysqli_fetch_assoc($total)) {
//                     if (empty($all['TotalPay'])) {
//                      echo "0";
//                     }else{
//                       echo "Total Customers: ".$all['TotalPay'];
//                     }
//                 }


     ?>
            </tr>
            </table>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    <script> 
    window.preventDefault();
    </script>                    
</body>
</html>
    