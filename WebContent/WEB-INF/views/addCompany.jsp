<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
    pageEncoding="ISO-8859-1"%>  
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Company</title>
 <style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>  

</head>
<body>
<form:form method="POST" action="saveCompany" modelAttribute="companyBean">  
  <table>
   
   
   
   <tr>
   <td><form:label path="company_name">Name of the company:</form:label></td>
  <td><form:input path="company_name" value="${company.company_name}" /> </td>
  <td><form:errors path="company_name" cssClass="error" /></td>
     
  </tr>
  
  <tr>
  <td><form:label path="company_address">Address: </form:label> </td>
  <td><form:input path="company_address" value="${company.company_address}"/> </td>
  <td><form:errors path="company_address" cssClass="error" /></td>
     
  </tr>
  <tr>  
         <td colspan="2"><input type="submit" value="Proceed to next page"/></td>  
        </tr>  
  
  </table>
   </form:form>
  
 </body>
</html>
