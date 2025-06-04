<!DOCTYPE html>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>index</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<body>
	<%
		response.setHeader("X-Frame-Options", "sameorigin");
		response.setHeader("X-Content-Type-Options", "nosniff");
		response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
		response.sendRedirect("home");
	%>
</body>
</html>