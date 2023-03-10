<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>display.jsp</h1>
<s:setDataSource var="conn"
driver="oracle.jdbc.driver.OracleDriver"
url="jdbc:oracle:thin:@LAPTOP-4BFIBMAS:1521:XE"
user="Sakshi" password="sakshi"
/>
${conn}
<s:query var="rs" dataSource="${conn}">
select * from empn
</s:query><br><br>
<table border="3">
<tr><th>EMPNO</th><th>EMPNAME</th></tr>
<c:forEach var="r" items="${rs.rows}">
<tr>
<td><c:out value="${r.EMPNO}"></c:out></td>
<td><c:out value="${r.EMPNAME}"></c:out></td>
</tr>
</c:forEach>
</table>

</body>
</html>