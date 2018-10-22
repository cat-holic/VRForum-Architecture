<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
<link href="/resources/css/main.css?ver=5" rel="stylesheet" type="text/css">
<style type="text/css"></style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/resources/js/user.js"></script>
<title>VR Forum</title>
</head>
<body>
	<div class="container-fluid" id="header">
		<div id="gnb">
			<div id="mainLogoWrap">
				<a href="/">
				<img src="https://via.placeholder.com/120x60" id="mainLogo">
				</a>
			</div>
			<div class="gnbMenuWrap">
				active=<c:out value="${param.activeMainMenu }"></c:out>

 				<jsp:include page="gnb/userMenu.jsp" flush="true"></jsp:include>
				<jsp:include page="gnb/mainMenu.jsp" flush="true">
					<jsp:param value="${param.activeMainMenu }" name="activeMainMenu"/>
				</jsp:include>

			</div>
		</div>