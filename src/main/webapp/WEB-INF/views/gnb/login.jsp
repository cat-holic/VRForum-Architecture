<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" />
<title>VR Forum 로그인</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

#logoImg {
	margin-top: 5%;
	text-align: center;
}

#loginForm {
	text-align: center;
}

#loginForm table {
	text-align: left;
	width: 25%;
	margin: auto;
}

#loginForm table {
	border: 1px solid pink;
	height: 5em;
}

#loginForm td {
	border-bottom: 1px solid pink;
	padding-left: 7px;
}

#loginForm .textInput {
	border: none;
	outline: none;
}

.topMargin {
	margin-top: 20px;
	display: block;
}

#submitBox {
	position: fixed;
	bottom: 0px;
	left: 0px;
	width: 100%;
	height: 15%;
}

#submitBox Button {
	float: left;
	float: left;
	width: 50%;
	height: 100%;
	font-size: 20px;
	font-weight: 1000;
	text-align: center;
	color: black;
	cursor: pointer;
	border-style: none;
	text-align: center;
}

#cancleBtn {
	background-color: rgb(240, 30, 140);
}

#submitBtn {
	background-color: rgb(135, 206, 250);
}

#signUpBtn {
	border-style: none;
	height: 30px;
	width: 10%;
	min-width: 120px;
	background-color: #ffB4DD;
}
.layerContainer{
	position: relative;
}
</style>
</head>
<body>
	<div class="layerContainer">
		<div id="logoImg">
			<img src="resources/img/logo.jpg">
		</div>
		<form id="loginForm" action="login" method="post">
			<table>
				<tr>
					<td width="30%"><label for="idInput">User ID</label></td>
					<td><input class="textInput" id="idInput" name="userId"
						type="text" maxlength="10"></td>
				</tr>
				<tr>
					<td><label for="passwordInput">Password</label></td>
					<td><input class="textInput" id="passwordInput"
						type="password" maxlength="10"></td>
				</tr>
			</table>
			<div class="topMargin">
				<a href="#" class="topMargin">구글아이디로 로그인하기</a>
			</div>
		</form>
		<div align="center" class="topMargin">
			<span style="display: block;">회원이 아니세요?</span>
			<button id="signUpBtn" type="button" onclick="location.href='#'"
				class="topMargin">지금 가입하세요</button>
		</div>
		<div id="submitBox" align="center">
			<button id="cancleBtn" type="button">
				<span class="fa fa-times"></span> 닫기
			</button>
			<button id="submitBtn" type="button">
				<span class="fa fa-sign-in"></span> 로그인
			</button>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
</body>
</html>