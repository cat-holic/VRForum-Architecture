<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../header.jsp">
	<jsp:param value="3" name="activatedMainMenu" />
</jsp:include>

<div id="main">
	<div id="mainWrap">
		<div class="sideNav">
			<jsp:include page="sideNav.jsp" flush="true">
				<jsp:param value="1" name="activatedSideMenu"/>
			</jsp:include>
		</div>
		<div class="mainContents">
			<h4 class="title">VR 게임 목록</h4>
			<br>
			<div class="searchGame">
				<form class="searchGameForm" method="get">
					<div class="searchWrap">
						<button type="submit" >
							<span class="glyphicon glyphicon-search"></span>
						</button>
						<input type="text" id="searchGameKeyword" placeholder="게임명, 또는 장르" name="keyword">
					</div>

				</form>
			</div>
			<div id="gameListView">
				<div id="gameListWrap">
					<table id="gameList">
						<tr>
							<th>게임명</th>
							<th>대표장르</th>
							<th>평점</th>
						</tr>
						<c:forEach items="${gameVOs}" var="gameVO">
						<tr>
							<td><a href="/vrGame/vrGameInfo?idx=${gameVO.idx}">${gameVO.name}</a></td>
							<td>${gameVO.tags }</td>
							<td>${gameVO.rate }</td>
						</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>