
<!-- author: Pankaj sankpal
description: contains fields to add new faculty member->
<!-- -------------------------------------------------------------------------------------------------------- -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Remove User</title>

</head>
<body >
	<jsp:directive.include file="Header.jsp" />

	<div class="main-content">
	
			<div class="breadcrumbs" id="breadcrumbs">

				<jsp:directive.include file="searchheader.jsp" />
			</div>

			<div class="page-content">


				<div class="page-header">
					<h1>
						Logged in as
						<c:out value="${sessionScope.name}" />
					</h1>
				</div>
				<!-- /.page-header -->

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						<div class="clearfix">

							<div class="row">
								<div class="col-xs-12 ">
									<div class="widget-box">
										<div class="widget-body">
											<div class="widget-main" align="center">
												<div>
													<h2>Enter User ID to Remove User ....!</h2>
													<br>

													<c:if test="${success==1}">
														<p style="color: green;">User removed successfully!</p>
													</c:if>
													<c:if test="${error==1}">
														<p style="color: red;">This user does not exist in the
															database!</p>
													</c:if>
													<form method="POST" action="removeUser">
														Enter User ID: <input id="username" name="username"
															type="text" value="" required /><br />
														<br /> <input type="submit" value="Remove User">
													</form>

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
						<jsp:directive.include file="scripts.jsp" />
						<jsp:directive.include file="Footer.jsp" />


					</div>
				</div>



			</div>
				<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

			
</body>
</html>


<%--


<!--
 Filename : removeUser.jsp
 Author name: Crystal Cuthinho
 Description: used for removing any user manually by tpo/ admin. Mapping goes to ManageUserController.
 -->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove User</title>
</head>
<body>

<form method="POST" action="removeUser">
Enter User ID:   <input id="username" name="username" type="text" value=""/><br/><br/>
	
		  <input type="submit" value="Remove User"> 
	</form>

</body>
</html>


--%>

