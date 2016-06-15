 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("#yb").change(function(){
    	var x = $('#yb').val();
    	
    	window.location.replace("highlight?year="+x);
    });
});
</script>
 
 <title>Highlights</title>
</head>
<body class="no-skin" onLoad="fillsel()">

			<jsp:directive.include file="Header.jsp" />
			<div class="main-content">
				<div class="main-content-inner">					
					<div class="page-content">
						<div class="page-header center">
							<b><h2 class="widget-title grey lighter">
								&nbsp; &nbsp; &nbsp; &nbsp; 					
									Student List 
							</h2></b>
						</div>
						<!-- /.page-header -->
						<div class="space-4"></div>
						
						
						<div class="space-4"></div>
						
						<div class="center">
						<table align="center">
						
						<tr>	
							<td><a href="#">
								
							</a><h4>COMPS</h4>
							
							<c:if test="${!empty comps}">
							<c:forEach items="${comps}" var="a">
							<tr><td>${a}</td></tr>
							</c:forEach>							
							</c:if>
							
							</td>
							
						</tr>
						
						<tr>	
							<td><a href="#">
								
							</a><h4>IT</h4>
							
							<c:if test="${!empty it}">
							<c:forEach items="${it}" var="a">
							<tr><td>${a}</td></tr>
							</c:forEach>							
							</c:if>
							
							</td>
							
						</tr>
						
						<tr>	
							<td><a href="#">
								
							</a><h4>ELEX</h4>
							
							<c:if test="${!empty elex}">
							<c:forEach items="${elex}" var="a">
							<tr><td>${a}</td></tr>
							</c:forEach>							
							</c:if>
							
							</td>
							
						</tr>
						
						<tr>	
							<td><a href="#">
								
							</a><h4>PROD</h4>
							
							<c:if test="${!empty prod}">
							<c:forEach items="${prod}" var="a">
							<tr><td>${a}</td></tr>
							</c:forEach>							
							</c:if>
							
							</td>
							
						</tr>
						
						</table>
						</div>	
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

	</body>
</html>