<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../header.jsp">
	<jsp:param value="3" name="activatedMainMenu" />
	<jsp:param value="${gameVO}" name="activatedVrGameInfo" />
</jsp:include>
<style>
.title {
	text-align: left;
}

.searchGame{
	margin-bottom: 10px;
}
.searchWrap {
	display: inline-block;
	vertical-align: top;
	background-color: white;
	border: 1px solid #2BFFFF;
}

#searchGameKeyword {
	border: none;
}

.searchGame {
	text-align: right;
}

#gameList {
	width: 100%;
	
}
#gameList > tbody > tr > th {
	text-align: center;
	background-color: #B3CCFF;
}

#gameList > tbody > tr > th:first-child{
	width:60%;
	font-weight: 1000;

}
#gameList > tbody > tr > th:nth-child(2){
	width:20%;
}
#gameList > tbody > tr > th:nth-child(3){
	width:20%;
}

#gameList > tbody > tr> td{
	background-color: white;
}

#gameList > tbody > tr{
	height: 25px;
}

#gameList > tbody > tr:first-child{
	height: 30px;
	font-size: 1.2em;
}


#gameListWrap{
	height : 300px;
	text-align: center;
	border: solid 1px;
	overflow-y : scroll;
}

#gameListView{
	margin-bottom: 20px;
}

.searchGameForm button {
	border: none;
	background-color: white;
}
</style>
<div id="main">
	<div id="mainWrap">
		<div class="sideNav">
			<jsp:include page="sideNav.jsp" flush="true">
				<jsp:param value="1" name="activeSideMenu"/>
			</jsp:include>
		</div>
		<div class="mainContents">
			<h3 class="title">${gameVO.name} - 알아보기</h3>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>