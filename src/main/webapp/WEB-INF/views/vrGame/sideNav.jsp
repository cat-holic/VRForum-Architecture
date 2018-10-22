<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.activatedVrGameInfo{
	
}

.activatedSideMenu{
	background-color: red;
}
</style>
<div class="sidNavMenuWrap">
	<ul>
		<li><span>메 뉴</span></li>
		<li><a <c:choose><c:when test="${param.activatedSideMenu eq 1 }">class="sideNavMenu activatedSideMenu"</c:when> <c:otherwise>class="sideNavMenu"</c:otherwise></c:choose>
		href="/vrGame/vrGameList">게임목록</a></li>
		<c:if test="${param.activatedVrGameInfo ne null }">
			<ul>
				<li>ㅇㄴㄹㅇㄴㅁㄹㅇㄴㅁㄻㄴㅇㅁ</li>
			</ul>
		</c:if>
		<li><a <c:choose><c:when test="${param.activatedSideMenu eq 2 }">class="sideNavMenu activatedSideMenu"</c:when> <c:otherwise>class="sideNavMenu"</c:otherwise></c:choose>>랭킹 순위</a></li>
		<li><a <c:choose><c:when test="${param.activatedSideMenu eq 3 }">class="sideNavMenu activatedSideMenu"</c:when> <c:otherwise>class="sideNavMenu"</c:otherwise></c:choose>>추천 게임</a></li>
		<li><a <c:choose><c:when test="${param.activatedSideMenu eq 4 }">class="sideNavMenu activatedSideMenu"</c:when> <c:otherwise>class="sideNavMenu"</c:otherwise></c:choose>>신작</a></li>
		<li><a <c:choose><c:when test="${param.activatedSideMenu eq 5 }">class="sideNavMenu activatedSideMenu"</c:when> <c:otherwise>class="sideNavMenu"</c:otherwise></c:choose>>리뷰</a></li>
	</ul>
</div>