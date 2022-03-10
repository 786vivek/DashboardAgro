<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>



 <link href="//cdn.syncfusion.com/ej2/ej2-base/styles/material.css" rel="stylesheet" />
    <link href="//cdn.syncfusion.com/ej2/ej2-buttons/styles/material.css" rel="stylesheet" />
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <title>Advatix</title> 
  <!--for css file here make style block than make css-->
<style>
body {
 //background-image: url('https://mdbootstrap.com/img/new/standard/city/041.jpg');
   bgcolor=aliceblue| #f0f8ff | 240,248,255;
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
}	
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #04AA6D;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
</style>
</head>
<script type="text/javascript">
$(document).ready(function() {
//alert();
	$("#user").hide();
	$("#email,#password").keypress(function() {
	    if($(this).val().length > 3) {
	         // Enable submit button
	    	$("#user").hide();
	         
	    } else {
	    	
	    	$("#user").show();
	         // Disable submit button
	    }
	});
	
});
</script>
<body style="background-color: aliceblue;">


<div class="sidebar">
  <a class="active" href="">Home</a>
  <a href="signup">Signup</a>
<!--   <a href="#news">News</a> -->
<!--   <a href="#contact">Contact</a> -->
<!--   <a href="#about">About</a> -->
</div>


<div class="content p-0">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="advatix.com" style="margin-left:40%;">Advatix</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
<!--     <div class="navbar-nav"> -->
<!--       <a class="nav-item nav-link active" href="#">Home <span class="sr-only">(current)</span></a> -->
<!--       <a class="nav-item nav-link" href="#">Features</a> -->
<!--       <a class="nav-item nav-link" href="#">Pricing</a> -->
<!--       <a class="nav-item nav-link disabled" href="#">Disabled</a> -->
<!--     </div> -->
  </div>
</nav>
<div class="card mb=0" style="background-color: aliceblue; align-items:center;" >
  <div class="card-body  mb-0;">
<form:form method="POST" 
          action="/login" modelAttribute="admin">
            <div class="form-group">
             <table>
                <tr>
                    <td><form:label path="email">EmailId</form:label></td>
                    <td><form:input path="email" required="required" max="50" class="form-control"/></td>

                </tr>
                <tr>
                    <td><form:label path="password">
                     Password:</form:label></td>
                    <td><form:input path="password" required="required" max="50" class="form-control"/></td>
                </tr>
                <tr>
                 <form:select path="type" class="form-control">  
        <form:option value="admin" label="admin" class="form-control"/>  
        <form:option value="wholesellerbuyer" label="wholeSaleBuyer" class="form-control"/>  
        <form:option value="farmer" label="farmer" class="form-control"/>  
        <form:option value="expert" label="Expert" class="form-control"/>  
        
        </form:select>  
                <tr/>
                <tr>
                <tr>
                    <td><input type="submit" value="Submit" class="form-control"/></td>
                </tr>
            </table>
      </div>
        </form:form>
        

                    <span id="user" style="color:red ! important;">should be greter than 4 and less than 50</span>
</div>



<br>


	
</div></div>
</body>
</html>