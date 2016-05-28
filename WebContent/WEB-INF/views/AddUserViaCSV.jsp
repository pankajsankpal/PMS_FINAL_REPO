<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload CSV</title>
</head>
<body>



<form method="POST" enctype="multipart/form-data" action="uploadFile">
<!--  Enter year of passing:   <input id="year" name="year" type="text" value=""/><br/><br/>-->
		File to upload: <input type="file" name="fileUpload"><br />
		
		<c:if test="${error==1}">
			<p>Failed to upload...File format can be .csv only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p>Failed to upload...File size can be only upto 1MB</p>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
	</form>
	<br/><br/>
	
</body>
</html>