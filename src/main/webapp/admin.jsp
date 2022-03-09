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
						//alert();
						$("#signupform").hide();
						$("#result").hide();
						//	alert();
						$("#user").hide();
						$("#alluser").hide();
						$("#edittype").hide();
						$("#allpesticide").hide();
						$("#pesticide").hide();
						$("#pesticideadd").hide();
						$("#filterType").hide();
						
						
						
						
						$( "#pesticidebutton" ).click(function(e) {
							
							$("#signupform").hide();
							$("#result").hide();
							//	alert();
							$("#user").hide();
							$("#alluser").hide();
							$("#edittype").hide();
						$("#allpesticide").hide();
							$("#pesticide").hide();
							$("#pesticideadd").hide();
							$("#filterType").hide();
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

										row = "<td>"
												+ val
												+ "</td>";
										//}
										temp += row;
 										if (ind === "id") {

										getemail = val;

 										}
										//temp+=edit;
										console
												.log("temp after add edit "
														+ temp);
										//																myArray = response;
									});
					//																				temp += "<td><input type='button'value='edit' id='editbutton' email='" +getemail+ "'/></td>"
					temp += "<td><button name='email' id='addpesti' type='submit' value='" +getemail+ "'>add</button><button name='block' type='submit' id='deletepesti' value='" +getemail+ "' >delete</button><td>"

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
				
					
						
						
						
						
						
						
						
						
						
						
						var emailtype;

						$(document).on('click', '#editbutton', function() {
							// Your Code
							alert();
							emailtype = $(this).attr('value');

							$("#edittype").show();
							//alert(emailtype);
						});

						
						
						
						
						$(document).on('click', '#approvedButton', function() {

							alert();
							var email = $(this).attr('value');
							$.ajax({

								url : 'updateuser',
								type : 'POST',
								data : {
									"emailid" : email,
									"approved" : "1"
								},
								success : function(response) {

								},
								error : function() {
									alert("error");
								}
							});

						});

						
						$(document).on('click', '#setquantity', function() {

							alert();
							var email = $("#updatepesti").val();
							$.ajax({

								url : 'setquantitypesticide',
								type : 'POST',
								data : {
									"quantity" : email,
									"id":pesticideid
								},
								success : function(response) {
                                alert("update pesti");
								},
								error : function() {
									alert("error");
								}
							});

						});

						
						
						
						
						
						
						
						$(document).on('click', '#deletepesti', function() {

							alert();
							var id = $(this).attr('value');
							$.ajax({

								url : 'deletepesti',
								type : 'POST',
								data : {
									"id" : id
								
								},
								success : function(response) {
                                   alert("delete success");
								},
								error : function() {
									alert("error");
								}
							});

						});
						
						
						
						var pesticideid;
						
						$(document).on('click', '#addpesti', function() {
							$("#pesticide").show();
						
							pesticideid = $(this).attr('value');
						});
						
						
						$(document).on('click', '#blockButton', function() {
							// Your Code
						//	alert("block button");
							
							var email = $(this).attr('value');
							var cc = "0";

							//	$("#edittype").show();
							alert(email);
                                 
							$.ajax({

								url : 'updateuser',
								type : 'POST',
								data : {
									"emailid" : email,
									"activestatus" : cc
								},
								success : function(response) {

								},
								error : function() {
									alert("error");
								}
							});

						});

						$("#username,#password").keypress(function() {
							if ($(this).val().length > 3) {
								// Enable submit button
								$("#user").hide();

							} else {

								$("#user").show();
								// Disable submit button
							}
						});

						$("#addUser").click(function(e) {
					//		$("#signupform").hide();
							$("#result").hide();
							//	alert();
							$("#user").hide();
							$("#alluser").hide();
							$("#edittype").hide();
							$("#allpesticide").hide();
							$("#pesticide").hide();
							$("#pesticideadd").hide();
							$("#filterType").hide();
							$("#signupform").show();

						});

						$("#pestisidesignup").click(function(e) {

							//$("#signupform").show();
							
							//		alert(name);
							event.preventDefault();
							alert("inupdate ajax");
							
							var productname=$("#productname").val();
							var productprice=$("#productprice").val();
							var productquantity=$("#productquantity").val();
							$.ajax({
								url : 'pesticideadd',
								type : 'POST',
								data : {
									"productname" : productname,
									"productquantity" : productquantity,
									"productprice":productprice
								},
								success : function(response) {

							
							

						}		
						
							});
						});
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						$("#addPesticideproduct").click(function(e) {

							$("#signupform").hide();
							$("#result").hide();
							//	alert();
							$("#user").hide();
							$("#alluser").hide();
							$("#edittype").hide();
							$("#allpesticide").hide();
							$("#pesticide").hide();
					//		$("#pesticideadd").hide();
							$("#filterType").hide();
							
							
							$("#pesticideadd").show();

						});
						
						
						
						
						var usertype;
						$("#filterType")
								.click(
										function(e) {
											$("#table tr:gt(0)").remove();
											usertype = $(this).find(
													'option:selected').attr(
													"value");
											alert(usertype);
											//											alert(name);
											event.preventDefault();
											$
													.ajax({

														url : 'alluserbytype',
														type : 'POST',
														data : {
															"type" : usertype
														},
														success : function(
																response) {
															console.log("res");
															data = response.data;
															var table = document
																	.getElementById('myTable');

															var temp = "<tr id='mytr'>";
															console.log(temp);
															var end = "</tr>";
															var row;
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

																									row = "<td>"
																											+ val
																											+ "</td>";
																									//}
																									temp += row;
																									if (ind === "email") {

																										getemail = val;

																									}
// 																									if (ind === "loginvalue") {
// alert("login");
// 																										return; 
// 																									}

																									console
																											.log("temp after add edit "
																													+ temp);
																								});
																				//	temp += "<td><input type='button'value='edit' id='editbutton' email='" +getemail+ "'></td>"
																				if (usertype === "approvedexpert") {

																					temp += "<td><button name='email' id='editbutton' type='submit' value='" +getemail+ "'>edit</button><button name='block' type='submit' id='blockButton' value='" +getemail+ "' >Block</button><button name='block' type='submit' id='approvedButton' value='" +getemail+ "' >Approved</button><td>";

																				} else {
																					temp += "<td><button name='email' id='editbutton' type='submit' value='" +getemail+ "'>edit</button><button name='block' type='submit' id='blockButton' value='" +getemail+ "' >Block</button>";
																				}
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

											$("#alluser").show();

											$("#result").hide();

										});

						$("#setType").click(function(e) {

							var emailid = emailtype;
							var type = $("#changeRole").val();
							//		alert(name);
							event.preventDefault();
							alert("inupdate ajax");
							$.ajax({
								url : 'updateuser',
								type : 'POST',
								data : {
									"type" : type,
									"emailid" : emailid
								},
								success : function(response) {

									var result = response;
									console.log(result);

								},
								error : function() {
									alert("error");
								}
							});
							$("#edittype").hide();
							$("#result").show();

						});
						var myArray = [];
						var data;
						$('#buttonall')
								.click(
										function(e) {
											$("#signupform").hide();
											$("#result").hide();
											//	alert();
											$("#user").hide();
										//	$("#alluser").hide();
											$("#edittype").hide();
											$("#allpesticide").hide();
											$("#pesticide").hide();
											$("#pesticideadd").hide();
											$("#filterType").show();
											$("#table tr:gt(0)").remove();
											var getemail;
											event.preventDefault();
											$
													.ajax({

														url : 'alluser',
														type : 'GET',
														success : function(
																response) {
															console.log("res");
															data = response.data;
															var table = document
																	.getElementById('myTable');

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

																									row = "<td>"
																											+ val
																											+ "</td>";
																									//}
																									temp += row;
																									if (ind === "email") {

																										getemail = val;

																									}
																									//temp+=edit;
																									console
																											.log("temp after add edit "
																													+ temp);
																									//																myArray = response;
																								});
																				//																				temp += "<td><input type='button'value='edit' id='editbutton' email='" +getemail+ "'/></td>"
																				temp += "<td><button name='email' id='editbutton' type='submit' value='" +getemail+ "'>edit</button><button name='block' type='submit' id='blockButton' value='" +getemail+ "' >Block</button><td>"

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

											$("#alluser").show();
											$("#edittype").hide();
										});

						$('#username').on('click', function() {
							jQuery("#result").hide();
						});
						$('#click').click(function(e) {
							event.preventDefault();
							var name = $("#username").val();
							var pass = $("#password").val();
							var type = $("#type").val();
							var email = $("#email").val();
							var dob=$("#dob").val();
							var contactno = $("#contactno").val();
							var address= $("#address").val();
						
							$.ajax({

								url : 'saveuserdata',
								type : 'POST',
								data : {
									"name" : name,
									"password" : pass,
									"type" : type,
									"address":address,
									"contactno":contactno,
									"email":email,
									"dob":dob
								},
								success : function(response) {
									var result = response;
									$("#result").val(result);
									$("#result").show();
									$('#username,#password').val("");
								},
								error : function() {
									alert("error");
								}
							});
						});

						$('#alldata').click(function(e) {
							event.preventDefault();

						});

					});
</script>





<body style="background-color: aliceblue;">


<div class="sidebar">
  <a class="active">Name:${adminname} <br>Role:${type}</a>
  <a id="addUser">AddUser</a>
  <a id="pesticidebutton">AllPesticide</a>
  <a id="addPesticideproduct">AddProduct</a>
  <a id="buttonall">AllUsers</a>
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

<!-- 	<input type="button" value="AddUser" id="addUser"> -->

	<div id="signupform">
<Strong>Signup Form </Strong>>

			<table>
				<tr>
					<td><label >UserName:</label></td>
					<td><input  id="username"
							required="required" min="4" max="50" class="form-control"/></td>
				</tr>
				<tr>
					<td><label >
                     Password:</label></td>
					<td><input  id="password"
					class="form-control"		required="required" min="4" max="50" /></td>
				</tr>
		  <tr>
                    <td><label>Email:</label></td>
                    <td><input  class="form-control" id="email" type="email" required="required" min="30"/></td>
                </tr>
                   <tr>
                    <td><label >
                     ContactNo:</label></td>
                    <td><input  id="contactno" class="form-control" required="required" max="10"/></td>
                </tr>
                <tr>
                    <td><label >Dob(DD-MM-YYYY)</label></td>
                    <td><input  class="form-control" id="dob" required="required"/></td>
                </tr>
            <tr>
                    <td><label path="address">Address</label></td>
                    <td><input path="address" class="form-control" id="address" required="required"/></td>
                </tr>
                <tr>
                 <select id="type" class="form-control">  
<!--         <option value="wholeseller" label="wholeseller" class="form-control"/>   -->
        <option value="farmer" label="farmer" class="form-control"/>  
        <option value="expert" label="expert" class="form-control"/>  
        <option value="wholesellerbuyer" label="wholeseller" class="form-control"/>  
<%--         <option value="lear" label="wholeseller"/>   --%>
        </select>  
                <tr/>
				<tr>
				<tr>
					<td><input type="submit"  class="btn btn-primary" value="Submit" id="click" /></td>
				</tr>
			</table>

		<span id="user" style="color: red ! important;">should be
			greter than 4 and less than 50</span> <label id="result"
			style="color: red ! important;"><h2>data save
				succesfully</h2></label> <br> 
<!-- 				<input type="button" value="AllUser" -->
<!-- 			id="buttonall"> 
-->

	</div>
	<div class="addupdate">
	<select name="type" id="filterType" class="form-control" style="margin-left:10%; width:10% ! important;">
 
			<option value="wholesellerbuyer">seller</option>
			<option value="farmer">farmer</option>			<option value="expert">expert</option>

			<option value="approvedexpert">approvedExpert</>
		</select> <br>
		<div class="container" id="alluser">
			<div id="alluser">
				<table class="table table-striped" id="table">
					<thead>
						<tr>
							<th width="7%"
								style="color: red ! important; text-align: left ! important;">ID</th>
							
							
							<th width="5%"
								style="color: red ! important; text-align: left ! important;">LogIn</th>
							
							<th width="7%"
								style="color: red ! important; text-align: left ! important;">username</th>
							<th width="7%"
								style="color: red ! important; text-align: left ! important;">password</th>
							<th width="10%"
								style="color: red ! important; text-align: left ! important;">email</th>
							<th width="10%"
								style="color: red ! important; text-align: left ! important;">contactno</th>
							<th width="20%"
								style="color: red ! important; text-align: left ! important;">DoB</th>
							<th width="5%"
								style="color: red ! important; text-align: left ! important;">type</th>
							<th width="10%"
								style="color: red ! important; text-align: left ! important;">address</th>
							<th width="10%"
								style="color: red ! important; text-align: left ! important;">active
								status</th>
							<th width="10%"
								style="color: red ! important; text-align: left ! important;">Approved
								status</th>
							<th width="20%"
								style="color: red ! important; text-align: left ! important;">update/block</th>

						</tr>
					</thead>
					<tbody id="myTable">

					</tbody>
				</table>
			</div>

		</div>


		<br> <br> <br>


		<div id="edittype">
			<input type="text" size="10" name="type" id="changeRole">
			<button type="submit" value="" id="setType">update_Role</button>
		</div>
		
		
		
		
<br><br>
			
<!-- 			<button type="submit" value="" id="pesticidebutton">AllPesticide</button> -->
		
		
		
		
		
		
			<div class="addPesticide">
		<div class="container" id="allpesticide">
			<div id="allpestiside">
				<table class="table table-striped" id="tablepesticide">
					<thead>
						<tr>
							<th width="15%"
								style="color: red ! important; text-align: left ! important;">ID</th>
							
							
							<th width="25%"
								style="color: red ! important; text-align: left ! important;">name</th>
							
							<th width="15%"
								style="color: red ! important; text-align: left ! important;">quantity</th>
							<th width="15%"
								style="color: red ! important; text-align: left ! important;">price</th>
			<th width="15%"
								style="color: red ! important; text-align: left ! important;">AddbyId</th>
						<th width="30%"
								style="color: red ! important; text-align: left ! important;">operation</th>
						</tr>
					</thead>
					<tbody id="myTablepesticide">

					</tbody>
				</table>
			</div>

		</div>
		</div>
		
		
		
		
		
		<div id="pesticide">
			<input type="text" size="10" class="form-control" name="type" id="updatepesti">
			<button type="submit" value="" id="setquantity" class="form-control">setTottalquantity</button>
		</div>
		
	
	
	

	
	
		
		</div>
		
		
		
		
<!-- 			<button type="submit" value="" id="addPesticideproduct">AddPesticide</button> -->
		
		
		
		
		
			<div id="pesticideadd">
	
	
			productName:<input type="text" size="10" name="type" id="productname" class="form-control"><br>
			price:<input type="text" size="10" class="form-control" name="type" id="productprice"><br>
	
			quantity:<input type="text" class="form-control" size="10" name="type" id="productquantity"><br>
			<button type="submit"  class="form-control"  value="" id="pestisidesignup" style="color:blue;">add pesticide</button>
		</div>
		
		
				
	
	
</body>

</html>