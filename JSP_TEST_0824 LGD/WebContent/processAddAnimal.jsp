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

String filename = "";
String realFolder = "C:\\JSP_WorkSpace1\\WebMarket\\WebContent\\resources\\images"; //웹 어플리케이션상의 절대 경로
String encType = "utf-8"; //인코딩 타입
int maxSize = 10 * 1024 * 1024; //최대 업로드될 파일의 크기10Mb

MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

String animalId = multi.getParameter("animalId"); //입력된 값을 받자!
String name = multi.getParameter("name");
String unitPrice = multi.getParameter("unitPrice"); /* 가격 */

Integer price; /* 자동으로 형변환 하기 위해서 변수 지정 */

if (unitPrice.isEmpty()) /* 널 값이면 0 */
	price = 0;
else
	price = Integer.valueOf(unitPrice); /* 문자열을 문자로 변수로 바꿔주고 있음 */

Enumeration files = multi.getFileNames(); //Enumeration 여러개 값을 한꺼번에 처리하기 위한 것
String fname = (String) files.nextElement(); /* 문자열로 형변환 */
String fileName = multi.getFilesystemName(fname);

PreparedStatement pstmt = null;

String sql = "insert into animal values(?,?,?,?)"; /* sql 여기서는 숫자 1부터 시작해서 쭉쭉쭉 들어감 */
pstmt = conn.prepareStatement(sql); /* 에스큐엘문장실행? */
pstmt.setString(1, animalId);
pstmt.setString(2, name);
pstmt.setInt(3, price); /* int(정수)로 넣음  */
pstmt.setString(4, fileName);
pstmt.executeUpdate();

if (pstmt != null)
	pstmt.close();
if (conn != null)
	conn.close();

response.sendRedirect("productsAnimal.jsp");
%>

