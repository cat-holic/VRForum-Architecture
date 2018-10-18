<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../header.jsp">
	<jsp:param value="2" name="activeMainMenu"/>
</jsp:include>

<div id="main">
	<div id="mainWrap">
		<div class="sideNav">
			<div class="sidNavMenuWrap">
				<ul>
					<li><span>메 뉴</span></li>
					<li><a class="sideNavMenu">VR이란?</a></li>
					<li><a class="sideNavMenu">대표 VR기기</a></li>
					<li><a class="sideNavMenu">VR HDM상세제원</a></li>
					<li><a class="sideNavMenu">VR HDM 기기별 비교</a></li>
					<li><a class="sideNavMenu">VR HDM 리뷰</a></li>
					<li><a class="sideNavMenu">VR 주변기기</a></li>
					<li><a class="sideNavMenu">VR 기기 사용자 후기</a></li>
				</ul>
			</div>
		</div>
		<div class="mainContents">
			<ul class="introVrMachine">
			<c:forEach items="${vrMachineVOs}" var="vrMachine" begin="0" end="2">
				<li>
					<div>
						<a>
							<img src="${vrMachine.filePath}" style="width: 300px; height: 180px;">
							<span style="display: block;">${vrMachine.name }</span>
						</a>
						<div>
							<span>${vrMachine.price }</span>
						</div>
					</div>
				</li>
			</c:forEach>
			</ul>
			<ul class="introVrMachine">
			<c:forEach items="${vrMachineVOs}" var="vrMachine" begin="3" end="5">
				<li>
					<div>
						<a>
							<img src="${vrMachine.filePath}" style="width: 300px; height: 180px;">
							<span style="display: block;">${vrMachine.name }</span>
						</a>
						<div>
							<span>${vrMachine.price }</span>
						</div>
					</div>
				</li>
			</c:forEach>
			</ul>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp" %>