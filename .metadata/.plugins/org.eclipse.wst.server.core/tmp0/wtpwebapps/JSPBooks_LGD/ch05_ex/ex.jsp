<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력하는 곳</title>
</head>
<body>
	<form action="ex2.jsp" method="post">
		<p>
			<!-- 이름 : <input type="text" name="name1234"> -->
		<p>
			아이디 : <input type="text" name="id1234">
		<p>
			비밀번호 : <input type="password" name="pass"> <br>
		<hr>
		<input type="submit" value="전송" />
	</form>

	<!-- 고정된 값불러오기 -->
	<%-- <%/* 하나씩 */
	String hostValue = request.getHeader("host");
 	String acValue = request.getHeader("accept-language");
	/* 배열처럼담겨있는걸가져옴 */
	
	Enumeration en = request.getHeaderNames();
	%>
	
	호스트의 불러온 값<%=hostValue %>
	<br>
	accept-language 불러온 값<%=acValue %>
	
	
	<h2>Enumeration 이용해서 여러값들을 반복문을 통해서 HTTP 헤더 정보값 출력</h2>
	
	/*(String)문자열로형변환 */
	/* (hasMoreElements)-> 값이 있냐고 물어봄 */
	
	<%
	
	while(en.hasMoreElements()){ 
		String headerName = (String)en.nextElement();
	    String headerValue = request.getHeader(headerName);
	%>
	<strong> 헤더 이름 : </strong> <%= headerName %>, <strong> 헤더 값 : </strong> <%=headerValue%> 
	<br>
	<% 
	}
	%>  --%>
	<!--페이지이동하기  -->
	<%-- <% 
	response.sendRedirect("https://www.google.co.kr");
	%> --%>


	<%
		response.setHeader("Cache-contorl", "use_cache_lsy");
	response.addHeader("contentType", "test/html; charset=utf-8");
	response.setDateHeader("date", 1L);
	%>
	Cache-control 출력 해보기:
	<%=response.getHeader("Cache-contorl")%>
	contentType 출력 해보기:
	<%=response.getHeader("contentType")%>
	date 출력 해보기:
	<%=response.getHeader("date")%>


	<%-- 
	<h3>이 페이지는 3초마다 새로고침 됩니다.</h3>
	<%
		response.setIntHeader("Refresh", 3);
	%>
	<%=new java.util.Date()%> --%>
	<br>
	<%-- <%
		response.sendError(404, "요청 페이지를 찾을 수 없습니다.");
	%>
 --%>



</body>
</html>