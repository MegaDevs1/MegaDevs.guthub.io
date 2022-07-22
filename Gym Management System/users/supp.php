<?php 

include 'user.php';
if (!isset($_SESSION['userName'])) {
    header('location: index.php');
}
include "links.php";
$_SESSION['ExpiteDate']='2022-03-31';
?>

<!DOCTYPE html>
<html>
<?php include 'title.php'; ?>
<body>
<div style="height: 100px""></div>
<div class="container" >
<div class="row">
	
	<div class="col-md-6 text text-primary text-left text-center" id="sv">
	<h1 id="h1"><b>You're Application is Declined!</b></h1>
	<p id="par">Website-kaagu uu dhacay waayo wuxu dhaafay Tijaabinti Koobad.
<br>
Fadlan la hadal Developers-kii idin sameeyey <br>

<b>Sameer Ahmed Mohamed (Main)</b> : <a href="tel:+252633605095" class="text text-dark">+252633605095</a><br>
<B>Sakarie Osman Mohamed</B> : <a href="tel:+252636133354" class="text text-warning">+252636133354</a><br>
	<a href="logout.php" class="btn btn-warning">Logout</a>
	</div>
		<div class="col-md-offset-2 col-md-3 text text-primary " id="im">
		<img src="img/p.png" height="390px" width="390px" id="h" >
	</div>

	</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/gsap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/ScrollTrigger.min.js"></script>
<script>
	gsap.from("#sv", { opacity: 0, duration: 1, y: -50 });
	gsap.from("#par", { opacity: 0, duration: 1, y: -50 });
	
	gsap.to("#im", {duration: 1, x: -30, delay: 1, ease:'elastic(2,0.3)'});
	
	
</script>

</div>
<br>
<?php include 'footer.php'; ?>
</body>

</html>