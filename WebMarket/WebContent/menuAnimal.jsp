<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<nav class="navbar navbar-expand  navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="/WebMarket/welcome.jsp">Home</a>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<c:choose>
					<c:when test="${empty sessionId}">
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/loginMember.jsp"/>">로그인 </a></li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="/member/addMember.jsp"/>'>회원 가입</a></li>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color: white">[<%=sessionId%>님]</li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/logoutMember.jsp"/>">로그아웃 </a></li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/updateMember.jsp"/>">회원 수정</a></li>
					</c:otherwise>
				</c:choose>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/productsAnimal.jsp"/>">동물 상품 목록</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/addProductAnimal.jsp"/>">동물 상품 등록</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/editProductAnimal.jsp?edit=update"/>">동물 상품 수정</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/editProductAnimal.jsp?edit=delete"/>">동물 상품 삭제</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/BoardListAction.do?pageNum=1"/>">게시판</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/products.jsp"/>">product</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/productsAnimal.jsp"/>">animal</a></li>
			</ul>
		</div>
	</div>
</nav>
