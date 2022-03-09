<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>





<head>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <title>Argo</title>
  <!--for css file here make style block than make css-->
<!--   <link rel="stylesheet" href="styles.css" /> -->
</head>

<script>


$(document).ready(function(){
// 	  $("#hide").click(function(){
// 	    $("p").hide();
// 	  });
	 
	  
// 	  $("#show").click(function(){
// 	    $("p").show();
// 	  });
	
	
	
	
	
	});






</script>
<body>
Argo Dashboard

Admin crate user name and password
<form action="/getdata" method="post">
 <label for="fname">Username</label><br>
  <input type="text" id="name" name="name" value="" required="required" min="4" max="10"><br>
  <label for="lname">Password</label><br>
  <input type="text" id="password" name="password" value="" required="required" min="4" max="10">
 
 
 
  <label for="cars">Choose Usertype</label>
  <select name="type" id="type">
<!--     <option value="volvo">admin</option> -->
    <option value="seller">Seller</option>
    <option value="vendor">vendor</option>
  </select>
  <br><br>
  <input type="submit" value="Submit">
</form>







</body>
</html>