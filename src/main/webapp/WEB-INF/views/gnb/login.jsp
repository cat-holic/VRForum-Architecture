<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<div class="modal fade" id="loginLayer">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- header -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">X</button>
				<h4 class="modal-title>">로그인</h4>
			</div>
			<div class="modal-body">
				<form class="topMargin" id="loginForm" action="/login" method="post" onSubmit="return false;">
					<table>
						<tr>
							<td width="30%"><label for="idInput">User ID</label></td>
							<td><input class="textInput" id="idInput" name="userId" type="text" maxlength="10"></td>
						</tr>
						<tr>
							<td><label for="passwordInput">Password</label></td>
							<td><input class="textInput" id="passwordInput" name="password" type="password" maxlength="10"></td>
						</tr>
					</table>
					<div class="topMargin">
						<a href="#" class="topMargin">구글아이디로 로그인하기</a>
					</div>
				</form>
				<div align="center" class="topMargin">
					<span style="display: block;">회원이 아니세요?</span>
					<button id="signUpBtn" type="button" onclick="location.href='#'" class="topMargin">지금 가입하세요</button>
				</div>
			</div>
			<div class="modal-footer">
				<div id="submitBox" class="topMargin" align="center">
					<button id="cancleBtn" type="button" data-dismiss="modal">
						<span class="fa fa-times"></span> 닫기
					</button>
					<button id="loginBtn" type="button">
						<span class="fa fa-sign-in"></span> 로그인
					</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script>

	// $(document).ready(function () {
	// 	$('#loginBtn').on('click', function () {
	// 		/* alert("로그인시도"); */
	// 		console.log("로그인시도");
	// 		var formObj = $('#loginForm');
	// 		var loginData = formObj.serialize();
	// 		// var loginData = {"userId":$('#idInput').val(), "password":$('#passwordInput').val()};
	// 		// JSON.stringify(loginData)
	// 		// console.log(JSON.stringify(loginData));
	// 		$.ajax({
	// 			type: "post",
	// 			url: "/login",
	// 			dataType: 'json',
	// 			data: loginData,
	// 			success: function (data) {
	// 				console.log(data);
	// 				if(data.result == true){
	// 					alert("성공");
	// 				}else{
	// 					alert("실패");
	// 				}	
	// 			},
	// 			error:function(msg){
	// 				console.log(msg);
	// 			}
	// 		});
			/* alert("로그인시도"); */
	// $(document).ready(function () {
	// 	$('#loginBtn').on('click', function () {
	// 		console.log("로그인시도");
	// 		var formObj = $('#loginForm');
	// 		// var loginData = formObj.serialize();
	// 		var loginData = {"userId":$('#idInput').val(), "password":$('#passwordInput').val()};
	// 		// JSON.stringify(loginData)
	// 		console.log(JSON.stringify(loginData));
	// 		$.ajax({
	// 			type: "post",
	// 			url: "/login",
	// 			contentType: 'application/json; charset=UTF-8',
	// 			dataType: 'json',
	// 			data: JSON.stringify(loginData),
	// 			success: function (data) {
	// 				console.log(data);
	// 				if(data.result == true){
	// 					alert("성공");
	// 				}else{
	// 					alert("실패");
	// 				}	
	// 			},
	// 			error:function(msg){
	// 				console.log(msg);
	// 			}
	// 		});
	// 	});
	// });
	$(document).ready(function () {
		$.fn.serializeObject = function(){
			   var o = {};
			   var a = this.serializeArray();
			   $.each(a, function() {
			       if (o[this.name]) {
			           if (!o[this.name].push) {
			               o[this.name] = [o[this.name]];
			           }
			           o[this.name].push(this.value || '');
			       } else {
			           o[this.name] = this.value || '';
			       }
			   });
			   return o;
			};
		$('#loginBtn').on('click', function () {
			console.log("로그인시도");
			var formObj = $('#loginForm').serializeObject();
			// var loginData = formObj.serialize();
			var loginData = formObj;
			// JSON.stringify(loginData)
			console.log(JSON.stringify(loginData));
			$.ajax({
				type: "post",
				url: "/login",
				contentType: 'application/json; charset=UTF-8',
				dataType: 'json',
				data: JSON.stringify(loginData),
				success: function (data) {
					console.log(data);
					if(data.result == true){
						alert("성공");
						loaction.href="/";
					}else{
						alert("실패");
					}	
				},
				error:function(msg){
					console.log(msg);
				}
			});
		});
	});

</script>