<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>index.jsp</h3>
<h2>DemoEL</h2>
<H1>
${"Demo for EL" }<br/>
${4*5}<br/>
${4==5 ? 8:9 }
</H1>
<form action="home.jsp">
Enter UserName<input type="text" name="username">
<input type="submit">
</form>



</body>
</html>