<!-- author: Pankaj sankpal
description: contains fields to add new faculty member->
<!-- -------------------------------------------------------------------------------------------------------- -->
<!-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Add Job Profile.. </title>

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
<body 	onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
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
								<div class="clearfix">
								
										<div class="row">
										<div class="col-xs-12 ">
										<div class="widget-box">
										<div class="widget-body">
										 <div class="widget-main">
										 		<h2 align="center">Job Details</h2>
										 		<br>
										 		<form method="POST"   action="saveProfile">
										 		
										 			<table align="center">
												 	 <tr>
															<td>Job Id :</td>
															<td><input name="job_id" /></td>
														</tr>
														
														<tr>
															<td>Company Id :</td>
															<td><input name="company_id"/></td>
														</tr>
														<tr>
															<td>Company name :</td>
															<td><input name="company_name" /></td>
														</tr>
														<tr>
															<td>Company Address :</td>
															<td><input name="company_address" /></td>
														</tr>
														<tr>
															<td>Event Id :</td>
															<td><input name="event_id" /></td>
														</tr>
														<tr>
				<td>Description :</td>
				<td><textarea name="job_description"></textarea></td>
			</tr>
													</table>
										 		</form>
											<div>
												
											<br><br>
											</div>
											</div>
											</div>
											</div>
											<br><br>
										</div>

										
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
 -->



<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Job Profile</title>
</head>
<body>
<form method="POST"   action="saveProfile">
	<h2><u>Job Details</u></h2>
		<table>
	 	 <tr>
				<td>Job Id :</td>
				<td><input name="job_id" /></td>
			</tr>
			<tr>
				<td>Company Id :</td>
				<td><input name="company_id"/></td>
			</tr>
			<tr>
				<td>Company name :</td>
				<td><input name="company_name" /></td>
			</tr>
			<tr>
				<td>Company Address :</td>
				<td><input name="company_address" /></td>
			</tr>
			<tr>
				<td>Event Id :</td>
				<td><input name="event_id" /></td>
			</tr>
			<tr>
				<td>Description :</td>
				<td><textarea name="job_description"></textarea></td>
			</tr>
			<tr>
				<td>Category :</td>
				<td><select name="job_category">
						<form:option value="0" label="Select" />
						<option value="Non Dream"  label="Non Dream" />
						<option value="Dream" label="Dream" />
						<option value="Super Dream" label="Super Dream" />
						
					</select></td>
			</tr>
			
			<tr>
				<td>CTC :</td>
				<td><input name="ctc" /></td>
			</tr>
			<tr>
				
			<tr>
				<td>Skills required :</td>
				<td><textarea name="skills_required"></textarea></td>
			</tr>
			
			<tr>
				<td>Documents required :</td>
				<td><textarea name="docs_required"></textarea></td>
			</tr>
			
			 <tr>
				<td>Drive date :</td>
				<td><input name="drive_date" placeholder="yyyy/mm/dd"/></td>
			</tr>
			
			<tr>
				<td>Created Date :</td>
				<td><input name="created_date" placeholder="yyyy/mm/dd" /></td>
			</tr>
			 
			<tr>
				<td>Created By :</td>
				<td><input name="created_by" /></td>
			</tr>
			 
			<tr>
				<td>Modified Date :</td>
				<td><input name="modified_date" placeholder="yyyy/mm/dd"/></td>
			</tr>
			
			<tr>
				<td>Modified By :</td>
				<td><input name="modified_by" /></td>
			</tr>
			
						
			<tr><td></td></tr>
			
			<td><b><u>Criteria Details :</u></b></td>
			
			<tr>
				<td>Criteria Id :</td>
				<td><input name="criteria_id"/></td>
			</tr>
			
			<tr>
				<td>Eligible Branches :</td>
				<td><form:checkbox path="eligible_branches" value="Computers" label="Computers"/></td>
				<td><form:checkbox path="eligible_branches" value="IT" label="IT"/></td>
				<td><form:checkbox path="eligible_branches" value="Electronics" label="Electronics"/></td>
				<td><form:checkbox path="eligible_branches" value="Production" label="Production"/></td>
			</tr>
			
			<tr>
				<td>Eligible Branches :</td>
				<td><textarea name="eligible_branches"></textarea></td>
			</tr>
			
			<tr>
				<td>Year of passing :</td>
				<td><input name="year_of_passing" /></td>
			</tr>
			
			<tr>
				<td>Placed Students Allowed :</td>
				<td><input name="placed_students_allowed" /></td>
			</tr>
			
			<tr>
				<td>Percentage :</td>
				<td><input name="percentage" /></td>
			</tr>
			
			<tr>
				<td>CGPA :</td>
				<td><input name="cgpa" /></td>
			</tr>
			
			<tr>
				<td>No. Of Live KTS Allowed :</td>
				<td><input name="no_of_live_kts_allowed" /></td>
			</tr>
			
			<tr>
				<td>No. Of Dead KTS Allowed :</td>
				<td><input name="no_of_dead_kts_allowed" /></td>
			</tr>
			
			<tr>
				<td>Year Gap Allowed :</td>
				<td><input name="year_gap_allowed" /></td>
			</tr>
			
			<tr>
				<td>SSC Percentage :</td>
				<td><input name="ssc_percentage" /></td>
			</tr>
			
			<tr>
				<td>HSC/Diploma Percentage :</td>
				<td><input name="hsc_or_dip_percentage" /></td>
			</tr>
			
			 <tr>
				<td>Last Date To Apply :</td>
				<td><input name="last_date_to_apply" placeholder="yyyy/mm/dd"/></td>
			</tr>
					 	
			<tr></tr><tr></tr>
			
			<tr>
			
				<td colspan="2"><input type="submit" value="Add Profile"></td>
			</tr>
		</table>
		

	</form>


</body>
</html> --%>