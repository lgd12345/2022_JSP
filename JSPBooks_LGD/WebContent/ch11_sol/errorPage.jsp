<%@ page contentType="text/html; charset=utf-8"%>
<%@ page errorPage="errorPage_error.jsp"%>
<html>
<head>
<title>Exception</title>
</head>
<body>
	name 파라미터 : <%=request.getParameter("name").toUpperCase()%> <!-- 없는 값을 불러오려고 하니깐 에러남 -->
</body>
</html>