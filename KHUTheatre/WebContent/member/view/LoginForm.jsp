<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: #FFF2CC;">
	<!-- 로그인창 -->
	
<form action="../pro/LoginPro.jsp" method="post">
<table width="500" align="center" border="1" cellpadding="5" cellspacing="0">
	<tr>
		<th align="center">로그인</th>
	</tr>
	<!-- 아이디입력창 -->
	<tr>
		<td>
			<input type="text" name="id" size="40" placeholder="아이디">
		</td>
	</tr>
	<tr>
		<td>
			<input type="password" name="pw" size="40" placeholder="비밀번호">
		</td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="로그인">
		</td>
	</tr>
</table>

<a href="FindIdPwForm.jsp">아이디·비밀번호 찾기</a>
<a href="join.jsp">회원가입</a>
</form>

</body>
</html>