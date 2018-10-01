<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"type="text/css" />
<style>
	#userMenu{
		text-align: right;
		margin-right: 20px;
	}
	#usermenu ul{
		margin-top: 10px;
	}
	#usermenu ul li{
		display: inline-block;
		margin-right: 3px;
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
		<li><a href="#">로그인</a></li>
		<li><a href="#">마이페이지</a></li>
		<li><a href="#">고객센터</a></li>
		</ul>
	</div>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
</body>
</html>