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
  <title>Advatix</title> 
  <!--for css file here make style block than make css-->
<style>
body {
 background-image: url('https://mdbootstrap.com/img/new/standard/city/041.jpg');
   
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
}	
</style>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	//alert();
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
	
	
	
});
</script>



<body>
<h3 style="color:red ! important;">data save successfully enter email paassword to login</h3>
<div class="container">
<form:form method="POST" 
          action="/logindata" modelAttribute="admin">
            <div class="form-group">
             <table>
                <tr>
                    <td><form:label path="email">email:</form:label></td>
                    <td><form:input path="email" required="required" max="50"/></td>

                </tr>
                <tr>
                    <td><form:label path="password">
                     Password:</form:label></td>
                    <td><form:input path="password" required="required" max="50"/></td>
                </tr>
                <tr>
                 <form:select path="type">  
<%--         <form:option value="admin" label="admin"/>   --%>
        <form:option value="seller" label="seller"/>  
        <form:option value="farmer" label="farmer"/>  
        </form:select>  
                <tr/>
                <tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
      </div>
        </form:form>
        

                    <span id="user" style="color:red ! important;">should be greter than 4 and less than 50</span>
</div>
<br>


</body>
</html>