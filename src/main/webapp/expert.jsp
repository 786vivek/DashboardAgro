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


	var expertid;
	var getemail;
	
	$("#allqueries").hide();
	$("#answerbox").hide();


	
	
	$(document).on('click', '#answer', function() {
		
		$("#answerbox").show();
		expertid=$(this).attr('email');
		alert("expertid");
	alert(expertid);
	});
	
	

	$("#submitanswer").click(function(e) {
		
var ans= $("#answertext").val();
		alert("queries");
		$.ajax({
			url : 'saveanswer',
			type : 'POSt',
			data : {
				"answer" : ans,
				"id":expertid
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
	
	
	
	
	
	
$("#seequeries").click(function(e) {
	$("#table tr:gt(0)").remove();
	
alert("queries");
	$.ajax({
		url : 'seequeries',
		type : 'GET',
		
		success : function(response) {

			var result = response;
			console.log(result);

			var table = document
			.getElementById('myTable');
			var temp = "<tr id='mytr'>";
			var end = "</tr>";
			var count;
			
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
						count="0";

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

										
											//}
										
											if (ind === "id") {

												getemail = val;

											}
											if ((ind === "productname") || (ind === "id") || (ind === "queries") || (ind === "answer")) {
												row = "<td>"
													+ val//
													+ "</td>";												
													temp += row;
													count="1";	
											//alert(count);
											}
											//temp+=edit;
											console
													.log("temp after add edit "
															+ temp);
											//															
										});
						//					
						
					if (count==="1") {
						temp += "<td><input type='button'value='answer' id='answer' email='" +getemail+ "'/></td>"
				//		temp += "<td><button name='email' id='editbutton' type='submit' value='" +getemail+ "'>edit</button><button name='block' type='submit' id='blockButton' value='" +getemail+ "' >Block</button><td>"
						
						temp += end;
						table.innerHTML += temp;
						console
								.log(temp);
						count="0";
					//	alert(count);
						
					}
						
						});
	//temp+='<input type='"'button'"' value='"'updateblock'"' id='"'update'"''>';

	console.log(temp);
	temp += end;

	table.innerHTML += temp;
	$("#allqueries").show();
},
error : function() {
	alert("error");

}

	});
	
	
	
	
	
	
});

});
</script>
<body style="background-color: aliceblue;">


<div class="sidebar">
   <a class="active">Name:${adminname} <br>${type}</a>
  <a id="seequeries">PesticideQueries</a>
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


<!-- 	<button type="submit" value="" id="seequeries">see farmer queries</button> -->
		







<p>${approvedstatus}</p>	


<div class="showqueries">
		<div class="container" id="allqueries">
			<div id="allqueries">
				<table class="table table-striped" id="table">
					<thead>
						<tr>
							<th width="15%"
								style="color: red ! important; text-align: left ! important;">ID</th>
							<th width="20%"
								style="color: red ! important; text-align: left ! important;">productName</th>
							<th width="30%"
							style="color: red ! important; text-align: left ! important;">queries</th>
							<th width="20%"
							style="color: red ! important; text-align: left ! important;">answerqueries</th>
												
							
												</tr>
					</thead>
					<tbody id="myTable">

					</tbody>
				</table>
			</div>
			</div>
			</div>

			<div id="answerbox">
						<textarea id="answertext" name="answer" rows="4" cols="50">
type ur answer here</textarea>
		
		  <input type="submit" value="Submit" id="submitanswer">
</div>
			<a href="logout">LogOut</a>
</body>
</html>