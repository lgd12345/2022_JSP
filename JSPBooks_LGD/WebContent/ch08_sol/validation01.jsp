<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function CheckForm() {
		/* alert("아이디 : " + document.loginForm.id.value + "\n" + 
				"비밀번호 : " + document.loginForm.passwd.value); */
		 if(loginForm.id.value == "" ) {
			    
			 loginForm.id.focus();
		        alert("아이디를 입력해 주십시오.");
		        
		        return false;
		        
		    } if(loginForm.passwd.value == "" ) {
			    
				 loginForm.passwd.focus();
			        alert("비밀번호를 입력해 주십시오.");
			        
			        return false;
			        
			    }
		/* 출처: https://nm-it-diary.tistory.com/43 [웹개발자 나나:티스토리] */
	}
</script>
<body>	
	<form name="loginForm" >
		<p>	아 이 디 : <input type="text" name="id">
		<p>	비밀번호 : <input type="password" name="passwd">
		<p>	<input type="submit" value="전송" onclick="CheckForm()">
	</form>
</body>
</html>