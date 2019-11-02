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

${SPRING_SECURITY_LAST_EXCEPTION.message}


<form:form class="modal-content animate" action="/login" method="post" modelAttribute="loginForm">

   
      <label for="userName"><b>User Name</b></label>
      <input type="text" placeholder="Enter User Name" name="userName" required>

      <label for="password"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
       
       <label for="tenentCode"><b>Tenant Code</b></label>
       <input type="text" placeholder="Enter Tenant Code" name="tenantCode" required>
        
      <button type="submit">Login</button>
  
</form:form>
  
</body>
</html>
  