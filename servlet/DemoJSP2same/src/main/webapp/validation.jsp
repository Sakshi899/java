<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    errorPage="ErrorInfo.jsp"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String user=request.getParameter("user");
String pass=request.getParameter("pass");
if(user.equals("seed") && pass.equals("seed")){%>
<jsp:forward page="welcome.jsp"></jsp:forward>
<%
}else{%>
<jsp:include page="login.jsp">
<jsp:param value="Invalid/data user" name="msg"/>
</jsp:include>
<%} %>


</body>
</html>