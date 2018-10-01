<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<title>Home</title>
</head>
<body>
	<div id="container">
		<div id="gnb">
			<%@ include file="gnb/userMenu.jsp"%>
		</div>
		<h1>Hello world!</h1>
	</div>
	<P>The time on the server is ${serverTime}.</P>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
</body>
</html>
