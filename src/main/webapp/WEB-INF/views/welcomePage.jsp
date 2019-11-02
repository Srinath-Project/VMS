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

Welcome To VMS

<br> <br> <br>
<c:url var="login" value="/login" ></c:url>
<a href="${login}"><b>Login</b></a>

<br> <br> <br>
<c:url var="logout" value="/logout" ></c:url>
<a href="${logout}"><b>Logout</b></a>

<br> <br> <br>
<c:url var="employeePage" value="/employee/employee" ></c:url>
<a href="${employeePage}"><b>Employee Page</b></a>

<br> <br> <br>
<c:url var="visitorsPage" value="/visitors/visitors" ></c:url>
<a href="${visitorsPage}"><b>Visitors Page</b></a>

<br> <br> <br>
<c:url var="dashboardPage" value="/dashboard/dashboard" ></c:url>
<a href="${dashboardPage}"><b>Dashboard Page</b></a>




</body>
</html>