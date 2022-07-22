<?php  
include 'config.php';
if ($_GET['ID']) {
	$ID = $_GET['ID'];
	$sql = mysqli_query($con, "SELECT * FROM customers WHERE ID = $ID");
	while ($row = mysqli_fetch_array($sql)) {
?>
<!DOCTYPE html>
<html>
<head>
<?php include 'title.php'; ?>
</head><!-- onload="print()" -->
<body class="font-weight-bold text-dark" onload="print()">
<h1 class="text-center" style="font-size: 100px">Carro-Edeg Gym</h1>
	<table class="table table-bordered text-dark font-weight-bold">	
	     <tr>
	     	<td colspan="9" rowspan="" headers="">Customer info:</td>
	     </tr>
		<tr>
			   <td>ID#</td>
			   <td>Customer Name</td>
			   <td>Register Date</td>
			   <td>Bundle Type</td>
			   <td>Starting Date</td>
			   <td>Phone</td>
			   <td>Shift</td>
			   <td>Ending Date</td>
			   <td>Gender</td>
			   <td>Address</td>
			</tr>
		<tfoot>
			   <td>ID#</td>
			   <td>Customer Name</td>
			   <td>Register Date</td>
			   <td>Bundle Type</td>
			   <td>Starting Date</td>
			   <td>Phone</td>
			   <td>Shift</td>
			   <td>Ending Date</td>
			   <td>Gender</td>
			   <td>Address</td>
			</tr>
		</tfoot>	
		<tbody>
		   <tr>
		   <td><?php echo $row['0']; ?></td>
		   <td><?php echo $row['1']; ?></td>
		   <td><?php echo $row['3']; ?></td>
		   <td><?php echo $row['4']; ?></td>
		   <td><?php echo $row['5']; ?></td>
		   <td><?php echo $row['6']; ?></td>
		   <td><?php echo $row['7']; ?></td>
		   <td><?php echo $row['8']; ?></td>
		   <td><?php echo $row['9']; ?></td>
		   <td><?php echo $row['13']; ?></td>
		   </tr>
		   <?php } ?>
		</tbody>
	</table>
	<div style="height: 50px"></div>
	<table class="table table-bordered text-dark font-weight-bold">
	 <tr>
	     <td colspan="8" rowspan="" headers="">Payment info:</td>
	 </tr>
                <tr>
                    <th>PaymentID</th>
                    <th>Cust ID</th>
                    <th>Customer Name</th>
                    <th>Paid Date</th>                 
                    <th>paidAmount</th>
                    <th>Discount</th>
                    <th>Send NO</th>
                    <th>Payment Type</th>
                    <th>Owed Amount</th>
                </tr>
            <tfoot>
                <tr>
                    <th>PaymentID</th>
                    <th>Cust ID</th>
                    <th>Customer Name</th>
                    <th>Paid Date</th>
                    <th>paidAmount</th>
                    <th>Discount</th>
                    <th>Send NO</th>
                    <th>Payment Type</th>
                    <th>Owed Amount</th>
                </tr>
             </tfoot>
            <tbody>
            <?php $sql1 = mysqli_query($con, "SELECT * FROM payment WHERE CustID = '$ID'");
            while ($fetch = mysqli_fetch_array($sql1)) {
             ?>
               <tr class="font-weight-bold text-dark">
               	 <td><?php echo $fetch['0']; ?></td>
               	 <td><?php echo $fetch['1']; ?></td>
               	 <td><?php echo $fetch['2']; ?></td>
               	 <td><?php echo $fetch['3']; ?></td>
               	 <td><?php echo $fetch['4']; ?></td>
               	 <td><?php echo $fetch['5']; ?></td>
               	 <td><?php echo $fetch['6']; ?></td>
               	 <td><?php echo $fetch['8']; ?></td>
               	 <td><?php echo $fetch['9']; ?></td>
               	 </tr>
               <?php }} ?>
			</tbody>
	</table>
	<br>
	<h5 class="text text-center text-dark"><span>Copyright &copy; Zam Devs <?php echo date("Y"); ?></span></h5>
</body>

</html>