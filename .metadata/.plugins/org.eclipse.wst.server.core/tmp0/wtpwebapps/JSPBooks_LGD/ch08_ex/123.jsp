<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		function CheckForm() {

			/* 처음꺼 */
			/* alert("아이디 : " + document.loginForm.id.value + "\n" + 
					"비밀번호 : " + document.loginForm.passwd.value); */
			/* 		 if(!isNaN(document.loginForm.name.value.substr(0,1) ) ) { */

				
			/* Java가 있는 지 확인 하고 출력*/
			/* 	var regExp= /Java/i;  /*이 문장을 하나로 인식*/
			 /* var str = document.loginForm.name.value;
			 var result= regExp.exec(str);
			 alert(result[0]);*/ //0번째  출력
			 /* alert(result); */

			 
			 
			var regExp = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/i; 
			var str = document.loginForm.name.value;
			if(!regExp.test(str)){
				alert("이름은 숫자로 시작 할 수 없습니다.")
			}
			
			
			

			/* 	 alert("이름은 숫자로 시작할 수 없습니다.")
			        document.loginForm.name.select();
			        return false;
			        
			    } if(loginForm.passwd.value == "" ) {
				    
					 loginForm.passwd.focus();
				        alert("비밀번호를 입력해 주십시오.");
				        
				        return false;
				        
				    } */
			/* 출처: https://nm-it-diary.tistory.com/43 [웹개발자 나나:티스토리] */
		}
	</script>
<body>
	<form name="loginForm">
		<p>
			이름 : <input type="text" name="name">
		<p>
			비밀번호 : <input type="password" name="passwd">
		<p>
			<input type="submit" value="전송" onclick="CheckForm()">
	</form>
</body>
</html>