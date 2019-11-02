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

<b>Dashboard Page</b>


<br> <br> <br>
<c:url var="logout" value="/logout" ></c:url>
<a href="${logout}"><b>Logout</b></a>

<br> <br> <br>
<c:url var="welecomePage" value="/" ></c:url>
<a href="${welecomePage}"><b>Welcome Page</b></a>



</body>
</html>