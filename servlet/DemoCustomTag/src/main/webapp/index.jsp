<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="/WEB-INF/HelloTagDesc.tld" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Index page</h1>
<c:hello>My first custom tag</c:hello>
<h2>
<c:cube number="3"></c:cube>
</h2>
<h3>At the end of file</h3>
</body>
</html>