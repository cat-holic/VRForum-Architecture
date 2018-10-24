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
			<h4 class="title">${gameVO.name} - 유저 가이드/팁</h4>
			<br>
			<div>
				<table>
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>조회수</th>
						<th>작성일</th>
						<th>등록일</th>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>