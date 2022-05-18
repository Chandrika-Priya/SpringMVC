<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<form:form action="processForm" modelAttribute="student">
First Name: <form:input path="firstName" />
<br></br>
Last Name: <form:input path="lastName" />
<br></br>
Country:
<form:select path="country">
<form:options items="${student.countryOptions}" />
</form:select>
<br></br>
Favourite Language:
Java <form:radiobutton path="favouriteLanguage" value="Java" />
C++ <form:radiobutton path="favouriteLanguage" value="C++" />
Python <form:radiobutton path="favouriteLanguage" value="Python" />
PHP <form:radiobutton path="favouriteLanguage" value="PHP" />
<br></br>
<input type="submit" value="submit" />
</form:form>
</body>
</html>