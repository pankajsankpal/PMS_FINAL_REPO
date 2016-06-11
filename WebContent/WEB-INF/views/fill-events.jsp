<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
 <!-- <script src="https://code.jquery.com/jquery-2.2.1.min.js" ></script> 
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> -->

<script type="text/javascript" src="assets/js/jquery.1.11.1.min.js" ></script>
<script type="text/javascript" src="assets/js/respond.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.js"></script>
<script type="text/javascript" src="assets/js/jquery.validate.min.js"></script>
<script type="text/javascript">
(function($,W,D){
	var JQVAL={};
	JQVAL.UTIL =
		{
		setupFormValidation: function(){
		$("#form").validate({
			rules: {
				event_name : "required",
				event_type : "required",
				company_name : "required",
				date : {
					required:true,
					},
				time : "required",
				venue: "required"
			},
			messages: {
				event_name: "Please enter an event name",
				event_type : "Please select an event type",
				company_name : "Please enter the name of the company",
				date : {
					required : "Please enter the required date",
				},
				time : "Please enter the event time",
				venue : "Please enter the venue",
			},
				submitHandler: function(form){
				form.submit();
			}
		
		});
		
	}
}
$(D).ready(function($){
	JQVAL.UTIL.setupFormValidation();
});

})(jQuery, window, document);
</script>

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
<style>
#form label.error {
color: #FB3A3A;
}
</style>
</head>
<body>
 
 <form id="form" action="fill.html" method="post" novalidate="novalidate">
 <p>event name: 
 <input type="text" id="event_name" name="event_name" path="event_name" /></p>
<p>event type: 
 <select id="category" name="event_type" path="event_type" >
   <option value="none" path="none" >------</option>
  <option value="pre_placement" path="pre_placement" >pre_placement</option>
  <option value="aptitude" path="aptitude" >aptitude</option>
  <option value="interview" path="interview" >interview</option>
</select> 
</p>

<p>company name: <select type="text" id="company_name" name="company_name" path="company_name" >
<%
    				try{
							Class.forName("org.postgresql.Driver").newInstance();
							Connection connection = DriverManager.getConnection
            				("jdbc:postgresql://localhost:5432/placementdb?user=postgres&password=root");

       						Statement statement = connection.createStatement() ;

       						resultset =statement.executeQuery("select company_name from job_schema.company") ;
				%>
				<%  while(resultset.next()){ %>
            		<option><%= resultset.getString(1)%></option>
        		<% } %>
        		<%
        		}
        		catch(Exception e)
        		{
             			out.println("wrong entry"+e);
        		}
				%>

</select></p>

<p>approved: <select type="text" id="approved" name="approved" >
				<option value="yes">yes</option>
				<option value="no">no</option>
			 </select></p>

<p>date: <input type="text" id="date" name="date" placeholder="dd/MM/yyyy" /></p>

<p>time: <input type="text" id="time" name="time" placeholder="HH:mm" /></p>

<p>venue: <input type="text" id="venue" name="venue" /></p>

<!-- pre_placement -->
<div class="pre_placement" hidden>
<p>conducted_by: <input type="text" id="test" name="conducted_by"  /></p>

<p>agenda: <input type="text" id="test" name="agenda" /></p>
</div>

<!-- aptitude -->
<div class="aptitude" hidden>
<p>test_duration: <input type="text" id="test" name="test_duration" /></p>

<p>subjects_to_be_prepared: <input type="text" id="test" name="subjects_to_be_prepared" /></p>

<p>test_section: <input type="text" id="test" name="test_section" /></p>
</div>

<!-- interview -->
<div class="interview" hidden>
<p>interview_type: <input type="text" id="test" name="interview_type" /></p>
</div>

<button>Submit</button>

</body>
</html>
 --%>
<!-- author: Pankaj sankpal
description: contains fields to add a new event regarding placement drives ->
<!-- -------------------------------------------------------------------------------------------------------- -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

<script type="text/javascript">
(function($,W,D){
	var JQVAL={};
	JQVAL.UTIL =
		{
		setupFormValidation: function(){
		$("#form").validate({
			rules: {
				event_name : "required",
				event_type : "required",
				company_name : "required",
				date : {
					required:true,
					},
				time : "required",
				venue: "required"
			},
			messages: {
				event_name: "Please enter an event name",
				event_type : "Please select an event type",
				company_name : "Please enter the name of the company",
				date : {
					required : "Please enter the required date",
				},
				time : "Please enter the event time",
				venue : "Please enter the venue",
			},
				submitHandler: function(form){
				form.submit();
			}
		
		});
		
	}
}
$(D).ready(function($){
	JQVAL.UTIL.setupFormValidation();
});

})(jQuery, window, document);
</script>

</head>
<body >
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
								Logged in as  ${sessionScope.name}
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
													<form id="form" action="fill.html" method="post" novalidate="novalidate">
													 <p>event name: <input type="text" id="test" name="event_name"></p>
													<p>event type: 
													 <select id="category" name="event_type">
													   <option value="none">------</option>
													  <option value="pre_placement">pre_placement</option>
													  <option value="aptitude">aptitude</option>
													  <option value="interview">interview</option>
													</select> 
													</p>
													
													<p>company name: <select type="text" id="company_name" name="company_name" path="company_name" >
													<%
													    				try{
																				Class.forName("org.postgresql.Driver").newInstance();
																				Connection connection = DriverManager.getConnection
													            				("jdbc:postgresql://localhost:5432/placementdb?user=postgres&password=universe");
													
													       						Statement statement = connection.createStatement() ;
													
													       						resultset =statement.executeQuery("select company_name from job_schema.company") ;
																	%>
																	<%  while(resultset.next()){ %>
													            		<option><%= resultset.getString(1)%></option>
													        		<% } %>
													        		<%
													        		}
													        		catch(Exception e)
													        		{
													             			out.println("wrong entry"+e);
													        		}
																	%>
													
													</select></p>
													
													<p>approved: <select type="text" id="approved" name="approved" >
																	<option value="yes">yes</option>
																	<option value="no">no</option>
																 </select></p>
													
													<p>date: <input type="text" id="date" name="date" placeholder="dd/MM/yyyy" /></p>

													<p>time: <input type="text" id="time" name="time" placeholder="HH:mm" /></p>
													
													<p>venue: <input type="text" id="venue" name="venue" /></p>
													
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