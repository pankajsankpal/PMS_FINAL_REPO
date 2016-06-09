<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/PMS_v1/applyonbehaloffstudent">
	
		job_id <input type="text" name="j_id"> <br/>
		USERNAME:<input type="text" name="u_name"> <br/>
		<input type="submit" value="APPLY">
	</form>
	
	
	<br>
	<br>
	${msg }
</body>
</html>