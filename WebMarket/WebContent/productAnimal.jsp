<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<%@ page errorPage="exceptionNoProductId.jsp"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>동물 상품 상세 정보</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<jsp:include page="menuAnimal.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">동물 상품 정보</h1>
		</div>
	</div>
	<%
		//웹브라우저에서 URI뒤에 주소 ? 뒤에 ID속성값을 가져왔음
	//뭐가올지몰라서 물음표 (동적임)
	//예를 들면 상품목록에서,상품의 개체를 하나선택시,해당상품의 아이디입니다.
	//P1234
	String id = request.getParameter("id");
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "select * from animal where p_id = ? ";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
	while (rs.next()) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<%-- <img src="./resources/images/<%=rs.getString("p_fileName")%>"
					style="width: 100%" /> --%>
					<img src="./resources/images/<%=rs.getString("p_fileName")%>"
					width= 100%, height=90% />
			</div>
			<div class="col-md-6">
				<h3><%=rs.getString("p_name")%></h3>
				<p>
					<b>상품 코드 : </b><span class="badge badge-danger"> <%=rs.getString("p_id")%></span>
				<p>
					
				<h4><%=rs.getString("p_unitPrice")%>원
				</h4>
				<p>
				<form name="addForm"
					action="./addCartAnimal.jsp?id=<%=rs.getString("p_id")%>" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()"> 동물 상품 주문
						&raquo;</a> <a href="./cartAnimal.jsp?id=animalCartId" class="btn btn-warning"> 장바구니
						&raquo;</a> <a href="./productsAnimal.jsp" class="btn btn-secondary"> 상품
						목록 &raquo;</a>
				</form>
			</div>
		</div>
		<hr>
	</div>
	<%
		}
	%>
	<jsp:include page="footer.jsp" />
</body>
</html>
