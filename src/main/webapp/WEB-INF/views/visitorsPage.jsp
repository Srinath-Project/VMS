<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>vms welcome page</title>
</head>
<body>

<c:url var="logout" value="/logout" ></c:url>

<a href="${logout}"><b>Logout</b></a>
<br> <br> <br>

<c:url var="welecomePage" value="/" ></c:url>
<a href="${welecomePage}"><b>Welcome Page</b></a>

<br> <br> <br>


<button  class ="addVisitorBtn" id="addVisitorBtn" style="width:auto;">Add Visitor</button>

<br> <br> <br>

<b>Available Visitors</b><br>

<c:forEach items="${allVisitors}" var="visitor" varStatus="loop">

<div class="">
      <label id="firstName_${loop.index}">${visitor.firstName}</label>
      <label id="email_${loop.index}">${visitor.email}</label>
      <label id="phoneNumber_${loop.index}">${visitor.phoneNumber}</label>
      <label id="company_${loop.index}">${visitor.company}</label>
      <input type="hidden" id="visitorId_${loop.index}" value="${visitor.visitorId}">
<button id="visitorEditBtn_${loop.index}" type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-edit"></span> Edit
</button>


<a id="deleteVisitor_${loop.index}" href="<c:url value='/visitors/delete?visitorId=${visitor.visitorId}'/>">
   <button type="submit" class="btn btn-blue">delete</button>
</a>

</div>
</c:forEach>




<br> <br> <br>


<div id="visitorAddOrUpdateModel" class="modal">
  
  <form:form class="modal-content animate" action="/visitors/addVisitor" method="post" modelAttribute="visitorForm">

    <div class="imgcontainer">
      <span class="close" title="Close Modal">&times;</span>
    </div>

    <div class="container">
      <label for="visitorName"><b>Visitor Name</b></label>
      <input id="formVisitorName" type="text" placeholder="Enter Visitor Name" name="visitorName" required>

      <label for="email"><b>Email</b></label>
      <input id="formEmail" type="email" placeholder="Enter Email" name="email" required>
      
      <label for="phoneNumber"><b>Phone Number</b></label>
      <input id="formPhoneNumber" type="text" placeholder="Enter Phone Number" name="phoneNumber" required>
      
      <label for="company"><b>Company</b></label>
      <input id="formCompany" type="text" placeholder="Enter Company" name="company" required>
      
      <input id="formVisitorId" type="hidden" name="visitorId" value="">
       
      <button id="formAddOrUpdateVisitorBtn" class="addVisitorBtn" type="submit">Add Employee</button>
    </div>

  </form:form>
</div>


<div id="deleteVisitorModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p>Do you want to delete visitor</p><span><b id="visitorName">Visitor Name</b></span>
    <button id="deleteConfirmationBtn" >delete</button>
  </div>

</div>



<style>

body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=email] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
.addVisitorBtn {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<script>

//Get the modal
var modal = document.getElementById('visitorAddOrUpdateModel');

// When the user clicks anywhere outside of the modal, close it

var btn = document.getElementById("addVisitorBtn");

//Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

span.onclick = function() {
	  modal.style.display = "none";
	}


//When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

//When the user clicks the button, open the modal 
btn.onclick = function() {

	$("#formAddOrUpdateVisitorBtn").html('Add Visitor');

	$("#formVisitorName").prop('value', "");
	$("#formEmail").prop('value', "");
	$("#formPhoneNumber").prop('value', "");
	$("#formCompany").prop('value', "");

	
modal.style.display = "block";
}

$(document).on("click", "[id*='visitorEditBtn']" , function() {
	
	var number = (this.id).replace(/[^0-9]/gi, ''); 


	$("#formAddOrUpdateVisitorBtn").html('Update Visitor');

	$("#formVisitorName").prop('value', $('#firstName_'+number).text());
	$("#formEmail").prop('value', $('#email_'+number).text());
	$("#formPhoneNumber").prop('value', $('#phoneNumber_'+number).text());
	$("#formCompany").prop('value', $('#company_'+number).text());
	$("#formVisitorId").prop('value', $('#visitorId_'+number).val());

	modal.style.display = "block";

	});

var number ;

$(document).on("click", "[id*='deleteVisitor']" , function(event) {

	event.preventDefault();

	number = (this.id).replace(/[^0-9]/gi, '');
	
	$('#visitorName').text($('#firstName_'+number).text());
	
	// Get the modal
	var modal = document.getElementById("deleteVisitorModal");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	 modal.style.display = "block";
	
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	  modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	  }
	}

});

$(document).on("click", "[id*='deleteConfirmationBtn']" , function(event) {

 var url =	$("#deleteVisitor_"+number).attr("href");

		window.location.href = url;

});






</script>


</body>
</html>