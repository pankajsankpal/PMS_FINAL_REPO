<!-- author: Pankaj sankpal
description: contains fields to add a new event regarding placement drives ->
<!-- -------------------------------------------------------------------------------------------------------- -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Add Events </title>

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
										<div class="col-xs-12 col-lg-6 ">
										<div class="widget-box" align="center">
										<div class="widget-body">
										 <div class="widget-main">
											<div align="center">
													<form action="fill.html" method="post">
													 <p>event name: <input type="text" id="test" name="event_name"></p>
													<p>event type: 
													 <select id="category" name="event_type">
													   <option value="none">------</option>
													  <option value="pre_placement">pre_placement</option>
													  <option value="aptitude">aptitude</option>
													  <option value="interview">interview</option>
													</select> 
													</p>
													
													<p>company name: <input type="text" id="test" name="company_name"></p>
													
													<p>approved: <input type="text" id="test" name="approved"></p>
													
													<p>date: <input type="text" id="test" name="date"></p>
													
													<p>time: <input type="text" id="test" name="time"></p>
													
													<p>venue: <input type="text" id="test" name="venue"></p>
													
													<!-- pre_placement -->
													
													<div class="pre_placement" hidden>
													<p>conducted_by: <input type="text" id="test" name="conducted_by"></p>
													
													<p>agenda: <input type="text" id="test" name="agenda"></p>
													</div>
													
													<!-- aptitude -->
													<div class="aptitude" hidden>
													<p>test_duration: <input type="text" id="test" name="test_duration"></p>
													
													<p>subjects_to_be_prepared: <input type="text" id="test" name="subjects_to_be_prepared"></p>
													
													<p>test_section: <input type="text" id="test" name="test_section"></p>
													</div>
													
													<!-- interview -->
													<div class="interview" hidden>
													<p>interview_type: <input type="text" id="test" name="interview_type"></p>
													</div>
													
													
													
													
													<button  class="btn btn-md btn-success">Show Value</button>
													</form>
													
													
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
	
	<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script>
													$(document).ready(function(){
														$( "#category" ).change(function() {
																	
																	var typ=$( "#category").val();
																	
																	
																	switch(typ){
																		case "training":
																			
																			$(".pre_placement").hide();
																			$(".interview").hide();
																			$(".aptitude").hide();
																			$(".training").show();
																			
																			break;
																		case "aptitude":
																			
																			$(".pre_placement").hide();
																			$(".interview").hide();
																			$(".aptitude").show();
																			$(".training").hide();
																			break;
																		
																		case "interview":
																			
																			
																			$(".pre_placement").hide();
																			$(".interview").show();
																			$(".aptitude").hide();
																			$(".training").hide();
																			break;
																			
																		case "pre_placement":
																			
																			$(".pre_placement").show();
																			$(".interview").hide();
																			$(".aptitude").hide();
																			$(".training").hide();
																				
																			break;
																	}
																	
																	
														});
														
														
													});
					</script>
			
	<!-- inline scripts related to this page -->

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

</body>
</html>





<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>

</head>
<body>
 
 <form action="fill.html" method="post">
 <p>event name: <input type="text" id="test" name="event_name"></p>
<p>event type: 
 <select id="category" name="event_type">
   <option value="none">------</option>
  <option value="pre_placement">pre_placement</option>
  <option value="aptitude">aptitude</option>
  <option value="interview">interview</option>
</select> 
</p>

<p>company name: <input type="text" id="test" name="company_name"></p>

<p>approved: <input type="text" id="test" name="approved"></p>

<p>date: <input type="text" id="test" name="date"></p>

<p>time: <input type="text" id="test" name="time"></p>

<p>venue: <input type="text" id="test" name="venue"></p>

<!-- pre_placement -->

<div class="pre_placement" hidden>
<p>conducted_by: <input type="text" id="test" name="conducted_by"></p>

<p>agenda: <input type="text" id="test" name="agenda"></p>
</div>

<!-- aptitude -->
<div class="aptitude" hidden>
<p>test_duration: <input type="text" id="test" name="test_duration"></p>

<p>subjects_to_be_prepared: <input type="text" id="test" name="subjects_to_be_prepared"></p>

<p>test_section: <input type="text" id="test" name="test_section"></p>
</div>

<!-- interview -->
<div class="interview" hidden>
<p>interview_type: <input type="text" id="test" name="interview_type"></p>
</div>




<button>Show Value</button>
</form>

<script>
$(document).ready(function(){
	$( "#category" ).change(function() {
				
				var typ=$( "#category").val();
				
				
				switch(typ){
					case "training":
						
						$(".pre_placement").hide();
						$(".interview").hide();
						$(".aptitude").hide();
						$(".training").show();
						
						break;
					case "aptitude":
						
						$(".pre_placement").hide();
						$(".interview").hide();
						$(".aptitude").show();
						$(".training").hide();
						break;
					
					case "interview":
						
						
						$(".pre_placement").hide();
						$(".interview").show();
						$(".aptitude").hide();
						$(".training").hide();
						break;
						
					case "pre_placement":
						
						$(".pre_placement").show();
						$(".interview").hide();
						$(".aptitude").hide();
						$(".training").hide();
							
						break;
				}
				
				
	});
	
	
});
</script>
</body>
</html>
 --%>