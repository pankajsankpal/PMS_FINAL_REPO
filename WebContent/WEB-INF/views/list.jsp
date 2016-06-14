
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
 
 <script  type="text/javascript">
 function fillsel(){
  							var myDate = new Date();
  							var year = myDate.getFullYear();
  							for(var i = 2000; i < year+1; i++){
					 						 	$('#yb').append('<option value="'+i+'">'+i+'</option>');

  							}
  							
 }
 </script>
<title>Highlights</title>
</head>
<body class="no-skin" onLoad="fillsel()">

			<jsp:directive.include file="Header.jsp" />
			<div class="main-content">
				<div class="main-content-inner">
				<div class="breadcrumbs" id="breadcrumbs">

				<jsp:directive.include file="searchheader.jsp" />
			</div>					
					<div class="page-content">
						<div class="page-header center">
							<b><h2 class="widget-title grey lighter">
								&nbsp; &nbsp; &nbsp; &nbsp; 					
									Hightlights of the year
							</h2></b>
						</div>
						<!-- /.page-header -->
						<div class="space-4"></div>
						
						<div class="center">
							<form action = "">
							<select id="yb" name="yb" >
  							</select>
  							</form>
						</div>
						<div class="space-4"></div>
						<div class="center">
						<table align="center">
						<tr>	
							<td><a href="tpclist">
								<img src="assets/images/placement.jpg" alt="TPC list" width="300" height="300" border="0">
							</a><h4>TPC list</h4>
							</td>
							<td>
							<a href="studentlist">
								<img src="assets/images/student.jpg" alt="Students" width="300" height="300" border="0">
							</a><h4>Students</h4>
							</td>
						</tr>	
						<tr>
							<td><a href="stats">
								<img src="assets/images/statistics.jpg" alt="Statistics" width="300" height="300" border="0">
							</a><h4>Statistics</h4>
							</td>
							<td><a href="company">
								<img src="assets/images/company.png" alt="Company" width="300" height="300" border="0">
							</a><h4>Company</h4>
							</td>
						</tr>
						</table>
						</div>	
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

	</body>

</html>