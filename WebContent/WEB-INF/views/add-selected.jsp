 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<title>Add Selected Candidate</title>
<style>
	.error {
		color:#ff0000;
		font-style:italic;
		font-weight:bold;
	}
</style>
</head>
<body>

<form:form action="addselected.html" modelAttribute="userBean" method="post">
Name:<form:input name="name" type="text" path="username" /> 
<form:errors path="username" cssClass="error"/><br/>
Company:<form:input name="company_name" type="text" path="company_name" />
<form:errors path="company_name" cssClass="error"/> <br/>
<input type="submit" value="Add"/><br />
${msg}
</form:form>

</body>
</html>