<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" />
<div class="modal fade" id="signupLayer">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- header -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">X</button>
				<h4 class="modal-title>">회원가입</h4>
			</div>
			<div class="modal-body">
				<form class="topMargin" id="signupForm" action="signup"
					method="post">
					<table>
						<tr>
							<td width="30%"><label for="userId">아이디 <span class="necesseryPoint">*</span></label></td>
							<td>
								<input class="textInput" id="userId" name="userId"
								type="text" maxlength="10">
								<span></span>
							</td>
						</tr>
						<tr>
							<td><label for="password">비밀번호 <span class="necesseryPoint">*</span></label></td>
							<td><input class="textInput" id="password"
								type="password" maxlength="10" name="password"></td>
						</tr>
						<tr>
							<td><label for="passwordChk">비밀번호 확인 <span class="necesseryPoint">*</span></label></td>
							<td><input class="textInput" id="passwordChk"
								type="password" maxlength="10"></td>
						</tr>
						<tr>
							<td><label for="email">이메일 <span class="necesseryPoint">*</span></label></td>
							<td><input class="textInput" id="email"
								type="email" maxlength="20" name="email"></td>
						</tr>
						<tr id="vrTr">
							<td>보유 VR 기종</td>
							<td>
								<input type="checkbox" name="vrMachine" value="vive">VIVE &nbsp;
								<input type="checkbox" name="vrMachine" value="vivePro">VIVE PRO &nbsp;
								<input type="checkbox" name="vrMachine" value="oculus">OCULUS &nbsp;<br>
								<input type="checkbox" name="vrMachine" value="psvr">PS VR &nbsp;
								<input type="checkbox" name="vrMachine" value="mr">MR &nbsp;<br>
								<input type="checkbox" name="vrMachine" value="etc">기타 &nbsp;
								<input type="text" id="vrMachineEtc" maxlength="10">
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="modal-footer">
				<div id="submitBox" class="topMargin" align="center">
					<button id="cancleBtn" type="button" data-dismiss="modal">
						<span class="fa fa-times"></span> 닫기
					</button>
					<button id="signupBtn" type="button">
						<span class="fa fa-sign-in"></span> 회원가입
					</button>
				</div>
			</div>
		</div>
	</div>
</div>