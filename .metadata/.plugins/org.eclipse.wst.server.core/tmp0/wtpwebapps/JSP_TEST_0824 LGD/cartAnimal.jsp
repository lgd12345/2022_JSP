<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Animal"%>
<%@ page import="dao.AnimalRepository"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<%
 	String cartId = "animalcartId";
	/* String cartId = session.getId(); */
	/* 동물을 세션아이디를 바꿔줌 */

%>
<title>장바구니</title>
</head>
<body>
	<jsp:include page="menuAnimal.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">장바구니</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="./deleteCartAnimal.jsp?cartId=<%=cartId%>" class="btn btn-danger">삭제하기</a></td>
					<td align="right"><a href="./shippingInfoAnimal.jsp?cartId=<%= cartId %>" class="btn btn-success">주문하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%				
					int sum2 = 0;
					ArrayList<Animal> animalList2 = (ArrayList<Animal>) session.getAttribute("animallist");
					if (animalList2 == null)
						animalList2 = new ArrayList<Animal>();

					for (int i = 0; i < animalList2.size(); i++) { // 상품리스트 하나씩 출력하기
						Animal animal = animalList2.get(i);
						int total2 = animal.getUnitPrice() * animal.getQuantity();
						sum2 = sum2 + total2;
				%>
				<tr>
					<td><%=animal.getId()%> - <%=animal.getName()%></td>
					<td><%=animal.getUnitPrice()%></td>
					<td><%=animal.getQuantity()%></td>
					<td><%=total2%></td>
					<td><a href="./removeCartAnimal.jsp?id=<%=animal.getId()%>" class="badge badge-danger">삭제</a></td>
				</tr>
				<%
					}
				%>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%=sum2%></th>
					<th></th>
				</tr>
			</table>
			<a href="./productsAnimal.jsp" class="btn btn-secondary"> &laquo; 쇼핑 계속하기</a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
