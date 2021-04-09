<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BLOG</title>
</head>
<body>

<h1><c:out value="${ blog.getTitle()}"></c:out></h1>
<h3><c:out value="${ blog.getBlog()}"></c:out></h3>
</body>
</html>