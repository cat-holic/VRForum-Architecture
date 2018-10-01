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
<title>VR Forum 로그인</title>
<style type="text/css">
#logoImg {
	margin-top: 5%;
	text-align: center;
}

#loginForm {
	text-align: center;
	
}

#loginForm table{
	text-align:left;
	width: 25%;
	margin:auto;

}
#loginForm table{
	border: 1px solid pink;
	height: 5em;
}

#loginForm td{
	border-bottom: 1px solid pink;
	padding-left: 7px;
}
#loginForm .textInput{
	border: none;
	outline: none;
}

</style>
</head>
<body>
	<div id="logoImg">
		<img src="resources/img/logo.jpg">
	</div>
	<form id="loginForm" action="login" method="post">
		<table>
			<tr>
				<td width="30%"><label for="idInput">User ID</label></td>			
				<td><input class="textInput" id="idInput" name="userId" type="text" maxlength="10"></td>
			</tr>
			<tr>
				<td><label for="passwordInput">Password</label></td>
				<td><input class="textInput" id="passwordInput" type="password" maxlength="10"></td>
			</tr>
		</table>
	</form>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
</body>
</html>