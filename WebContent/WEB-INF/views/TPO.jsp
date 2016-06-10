<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TPO | HOME</title>

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />
		<link rel="stylesheet" href="assets/css/jquery.gritter.min.css" />
		<link rel="stylesheet" href="assets/css/select2.min.css" />
	
		<link rel="stylesheet" href="assets/css/bootstrap-editable.min.css" />
		
		<link rel="stylesheet" href="assets/css/select2.min.css" />
		
		
		<!-- <link rel="stylesheet" href="assets/css/bootstrap-multiselect.min.css" /> -->
		<link rel="stylesheet" href="assets/css/jquery-ui.min.css" />
			
		
		<!-- page specific plugin for calander styles -->
		<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />
		<link rel="stylesheet" href="assets/css/fullcalendar.min.css" />
		<script src="assets/js/ace-extra.min.js"></script>
		
		
</head>
<body>

<jsp:directive.include file="Header.jsp" />

	<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						

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
							
							<h3>Welcome  ${sessionScope.name} to the profile page </h3>
	
							<h2>
								My name is ${sessionScope.name} , I am a  ${sessionScope.roleName} from  ${sessionScope.branch} branch with username  ${sessionScope.userName}
							</h2>
							<br />
	
							
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
												<li class="active">
													<a data-toggle="tab" href="#activity">
														<i class="orange ace-icon fa fa-rss bigger-120"></i>
														Activity
													</a>
												</li>

												<li>
													<a data-toggle="tab" href="#uploads">
														<i class="blue ace-icon fa fa-users bigger-120"></i>
														Uploads
													</a>
												</li>
												

											</ul>

											<div class="tab-content no-border padding-24">
												

												<div id="uploads" class="tab-pane">
													<div class="row">
														<div class="col-xs-12 col-sm-8">
															<div class="widget-box">
																<div class="widget-body">
																 <div class="widget-main">	
																	
																		
																			<form>
																			<div>
																				<label class="col-sm-3 control-label no-padding-left" for="form-field-1"> Job Profile </label>
																				<div class="col-sm-9">
																					<input type="text" id="form-field-1" placeholder=" Name of Job Profile" class="col-xs-10 col-sm-8" />
																				</div><br>
																				<label for="form-field-11">About Job</label>
																					<textarea id="form-field-11" placeholder="Add remarks on Selected Job profile" class="autosize-transition form-control"></textarea>
																				<br>
																				<label class="control-label col-xs-12 col-sm-3 no-padding-right"> Send To: </label>

																				<div class="col-xs-12 col-sm-9">
																					<select multiple="" id="state" name="state" class="select2" data-placeholder="Click to Choose...">
																						<option value="">&nbsp;</option>
																						<option value="AL">Student</option>
																						<option value="AK">StudentTPC</option>
																						<option value="AZ">FacultyTPC</option>
																					</select>

																				</div>
																				<br><br><br>
																				
																				<div class="form-group">
																					<div class="col-xs-12">
																						<input multiple="" type="file" id="id-input-file-3" />
																					</div>
																				</div>

																				<br><br><br>
																				<button class="btn btn-info" type="submit">
																					<i class="ace-icon fa fa-check bigger-110"></i>
																					SEND
																				</button>

																				&nbsp; &nbsp; &nbsp;
																				<button class="btn btn-inverse" type="reset">
																					<i class="ace-icon fa fa-undo bigger-110"></i>
																					Reset
																				</button>
																				
																			</div>
																	   	</form>
																	
																		
																	</div>
																	
																</div>
															</div>
														</div><!-- /.span -->
													
														<div class="col-xs-12 col-sm-4">
																<br>
																<a href="#"  class="btn btn-primary btn-md">View Counseling Reports.</a>
																	<br><br>
																<a href="#" class="btn btn-warning btn-md">View Offer Letters.</a>
																	<br><br>
																	<div class="col-xs-12">
																		<input type="file" id="id-input-file-2" />
																	<a href="#"  class="btn btn-info btn-sm">Upload</a>
																	</div>
																
													</div>
													</div>


													<div class="space-12"></div>

													</div><!-- /#feed -->

												<div id="activity" class="tab-pane in active">
													 <div class="row ">
														
														
														 <br>
													 
														<div class="col-xs-12 col-sm-4 left">
															
															  <a href="addProfile"  class="btn btn-purple btn-lg btn-block">Add job Profile </a> <br><br>
															<a href="getEventForm.html"  class="btn btn-inverse btn-lg btn-block">Add Event </a>
																

														</div>
										
														
														&nbsp;&nbsp;<div class="col-xs-12 col-sm-4 right" >
														  
														  <a href="manage.html" class="btn btn-purple btn-lg btn-block">Add candidate </a> <br><br>
														  <a href="GroupSendMail"  class="btn btn-inverse btn-lg btn-block">Send Group Email </a><br><br>
														  <a href="personalMail"  class="btn btn-inverse btn-lg btn-block">Send Personal Email </a><br><br>
														</div>
														
												<div class="col-xs-12 col-sm-8 left">
														<a href="addUser"  class="btn btn-warning btn-lg btn-block">Manage different users of System</a> <br><br>	
												</div>
											</div><!-- /#pictures -->
											</div>
								
							
											</div><!-- /#pictures -->
										</div><!-- end of tabbable -->
									</div><!-- end of user-profile-2 -->
								</div><!-- end of show -->
							</div><!-- /.col -->

						
								
							</div><!-- /.row -->
						</div><!-- end of page-content -->
					

				
			
			</div><!-- /.main-content-inner-->
		
</div><!-- main-content -->
			

<jsp:directive.include file="Footer.jsp" />
<jsp:directive.include file="scripts.jsp" />


		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
		<script src="assets/js/jquery-ui.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/jquery.gritter.min.js"></script>
		<script src="assets/js/moment.min.js"></script>
		
		<script src="assets/js/bootbox.min.js"></script>
		<script src="assets/js/jquery.easypiechart.min.js"></script>
		
		<script src="assets/js/jquery.hotkeys.min.js"></script>
		<script src="assets/js/bootstrap-wysiwyg.min.js"></script>
		<script src="assets/js/select2.min.js"></script>
		<script src="assets/js/fuelux.spinner.min.js"></script>
		<script src="assets/js/bootstrap-editable.min.js"></script>
		<script src="assets/js/ace-editable.min.js"></script>
		<script src="assets/js/jquery.maskedinput.min.js"></script>
		<script src="assets/js/jquery.autosize.min.js"></script>
		
		<script src="assets/js/select2.min.js"></script>
		
		<!-- <script src="assets/js/bootstrap-multiselect.min.js"></script> -->
		<script src="assets/js/jquery-ui.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>

		<!-- page specific plugin scripts -->
		
		
		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
		
		
		<!-- inline scripts related to this page -->
			<script type="text/javascript">
			jQuery(function($) {
			
			
			
			
				// scrollables
				$('.scrollable').each(function () {
					var $this = $(this);
					$(this).ace_scroll({
						size: $this.attr('data-size') || 150,
						//styleClass: 'scroll-left scroll-margin scroll-thin scroll-dark scroll-light no-track scroll-visible'
					});
				});
				
			
			
			});
		</script>
		
		<script type="text/css">
		.box{
				display: none;
			}
		</script>
	<script type="text/javascript">
		
	
			jQuery(function($) {
/* initialize the external events
	-----------------------------------------------------------------*/
	
	/*** FOR DRAG AND DROP functionality *********************/
	$('#id-input-file-3').ace_file_input({
					style:'well',
					btn_choose:'Drop Reference material if any or click to choose',
					btn_change:null,
					no_icon:'ace-icon fa fa-cloud-upload',
					droppable:true,
					thumbnail:'small'//large | fit
					//,icon_remove:null//set null, to hide remove/reset button
					/**,before_change:function(files, dropped) {
						//Check an example below
						//or examples/file-upload.html
						return true;
					}*/
					/**,before_remove : function() {
						return true;
					}*/
					,
					preview_error : function(filename, error_code) {
						//name of the file that failed
						//error_code values
						//1 = 'FILE_LOAD_FAILED',
						//2 = 'IMAGE_LOAD_FAILED',
						//3 = 'THUMBNAIL_FAILED'
						//alert(error_code);
					}
			
				}).on('change', function(){
					//console.log($(this).data('ace_input_files'));
					//console.log($(this).data('ace_input_method'));
				});
/**  for increasing the size of text area automatically************/
		$('textarea[class*=autosize]').autosize({append: "\n"});
//////////////////
		//select2
		$('.select2').css('width','200px').select2({allowClear:true})
		$('#select2-multiple-style .btn').on('click', function(e){
			var target = $(this).find('input[type=radio]');
			var which = parseInt(target.val());
			if(which == 2) $('.select2').addClass('tag-input-style');
			 else $('.select2').removeClass('tag-input-style');
		});
		
	/* initialize the calendar
	-----------------------------------------------------------------*/
	var date = new Date();
	var d = date.getDate();
	var m = date.getMonth();
	var y = date.getFullYear();
	var calendar = $('#calendar').fullCalendar({
		//isRTL: true,
		 buttonHtml: {
			prev: '<i class="ace-icon fa fa-chevron-left"></i>',
			next: '<i class="ace-icon fa fa-chevron-right"></i>'
		},
	
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		events: [
		  {
			title: 'All Day Event',
			start: new Date(y, m, 1),
			className: 'label-important'
		  },
		  {
			title: 'Long Event',
			start: moment().subtract(5, 'days').format('YYYY-MM-DD'),
			end: moment().subtract(1, 'days').format('YYYY-MM-DD'),
			className: 'label-success'
		  },
		  {
			title: 'Some Event',
			start: new Date(y, m, d-3, 16, 0),
			allDay: false,
			className: 'label-info'
		  }
		]
		,
		editable: true,
		droppable: true, // this allows things to be dropped onto the calendar !!!
		drop: function(date, allDay) { // this function is called when something is dropped
		
			// retrieve the dropped element's stored Event Object
			var originalEventObject = $(this).data('eventObject');
			var $extraEventClass = $(this).attr('data-class');
			
			
			// we need to copy it, so that multiple events don't have a reference to the same object
			var copiedEventObject = $.extend({}, originalEventObject);
			
			// assign it the date that was reported
			copiedEventObject.start = date;
			copiedEventObject.allDay = allDay;
			if($extraEventClass) copiedEventObject['className'] = [$extraEventClass];
			
			// render the event on the calendar
			// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
			$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
			
			// is the "remove after drop" checkbox checked?
			if ($('#drop-remove').is(':checked')) {
				// if so, remove the element from the "Draggable Events" list
				$(this).remove();
			}
			
		}
		,
		selectable: true,
		selectHelper: true,
		select: function(start, end, allDay) {
			
			bootbox.prompt("New Event Title:", function(title) {
				if (title !== null) {
					calendar.fullCalendar('renderEvent',
						{
							title: title,
							start: start,
							end: end,
							allDay: allDay,
							className: 'label-info'
						},
						true // make the event "stick"
					);
				}
			});
			
			calendar.fullCalendar('unselect');
		}
		,
		eventClick: function(calEvent, jsEvent, view) {
			//display a modal
			var modal = 
			'<div class="modal fade">\
			  <div class="modal-dialog">\
			   <div class="modal-content">\
				 <div class="modal-body">\
				   <button type="button" class="close" data-dismiss="modal" style="margin-top:-10px;">&times;</button>\
				   <form class="no-margin">\
					  <label>Change event name &nbsp;</label>\
					  <input class="middle" autocomplete="off" type="text" value="' + calEvent.title + '" />\
					 <button type="submit" class="btn btn-sm btn-success"><i class="ace-icon fa fa-check"></i> Save</button>\
				   </form>\
				 </div>\
				 <div class="modal-footer">\
					<button type="button" class="btn btn-sm btn-danger" data-action="delete"><i class="ace-icon fa fa-trash-o"></i> Delete Event</button>\
					<button type="button" class="btn btn-sm" data-dismiss="modal"><i class="ace-icon fa fa-times"></i> Cancel</button>\
				 </div>\
			  </div>\
			 </div>\
			</div>';
		
		
			var modal = $(modal).appendTo('body');
			modal.find('form').on('submit', function(ev){
				ev.preventDefault();
				calEvent.title = $(this).find("input[type=text]").val();
				calendar.fullCalendar('updateEvent', calEvent);
				modal.modal("hide");
			});
			modal.find('button[data-action=delete]').on('click', function() {
				calendar.fullCalendar('removeEvents' , function(ev){
					return (ev._id == calEvent._id);
				})
				modal.modal("hide");
			});
			
			modal.modal('show').on('hidden', function(){
				modal.remove();
			});
			//console.log(calEvent.id);
			//console.log(jsEvent);
			//console.log(view);
			// change the border color just for fun
			//$(this).css('border-color', 'red');
		}
		
	});
})
		</script>
	
	
	<!--script for changing the profile image and model for buttons -->
	<script>
		
		$('#id-input-file-1 , #id-input-file-2').ace_file_input({
					no_file:'Upload Correspondance file ...',
					btn_choose:'Choose',
					btn_change:'Change',
					droppable:false,
					onchange:null,
					thumbnail:false //| true | large
					//whitelist:'gif|png|jpg|jpeg'
					//blacklist:'exe|php'
					//onchange:''
					//
				});
		
		//override dialog's title function to allow for HTML titles
				$.widget("ui.dialog", $.extend({}, $.ui.dialog.prototype, {
					_title: function(title) {
						var $title = this.options.title || '&nbsp;'
						if( ("title_html" in this.options) && this.options.title_html == true )
							title.html($title);
						else title.text($title);
					}
				}));
				$( "#id-btn-dialog1" ).on('click', function(e) {
							e.preventDefault();
					
							var dialog = $( "#dialog-message" ).removeClass('hide').dialog({
								modal: true,
								title: "<div class='widget-header widget-header-large'><h4 class='smaller'><i class='ace-icon fa fa-check'></i> Details of Candidates applied for Placement.</h4></div>",
								title_html: true,
								buttons: [ 
									{
										text: "Cancel",
										"class" : "btn btn-minier",
										click: function() {
											$( this ).dialog( "close" ); 
										} 
									},
									{
										text: "OK",
										"class" : "btn btn-primary btn-minier",
										click: function() {
											$( this ).dialog( "close" ); 
										} 
									}
								]
							});
					
							/**
							dialog.data( "uiDialog" )._title = function(title) {
								title.html( this.options.title );
							};
							**/
						});
		
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




 
 <%--		backend jsp page
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT> -->
<title>TPO</title>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();"
	onunload="">
	
	<h3>Welcome  ${sessionScope.name} to the profile page </h3>
	
	<h2>
		My name is ${sessionScope.name} , I am a  ${sessionScope.roleName} from  ${sessionScope.branch} branch with username  ${sessionScope.userName}
	</h2>
	<br />
	
	<table>
		<tr>
			<td><a href="addUser">Click here to Add users via csv file</a></td>
		</tr>
		<tr>
			<td>1. <a href="addstudent.html">Add Student</a></td>
		</tr>
		<tr>
			<td>2. <a href="addfaculty.html">Add Faculty</a></td>
		</tr>
		<tr>
			<td>3. <a href="removeuser.html">Remove User</a></td>
		</tr>
		<tr>
			<td>4. <a href="AssignTPC.html">Assign TPC</a></td>
		</tr>
		<tr>
			<td>5. <a href="RemoveTPC.html">Remove TPC</a></td>
		</tr>
		<tr>
			<td>6. <a href="InsertWork.html">Assign Task</a></td>
		</tr>
		<tr>
			<td>7. <a href="ViewUsersT.html">View Users</a></td>
		</tr>
		<tr>
			<td>8. <a href="ViewFacultyTasks.html">View Faculty Tasks</a></td>
		</tr>
		<tr>
			<td>9.<a href="InsertMonth.html">Insert Month to view Events
					Users</a><br /></td>
		</tr>
		<tr>
			<td>10.<a href="manage.html">Manage List of Applicants of all Companies</a><br /></td>
			<td>10.<a href="view-candidate.html">Manage List of Applicants of all Companies</a><br /></td>
		</tr>
		<tr>
			<td>11.<a href="getEventForm.html">Add Events</a><br /></td>
		</tr>
		
	</table>
	<br />
	<br />
	<table>
		<tr>
			<td><a href="searchHome">Click here to search for something</a></td>
		</tr>
		<tr>
			<td><a href="addProfile">Add JOB POST</a></td>
		</tr>
		<tr>
			<td><a href="viewProfile">View JOB POSTS</a></td>
		</tr>
		
		<tr>
			<td><a href="sendMail">Click here to send an email</a></td>
		</tr>
		<tr>
			<td><a href="logged-out">Logout</a></td>
		</tr>
	</table>
</body>
</html>
 
   --%>

