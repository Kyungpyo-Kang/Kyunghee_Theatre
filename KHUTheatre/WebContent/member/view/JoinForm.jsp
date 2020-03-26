<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=divice-width, initial-scale=1, user-scalable=yes, height=device-height">
<title>회원가입 화면</title>
<link rel="stylesheet" href="../../css/JoinForm.css"/>
</head>

<body>

<form action="../pro/JoinPro.jsp" method="post">



<div class="wrap">
	<a href="../../MainForm.jsp" class="title">
		<img src="../../img/title.png">
	</a>
	
	<p class="content">&nbsp;아이디</p>
	<div class="inputWrap" align="left">
		<input type="text" name="member_id" size="90%" class="inputBox">
	</div>
	
	<p class="content" style="top: 11%;">&nbsp;비밀번호</p>
	<div class="inputWrap" align="left" style="top:12.5%;">
		<input type="password" name="member_pw" size="90%" class="inputBox">
	</div>
	
	<p class="content" style="top: 16%;">&nbsp;비밀번호&nbsp;재확인</p>
	<div class="inputWrap" align="left" style="top:17.5%;">
		<input type="password" name="member_repw" size="90%" class="inputBox">
	</div>
	
	<p class="content" style="top: 21%;">&nbsp;이름</p>
	<div class="inputWrap" align="left" style="top:22.5%;">
		<input type="text" name="member_name" size="90%" class="inputBox">
	</div>
	
	<p class="content" style="top: 26%;">&nbsp;생년월일</p>
	<div class="inputWrap" align="left" style="top:27.5%; width: 30%">
		<input type="text" name="member_birthyy" size="10%" class="inputBox" placeholder=" 년(4자)">
	</div>
	<div class="inputWrap" align="left" style="top:27.5%; width: 25%; left: 35%">
		<select name="member_birthmm">
			<option selected="selected">&nbsp;&nbsp;월</option>
<%
				for(int i=0;i<12;i++) {
%>
					<option>	<%=i+1 %>
<%
					}
%>
					</option>
		</select>
	</div>
	<div class="inputWrap" align="left" style="top:27.5%; width: 30%; left: 65%;">
		<input type="text" name="member_birthdd" size="20%" class="inputBox" placeholder=" 일">
	</div>
	
	<p class="content" style="top: 31%;">&nbsp;성별</p>
	<div class="inputWrap" align="left" style="top:32.5%;">
		<select name="member_gender">
			<option selected="selected">&nbsp;&nbsp;성별</option>
			<option>&nbsp;남</option>
			<option>&nbsp;여</option>
		</select>	
	</div>
	
	<p class="content" style="top: 36%;">&nbsp;기수</p>
	<div class="inputWrap" align="left" style="top:37.5%;">
		<select name="member_class">
			<option selected="selected">&nbsp;&nbsp;기수</option>
<%
					for(int i=0;i<100;i++) {
%>
					<option><%=i+1 %></option>
<%
					}
%>
		</select>	
	</div>
	
	
	<p class="content" style="top: 41%;">&nbsp;본인&nbsp;확인&nbsp;이메일</p>
	<p class="optionMsg">(선택)</p>
	<div class="inputWrap" align="left" style="top:42.5%;">
		<input type="text" name="member_email" size="90%" class="inputBox" placeholder=" 선택입력">
	</div>
	
	
	<p class="content" style="top: 46%;">&nbsp;휴대전화</p>
	<div class="inputWrap" align="left" style="top:47.5%; width: 62%">
		<input type="text" name="member_phone" size="60%" class="inputBox" placeholder=" 전화번호 입력('-'빼고 입력)">
	</div>
	<div class="buttonWrap" align="center" style="top: 47.6%; left: 65%">
		<a class="certificate" href="?">인증번호&nbsp;받기</a>
	</div>
	<div class="inputWrap" align="left" style="top:50%;">
		<input type="text" name="member_phone" size="60%" class="inputBox" placeholder=" 인증번호를 입력하세요">
	</div>
	
	
	<div class="submitWrap" align="left">
		<input type="submit" value="가입하기" class="submitForm">
	</div>
	
	
	
</div>




</form>

</body>
</html>