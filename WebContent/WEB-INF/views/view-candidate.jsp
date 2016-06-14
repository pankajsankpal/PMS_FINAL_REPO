<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>PMS Application</title>

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


				<%-- <form action="viewclist.html" method="post" >
	Company:<select name="company" >
	<option value="JP Morgan" >JPMC</option>
	<option value="Accenture" >Accenture</option>
	<option value="Tata Consultancy Services" >TCS</option>
	</select><br>
	<input type="submit" value="submit"/> 
</form> --%>
			
				<div class="clearfix">

					<div class="row">
						<div class="col-xs-12 ">
							<div class="widget-box">
								<div class="widget-body">
									<div class="widget-main">
										<div align="center">
											<h2>Select The Company You Want To View</h2>
											<br>
											<form action="viewclist.html" method="post">

												<table>
													<tr>
														<td><label class="col-sm-0">Company</label><select
															name="company">
																<!-- <option value="jpmorgan">JP Morgan</option> -->
																<option value="JP Morgan">JP Morgan</option>
																<option value="Accenture">Accenture</option>
																<!-- <option value="tcs">TCS</option> -->
																<option value="Tata Consultancy Services">TCS</option>
																<option value="Laursen & Tubro">L&T</option>
																<option value="Morgan Stanley">Morgan & Stanley</option>
																<option value="Godrej">Godrej</option>
																<option value="Direct i">Direct-I</option>
																<option value="ZS Associates">ZS</option>
														</select>
														<input name="year" hidden />
															<button class="btn btn-xs btn-primary" type="submit">
																<i class="ace-icon fa fa-check bigger-110"></i> Submit
															</button></td>

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