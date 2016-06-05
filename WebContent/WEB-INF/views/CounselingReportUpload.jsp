<!--
 Filename : CounselingReportUpload.jsp
 Author name: Crystal Cuthinho
 Description: used for counseling report upload by student and ftpc. Mapping goes to CounselingReportUploadController
 -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Counseling Report</title>
</head>
<body>


<form:form method="post" modelAttribute="fileUpload1" enctype="multipart/form-data" action="uploadCounselingReport">

	<form:errors path="*" cssClass="errorblock" element="div" />
		File to upload: <input type="file" name="fileUpload"><br />
		
		<c:if test="${error==1}">
			<p style="color:red;">Failed to upload...File format can be docx/odt only!</p>
		</c:if>
		<c:if test="${error1==1}">
			<p style="color:red;">Failed to upload...File size can be only upto 1MB</p>
		</c:if>
		  <input type="submit" value="Upload"> Press here to upload the file!
		  <span><form:errors path="file" cssClass="error" />
		</span>
	</form:form>
	<br/><br/>
	
</body>
</html>