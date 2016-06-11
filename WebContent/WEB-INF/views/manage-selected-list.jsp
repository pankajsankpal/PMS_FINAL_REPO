<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MANAGE LIST OF SELECTED APPLICANTS</title>
</head>
<body>
<form action="manageslist.html" method=POST>
Edit User List:<select name="option">
	<option value="Add" >Add</option>
	<option value="Delete" >Delete</option>
</select>
<input type=submit value=submit /><br />
</form>
<a href="views.html">View Applicants' List</a>
</body>
</html>