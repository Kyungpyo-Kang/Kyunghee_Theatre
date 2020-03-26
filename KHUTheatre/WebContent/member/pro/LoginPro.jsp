<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kyunghee.model.MemberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인처리</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	MemberDAO dao = MemberDAO.getInstance();
	int check = dao.loginCheck(id, pw);
	
	String msg = "";
	
	switch(check) {
	// 해당 아이디가 존재하지 않을 경우
	case -1:	
		msg = "../view/LoginForm.jsp?msg=-1";
		break;
	// 비밀번호가 다를 경우
	case 0:
		msg = "../view/LoginForm.jsp?msg=0";
		break;
	// 로그인 성공
	case 1:
		session.setAttribute("sessionID", id);
		msg = "../../LoginTest.jsp";
		break;
	}
	
	
	
	response.sendRedirect(msg);
	


%>
</body>
</html>