<!-- author: Pankaj sankpal , @author Adarsh\\\\\
description: contain field for removing the student tpc -->
<!-- -------------------------------------------------------------------------------------------------------- -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Events	</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
<!-- page specific plugin styles -->
		<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />
		<link rel="stylesheet" href="assets/css/jquery.gritter.min.css" />
		<link rel="stylesheet" href="assets/css/select2.min.css" />
		<link rel="stylesheet" href="assets/css/datepicker.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-editable.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-multiselect.min.css" />
		<link rel="stylesheet" href="assets/css/jquery-ui.min.css" />

</head>

	<body>
<jsp:directive.include file="Header.jsp" />

<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<!-- <ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>

							<li>
								<a href="#">More Pages</a>
							</li>
							<li class="active">User Profile</li>
						</ul>/.breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="on" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->
					</div>

					<div class="page-content">
						

						<div class="page-header">
							<h1>
								Logged in as
								<core:out value="${loginForm.userName}" />
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="widget-box">
								<div class="widget-body">
								 <div class="widget-main" align="center">
									<h2>Select the month to view events in that Month</h2>
									<br>
										<form:form method="POST" action="SubmitMonth">
											<table cellspacing="10px">
									
												<tr>
													<td> Month :</td>
													<td ><select name="month">
									
															<option value="01">January</option>
															<option value="02">February</option>
															<option value="03">March</option>
															<option value="04">April</option>
															<option value="05">May</option>
															<option value="06">June</option>
															<option value="07">July</option>
															<option value="08">August</option>
															<option value="09">September</option>
															<option value="10">October</option>
															<option value="11">November</option>
															<option value="12">December</option>
									
													</select></td>
												</tr>
												<tr>
													<p>
														<font size="5" color="red" face="verdana">${erroMesg}</font>
													</p>
												</tr>
												<tr>
													<td colspan="2"><input class="btn btn-sm  btn-primary" type="submit" value="Submit" /></td>
												</tr>
											</table>
										</form:form>
								  </div>
								 </div>
								</div>  
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					
					</div><!-- /.page-content -->
				</div>
			
</div>
<jsp:directive.include file="Footer.jsp" />
<jsp:directive.include file="scripts.jsp" />
	
</body>
</html>



<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- This JSP is a form to allow a User to input month whose events the User wants to see

 @author Adarsh
 -->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Month</title>

</head>
<body>
	<h2>Select the month to events in that Month</h2>
	<form:form method="POST" action="SubmitMonth">
		<table>

			<tr>
				<td>Month :</td>
				<td><select name="month">

						<option value="01">January</option>
						<option value="02">February</option>
						<option value="03">March</option>
						<option value="04">April</option>
						<option value="05">May</option>
						<option value="06">June</option>
						<option value="07">July</option>
						<option value="08">August</option>
						<option value="09">September</option>
						<option value="10">October</option>
						<option value="11">November</option>
						<option value="12">December</option>

				</select></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
</body>

</html>
 --%>
