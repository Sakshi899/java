<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%int i=Integer.parseInt(request.getParameter("num"));
int table=0;
for(int j=1;j<11;j++){
	table=j*i;
	out.println("<br>"+table);
	
}

%>

</body>
</html>