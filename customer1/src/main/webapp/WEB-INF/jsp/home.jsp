<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@                                  page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href = "resources/css/style.css" rel ="stylesheet">
<title>Customer Registeration</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<c:if test="${page == 'home' }">

<img alt="loading" class= "element1" src="resources/images/shopping.jpg">
<h3>This platform provide you to register yourself as a customer.</h3>
<h3>Avail Best Offers & Discounts from Companies on Mobile Phones, Laptops, TVs, 
Apparel, Footwear, Furniture, Books, Toys,
 Electronic Devices & Accessories Online</h3>
<h2>want to register then click on the button below!!!</h2>
<form action="signUp" method = "get">
<button type = "submit" class="button" style="vertical-align:middle"><span>sign up</span></button>

</form>
</c:if>


</body>
</html>
