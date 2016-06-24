<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>About Us</title>
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
					<h1>About Us</h1>					
				</div>

				<div class="row">
					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="thumbnail search-thumbnail">
							<!-- <img class="media-object" data-src="holder.js/100px200?theme=gray" /> -->
							<p align="center"> <i class="fa fa-group fa-5x" aria-hidden="true"></i></p>
							<div class="caption">
								<h3 class="search-title">
									<a href="#" class="blue"><p align="center"> UI Team</p></a>
								</h3>
								User friendly interface was designed by the following people:
								<ul>
									<li>Nevil D'souza</li>
									<li>Pankaj Sankalp</li>
									<li>Gaurav Shinde</li>
									<li>Lenherd Oliver</li>
									<li>Oneil Mascarenhas</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="thumbnail search-thumbnail">
							<!-- <img class="media-object" data-src="holder.js/100px200?theme=gray" /> -->
							<p align="center"> <i class="fa fa-group fa-5x" aria-hidden="true"></i></p>
							<div class="caption">
								<h3 class="search-title">
									<a href="#" class="blue"><p align="center">Backend Team</p></a>
								</h3>
								To support the user friendly interface we have very good back-end support done by the following people: 
								<ul>
									<li>Nevil D'souza</li>
									<li>Leon D'souza</li>
									<li>Crystal Cuthinho</li>
									<li>Melwyn Saldhana</li>
									<li>Cheryl Nellissery</li>
									<li>Rashmi Srinivasan</li>
									<li>Adarsh Gupta</li>
									<li>Kushal Giri</li>
									<li>Andrea Furtado</li>
									<li>Anu Issac</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="thumbnail search-thumbnail">
							<!-- <img class="media-object" data-src="holder.js/100px200?theme=gray" /> -->
							<p align="center"> <i class="fa fa-group fa-5x" aria-hidden="true"></i></p>
							<div class="caption">
								<h3 class="search-title">
									<a href="#" class="blue"><p align="center">CI Team</p></a>
								</h3>
								The following people helped for continuous integration of the this web-site:
								<ul>
									<li>Nevil D'souza</li>
									<li>Leon D'souza</li>
									<li>Crystal Cuthinho</li>
									<li>Adarsh Gupta</li>
									<li>Pankaj Sankalp</li>
									<li>Gaurav Shinde</li>
								</ul>								
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="thumbnail search-thumbnail">
							<!-- <img class="media-object" data-src="holder.js/100px200?theme=social" /> -->
							<p align="center"> <i class="fa fa-user fa-5x" aria-hidden="true"></i></p>
							<div class="caption">
								<h3 class="search-title">
									<a href="#" class="blue"><p align="center">Niraj</p></a>
								</h3>
								<p>Thanks to our mentor,we could make this website.
									He guided us and helped us to solve our difficulties.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="space-3"></div>					
									
 				<jsp:directive.include file="scripts.jsp" />			
				<jsp:directive.include file="Footer.jsp" />
			</div>
			<!-- /.page-content -->
		</div>
	</div>
	
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>	
	
</body>
</html>