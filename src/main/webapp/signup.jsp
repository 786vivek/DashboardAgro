<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
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
<form:form method="POST" 
          action="/signupdata" modelAttribute="userVo">
             <table>
               <tr>
                    <td><form:label path="username">Name:</form:label></td>
                    <td><form:input path="username" required="required" min="4" max="10"/></td>
                </tr>
                <tr>
                    <td><form:label path="password">
                     Password:</form:label></td>
                    <td><form:input path="password" required="required" min="4" max="10" /></td>
                </tr>
                <tr>
                    <td><form:label path="email">Email:</form:label></td>
                    <td><form:input path="email" type="email" required="required" min="30"/></td>
                </tr>
                   <tr>
                    <td><form:label path="contactno">
                     ContactNo:</form:label></td>
                    <td><form:input path="contactno" required="required" max="10"/></td>
                </tr>
                <tr>
                    <td><form:label path="dateofbirth">Dob</form:label></td>
                    <td><form:input path="dateofbirth" required="required"/>dd-mm-yyyy</td>
                </tr>
            <tr>
                    <td><form:label path="address">Address</form:label></td>
                    <td><form:input path="address" required="required"/></td>
                </tr>
                <tr>
                 <form:select path="type">  
        //<form:option value="seller" label="seller"/>  
        <form:option value="farmer" label="farmer"/>  
        <form:option value="expert" label="expert"/>  
        //<form:option value="wholeseller" label="wholeseller"/>  
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