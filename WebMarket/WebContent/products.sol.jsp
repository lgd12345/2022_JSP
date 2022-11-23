<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Person"%>
<jsp:useBean id="personDAO" class="dao.PersonRepository2" scope="session" />

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품목록</h1>
		</div>
	</div>
	<%
		ArrayList<Person> listOfPersons = personDAO.getAllPerson();
	%>

	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfPersons.size(); i++) {
					Person person = listOfPersons.get(i);
			%>
			<div class="col-md-4">
				<h3><%=person.getId()%></h3>
				<p><%=person.getName()%>
				<p><%=person.getEmail()%>원
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
