<%@ page contentType="text/html; charset=utf-8"%>
<%@page import="ch18.com.model.Person"%>
<html>
<head>
<title>MVC2</title>
</head>
<body>
	<p>로그인 성공했습니다
	<p>
		<%
		
		Person p = (Person) request.getAttribute("p");
		out.print("이름 : " + p.getId());
		out.print("<br>");
		out.print("toString테스트: " + p.toString());
		%>
	
</body>
</html>