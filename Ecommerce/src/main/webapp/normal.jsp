<%@page import="com.entities.User" %>
<%
	User user=(User)session.getAttribute("current-user");
	if(user==null)
	{
		session.setAttribute("message", "You are not logged in !!Log in first");
		response.sendRedirect("login.jsp");
		return;
	}
%>






<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User panel</title>
<%@include file="components/common_css_js.jsp" %>
</head>
<body>
<%@include file="components/navbar.jsp" %>
<center><h1><br><br><br>Thank You for placing your order!!!!<br><br>Your order will soon reach your address .<br><br><br>In case of any problem or query you can mail us at "shopeasycustomercare@gmail.com"</h1></center>
</body>
</html>