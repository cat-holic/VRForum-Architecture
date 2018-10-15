<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/resources/css/main.css?ver=1" rel="stylesheet" type="text/css">
		<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="/resources/js/user.js"></script>
	<title>VR Forum</title>
	
<style>

</style>
</head>
<body>
	<div class="container-fluid">
		<div id="gnb">
			<div id="mainLogoWrap">
				<img src="https://via.placeholder.com/120x60" id="mainLogo">
			</div>
			<div class="gnbMenuWrap">
				<%@ include file="gnb/userMenu.jsp"%>
				<%@ include file="gnb/mainMenu.jsp"%>
			</div>
		</div>
		<div id="contents">
			콘텐츠
		</div>
		<div id="footer">
			푸터
		</div>
	</div>
	<P>The time on the server is ${serverTime}. <i class="fas fa-stream"></i></P>

	

</body>

</html>