<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<title>ch03 welcome</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<%!String greeting = "국두의 웹쇼핑몰에 온 걸 환영해요!";
	String tagline = "반갑다 반가워 어서와 많이사!!!";%>
	<div class="container">
		<h1 class="display-3"><%=greeting%></h1>
	</div>
	<div class="container">
		<div class="text-center">
			<h3><%=tagline%></h3>
			<%
				Date day = new java.util.Date();
			String am_pm;
			int hour = day.getHours();
			int minute = day.getMinutes();
			int second = day.getSeconds();
			if (hour / 12 == 0) {
				am_pm = "AM";
			} else {
				am_pm = "PM";
				hour = hour - 12;
			}
			String CT = hour + ":" + minute + ":" + second + am_pm;
			out.println("현재 접속 시각: " + CT + "\n");
			%>
		</div>
		<br>
		<hr>

	</div>

	<%@ include file="footer.jsp"%>
	

</body>
</html>