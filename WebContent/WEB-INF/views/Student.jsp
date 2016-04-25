<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT> -->
<title>Student</title>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();"
	onunload="">
	<h3>Welcome To the STUDENT page !!!!!</h3>
	
	<h2>
		Logged in as
		<core:out value="${userDetails.userName}" />
	</h2>
	<br />
	<p>
	BRANCH:${professionalProfile.branch}
	<br><BR>
	GENDER:<BR>
	${personalProfile.gender}<BR><BR>
	DATE OF BIRTH:<BR>
	${personalProfile.dob}<BR>
	<BR><BR>
	EMAIL : ${personalProfile.emailId}
	<br><BR>
	MOBILE CONTACT:<BR>
	${personalProfile.mobileNo}<BR><BR>
	CORRESPONDENCE ADDRESS:<BR>
	${personalProfile.correspondenceAddress}<br><BR>
	
	PERMANENT ADDRESS:<BR>
	${personalProfile.permanentAddress}<br><BR>
	

	YEAR OF PASSING: ${professionalProfile.year}
	<BR><BR>
	PLACEMENT STATUS:<BR>
	${professionalProfile.status}<BR><BR>
	FIELDS OF INTEREST:<br>
	${professionalProfile.fieldOfInterest}<br><BR>
	ACHIEVEMENTS:<br>
	${professionalProfile.achievements}<br><BR>
	PROJECTS:<br>
	${professionalProfile.projects}<br><BR>
	INTERNSHIPS:<br>
	${professionalProfile.internships}<br><BR>
	CO-CURRICULAR ACTIVITIES:<br>
	${professionalProfile.coCurricularActivities}<br><BR>	
	EXTRA CURRICULAR ACTIVITIES:<br>
	${professionalProfile.extraCurricularActivities}<br><BR>
	
	</p>
	<br>
	<c:if test="${b==true }">
		<p>You have been selected for conselling round</p>
	</c:if>
	<br />
	<table>
		<tr>
			<td><a href="edit">Click here to edit your profile</a></td>
		</tr>
		<tr>
			<td><a href="resumeUpload">Click here to upload Resume</a></td>
		</tr>
		<tr>
			<td><a href="viewResumes">Click here to view/download Resume</a></td>
		</tr>
		<tr>
			<td><a href="addFeedback">Click here to give your feedback</a></td>
		</tr>
		<tr>
			<td><a href="searchHome">Click here to search for something</a></td>
		</tr>
		<tr>
			<td><a href="InsertMonth.html">Insert Month to view Events
					Users</a><br /></td>
		</tr>
		<tr>
			<td><a href="form">Logout</a></td>
		</tr>

	</table>
</body>
</html>
