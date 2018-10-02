<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" />
<style>
* {
	margin: 0;
	padding: 0;
}

#userMenu {
	text-align: right;
	margin-right: 20px;
}

#userMenu ul {
	margin-top: 10px;
}

#userMenu ul li {
	display: inline-block;
	margin-right: 3px;
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

#loginLayer {
	display: none;
	top: 0px;
	left: 0px;
	text-align: center;
	width: 100%;
	height: 100%;
	/* width: 20%;
	height: 70%;
	min-width: 600px;
	min-height: 1200px; */
}

.layerContainer {
	margin-top : 15%;
	margin-bottom : 15%;
	margin-right: 30%
	width : 40%;
	height : 70%;
	min-height: 500px;
	position:relative;
	display:inline-block;
	background:#f00;
	vertical-align:middle;
}

.blank{
	display:inline-block;
	width:0;
	height:100%;
	vertical-align:middle;
}

#submitBox {
	position: absolute;
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
</style>
<title>Insert title here</title>
</head>
<body>
	<div id="userMenu">
		<ul>
			<%-- <li>안녕하세요. ${user.id}님<li> --%>
			<c:if test="${user.idx }"></c:if>
			<li><a href="/">home</a></li>
			<li><a href="#">로그아웃</a></li>
			<li><a href="#" id="popUpLoginLayer">로그인</a></li>
			<li><a href="signUp">회원가입</a></li>
			<li><a href="#">마이페이지</a></li>
			<li><a href="#">고객센터</a></li>
		</ul>
	</div>
	<div id="loginLayer">
		<div class="layerContainer">
			<div id="logoImg">
				<img src="resources/img/logo.jpg">
			</div>
			<form class="topMargin" id="loginForm" action="login" method="post">
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
			<div id="submitBox" class="topMargin" align="center">
				<button id="cancleBtn" type="button">
					<span class="fa fa-times"></span> 닫기
				</button>
				<button id="submitBtn" type="button">
					<span class="fa fa-sign-in"></span> 로그인
				</button>
			</div>
		</div>
		<span class="blank"></span>
	</div>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script type="text/javascript" src="/resources/js/jquery.bpopup.min.js"></script>
	<script>
		$(document).ready(
				function() {
					jQuery.fn.center = function() {
						this.css("position", "absolute");
						// this.css("top", Math.max(0, (($(window).height() - $(
						// 		this).outerHeight()) / 2)
						// 		+ $(window).scrollTop())
						// 		+ "px");
						// this.css("left", Math.max(0, (($(window).width() - $(
						// 		this).outerWidth()) / 2)
						// 		+ $(window).scrollLeft())
						// 		+ "px");
					}

					$("#popUpLoginLayer").on("click", function(e) {
						e.preventDefault();
						$("#loginLayer").center();
						$("#loginLayer").show();
					});
				});
	</script>
</body>
</html>