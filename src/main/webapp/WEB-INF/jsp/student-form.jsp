<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<form:form action="processForm" modelAttribute="student">
First Name: <form:input path="firstName" />
Last Name: <form:input path="lastName" />
<br></br>
<input type="submit" value="submit" />
</form:form>
</body>
</html>