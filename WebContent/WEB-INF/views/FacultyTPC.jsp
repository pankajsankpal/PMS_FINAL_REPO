<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- <SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT> -->

<title>Faculty TPC</title>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();"
	onunload="">
	
	<h3>Welcome  ${sessionScope.name} to the profile page </h3>
	
	<h2>
		My name is ${sessionScope.name} , I am a  ${sessionScope.roleName} from  ${sessionScope.branch} branch with username  ${sessionScope.userName}
	</h2>
	<br />	<br />
	
	<br />
	<br />
	<!-- <a href="StudentTPC.jsp">Student</a> -->

	<!-- <h2><a href="addAllotment">
	<button>Allot New Room </button>
	</a></h2>
	
	<h2><a href="viewAllotment">
	<button>View Allotment List </button>
	</a></h2> -->
	<table>
		<tr>
			<td><a href="AssignTPCF.html">Assign Student TPC</a></td>
		</tr>
		<tr>
			<td><a href="RemoveTPCF.html">Remove Student TPC</a></td>
		</tr>
		<tr>
			<td><a href="ViewUsersF.html">View Users</a></td>
		</tr>
		<tr>
			<td><a href="InsertMonth.html">Insert Month to view
					Events Users</a><br /></td>
		</tr>
		<tr>
			<td><a href="searchHome">Click here to search for something</a></td>
		</tr>
		<tr>
			<td><a href="sendMail">Click here to send an email</a></td>
		</tr>
		<tr>
			<td><a href="addAllotment">Add Room Allotment</a></td>
		</tr>
		<tr>
			<td><a href="viewAllotment">View Room Allotment</a></td>
		</tr>
		<tr>
			<td><a href="logged-out">Logout</a></td>
		</tr>
	</table>
</body>
</html>
