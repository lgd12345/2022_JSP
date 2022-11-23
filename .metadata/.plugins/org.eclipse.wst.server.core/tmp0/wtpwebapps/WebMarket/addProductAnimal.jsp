<%@ page contentType="text/html; charset=utf-8"%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!--포멧팅의 한부분 --> --%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>동물 상품 등록</title>
</head>
<body>
	<%-- <fmt:setLocale value='<%= request.getParameter("language") %>'/> <!-- (setLoxale bundle한국어버전영어버전) -->
	<fmt:bundle basename="bundle.message" > --%>
	<jsp:include page="menuAnimal.jsp" />
	<div class="jumbotron">
		<div class="container">
			<!-- <h1 class="display-3"><fmt:message key="title" /></h1> -->
			<h1 class="display-3">동물 등록</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right">
			<!-- <a href="?language=ko" >Korean</a>|<a href="?language=en" >English</a> -->
			<!-- 랭귀지 지금 안 씀 주석 -->
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
		</div>
		<form name="newAnimal" action="./processAddAnimal.jsp"
			class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">ID(아이디)</label>
				<div class="col-sm-3">
					<input type="text" id="animalId" name="animalId"
						class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">NAME(이름)</label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">UNITPRICE(가격)</label>
				<div class="col-sm-3">
					<input type="text" id="unitPrice" name="unitPrice"
						class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">Image(동물사진)</label>
				<div class="col-sm-5">
					<input type="file" name="animalImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary"
						value="등록하기">
				</div>
			</div>
		</form>
	</div>
</body>
</html>
