

<!-- author: Pankaj sankpal
description: contains fields to remove a student or a faculty TPC into the System->
<!-- -------------------------------------------------------------------------------------------------------- -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Remove faculty or Student TPC</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>

<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="../assets/font-awesome/4.2.0/css/font-awesome.min.css" />

<!-- page specific plugin styles -->
<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />



<!-- text fonts -->
<link rel="stylesheet" href="../assets/fonts/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="../assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />





<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="../assets/js/ace-extra.min.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->


</head>
<body>
	<jsp:directive.include file="Header.jsp" />

	<div class="main-content">

				<div class="main-content-inner">
					<div class="breadcrumbs" id="breadcrumbs">

				<jsp:directive.include file="searchheader.jsp" />
			</div>

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						<div class="clearfix">

							<div class="row">
								<div class="col-xs-12 ">
									<div class="widget-box">
										<div class="widget-body">
											<div class="widget-main">
												<div align="center">
													<h2>Remove TPC</h2>
													<form:form method="POST" action="SubmitRemoveTPC">
														<table>
															<tr>
																<td><form:label path="userName">User name:</form:label></td>
																<td><form:input path="userName" /></td>
																<td><form:errors path="userName" cssClass="error" /></td>
															</tr>
															<tr>
																<p>
																	<font size="5" color="red" face="verdana">${erroMesg}</font>
																</p>
															</tr>
															<tr>
																<td colspan="2"><input
																	class="btn btn-md btn-success" type="submit"
																	value="Submit" /></td>
															</tr>
														</table>
													</form:form>
													<br>
													<br>
												</div>
											</div>
										</div>
									</div>
									<br>
									<br>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		
		<jsp:directive.include file="scripts.jsp" />
		<jsp:directive.include file="Footer.jsp" />


		<!-- /.main-container -->

	</div>

</body>
</html>




<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"

	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- This JSP is a form to allow a person to input Username of the User to be removed as TPC(STPC or FTPC)

 @author Adarsh
 -->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove TPC</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>
	<h2>Remove TPC</h2>
	<form:form method="POST" action="SubmitRemoveTPC">
		<table>
			<tr>
				<td><form:label path="userName">User name:</form:label></td>
				<td><form:input path="userName" /></td>
				<td><form:errors path="userName" cssClass="error" /></td>
			</tr>
			<tr>
				<p><font size="5" color="red" face="verdana">${erroMesg}</font></p>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
	<tr>
		<td><a href="TPOHome">Home</a></td>
	</tr>
	
</body>
</html>

 --%>
