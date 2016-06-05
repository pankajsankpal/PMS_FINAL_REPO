
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- This JSP is a form to allow a User to input task for a particular FTPC whose Username is also given by the User

 @author Adarsh
 -->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assign Task to Faculty</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>

</head>
<body>
	<h2>Insert Work</h2>
	<form:form method="POST" action="SubmitInsertWork">
		<table>
			<tr>
				<td><form:label path="userName">UserName:</form:label></td>
				<td><form:input path="userName" /></td>
				<td><form:errors path="userName" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Month :</td>
				<td><select name="userWork">
						<option value="01">PLACEMENT REPORT</option>
						<option value="02">ROOM ALLOTMENT</option>
						<option value="03">COUNSELLING REPORT</option>
						<option value="04">FEEDBACK REPORT</option>
				</select></td>
			</tr>
			<tr>
				<p>
					<font size="5" color="red" face="verdana">${erroMesg}</font>
				</p>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>

</body>
</html>

