<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/validation.js"></script>

<script type="text/javascript">
	function checkForm() {
		if (!document.newMember.memberId.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (!document.newMember.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
</script>

<title>회원가입</title>
</head>
<body>

	<jsp:include page="menuAnimal.jsp" />
	<div class="jumbotron">
		<div class="container">
			<!-- <h1 class="display-3"><fmt:message key="title" /></h1> -->
			<h1 class="display-3">회원 가입</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right">
			
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
		</div>
					<!-- class="form-horizontal" method="post" enctype="multipart/form-data"> -->
					<!--멀티쓰면 인코딩타입을 멀티로 바꿔주고 아니면 저걸 빼야한다.  -->
		
		<form name="newMember2" action="processAddMember2.jsp"
			class="form-horizontal" method="post" >
			<div class="form-group row"><!-- enctype="multipart/form-data" 이미지 파일 넣을때 들어감 -->
				<label class="col-sm-2">아이디</label>
				<div class="col-sm-3">
					<input type="text" id="memberId" name="memberId"
						class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input name="password" type="text" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">비밀번호 재확인</label>
				<div class="col-sm-3">
					<input name="password_confirm" type="text" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이름</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">생년월일</label>
				<div class="col-sm-4  ">
					<input type="text" name="birthyy" maxlength="4" placeholder="년(4자)" size="6"> 
					<select name="birthmm">
						<option value="">월</option>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="birthdd" maxlength="2" placeholder="일" size="4">
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">성별</label>
				<div class="col-sm-10">
					<input name="gender" type="radio" value="남" /> 남 
					<input name="gender" type="radio" value="여" /> 여
				</div>
			</div>
			<div class="form-group  row ">
				<label class="col-sm-2">본인 확인 이메일</label>
				<div class="col-sm-10">
					<input type="text" name="mail1" maxlength="50" placeholder="선택입력">@ 
					<select name="mail2">
						<option>naver.com</option>
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>
					</select>
				</div>				
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">휴대전화</label>
				<div class="col-sm-3"><select name="phone1">
						<option value="">나라 선택</option>
						<option value="82">대한민국 +82</option>
						<option value="233">가나 +233</option>
					</select> <input name="phone2" type="text" class="form-control" placeholder="전화번호 입력" >
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary"
						value="가입하기">
				</div>
			</div>
		</form>
	</div>
</body>
</html>
