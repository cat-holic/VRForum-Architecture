<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="/resources/js/user.js"></script>
<div id="userMenu">
	<ul>
		<c:if test="${loginedUser ne null}">
		<li>안녕하세요. <b>${loginedUser.nickname}</b>님&nbsp;&nbsp;</li>
		</c:if>

		<li><a href="/">HOME</a></li>
		<c:if test="${loginedUser ne null}">
		<li><a href="#" id="logout">로그아웃</a></li>
		</c:if>
		<c:if test="${loginedUser eq null}">
		<li><a href="#loginLayer" data-toggle="modal"
			id="popupLoginModal">로그인</a></li>
		</c:if>
		<c:if test="${loginedUser eq null}">
		<li><a href="#signupLayer" data-toggle="modal"
			id="popupsignupModal">회원가입</a></li>
		</c:if>
		<li><a href="#">마이페이지</a></li>
		<li><a href="#">고객센터</a></li>
	</ul>
</div>
<script>
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
		}
	
	$("#logout").on("click", function(){
		$.ajax({
			type:"post",
			url: "/logout",
			data: {"msg" : "logout"},
			success: function(data){
				if(data.result){
					location.reload();
					console.log("로그아웃 성공");
				}
				else{
					console.log("로그아웃 실패");
				}
			}
		});
	});
});
</script>
<%@ include file="userMenu/login.jsp"%>
<%@ include file="userMenu/signup.jsp"%>
