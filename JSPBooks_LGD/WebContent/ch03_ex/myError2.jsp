<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!int count = 0;

	void addCount() {
		count++;
	}%>
	<%
		addCount();
	%>

	<h1>어서오세요 에러났어요 myError2</h1>
	<h2>
		방문자수 :
		<%=count%> 번째 방문자.</h2>
</body>
</html>