<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../header.jsp">
	<jsp:param value="3" name="activatedMainMenu" />
</jsp:include>
<style>
.infoImg{
	border: 1px solid black;
}

.mainInfoImg{
	
}

.subInfoImg{
	margin-left: 5px;
}

.subInfoImg:first-child{
	margin-left: 0;
}

.subInfoImgWrap{
	margin-top: 10px;
}

.infoImgWrap{
	display: inline-block;
	vertical-align: top;
}

.gameInfoTableWrap{
	display: inline-block;
	vertical-align: top;
	margin-left: 20px;
}

.gameInfoTableWrap > table > tbody > tr > th{
	width: 120px;
} 

.gameInfoTableWrap > table > tbody > tr{
	height: 32px;
}

.gameInfo{

}
</style>
<div id="main">
	<div id="mainWrap">
		<div class="sideNav">
			<jsp:include page="sideNav.jsp" flush="true">
				<jsp:param value="1" name="activeSideMenu"/>
				<jsp:param value="1" name="activatedSubSideMenu" />
			</jsp:include>
		</div>
		<div class="mainContents">
			<h4 class="title">${gameVO.name} - 알아보기</h4>
			<div class="game">
				<div class="infoImgWrap">
					<div>
						<img class="infoImg mainInfoImg" src="https://via.placeholder.com/260x210">
					</div>
					<div class="subInfoImgWrap">
						<img class="infoImg subInfoImg" src="https://via.placeholder.com/50x30">
						<img class="infoImg subInfoImg" src="https://via.placeholder.com/50x30">
						<img class="infoImg subInfoImg" src="https://via.placeholder.com/50x30">
						<img class="infoImg subInfoImg" src="https://via.placeholder.com/50x30">
					</div>
				</div>
				<div class="gameInfoTableWrap">
					<table>
						<tr>
							<th>개발사</th>
							<td>VRChat Inc.</td>
						</tr>
						<tr>
							<th>유통사</th>
							<td>VRChat Inc.</td>
						</tr>
						<tr>
							<th>장르</th>
							<td>소셜/밈/유머/애니메이션</td>
						</tr>
						<tr>
							<th>발매일</th>
							<td>2017년 2월 1일</td>
						</tr>
						<tr>
							<th>플랫폼</th>
							<td>PC</td>
						</tr>
						<tr>
							<th>공식지원 VR</th>
							<td>HTC VIVE/OCULUS</td>
						</tr>
						<tr>
							<th>공식 홈페이지</th>
							<td>https://www.vrchat.net</td>
						</tr>
					</table>
				</div>
			</div>
				
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>