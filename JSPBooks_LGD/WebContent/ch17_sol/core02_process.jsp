<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>JSTL</title>
</head>
<body>
	<%
		String number2 = request.getParameter("number");
	%>
	<c:set var="number3" value="<%=number2%>" />
	<c:choose>
		<c:when test="${number3%2==0}">
			<c:out value="${number3}" />은 짝수입니다.
		</c:when>
		<c:when test="${number3%2==1}">
			<c:out value="${number3}" />은 홀수입니다.
		</c:when>
		<c:otherwise>
			숫자가 아닙니다.
		</c:otherwise>
	</c:choose>
</body>
</html>