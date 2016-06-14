<!-- author: Pankaj sankpal ,Nevil
description: contains Fields to edit  student profile -->
<!-- -------------------------------------------------------------------------------------------------------- -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student | HOME</title>

<!-- page specific plugin styles -->

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />
		<link rel="stylesheet" href="assets/css/jquery.gritter.min.css" />
		
		
		<link rel="stylesheet" href="assets/css/bootstrap-editable.min.css" />
<!-- page specific plugin styles -->
		
		
		
</head>
<body onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">

<jsp:directive.include file="Header.jsp" />

<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs" id="breadcrumbs">

				<jsp:directive.include file="searchheader.jsp" />
			</div>
					<div class="page-content">
						
						<div class="page-header">
							<h1>
								My Profile
								
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="clearfix">
									
								</div>

								<!-- <div class="hr dotted"></div> -->

							<div class="show">
									<div id="user-profile-2" class="user-profile">
										<div class="tabbable">
											<ul class="nav nav-tabs padding-18">
												<ul class="nav nav-tabs padding-18">
												<li class="active">
													<a data-toggle="tab" href="#profile">
														<i class="green ace-icon fa fa-user bigger-120"></i>
														Profile
													</a>
												</li>

												

											</ul>
											</ul>

											<div class="tab-content no-border padding-24">
												<div id="profile" class="tab-pane in active">
													<div class="row">
														<div class="col-xs-12 col-sm-3 center">
															<span class="profile-picture">
																<img class="editable img-responsive" alt="Alex's Avatar" id="avatar2" src="assets/avatars/profile-pic.jpg" />
															</span>

															
															
															
														</div><!-- /.col -->

														<div class="col-xs-12 col-sm-9">
															<h4 class="blue">
																

																<span class="label label-purple arrowed-in-right">
																	<i class="ace-icon fa fa-circle smaller-80 align-middle"></i>
																	online
																</span>
															</h4>

															<div class="profile-user-info">
																<div class="profile-info-row">
																	<div class="profile-info-name"> Username </div>

																	<div class="profile-info-value">
																		<span><core:out value=" ${sessionScope.name}" /> </span>
																	</div>
																</div>

																<div class="profile-info-row">
																	<div class="profile-info-name">Gender: </div>

																	<div class="profile-info-value">
																		
																		<span><core:out value="${personalProfile.gender}" /> </span>
																		
																	</div>
																</div>
																<div class="profile-info-row">
																	<div class="profile-info-name">Year of Passing: </div>

																	<div class="profile-info-value">
																		
																		<span><core:out value="${professionalProfile.year}" /> </span>
																		
																	</div>
																</div>

																

																<div class="profile-info-row">
																	<div class="profile-info-name"> Branch:   </div>

																	<div class="profile-info-value">
																		<span><core:out value=" ${professionalProfile.branch}" /></span>
																	</div>
																</div>

																<div class="profile-info-row">
																	<div class="profile-info-name"> DOB:  </div>

																	<div class="profile-info-value">
																		<span><core:out value="${personalProfile.dob}" /></span>
																	</div>
																</div>
															</div>

															<div class="hr hr-8 dotted"></div>

															
														</div><!-- /.col -->
													</div><!-- /.row -->

													<div class="space-20"></div>

													<div class="row">
													<form action="update" method="post">
														<div class="col-xs-12 col-sm-6">
															<div class="widget-box transparent">
																<div class="widget-header widget-header-small">
																	<h4 class="widget-title smaller">
																		<i class="ace-icon fa fa-check-square-o bigger-110"></i>
																		Little About Me
																	</h4>
																</div>

																<div class="widget-body">
																	<div class="widget-main">
																	
																		<p>
																			<b>Email id</b> :  ${personalProfile.emailId}
																		</p>
																		<p>
																			<b>Contact No. </b> : ${personalProfile.mobileNo}
																		</p>
																		<p>
																			<b>Correspondance Address</b>: <input name="correspondenceAddress" type="text" value="${personalProfile.correspondenceAddress}"/>
																		</p>
																		<p>
																			<b>Permanent Address</b>: <input name="permanentAddress" type="text" value="${personalProfile.permanentAddress}"/>
																		</p>
																		<p>
																			Thanks for visiting my profile.
																		</p>
																	</div>
																</div>
															</div>
														</div>

														<div class="col-xs-12 col-sm-6">
														
															<div class="widget-box transparent">
																<div class="widget-header widget-header-small header-color-blue2">
																	<h4 class="widget-title smaller">
																		<i class="ace-icon fa fa-lightbulb-o bigger-120"></i>
																		My Professional Details
																	</h4>
																</div>

																<div class="widget-body">
																	<div class="widget-main padding-10">
																		<div class="clearfix">
																			<p> My name is ${sessionScope.name} , I am a  ${sessionScope.roleName} from  ${sessionScope.branch} branch .I 
																				am a Web Technology and Coading enthusiasts
																			</p>
																			<div class="hr hr-16"></div>
																			<p>
																				Placement Status: ${professionalProfile.status}
																			</p>
																			<p>
																				FIELDS OF INTEREST:
																									<input name="fieldOfInterest" type="text" value="${professionalProfile.fieldOfInterest}"/>
																			</p>
																			<p> ACHIEVEMENTS:<input name="achievements" type="text" value="${professionalProfile.achievements}"/></p>
	
																			<p> PROJECTS Undertaken :
																						<input name="projects" type="text" value="${professionalProfile.projects}"/></p>
																			
																			<p> INTERNSHIPS:<input name="internships" type="text" value="${professionalProfile.internships}"/></p>
																			<p>
																			Co-Curricular Activities :<input name="coCurricularActivities" type="text" value="${professionalProfile.coCurricularActivities}"/>
																			</p>	
																			<p>
																				Extar-Curricular Activities :<input name="extraCurricularActivities" type="text" value="${professionalProfile.extraCurricularActivities}"/><BR>
																			</p>		
																		</div>

																		<input type="submit" value="Submit"/>
																		

																		<div class="profile-skills">
																			
																		</div>
																	</div>
																</div>
															</div>
															</form>
														</div>
													</div>
												
												</div><!-- /#home -->

												
											</div><!-- /#pictures -->
											</div>
										</div>
									</div>
								</div>

						
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			
<jsp:directive.include file="Footer.jsp" />
<jsp:directive.include file="scripts.jsp" />
	

		
		<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
		<script src="assets/js/jquery-ui.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/jquery.gritter.min.js"></script>
		<script src="assets/js/moment.min.js"></script>
		
		
		<script src="assets/js/bootstrap-editable.min.js"></script>
		<script src="assets/js/ace-editable.min.js"></script>
		<script src="assets/js/jquery.maskedinput.min.js"></script>
				
		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
			
		
	
	<!--script for changing the profile image -->
	<script>
		//another option is using modals
				$('#avatar2').on('click', function(){
					var modal = 
					'<div class="modal fade">\
					  <div class="modal-dialog">\
					   <div class="modal-content">\
						<div class="modal-header">\
							<button type="button" class="close" data-dismiss="modal">&times;</button>\
							<h4 class="blue">Change Avatar</h4>\
						</div>\
						\
						<form class="no-margin">\
						 <div class="modal-body">\
							<div class="space-4"></div>\
							<div style="width:75%;margin-left:12%;"><input type="file" name="file-input" /></div>\
						 </div>\
						\
						 <div class="modal-footer center">\
							<button type="submit" class="btn btn-sm btn-success"><i class="ace-icon fa fa-check"></i> Submit</button>\
							<button type="button" class="btn btn-sm" data-dismiss="modal"><i class="ace-icon fa fa-times"></i> Cancel</button>\
						 </div>\
						</form>\
					  </div>\
					 </div>\
					</div>';
					
					
					var modal = $(modal);
					modal.modal("show").on("hidden", function(){
						modal.remove();
					});
			
					var working = false;
			
					var form = modal.find('form:eq(0)');
					var file = form.find('input[type=file]').eq(0);
					file.ace_file_input({
						style:'well',
						btn_choose:'Click to choose new avatar',
						btn_change:null,
						no_icon:'ace-icon fa fa-picture-o',
						thumbnail:'small',
						before_remove: function() {
							//don't remove/reset files while being uploaded
							return !working;
						},
						allowExt: ['jpg', 'jpeg', 'png', 'gif'],
						allowMime: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
					});
			
					form.on('submit', function(){
						if(!file.data('ace_input_files')) return false;
						
						file.ace_file_input('disable');
						form.find('button').attr('disabled', 'disabled');
						form.find('.modal-body').append("<div class='center'><i class='ace-icon fa fa-spinner fa-spin bigger-150 orange'></i></div>");
						
						var deferred = new $.Deferred;
						working = true;
						deferred.done(function() {
							form.find('button').removeAttr('disabled');
							form.find('input[type=file]').ace_file_input('enable');
							form.find('.modal-body > :last-child').remove();
							
							modal.modal("hide");
			
							var thumb = file.next().find('img').data('thumb');
							if(thumb) $('#avatar2').get(0).src = thumb;
			
							working = false;
						});
						
						
						setTimeout(function(){
							deferred.resolve();
						} , parseInt(Math.random() * 800 + 800));
			
						return false;
					});
					
			});
	</script>
</body>
</html>



<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Profile</title>
</head>
<body>

ACCOUNT DETAILS:<BR>
User name:${userDetails.userName}<br>


PERSONAL DETAILS:<BR>


<form action="update" method="post">

NAME:<BR>
${personalProfile.name}<BR>
<BR>

GENDER:<BR>
${personalProfile.gender}<BR>
<BR>
DATE OF BIRTH:<BR>
${personalProfile.dob}<BR>
<BR>

MOBILE CONTACT:<BR>
${personalProfile.mobileNo}<BR><BR>

EMAIL:<BR>
${personalProfile.emailId}
<BR><BR>

CORRESPONDENCE ADDRESS:<BR>
<input name="correspondenceAddress" type="text" value="${personalProfile.correspondenceAddress}"/>
<BR><BR>

PERMANENT ADDRESS:<BR>
<input name="permanentAddress" type="text" value="${personalProfile.permanentAddress}"/><BR>
<BR>


<BR><BR><BR>


PROFESSIONAL DETAILS:<BR>

BRANCH:<BR>
${professionalProfile.branch}<BR>

YEAR OF PASSING:<BR>
${professionalProfile.year}<BR>

STATUS:<BR>
${professionalProfile.status}<BR>

FIELDS OF INTEREST:<br>
<input name="fieldOfInterest" type="text" value="${professionalProfile.fieldOfInterest}"/><BR>

ACHIEVEMENTS:<br>
<input name="achievements" type="text" value="${professionalProfile.achievements}"/><BR>

PROJECTS:<br>
<input name="projects" type="text" value="${professionalProfile.projects}"/><BR>

INTERNSHIPS:<br>
<input name="internships" type="text" value="${professionalProfile.internships}"/><BR>

CO-CURRICULAR ACTIVITIES:<br>
<input name="coCurricularActivities" type="text" value="${professionalProfile.coCurricularActivities}"/><BR>

EXTRA CURRICULAR ACTIVITIES:<br>
<input name="extraCurricularActivities" type="text" value="${professionalProfile.extraCurricularActivities}"/><BR>
<BR>
<input type="submit" value="Submit"/>

</form>

</body>
</html>
 --%>