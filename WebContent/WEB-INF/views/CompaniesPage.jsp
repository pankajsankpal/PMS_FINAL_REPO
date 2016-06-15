<!-- author: Lenherd Olivera
description: contains the list of all the companies -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Companies Page</title>

<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />



</head>
<body>
	<jsp:directive.include file="Header.jsp" />

	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs" id="breadcrumbs">

				<jsp:directive.include file="searchheader.jsp" />
			</div>
			
			<div class="page-content">
				
				<div class="page-header">
					<h1>Companies</h1>
				</div>

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						<div>
							<ul class="ace-thumbnails ">


								<li><a href="Company?companyname=jpmorgan"> <img
										width="200" height="150" alt="150x150"
										src="assets/images/companies/jpmorgan.jpg" href="Company" />
								</a></li>
								<li><a href="Company?companyname=directi"> <img
										width="200" height="150" alt="150x150"
										src="assets/images/companies/directi.jpg" />
								</a></li>
								<li><a href="Company?companyname=morganstanley"> <img
										width="200" height="150" alt="150x150"
										src="assets/images/companies/morganstanley.jpg" />
								</a></li>
								<li><a href="Company?companyname=larsentoubro"> <img
										width="200" height="150" alt="150x150"
										src="assets/images/companies/larsentoubro.jpg" />
								</a></li>
								<li><a href="Company?companyname=accenture"> <img
										width="200" height="150" alt="150x150"
										src="assets/images/companies/accenture.jpg" />
								</a></li>
								<li><a href="Company?companyname=godrej"> <img
										width="200" height="150" alt="150x150"
										src="assets/images/companies/godrej.jpg" />
								</a></li>
								<li><a href="Company?companyname=zs"> <img width="200"
										height="150" alt="150x150"
										src="assets/images/companies/zs.jpg" />
								</a></li>

								<li><a href="Company?companyname=Tata%20Consultancy%20Services"> <img width="200"
										height="150" alt="150x150"
										src="assets/images/companies/tcs.jpg" />
								</a></li>


							</ul>
						</div>
						<!-- PAGE CONTENT ENDS -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
	</div>
	<!-- /.main-content -->

	<!-- /.page-header -->
		
		<jsp:directive.include file="scripts.jsp" />
	<jsp:directive.include file="Footer.jsp" />





	<!-- inline scripts related to this page -->

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>



	<script type="text/javascript">
		jQuery(function($) {
			var $overflow = '';
			var colorbox_params = {
				rel : 'colorbox',
				reposition : true,
				scalePhotos : true,
				scrolling : false,
				previous : '<i class="ace-icon fa fa-arrow-left"></i>',
				next : '<i class="ace-icon fa fa-arrow-right"></i>',
				close : '&times;',
				current : '{current} of {total}',
				maxWidth : '100%',
				maxHeight : '100%',
				onOpen : function() {
					$overflow = document.body.style.overflow;
					document.body.style.overflow = 'hidden';
				},
				onClosed : function() {
					document.body.style.overflow = $overflow;
				},
				onComplete : function() {
					$.colorbox.resize();
				}
			};

			$('.ace-thumbnails [data-rel="colorbox"]')
					.colorbox(colorbox_params);
			$("#cboxLoadingGraphic").html(
					"<i class='ace-icon fa fa-spinner orange fa-spin'></i>");//let's add a custom loading icon

			$(document).one('ajaxloadstart.page', function(e) {
				$('#colorbox, #cboxOverlay').remove();
			});
		})
	</script>

</body>
</html>