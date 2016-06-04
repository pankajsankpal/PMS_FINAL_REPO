<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Allotments</title>
</head>
<body>
<jsp:directive.include file="Header.jsp" />
	<div class="main-content">
				<div class="main-content-inner">
					<div class="page-content">
					<h1 align="center"><u>List Allotments</u></h1>
					<br/><br/>
					<h3 align="center"><a href="addAllotment.html">Add New Allotment</a></h3>
					<!-- connect to database -->
					<sql:setDataSource var="snapshot" driver="org.postgresql.Driver"
					     url="jdbc:postgresql://localhost:5432/placementdb"
					     user="postgres"  password="root"/>
					<!-- write query -->
					<sql:query dataSource="${snapshot}" var="allotments">
					SELECT * from room_allotment.allotment;
					</sql:query>
					<!-- header-->
	<table align="center" border="5" width="1500" cellspacing="0" cellpadding="0" height="600">
		<tr>
			<td align="center"><b><u>Allotment ID</u></b></td>
			<td align="center"><b><u>Company Name</u></b></td>
			<td align="center"><b><u>Round No.</u></b></td>
			<td align="center"><b><u>Room No.</u></b></td>
			<td align="center"><b><u>Job Description</u></b></td>
			<td align="center"><b><u>Drive Date</u></b></td>
		</tr>

			<!--view contents -->
		<c:forEach items="${allotments.rows}" var="allotment">
			<tr>
				<td align="center"><c:out value="${allotment.allotment_id}"/></td>
				<td align="center"><c:out value="${allotment.company_name}"/></td>
				<td align="center"><c:out value="${allotment.round_no}"/></td>
				<td align="center"><c:out value="${allotment.room_no}"/></td>
				<td align="center"><c:out value="${allotment.job_description}"/></td>
				<td align="center"><c:out value="${allotment.drive_date}"/></td>
			</tr>
		</c:forEach>
	</table>
</div>
</div>
</div>
</body>
</html>