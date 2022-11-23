
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<!--업로드관련  -->
<%@ page import="com.oreilly.servlet.multipart.*"%>
<!--업로드관련  -->
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");

/* String filename = "";
String realFolder = "C:\\upload"; //웹 어플리케이션상의 절대 경로
String encType = "utf-8"; //인코딩 타입
int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
 */
String memberId = request.getParameter("memberId"); //입력된 값을 받자!
String password = request.getParameter("password");
String name = request.getParameter("name");
String year = request.getParameter("birthyy");
String month = request.getParameterValues("birthmm")[0];
String day = request.getParameter("birthdd");
String birth = year + "/" + month + "/" + day;
String gender = request.getParameter("gender");
String mail1 = request.getParameter("mail1");
String mail2 = request.getParameterValues("mail2")[0];
String mail = mail1 + "@" + mail2;
String phone1 = request.getParameterValues("phone1")[0];
String phone2 = request.getParameter("phone2");
String phone = phone1 +"/"+ phone2;
%>

<%
PreparedStatement pstmt = null;

String sql = "insert into member2 values(?,?,?,?,?,?,?)"; /* sql 여기서는 숫자 1부터 시작해서 쭉쭉쭉 들어감 */
pstmt = conn.prepareStatement(sql); /* 에스큐엘문장실행? */
pstmt.setString(1, memberId);
pstmt.setString(2, password);
pstmt.setString(3, name); /* int(정수)로 넣음  */
pstmt.setString(4, gender);
pstmt.setString(5, birth);
pstmt.setString(6, mail);
pstmt.setString(7, phone); 
pstmt.executeUpdate();

if (pstmt != null)
	pstmt.close();
if (conn != null)
	conn.close();

response.sendRedirect("productsAnimal.jsp");

%>


