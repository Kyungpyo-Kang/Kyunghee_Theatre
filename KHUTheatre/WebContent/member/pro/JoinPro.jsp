<%@page import="com.kyunghee.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.kyunghee.db.DBUtils"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>


	<jsp:useBean id="vo" class="com.kyunghee.model.MemberVO"/>
	<jsp:setProperty property="*" name="vo"/>
	


<%
	MemberDAO dao = MemberDAO.getInstance();
	dao.insertMember(vo);
	
	response.sendRedirect("../../MainForm.jsp");
%>



</body>
</html>