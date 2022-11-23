<%@page import="javax.websocket.SendResult"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>넘어오는 곳</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	/*  String name = request.getParameter("name1234"); */
	String id = request.getParameter("id1234");
	String pw = request.getParameter("pass");
	if (id.equals("관리자") && pw.equals("1234")) {
		response.sendRedirect("success.jsp");
	} else {
		response.sendRedirect("fail.jsp");
	}
	%>

  <%--   <p> 넘어온 이름 : <%=name %>
	<p>
		넘어온 아이디 :
		<%=id%>
	<p>
		넘어온 패스워드 :
		<%=pw%> --%>
	<P>
		넘어온 정보들.
		<%--  <p> 넘어온 요청 정보 길이 : <%=request.getContentLength())%>
 <p> 넘어온 요청정보 전송 방식 : <%=request.getMethod()%>
 <p> 넘어온 요청정보 URI : <%=request.getRequestURI()%>
 <p> 넘어온 요청정보 서버이름<%=request.getServerName() %>
 <p> 넘어온 요청정보 서버 포트 : <%=request.getServerPort() %> --%>
</html>