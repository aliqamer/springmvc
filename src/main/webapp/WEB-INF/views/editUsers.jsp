<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Spring5 MVC Hibernate Demo</title>
  <style type="text/css">
            .error {
                color: red;
            }
            table {
                width: 50%;
                border-collapse: collapse;
                border-spacing: 0px;
            }
            table td {
                border: 1px solid #565454;
                padding: 20px;
            }
   </style>
</head>
<body>

	<h1>Input Form</h1>
	<form:form action="addUser" method="post" modelAttribute="user">
		<table>
			<tr>
				<td>Name</td>
				<td>
					<form:input path="name" /> <br/>
					<form:errors path="name" cssClass="error" />
				</td>
			</tr>
			<tr>
				<td>Email</td>
				<td>
					<form:input path="email" /> <br/>
					<form:errors path="email" cssClass="error" />
				</td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit">Submit</button></td>
			</tr>
		</table>	
	</form:form>
	
	<h2>User Lists</h2>
	<table>
         <tr>
             <td><strong>Name</strong></td>
             <td><strong>Email</strong></td>
         </tr>
         <c:forEach items="${users}" var="user">
             <tr>
                 <td>${user.name}</td>
                 <td>${user.email}</td>
             </tr>
         </c:forEach>
     </table>
</body>
</html>