<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>
welcome<%=request.getParameter("username") %>
</h2>
<h1>with EL</h1>
<H2>welcome ${param.username}</H2>
</body>
</html>