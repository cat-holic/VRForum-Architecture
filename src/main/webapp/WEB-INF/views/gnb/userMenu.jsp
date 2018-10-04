<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="userMenu">
	<ul>
		<%-- <li>안녕하세요. ${user.id}님<li> --%>
		<li><a href="/">home</a></li>
		<li><a href="#">로그아웃</a></li>
		<li><a href="#loginLayer" data-toggle="modal" id="popupLoginModal">로그인 테스트</a></li>
		<li><a href="#signupLayer" data-toggle="modal" id="popupsignupModal">회원가입</a></li>
		<li><a href="#">마이페이지</a></li>
		<li><a href="#">고객센터</a></li>
	</ul>
</div>
<%@ include file="login.jsp" %>
<%@ include file="signup.jsp" %>