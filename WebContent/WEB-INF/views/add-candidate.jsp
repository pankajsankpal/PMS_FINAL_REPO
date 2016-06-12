 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<title>Add Candidate</title>
<style>
	.error {
		color:#ff0000;
		font-style:italic;
		font-weight:bold;
	}
</style>
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
</head>
<body>
<jsp:directive.include file="scripts.jsp" />
<form:form action="addcandidate.html" modelAttribute="userBean" method="post">
Name:<form:input name="name" type="text" path="username" /> 
<form:errors path="username" cssClass="error"/><br/>
Company:<form:input path="company"  id="dynamicsearchcompany" value=""/>
<br>
${msg}
<form:errors path="company" cssClass="error"/><br/>
<input type="submit" value="Add"/><br />
</form:form>

</body>
</html>



<%--  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<title>Add Candidate</title>
</head>
<body>
<<<<<<< HEAD

<form:form action="addcandidate.html" modelAttribute="userBean" method="post">
Name:<form:input name="name" type="text" path="username" /> 
<form:errors path="username" cssClass="error"/><br/>
Company:<form:input name="company" id="company_id" path="company" />
<br>
${msg}
<form:errors path="company" cssClass="error"/><br/>
<input type="submit" value="Add"/><br />
</form:form>

=======
<form:form action="addcandidate.html" modelAttribute="userBean" method="post">
Name:<form:input name="name" type="text" path="username" /><br>
Company:<form:input name="company" id="company_id" path="company" />
<br>
<input type="submit" value="Add"/><br />
</form:form>
<a href="view-candidate.html">Back</a>
>>>>>>> origin/master
<!-- 
<script>
var arr=[];
arr.push('#clist');
$.each($(arr), function (i, item) {
$('#company_id').append($('<option>', {
    value: $(item.company_id),
    text: $(item.company_id)
}));
});
</script> -->
</body>
</html> --%>