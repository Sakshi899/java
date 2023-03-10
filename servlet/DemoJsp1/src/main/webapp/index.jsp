<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.Date"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3><%=new Date() %></h3>
<form action="display.jsp">
Enter number<input type="text" name="num"><br><br>
<input type="submit" value="show table">
</form>
<%@include file="Info.jsp" %>
</body>
</html>