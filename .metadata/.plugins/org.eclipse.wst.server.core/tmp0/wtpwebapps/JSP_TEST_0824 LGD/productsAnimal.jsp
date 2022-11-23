<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %><!-- 자리를 차지하기도한다 그래서위로 올려줘야함 -->
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>동물 상품 목록</title>
</head>
<body>
	<jsp:include page="menuAnimal.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">동물 상품 목록</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			
			<%  /* db랑연동됨 */
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				String sql = "select * from animal";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
			<div class="col-md-4"> <!--12개를 4등분해서 3개씩보여준다는말  -->
				<%-- <img src="./resources/images/<%=rs.getString("p_fileName")%>" style="width: 100%"> --%>
				<img src="./resources/images/<%=rs.getString("p_fileName")%>" width= 100%, height= 50%>
 				<%-- <img src="c:/upload/<%=rs.getString("p_fileName")%>" style="width: 100%"> --%>
				<h3><%=rs.getString("p_name")%></h3>
				<p><%=rs.getString("p_UnitPrice")%>원
				<p><a href="./productAnimal.jsp?id=<%=rs.getString("p_id")%>"class="btn btn-secondary" role="button">상세 정보 &raquo;></a>
			</div>
			<%
				}
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
