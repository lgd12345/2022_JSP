<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		String user_id = (String) session.getAttribute("userID");
		String user_pw = (String) session.getAttribute("userPW");

		out.println("설정된 세션의 속성 값 [1] : " + user_id + "<br>");
		out.println("설정된 세션의 속성 값 [2] : " + user_pw);
		
		out.println("=====================" + "<br>");
		
		String user_id2 = (String) session.getAttribute("userID2");
		String user_pw2 = (String) session.getAttribute("userPW2");

		out.println("설정된 세션의 속성 값 [1] : " + user_id2 + "<br>");
		out.println("설정된 세션의 속성 값 [2] : " + user_pw2);
		
	%>
</body>
</html>