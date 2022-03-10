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
/* 	background-image: */
/* 		url('https://mdbootstrap.com/img/new/standard/city/041.jpg'); */
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
	$(document)
			.ready(
					function() {
	alert();
	$("#button").hide();
	$("#user").hide();
	$("#username,#password").keypress(function() {
	    if($(this).val().length > 3) {
	         // Enable submit button
	    	$("#user").hide();
	    } else {
	    	$("#user").show();
	         // Disable submit button
	    }
	});
	   $('#contactno').keypress(function (e) {    
		   if($(this).val().length >9) {
               return false;     
		   }
		   if($(this).val().length===9) {
				$("#button").show();
//               return false;     
		   }
           var charCode = (e.which) ? e.which : event.keyCode    
           if (String.fromCharCode(charCode).match(/[^0-9]/g))    
               return false;                        
       });   
});
</script>
<body>
<body style="background-color: aliceblue;">


<div class="sidebar">
   <a class="active">Name:${adminname} <br>${type}</a>

<!--   <a id="pesticidebutton">AllPesticide</a> -->
<!--   <a id="addPesticideproduct">AddProduct</a> -->
<!--   <a id="buttonall">AllUsers</a> -->
  	<a href="logout">LogOut</a>
  
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
          action="/signupdata" modelAttribute="userVo">
             <table>
               <tr>
                    <td><form:label path="username">Name:</form:label></td>
                    <td><form:input path="username" required="required" min="4" max="10" class="form-control"/></td>
                </tr>
                <tr>
                    <td><form:label path="password">
                     Password:</form:label></td>
                    <td><form:input path="password" class="form-control" required="required" min="4" max="10" /></td>
                </tr>
                <tr>
                    <td><form:label path="email">Email:</form:label></td>
                    <td><form:input path="email"  class="form-control" type="email" required="required" min="30"/></td>
                </tr>
                   <tr>
                    <td><form:label path="contactno">
                     ContactNo:</form:label></td>
                    <td><form:input path="contactno"  class="form-control" required="required" max="10"/></td>
                </tr>
                <tr>
                    <td><form:label path="dateofbirth">Dob (dd-mm-yyyy):</form:label></td>
                    <td><form:input path="dateofbirth" class="form-control" required="required"/></td>
                </tr>
            <tr>
                    <td><form:label path="address">Address</form:label></td>
                    <td><form:input path="address" class="form-control" required="required"/></td>
                </tr>
                <tr>
                 <form:select path="type" class="form-control">  
<%--         <form:option value="wholesellerbuyer" label="seller" class="form-control"/>   --%>
        <form:option value="farmer" label="farmer" class="form-control"/>  
        <form:option value="expert" label="expert" class="form-control"/>  
        <form:option value="wholeseller" label="wholeseller"/>  
<%--         <form:option value="lear" label="wholeseller"/>   --%>
        </form:select>  
                <tr/>
                <tr>
                    <td><input type="submit" id="button" value="Submit"/></td>
                </tr>
            </table>
        </form:form>
                         <span id="user" style="color:red ! important;">should be greter than 4 and less than 50</span>
</body>
</html>