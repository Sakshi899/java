<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
if(user.equals("seed") && pass.equals("seed")){
	RequestDispatcher rd=request.getRequestDispatcher("Welcome.jsp");
	rd.forward(request,response);
}else{
	RequestDispatcher rd=request.getRequestDispatcher("login.jsp");%>
	<h1><%= "invalid data" %></h1>
	<% rd.include(request,response);
    
}
%>
</body>
</html>