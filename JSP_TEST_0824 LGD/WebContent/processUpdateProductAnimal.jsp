<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%
	String filename = "";
	String realFolder = "C:\\JSP_WorkSpace1\\WebMarket\\WebContent\\resources\\images"; //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 10 * 1024 * 1024; //최대 업로드될 파일의 크기10Mb

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	String animalId = multi.getParameter("animalId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");

	Integer price;

	if (unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);

	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);	

	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from animal where p_id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, animalId);
	rs = pstmt.executeQuery();
	if (rs.next()) {		
		if (fileName != null) {
			sql = "UPDATE animal SET p_name=?, p_unitPrice=?, p_fileName=? WHERE p_id=?";	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, price);
			pstmt.setString(3, fileName);
			pstmt.setString(4, animalId);	
			pstmt.executeUpdate();
		} else {
			sql = "UPDATE animal SET p_name=?, p_unitPrice=? WHERE p_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, price);
			pstmt.setString(3, animalId);
			pstmt.executeUpdate();	
		}		
	}
	if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	
	response.sendRedirect("editProductAnimal.jsp?edit=update");
%>


