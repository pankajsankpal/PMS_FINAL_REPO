<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<center>
		<form action="/PMS_v1/SearchUser" method="get">
			Search User : <input type="text" name="searchString" /> <input type="submit"
				value="Search"> <br/>
		</form>
		<form action="/PMS_v1/SearchCompany" method="get">
			Search Company : <input type="text" name="searchString" /> <input type="submit"
				value="Search">
		</form>
	</center>
	<br />
	<c:if test="${!empty userList}">
		<c:forEach items="${userList}" var="user">
			<table align="center" >
				<tr>
					<td>${user.userName}<td>
					<td>${user.name}</td>
				</tr>
			</table>
		</c:forEach>
	</c:if>
	<c:if test="${!empty companyList}">
		<c:forEach items="${companyList}" var="company">
			<table align="center" >
				<tr>
					<td>${company.companyName}<td>
				</tr>
			</table>
		</c:forEach>
	</c:if>
</body>
</html>
