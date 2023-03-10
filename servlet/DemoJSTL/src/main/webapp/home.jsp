<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>home.jsp</h3>
<h2>
welcome${param.user}
<c:set var="user1" value="${param.user}"></c:set>
<br/>
using JSTL
welcome<c:out value="${user1}"></c:out>
<br><br/>
<c:if test="${user1=='seed'}">
If welcome<c:out value="${user1}"></c:out>
</c:if>



</h2>
</body>
</html>