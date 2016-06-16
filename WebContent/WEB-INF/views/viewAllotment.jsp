<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<title>All Allotments</title>
<link rel="stylesheet" href="assets/css/table.css">
<meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">
</head>
<body  class="no-skin">
		<jsp:directive.include file="Header.jsp" />
		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs" id="breadcrumbs">

				<jsp:directive.include file="searchheader.jsp" />
			</div><div class="page-content">
					<h1 align="center"><u>List Allotments</u></h1>
					<!-- connect to database -->
					<sql:setDataSource var="snapshot" driver="org.postgresql.Driver"
					     url="jdbc:postgresql://localhost:5432/placementdb"
					     user="postgres"  password="root"/>
					<!-- write query -->
					<sql:query dataSource="${snapshot}" var="allotments">
						SELECT * from room_allotment.allotment;
					</sql:query>
					<!-- header-->
					<table border="3" class="table-fill">
					<thead>
						<tr>
							<th class="text-center"><b>Allotment ID</b></td>
							<th class="text-center"><b>Company Name</b></td>
							<th class="text-center"><b>Round No.</b></td>
							<th class="text-center"><b>Room No.</b></td>
							<th class="text-center"><b>Job Description</b></td>
							<th class="text-center"><b>Drive Date</b></td>
						</tr>
					</thead>
					<tbody class="table-hover">
						<!--view contents -->
						<c:forEach items="${allotments.rows}" var="allotment">
						<tr>
							<td class="text-center"><c:out value="${allotment.allotment_id}"/></td>
							<td class="text-center"><c:out value="${allotment.company_name}"/></td>
							<td class="text-center"><c:out value="${allotment.round_no}"/></td>
							<td class="text-center"><c:out value="${allotment.room_no}"/></td>
							<td class="text-center"><c:out value="${allotment.job_description}"/></td>
							<td class="text-center"><c:out value="${allotment.drive_date}"/></td>
						</tr>
						</c:forEach>
					</tbody>
					</table>
				</div>
			</div>	
		</div>
				<jsp:directive.include file="Footer.jsp" />
<jsp:directive.include file="scripts.jsp" />
</body>

</html>