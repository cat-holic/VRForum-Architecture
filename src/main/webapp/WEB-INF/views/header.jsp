<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
<link href="/resources/css/main.css?v1" rel="stylesheet" type="text/css">
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
				<img src="https://via.placeholder.com/120x60" id="mainLogo">
			</div>
			<div class="gnbMenuWrap">
				<%@ include file="gnb/userMenu.jsp"%>
				<%@ include file="gnb/mainMenu.jsp"%>
			</div>
		</div>