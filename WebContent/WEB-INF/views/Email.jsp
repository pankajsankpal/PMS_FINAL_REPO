<!-- @author Leon 
    for Group Email -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>Email-Sending</title>


<meta name="description" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="assets/font-awesome/4.2.0/css/font-awesome.min.css" />

<!-- page specific plugin styles -->
<link rel="stylesheet" href="assets/css/bootstrap-duallistbox.min.css" />
<link rel="stylesheet" href="assets/css/bootstrap-multiselect.min.css" />
<link rel="stylesheet" href="assets/css/select2.min.css" />
<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />
<link rel="stylesheet" href="assets/css/chosen.min.css" />
<link rel="stylesheet" href="assets/css/datepicker.min.css" />
<link rel="stylesheet" href="assets/css/bootstrap-timepicker.min.css" />
<link rel="stylesheet" href="assets/css/daterangepicker.min.css" />
<link rel="stylesheet"
	href="assets/css/bootstrap-datetimepicker.min.css" />
<link rel="stylesheet" href="assets/css/colorpicker.min.css" />

<!-- text fonts -->
<link rel="stylesheet" href="assets/fonts/fonts.googleapis.com.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- ace styles -->
<link rel="stylesheet" href="assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.1/angular.min.js"></script>

<!-- for autocomplete -->
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script src="assets/autocomplete/jquery.autocomplete.min.js"></script>
<link href="assets/autocomplete/main.css" rel="stylesheet">

<script>
	$(document)
			.ready(
					function() {

						$('#dynamicsearchcompany')
								.autocomplete(
										{
											serviceUrl : 'looseSearch2',
											paramName : "CHARS",
											delimiter : ",",
											transformResult : function(response) {

												return {
													//must convert json to javascript object before process
													suggestions : $
															.map(
																	$
																			.parseJSON(response),
																	function(
																			company) {

																		return {
																			value : company.company_name,
																			data : company.company_id
																		};
																	})

												};

											}

										});

					});
</script>

<!-- ace settings handler -->
<script src="assets/js/ace-extra.min.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
        <script src="assets/js/html5shiv.min.js"></script>
        <script src="assets/js/respond.min.js"></script>
        <![endif]-->
</head>

<body class="no-skin">
	<%@include file="Header.jsp"%>
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try {
						ace.settings.check('breadcrumbs', 'fixed')
					} catch (e) {
					}
				</script>

				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a>
					</li>

					<li><a href="#">Forms</a></li>
					<li class="active">Send An e-Mail!</li>
				</ul>
				<!-- /.breadcrumb -->

				<div class="nav-search" id="nav-search">
					<form class="form-search">
						<span class="input-icon"> <input type="text"
							placeholder="Search ..." class="nav-search-input"
							id="nav-search-input" autocomplete="off" /> <i
							class="ace-icon fa fa-search nav-search-icon"></i>
						</span>
					</form>
				</div>
				<!-- /.nav-search -->
			</div>

			<div class="page-content">
				
				<div class="page-header">
					<h1></h1>
				</div>
				<!-- /.page-header -->

				<div class="row">
					<div class="col-xs-12">
						<form class="form-horizontal" role="form"
							action="GroupSubmitEmail" enctype="multipart/form-data"
							method="post">






							<div class="form-group">
								<label class="control-label col-xs-12 col-sm-3 no-padding-right">
									To </label>

								<div class="col-xs-12 col-sm-9">
									<input path="company" id="dynamicsearchcompany" value="" />
									<!-- <select multiple="" id="state" name="receiver" class="select2"
										data-placeholder="Click to Choose Recipients">
										<option value="">&nbsp;</option>
										<option value="CompsSTPC">CompsSTPC</option>
										<option value="ITSTPC">ITSTPC</option>
										<option value="ElexSTPC">ElexSTPC</option>
										<option value="ProdSTPC">ProdSTPC</option>
										<option value="CompsFTPC">CompsFTPC</option>
										<option value="ITFTPC">ITFTPC</option>
										<option value="ProdFTPC">ProdFTPC</option>
										<option value="ElexFTPC">ElexFTPC</option>
										<option value="STPC">STPC</option>
										<option value="FTPC">FTPC</option>
										<option value="TPC">TPC</option>
										<option value="compsClass">CompsClass</option>
										<option value="prodClass">ProdClass</option>
										<option value="itClass">ITClass</option>
										<option value="elexClass">ElexClass</option>
										<option value="JP Morgan">JP Morgan</option>
										<option value="Morgan Stanley">Morgan Stanley</option>
										<option value="Direct i">Directi</option>
										<option value="Tata Consultancy Services">TCS</option>
										<option value="Accenture">Accenture</option>
										<option value="SAP">SAP</option>
										<option value="Godrej">Godrej</option>
										<option value="Laursen & Tubro">L&T</option>
										<option value="Neebal">Neebal</option>
                        <option value="Seclore">Seclore</option>
                        <option value="LnTInfoTech"> L&T Infotech</option>
                        <option value="LntEngineering"> L&T Engineering</option>
                        <option value="Nerolac"> Nerolac </option>
                        <option value="Amdocs"> Amdocs</option>
                        <option value="Patni"> Patni </option>
                        <option value="Oracle"> Oracle </option>
                        <option value="TCSDigital"> TCS Digital</option>
                        <option value="NSE"> NSE </option>
                        <option value="Siemens">Siemens</option>
                        <option value="BNP"> BNP Paribas </option>  
										<option value="ZS Associates">ZS</option>
									</select> -->
								</div>
								<br /> <br /> <br>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="form-field-1"> Subject </label>

									<div class="col-sm-5">
										<input type="text" id="form-field-1" placeholder="Subject"
											class="col-xs-10 col-sm-12" name="subject" />
									</div>
								</div>
								<center>
									<div class="form-group">

										<label class="col-sm-3 control-label no-padding-right"
											for="form-field">Message</label>
										<div class="col-sm-5">
											<textarea id="form-field"
												class="autosize-transition form-control"
												placeholder="Message" name="message" cols="20" rows="10"></textarea>
										</div>
									</div>
								</center>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="form-field-2"> Attachments </label>
									<div class="col-sm-9">
										<input type="file" multiple name="fileUpload" />
									</div>
								</div>

								<div class="col-md-offset-3 col-md-9">
									&nbsp; &nbsp; &nbsp;
									<button class="btn btn-info" type="submit" id="submit">
										<i class="material-icons">send</i> Send
									</button>

								</div>
								<font color="green"> ${success} </font>

							</div>

						</form>
					</div>
				</div>
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

	<div class="footer">
		<div class="footer-inner">
			<div class="footer-content">
				<span class="bigger-120"> <span class="blue bolder">Ace</span>
					Application &copy; 2013-2014
				</span> &nbsp; &nbsp; <span class="action-buttons"> <a href="#">
						<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
				</a> <a href="#"> <i
						class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
				</a> <a href="#"> <i
						class="ace-icon fa fa-rss-square orange bigger-150"></i>
				</a>
				</span>
			</div>
		</div>
	</div>

	<a href="#" id="btn-scroll-up"
		class="btn-scroll-up btn btn-sm btn-inverse"> <i
		class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
	</a>
	</div>
	<!-- /.main-container -->

	
</body>
</html>
