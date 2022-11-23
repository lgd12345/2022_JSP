<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form 확인.</title>
</head>
<body>
	<h2>radio,checkbox 확인하기</h2>
	
	<!-- radio -->
	<p>문제 : 1 + 1 ?
	<p>
		답 : <input type="radio" name="sol" value="1번" checked> 1 <input
			type="radio" name="sol" value="2번" checked> 2 <input
			type="radio" name="sol" value="3번" checked> 3 <input
			type="radio" name="sol" value="4번" checked> 45
	<!-- checkbox -->
	<P>
		취미 : 독서<input type="checkbox" name="hobby1" checked> 
		     운동<input type="checkbox" name="hobby2"> 
		   	영화<input type="checkbox"name="hobby3">
		   	
	 <!-- select option  --> 	
		   	<p> <select name="city" size="3">
		   	<option value="서울">서울</option>
		   	<option value="부산">부산</option>
		   	<option value="제주">제주</option>
		   	<option value="대전">대전</option>
		   	<option value="광주">광주</option>
		   	<option value="울산">울산</option>
		   	<option value="인천">인천</option>
		   	<option value="대구">대구</option>-+
	
		   	</select>
</body>
</html>