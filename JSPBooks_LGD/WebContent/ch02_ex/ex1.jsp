<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Scripting Tag</h2>
	<%!int count = 10; // 변수선언
	String name = "이국두"; //이름
	//변수를 본인주소 나타내는변수 선언
	//메서드도 만들기 sum더하기 기능ㅎ ㅏㅁ수 만들기
	//int sum(int a,int b){
	//return a+b
	//표현문으로 밑에서 표현하기
	String email = "0000@naver.com"; //메일주소

	//int sum(int a, int b) { //더하기
	//	return a + b;
	//}

	String makeItLower(String data) { //메소드만들어봄
		return data.toLowerCase(); //소문자로 만들어서 리턴하겠다.
	}

	String makeItUpper(String data2) {
		return data2.toUpperCase(); //대문자
	}%>


	<%
		for (int i = 1; i <= count; i++) {
		if (i % 2 == 0)
			out.println("테스트 짝수 : " + i + "<br>"); //줄바꿈안됨 html이라서 "<br>"써줌
	}
	%>
	<%--주석입니다. 밑에는 표현문 --%>
	<!--주석입니다. 출력결과에 나옴? -->
	<h3>날짜클래스사용해보기</h3>
	<%=new java.util.Date()%>
	시간바뀜 동적이라서
	<br>
	<%=count%>
	<br>
	<%
		out.println(count);
	%>
	<br>
	<%=name%>
	<br>
	<%=email%>
	<br>
	<h2>전역 메소드 사용해보기.</h2>
	<%
		out.println(sum(100, 200)); //전역이라서 바로들어가도됨
	%>
	<h3>하핫</h3>
	<%!int sum(int a, int b) { //더하기
		return a + b; //전역변수는 밑에 적어줘도 됨
	}%>
	<br>
	<%=sum(10, 10)%>

	<br>
	<%=makeItLower("Hello World")%>
	<br>
	<%=makeItUpper("hello world")%>

</body>
</html>