<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%-- <%@ page errorPage="myError.jsp" %> --%>
<%@ page errorPage="myError2.jsp"%>
<%--여기서 오류가 나면 myError페이지로감  --%>
<!-- el표기법 이라는데 나중에질문하자...-->
<%-- <%@ page isELIgnored="true" %> --%>
<!--isELIgnored 무시할것이냐? true무시하겠다는 뜻 EL표기법안쓰겠다는 뜻이다 on/off -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <h1>오늘 날짜: <%= new Date() %></h1> --%>
	<%-- <% String str = null;
out.println(str.toString());%> --%>
	<%--문자열을 없는걸로 해서 에러가 나게 됨  --%>
	<h2>EL 표기법에 대해서 간단히 알아보기.</h2>
	<%
	/* ("앞에 인자값은 보통 키 값: 표현 라벨지", "실제 값(value)") */
	request.setAttribute("key", "실제 값(value)")	;
	%>
	<h2>${requestScope.key} </h2><!-- el표기법 사용-->
	
	<h1>===============================</h1>
	<h2>여기에 myError2.jsp 파일을 포함해봅니다. </h2>
	<%@ include file = "myError2.jsp"  %>
	
<h2>jsp 에서 jstl 사용자 정의 태그, taglib 지시어를 통해서 c(core)사용해보기</h2>
<c:out value="출력용도로 사용함. 마치 jsp의 "/>
<c:forEach var="K" begin="1" end="5" step="1">
<c:out value="${K}"/> <!--위에랑 같은 값을 줘야 사용 가능 함 대문자라서 대문자  -->
</c:forEach>
</body>
</html>