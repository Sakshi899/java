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
<%=new Date() %>
<form action="validation.jsp" method="post">
UserName:<input type="text" name="user"><br><br>
Password:<input type="password" name="pass"><br><br>
<input type="submit" value="login">
</form>
<br><br>
<%@include file="Info.jsp" %>

</body>
</html>