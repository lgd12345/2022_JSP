<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" />
	<p>	아이디 : <%=Person.getId()%>
	<p>	이 름 : <%=Person.getName()%>
		<%
			Person.setId(20182005);
			Person.setName("홍길동");
		%>
		<jsp:include page="useBean03.jsp"/>
</body>
</html>
