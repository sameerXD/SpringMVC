<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<c:if test="${page == 'login' }">
  <h1>Please login</h1>
  <form:form action = "logined" method = "post" modelAttribute="login">
     <form:input path="email" placeholder = "EMAIL"/>
     <br>
     <form:input path="password" type = "password" placeholder = "password"/>
   
     <form:button type = "submit">LOGIN</form:button>

  </form:form>
</c:if>
<c:if test="${page == 'logined' }">

  <h1>Welcome <c:out value="${email }"></c:out></h1>
  <form action="blog" method = "get">
  <input type ="text" name="title" placeholder ="TITLE">
  <input type ="text" name="blog" placeholder ="CONTENT">
  <button type = "submit">post</button>
  </form>
</c:if>
</body>
</html>