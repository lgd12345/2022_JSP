<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<title>동물 회원 정보 출력창</title>
</head>
<body>
	<table border="1" align="center" width="1500px">
		<tr align=center bgcolor="lightgreen">
			<td><b>이름</b></td>
			<td><b>나이</b></td>
			<td><b>지역</b></td>
		</tr>
		<tr align="center">
			<td>${name}</td>
			<td>${age}</td>
			<td>${lo}</td>
		</tr>
	</table>
</body>
</html>
