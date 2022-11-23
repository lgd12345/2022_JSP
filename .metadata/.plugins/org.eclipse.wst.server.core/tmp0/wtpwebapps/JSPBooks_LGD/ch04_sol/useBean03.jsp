<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" />
	<p>	아이디 : <%=Person.getId()%>
	<p>	이 름 : <%=Person.getName()%>
</body>
</html>