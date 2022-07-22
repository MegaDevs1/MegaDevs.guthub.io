<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>click demo</title>
  <style>
  p {
    
    margin: 5px;
    cursor: pointer;
  }
 
  #con{
  	display: none;
  	background: black;
  	color: white;
  }
  </style>
  <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>
<body>
<p id="btn">Read More</p>

<!--  <button id="btn">Click me</button>
 --> 
 <div id="con">
 
<p>First Paragraph of learning Sliding effects Second Paragraph</p>

</div>

 
<script>
$( "#btn" ).click(function() {
  $( "#con" ).slideToggle("fast");
});
</script>
 
</body>
</html>