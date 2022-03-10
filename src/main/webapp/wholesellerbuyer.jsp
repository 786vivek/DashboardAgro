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

						
						$("#allpesticide").hide(); 
						$("#feedbackform").hide(); 
						
						
						$(document).on('click', '#addpesti', function() {
							  window.open('/payment', 'payment');
							  return false;
							});
						var productid;

						$("#submitanswer").click(function(e) {
						//	alert();
					var ans= $("#answertext").val();
					productid=$("#feedback").val();
							alert(answertext);
							$.ajax({
								url : 'savefeedback',
								type : 'POSt',
								data : {
									"feedback" : ans,
									"id":productid
								},
								success : function(response) {

									var result = response;
									console.log(result);

								},
								error : function() {
									alert("error");
								}	
						});
						});
						
					
						$(document).on('click', '#feedback', function() {
							$("#feedbackform").show(); 
							
							  return false;
							});
						
						
						

						
						
						
						
						
						
						
						
						
						
						
						$( "#pesticidebutton" ).click(function(e) {
							
							  
							  
							$("#pesticide").hide();
							  
							$("#tablepesticide tr:gt(0)").remove();
					
						
						
						
					$.ajax({

						url : 'getpesticide',
						type : 'GET',
									
						success : function(response) {
console.log(response);
var getemail;
var table = document
		.getElementById('myTablepesticide');

var temp = "<tr id='mytr'>";
console.log(temp);
var end = "</tr>";
var row;
//					var edit="<input type="'button'" value="'edit'" id="'buttonedit'">;

$
		.each(
				response,
				function(
						i,
						v) {
					var temp = "<tr>";
					console
							.log("value");
					console
							.log(i);

					$
							.each(
									v,
									function(
											ind,
											val) {
										console
												.log(
														ind,
														val);
										console
												.log("vvk");

										
										
										if (ind === "id") {

											getemail = val;

	 										}
if((ind==="addby") || (ind==="id")){
	
	
}	else{									
										row = "<td>"
												+ val
												+ "</td>";

												//}
										temp += row;
 									
										//temp+=edit;
										console
												.log("temp after add edit "
														+ temp);
										//		}														myArray = response;
				}					
				});
					//																				temp += "<td><input type='button'value='edit' id='editbutton' email='" +getemail+ "'/></td>"
					temp += "<td><button name='email' id='addpesti' type='submit' value='" +getemail+ "'>Buy</button><button name='email' id='feedback' type='submit' value='" +getemail+ "'>Feedback</button></td>";
					temp += end;
					table.innerHTML += temp;
					console
							.log(temp);
				});
//temp+='<input type='"'button'"' value='"'updateblock'"' id='"'update'"''>';

console.log(temp);
temp += end;

table.innerHTML += temp;
},

						error : function() {
							alert("error");
						}
					});

				
					$("#allpesticide").show(); 
					
					
					});
				
					
						window.onbeforeunload = function () {
							alert();
						    return "Do you really want to close?";
						};
					
				
						
					});
					</script>
<body style="background-color: aliceblue;">


<div class="sidebar">
   <a class="active">Name:${adminname} <br>${type}</a>
  <a id="pesticidebutton">BuyPesticide</a>
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

<!-- 	<button type="submit" value="" id="pesticidebutton">Buypesticide</button> -->
		

<div class="addPesticide">
		<div class="container" id="allpesticide">
			<div id="allpestiside">
				<table class="table table-striped" id="tablepesticide">
					<thead>
						<tr>
						
							
							<th width="15%"
								style="color: red ! important; text-align: left ! important;">name</th>
							
							<th width="15%"
								style="color: red ! important; text-align: left ! important;">quantity</th>
							<th width="15%"
								style="color: red ! important; text-align: left ! important;">price</th>
			
			
							<th width="35%"
								style="color: red ! important; text-align: left ! important;">operation</th>
						</tr>
					</thead>
					<tbody id="myTablepesticide">

					</tbody>
				</table>
			</div>
			<div id="feedbackform">
					<label for="fname">Rating out of five</label>
  <input type="text" id="answertext" name="fname"><br><br>
		
		  <input type="submit" value="Submit" id="submitanswer">
</div>
		</div>
		</div>
		
<!-- 	<a href="logout">LogOut</a> -->









</body>
</html>