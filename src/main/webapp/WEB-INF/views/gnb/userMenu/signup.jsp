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
							<td><input class="textInput" role="signUp" id="password"
								type="password" maxlength="10" name="password"></td>
						</tr>
						<tr>
							<td><label for="passwordChk">비밀번호 확인 <span class="necesseryPoint">*</span></label></td>
							<td><input class="textInput" role="signUp" id="passwordChk"
								type="password" maxlength="10"></td>
						</tr>
						<tr>
							<td><label for="nickname">닉네임 <span class="necesseryPoint">*</span></label></td>
							<td><input class="textInput" id="nickname"
								type="text" maxlength="20" name="nickname"></td>
						</tr>
						<tr>
							<td><label for="email">이메일 <span class="necesseryPoint">*</span></label></td>
							<td><input class="textInput" id="email"
								type="email" maxlength="20" name="email"></td>
						</tr>
						<tr id="vrTr">
							<td>보유 VR 기종</td>
							<td>
								<input type="checkbox" name="vive" value="vive">VIVE &nbsp;
								<input type="checkbox" name="vivePro" value="vivePro">VIVE PRO &nbsp;
								<input type="checkbox" name="oculus" value="oculus">OCULUS &nbsp;<br>
								<input type="checkbox" name="psVr" value="psvr">PS VR &nbsp;
								<input type="checkbox" name="mr" value="mr">MR &nbsp;<br>
								<input type="checkbox" name="etc" id="userVrEtcCheckbox" value="etc">기타 &nbsp;
								<input type="text" name="etcName" id="vrMachineEtc" maxlength="10">
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
<script>
$("input[name=etcName]").on("change", function(){
	if($("input[name=etcName]").val() == null || $("input[name=etcName]").val() == ""){
		$("input[name=etc]").attr('checked', false);
	}else{
		$("input[name=etc]").attr('checked', true);
	}
});

$("#signupBtn").on("click", function(){
	var checkedVr = [];
	var userHasVr = false;
	if($("input[name=vive]").is(":checked") || $("input[name=vivePro]").is(":checked") ||
			$("input[name=oculus]").is(":checked") || $("input[name=psVr]").is(":checked") ||
			$("input[name=mr]").is(":checked") || $("input[name=etc]").is(":checked")){
		userHasVr = true;
	}
	$("input[name=userVr]:checked").each(function(){
		checkedVr.push($(this).val());
	});
	if($("#vrMachineEtc").checked){
		checkedVr.push($("#vrMachineEtc").val());
	}
	
	if(checkedVr.length != 0){
		userHasVr = true;
	}
	if ($("input[name=etc]").is(":checked")){
		signUpData = {
				"userId" : $("#signupForm input[name=userId]").val(),
				"password" : $("#signupForm input[name=password]").val(),
				"email" : $("#signupForm input[name=email]").val(),
				"nickname": $("input[name=nickname]").val(),
				"userHasVr" : userHasVr,
				"vive" : $("input[name=vive]").is(":checked"),
				"vivePro" : $("input[name=vivePro]").is(":checked"),
				"oculus" : $("input[name=oculus]").is(":checked"),
				"psVr" : $("input[name=psVr]").is(":checked"),
				"mr" : $("input[name=mr]").is(":checked"),
				"etc" : $("input[name=etc]").is(":checked"),
				"etcName" : $("input[name=etcName]").val()
		}
	}else{
		signUpData = {
				"userId" : $("#signupForm input[name=userId]").val(),
				"password" : $("#signupForm input[name=password]").val(),
				"email" : $("#signupForm input[name=email]").val(),
				"nickname": $("input[name=nickname]").val(),
				"userHasVr" : userHasVr,
				"vive" : $("input[name=vive]").is(":checked"),
				"vivePro" : $("input[name=vivePro]").is(":checked"),
				"oculus" : $("input[name=oculus]").is(":checked"),
				"psVr" : $("input[name=psVr]").is(":checked"),
				"mr" : $("input[name=mr]").is(":checked"),
				"etc" : $("input[name=etc]").is(":checked")
		}
	}
	console.log(signUpData);
	$.ajax({
		type: "post",
		contentType: 'application/json; charset=UTF-8',
		url: "/signUp",
		dataType: 'json',
		data: JSON.stringify(signUpData),
		success: function (data) {
			if(data.result){
				location.reload();
				console.log("회원가입 성공");
			}else{
				console.log("회원가입 실패");
			}
		},
		error:function(msg){
			console.log(msg);
		}
	});
});
</script>