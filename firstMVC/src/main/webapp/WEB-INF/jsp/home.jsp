<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 <%@                                  page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>A4Articles</title>
</head>
<body>
<h1>A4 ARTICLES</h1>
<h3>hello we are one of the top platforms to post your blogs.</h3>
<h3>Thousands of users to read and repost your hardwork and memories  </h3>
<br>
<h2>sign up now!!!</h2>
<form action="login" method = "get">

  <button type = "submit">sign up</button>
  </form>
<h1>
<c:if test="${page == 'HOME' }">
<h1>this is home page</h1>
</c:if>

<c:out value="${page }"></c:out></h1>
</body>
</html>