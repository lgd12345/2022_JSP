<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
	request.setCharacterEncoding("UTF-8");
%>


<html>
<head>
<meta charset=UTF-8">
<title>동물 회원 정보 출력창</title>
</head>
<body>
	<table border="1" align="center" width="80%">
		<tr align="center" bgcolor="lightgreen">
			<td><b>아이디</b></td>
			<td><b>이름</b></td>
			<td><b>지역</b></td>
		</tr>

		<c:forEach var="animal" items="${animalsList}">
			<tr align="center">
				<td>${animal.id}</td>
				<td>${animal.name}</td>
				<td>${animal.local}</td>

			</tr>
		</c:forEach>
	</table>
	<a href="${contextPath}/animal/animalForm.do"><h1
			style="text-align: center">동물회원가입</h1></a>
</body>
</html>
