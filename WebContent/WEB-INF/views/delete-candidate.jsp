<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete</title>
<style>
	.error {
		color:#ff0000;
		font-style:italic;
		font-weight:bold;
	}
</style>
</head>
<body>
<form:form action="deletecandidate.html" modelAttribute="userBean" method="post">
Name:<form:input name="name" type="text" path="username" />
<form:errors path="username" cssClass="error"/><br/>
Company:<form:input name="company" type="text" path="company" />
<form:errors path="company" cssClass="error"/>
<br/>
${msg}
<br/> 
<input type="submit" value="Delete"/>
</form:form><br />
</body>
</html>