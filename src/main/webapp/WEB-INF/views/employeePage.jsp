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

<!-- Add Started -->


<c:url var="logout" value="/logout" ></c:url>

<a href="${logout}"><b>Logout</b></a>

<br> <br> <br>


<c:url var="welecomePage" value="/" ></c:url>
<a href="${welecomePage}"><b>Welcome Page</b></a>

<br> <br> <br>

<button  class ="addEmployeeBtn" id="addEmployeeBtn" style="width:auto;">Add Employee</button>

<div id="employeeAddOrUpdateModel" class="modal">
  
  <form:form class="modal-content animate" action="/employee/addEmployee" method="post" modelAttribute="employeeForm">

    <div class="imgcontainer">
      <span class="close" title="Close Modal">&times;</span>
    </div>

    <div class="container">
      <label for="employeeName"><b>Employee Name</b></label>
      <input id="formEmployeeName" type="text" placeholder="Enter Employee Name" name="employeeName" required>

      <label for="email"><b>Email</b></label>
      <input id="formEmail" type="email" placeholder="Enter Email" name="email" required>
      
      <label for="phone"><b>Phone</b></label>
      <input id="formPhone" type="text" placeholder="Enter Phone" name="phone" required>
      
      <label for="department"><b>Department</b></label>
      <input id="formDepartment" type="text" placeholder="Enter Department" name="department" required>
      
      <label for="designation"><b>Designation</b></label>
      <input id="formDesignation" type="text" placeholder="Enter Designation" name="designation" required>
       
      <input id="formEmployeeId" type="hidden" name="employeeId" value="">
       
      <button id="formAddOrUpdateEmployeeBtn" class="addEmployeeBtn" type="submit">Add Employee</button>

    </div>

  </form:form>
</div>

<!-- Add Ended -->

<br> <br> <br>
<b>Available Employee</b><br>

<c:forEach items="${allEmployee}" var="employee" varStatus="loop">

<div class="">
   
      <label id="firstName_${loop.index}">${employee.firstName}</label>
      <label id="email_${loop.index}">${employee.email}</label>
      <label id="phoneNumber_${loop.index}">${employee.phoneNumber}</label>
      <label id="departmentId_${loop.index}">${employee.departmentId}</label>
      <label id="designation_${loop.index}">${employee.designation}</label>
      <input type="hidden" id="employeeId_${loop.index}" value="${employee.employeeId}">
<button id="employeeEditBtn_${loop.index}" type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-edit"></span> Edit
</button>



<a id="deleteEmployee_${loop.index}" href="<c:url value='/employee/delete?employeeId=${employee.employeeId}'/>">
   <button type="submit" class="btn btn-blue">delete</button>
</a>


</div>

</c:forEach>

<div id="deleteEmployeeModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p>Do you want to delete employee</p><span><b id="employeeName">Employee Name</b></span>
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
.addEmployeeBtn {
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

// Get the modal
var modal = document.getElementById('employeeAddOrUpdateModel');

// When the user clicks anywhere outside of the modal, close it

var btn = document.getElementById("addEmployeeBtn");

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

	$("#formAddOrUpdateEmployeeBtn").html('Add Employee');

	$("#formEmployeeName").prop('value', "");
	$("#formEmail").prop('value', "");
	$("#formPhone").prop('value', "");
	$("#formDepartment").prop('value', "");
	$("#formDesignation").prop('value', "");

	
modal.style.display = "block";
}




$(document).on("click", "[id*='employeeEditBtn']" , function() {
	
var number = (this.id).replace(/[^0-9]/gi, ''); 


$("#formAddOrUpdateEmployeeBtn").html('Update Employee');

$("#formEmployeeName").prop('value', $('#firstName_'+number).text());
$("#formEmail").prop('value', $('#email_'+number).text());
$("#formPhone").prop('value', $('#phoneNumber_'+number).text());
$("#formDepartment").prop('value', $('#departmentId_'+number).text());
$("#formDesignation").prop('value', $('#designation_'+number).text());
$("#formEmployeeId").prop('value', $('#employeeId_'+number).val());

modal.style.display = "block";

});

var number ;

$(document).on("click", "[id*='deleteEmployee']" , function(event) {

	event.preventDefault();

	number = (this.id).replace(/[^0-9]/gi, '');
	
	$('#employeeName').text($('#firstName_'+number).text());
	
	// Get the modal
	var modal = document.getElementById("deleteEmployeeModal");

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

 var url =	$("#deleteEmployee_"+number).attr("href");

		window.location.href = url;

});
</script>


</body>
</html>





