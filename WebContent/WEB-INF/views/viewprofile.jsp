<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
