<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" />
<div class="modal fade" id="loginLayer">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- header -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">X</button>
				<h4 class="modal-title>">로그인</h4>
			</div>
			<div class="modal-body">
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
			</div>
			<div class="modal-footer">
				<div id="submitBox" class="topMargin" align="center">
					<button id="cancleBtn" type="button" data-dismiss="modal">
						<span class="fa fa-times"></span> 닫기
					</button>
					<button id="submitBtn" type="button">
						<span class="fa fa-sign-in"></span> 로그인
					</button>
				</div>
			</div>
		</div>
	</div>
</div>