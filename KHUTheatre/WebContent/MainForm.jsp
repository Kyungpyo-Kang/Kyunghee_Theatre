<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=yes">
<title>경희극장 웹페이지</title>
<style type="text/css">
	a:link {color: black; text-decoration: none;}
	a:visited {color: black; text-decoration: none;}
	a.title {font-size: 180%; font-family: Freestyle Script; color: #960000; font-weight: bold; left: 10%; top: 9.26%; position: absolute;}
	a.titleMsg {font-size: 75%; font-weight: bold; font-family: 맑은고딕; line-height: 1.0; color: white;}
	a.noticeMsg {font-size: 75%; font-weight: bold; font-family: 맑은고딕; color: #960000; position: relative; left: 7%; top: 6%;}
	a.noticePlus {font-size: 75%; font-weight: bold; font-family: 맑은고딕; color: #595959; position: absolute; right: 7%; top: 6%;}
	a.scheduleMsg {font-size: 75%; font-weight: bold; font-family: 맑은고딕; color: #960000; position: relative; left: 5%; top: 6%;}
	a.schedulePlus {font-size: 75%; font-weight: bold; font-family: 맑은고딕; color: #595959; position: absolute; right: 5%; top: 6%;}
	a.loginBoxMsg {font-size: 40%; font-weight: bold; font-family: 맑은고딕; color: #595959;}
	p.loginBoxMsg {font-size: 40%; font-weight: bold; font-family: 맑은고딕; color: #595959;}
	p.loginMsg {font-size: 50%; font-weight: bold; font-family: 맑은고딕; color: white;}
	p.reservationMsg {font-size: 50%; font-weight: bold; font-family: 맑은고딕; color: white;}
	div.titleBox {width: 100%; height: 5.56%; border: 0; background-color: rgb(150,0,0); position: absolute;}
	div.mainCover {background-image: url("img/kyunghee.jpg"); width: 100%; height: 100%; left: 0%; top: 0%; position: absolute; max-width: 1800px; max-height: 2300px;}
	div.noticeBox {background-color: rgb(255,255,255); left: 10%; top: 25%; width: 46%; height: 18.52%; position: absolute; border: 0; opacity: 0.74}
	div.schedule {background-color: rgb(255,255,255); left: 10%; top: 46%; width: 46%; height: 16%; position: absolute; border: 0; opacity: 0.74}
	div.login {background-color: rgb(255,255,255); left: 65%; top: 25%; width: 26%; height: 18.52%; position: absolute; border: 0; opacity: 0.74}
	div.reservation {background-color: rgb(255,255,255); left: 65%; top: 46%; width: 26%; height: 16%; position: absolute; border: 0; opacity: 0.74}
	div.intro {background-color: rgb(255,255,255); left: 10%; top: 65%; width: 81%; height: 10%; position: absolute; border: 0; opacity: 0.74}
	div.loginBox {background-color: rgb(150,0,0); border: 0; border-radius: 10px; position: absolute; left: 13%; top: 37.5%; width: 75%; height: 20%;}
	div.reservationBox {background-color: rgb(150,0,0); border: 0; border-radius: 10px; position: absolute; left: 13%; top: 30%; width: 75%; height: 15%;}
</style>
</head>
<body>
<div class="mainCover">
	<div class="titleBox">
	<a href="?" class="titleMsg">
		경희대학교&nbsp;중앙연극동아리</br>
		KHU&nbsp;THEATRE
	</a>
	</div>
	
	<a href="?" class="title">
		KHU&nbsp;THEATRE
	</a>
	
	<div class="noticeBox">
		<a href="notice.jsp" class="noticeMsg">
			공지사항
		</a>
		<a href="notice.jsp" class="noticePlus">
			+
		</a>
	</div>
	
	<div class="schedule">
		<a href="schedule.jsp" class="scheduleMsg">
			공연일정
		</a>
		<a href="schedule.jsp" class="schedulePlus">
			+
		</a>
	</div>
	
	<div class="login">
		<p class="loginBoxMsg" style="position: absolute; left: 4%; top: 5%;">
			경희극장에&nbsp;오신&nbsp;것을&nbsp;환영합니다.
		</p>
		<a href="member/view/LoginForm.jsp">
			<div class="loginBox" align="center">
				<p class="loginMsg">경희극장&nbsp;로그인</p>
			</div>
		</a>
		<a href="member/view/FindIdPwForm.jsp" class="loginBoxMsg" style="position: absolute; left: 4%; top: 75%;">
			아이디·비밀번호&nbsp;찾기
		</a>
		
		<a href="member/view/JoinForm.jsp" class="loginBoxMsg" style="position: absolute; left: 70%; top: 75%;">
			회원가입
		</a>
	</div>
	<div class="reservation">
		<a href="?" style="font-size: 80%; font-family: Freestyle Script; color: #960000; font-weight: bold; left: 13%; top: 11.1%; position: absolute;">
			KHU&nbsp;THEATRE
		</a>
		<a href="reservation.jsp">
			<div class="reservationBox" align="center">
				<p class="reservationMsg">공연&nbsp;좌석&nbsp;예매</p>
			</div>
		</a>
		<p class="loginBoxMsg" style="position: absolute; left: 4%; top: 57%;">
			로그인이&nbsp;필요한&nbsp;서비스입니다.
		</p>
	
	</div>



</div>





</body>
</html>












