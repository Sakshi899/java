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
<% 
if(request.getParameter("msg")!=null){%>
<h3 style="color:red"><%=request.getParameter("msg") %></h3>
<%}%>
<form action="validation.jsp" method="post">
UserName:<input type="text" name="user1"><br><br>
Password:<input type="password" name="pass"><br><br>
<input type="submit" value="login">
</form>
<br><br>
<%@include file="Info.jsp" %>

</body>
</html>