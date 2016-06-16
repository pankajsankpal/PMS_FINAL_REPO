<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Add/Delete Candidate</title>

<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="assets/font-awesome/4.2.0/css/font-awesome.min.css" />

<!-- page specific plugin styles -->

<!-- text fonts -->
<link rel="stylesheet" href="assets/fonts/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />





<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="assets/js/ace-extra.min.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->


</head>
<body>
	<jsp:directive.include file="Header.jsp" />
	<div class="main-content">
		<div class="main-content-inner">

			<div class="page-content">
				<div class="page-header"></div>
				<!-- /.page-header -->



				<script type="text/javascript">
					try {
						ace.settings.check('main-container', 'fixed')
					} catch (e) {
					}
				</script>

				<%-- <form action="managelist.html" method=POST>
					Edit User List:<select name="option">
						<option value="Add">Add</option>
						<option value="Delete">Delete</option>
					</select> <input type=submit value=submit /><br />
				</form>
				<a href="view.html">View Applicants' List</a>
				 --%>


				<div class="clearfix">

					<div class="row">
						<div class="col-xs-12 ">
							<div class="widget-box">
								<div class="widget-body">
									<div class="widget-main">
										<div align="center">
											<h2>Add/Delete Candidate</h2>
											<br>
											<form method="POST" action="managelist.html">

												<table>
													<tr>
														<td><label class="col-sm-0">Edit User List</label> <select
															name="option" class="chosen-select">
																<option value="Add">Add A Candidate</option>
																<option value="Delete">Delete A Candidate</</option>
														</select>
															<button class="btn btn-xs btn-primary" type="submit">
																<i class="ace-icon fa fa-check bigger-110"></i> Submit
															</button></td>

													</tr>
													</table>
											</form>
											<table>
													<tr>
														<td>
															
																<a href="view.html">View The
																	List Of Applied Candidates</a>
															
														</td>
													</tr>
													</table>
											</form>
												

											<br> <br> <br> <br> <br> <br>
										</div>
									</div>
								</div>
							</div>
							<br> <br>
						</div>


					</div>

					<!-- /#home -->
				</div>


				<jsp:directive.include file="Footer.jsp" />
			</div>
		</div>
	</div>

	<!-- /.main-container -->



	<!--[if !IE]> -->
	<script src="assets/js/jquery.2.1.1.min.js"></script>


	<!-- inline scripts related to this page -->

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
</body>
</html>