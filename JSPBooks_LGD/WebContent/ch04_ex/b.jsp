<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>b.jsp파일 입니다. 포워드로 넘어온 페이지.</h2>
	<%-- <h2>오늘의 날짜와 시간 : <%=(new java.util.Date().toLocaleString()) %></h2> --%>
	<%-- <h2>오늘의 날짜와 시간 : <%=request.getParameter("date1")%></h2> --%>
	<%-- <%String name = request.getParameter("name");%>
	<%String email2 = request.getParameter("email2"); %>
	
	<h2>아이디 :<%=request.getParameter("id")%></h2>
	<h2>이름 :<%=java.net.URLDecoder.decode(name)%></h2>
	
	<h2>이메일 :<%=request.getParameter("email")%></h2>
	<h2>이메일2: <%=java.net.URLDecoder.decode(email2)%></h2> --%>

	<h2>
		오늘의 날짜 및 시간:
		<%=request.getParameter("date3")%></h2>
</body>
</html>