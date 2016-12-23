<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trip Book</title>
<style>
.mainNewBoard {
	border: 1px solid black;
	text-align: center;
	margin: 10px 0px;
}

.grow {
	-ms-overflow-style: none;
}

.mainRecentBoard {
	margin: 10px 0px;
}

.replys {
	border: 3px solid pink;
}

.mainRecentBoard>* {
	margin: 10px;
}

a {
	text-decoration: none;
}

.profile {
	position: relative;
	border-radius: 10px;
}

.picture {
	height: auto;
	min-height: 100px;
	width:100%;
	margin:auto;
	text-align: center;
}

.picture span{
	font-size:30px;
	line-height: 2;
	
}

.picture div{
	width:100px;
	height:100px;
	float:left;
}
.mainScrollHidden li {
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
	border-radius: 10px;
	height: auto;
}

.newBoardContainer {
	width: 100%;
	display: inline-table;
}

.newBoardPicture {
	display: inline-table;
}

.newBoardPictureImg {
	width: 60px;
	height: 60px;
	margin: 10px;
	display: inline-table;
}

.newBoardTitle {
	vertical-align: middle;
	display: inline-block;
	width: 100%;
}

.newBoardTitle input[type="text"] {
	width: 100%;
	border: none;
	line-height: normal; /* line-height 초기화 */
	padding: .8em .1em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
	border-radius: 0; /* iSO 둥근모서리 제거 */
	-webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
	-moz-appearance: none;
	appearance: none;
}

.newBoardTitle label {
	position: absolute;
	padding: .6em .5em; /* input 요소의 padding 값 만큼 */
	color: #999;
	cursor: text;
}

.mainAllBoard {
	height: 500px;
	overflow: hidden;
}

.newBoardSelect {
	display: inline-block;
	color: #999;
	font-size: inherit;
	line-height: normal;
	background-color: #fdfdfd;
	width: 100%;
}

.newBoardMultiList {
	height: auto;
	width: 100%;
	display: inline-block;
	margin-bottom: 20px;
}

hr {
	margin-top: 0px;
	visibility: hidden;
}

/* 구글 지도 관련 CSS */
.controls {
	margin-top: 10px;
	border: 1px solid transparent;
	border-radius: 2px 0 0 2px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	height: 32px;
	outline: none;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
}

.pac-input {
	background-color: #fff;
	font-family: Roboto;
	font-size: 15px;
	font-weight: 300;
	margin-left: 12px;
	padding: 0 11px 0 13px;
	text-overflow: ellipsis;
	width: 300px;
}

.pac-input:focus {
	border-color: #4d90fe;
}

.pac-container {
	font-family: Roboto;
	background-color: #FFF;
	z-index: 20;
	position: fixed;
	display: inline-block;
	float: left;
}

#type-selector {
	color: #fff;
	background-color: #4d90fe;
	padding: 5px 11px 0px 11px;
}

#type-selector label {
	font-family: Roboto;
	font-size: 13px;
	font-weight: 300;
}

#target {
	width: 345px;
}

/* 다음지도 CSS */
.menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	margin: 10px 30px 0 10px;
	padding: 5px;
	width: 200px;
	height: 30px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.5);
	z-index: 2;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

.menu_wrap .option {
	text-align: center;
}

.menu_wrap .option p {
	margin: 10px 0;
}

.menu_wrap .option button {
	margin-left: 5px;
}

/* 모달 CSS */
.modal-content {
	background: #00AAC1;
}

.modal-body {
	background: white;
}

.modal-footer {
	padding-bottom: 0;
}

.userName {
	color: white;
}

.select {
	width: 100px;
	height: 25px;
}

.text-resize {
	resize: none;
}

.modal {
	z-index: 20;
}

.modal-backdrop {
	z-index: 10;
}

.likeCount, .heart {
	float: left;
	top: -15px;
	z-index:9;
	margin-right: 10px;
}

.MultiFile-title {
	display: none;
}

.MultiFile-preview {
	float: left;
}

.MultiFile-remove {
	float: left;
}

.modal-header {
	height: 100px;
}

.newBoardPicture {
	float: left;
	margin-top: -10px;
}

.form-group {
	margin-top: 20px;
}

.newBoardMap {
	float: left;
}

.writerProfileImage {
	width: 60px;
	height: 60px;
	border-radius: 100%;
}

.boardPicture {
	width: 100%;
	height: 100px;
	max-width: 100px;
	position: relative;
	
}

.replysCount {
	text-align: right;
}

.pictureDiv{
	width:310px;
	height:300px;
	margin:5px;
}
.boardFooter{
	margin-top:10px;
}
.replyArea{
	display: none;
}
.replyText{
	width:85%
}
.main-submit{
	text-align:right;
}
.main-schedule{
	color:black;
}
</style>

<link rel="stylesheet"
	href='<c:url value="/resources/css/main/example.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/resources/css/main/stroll.css"/>'>

</head>
<body>
	<div class='mainAllBoard'>
		<div class='mainScrollHidden'>
			<ul class="grow">
			<li>
								<div class='mainRecentBoard'>
									<div class='profile'>
										<img class='writerProfileImage'
											src='<c:url value="/tripbook/user/${item.user.id }/${item.user.fileName}"/>'>
										<b>${item.writer }</b> ${item.writeDate }
									</div>
									<div class="boardContent">${item.content }</div>
										<c:if test="${item.boardPictures.size() != 0}">
											<div class='picture'>
												<input class='detailViewPictures'type='hidden' value="${item.boardNo}">
												<c:forEach items="${item.boardPictures }" var="boardPicture" varStatus="pictureNum">
													<c:choose>
														<c:when test="${pictureNum.count < 5}">
															<span class='pictureDiv'>
																<a href="#" data-toggle="modal" data-target="#detailPicture">
																	<img class='boardPicture'
																	src='<c:url value="/tripbook/board/${item.boardNo }/${boardPicture.fileName }"/>' />
																</a>
															</span>
														</c:when>
														<c:when test="${pictureNum.count eq 5}">
															<span>
															<a href="#" data-toggle="modal" data-target="#detailPicture">
																	<img class='boardPicture'
																	src='<c:url value="/tripbook/board/${item.boardNo }/${boardPicture.fileName }"/>' style="position:absolute;opacity:0.4;"/>
															</a>
															<span style='padding-left:20px;'>+${item.boardPictures.size() - 5}장</span>
															</span>
														</c:when>
														<c:otherwise>
																
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</div>
										</c:if>
									<hr>
									<div class="boardFooter">
										<div class="heart" id="like" rel="like"></div>
										<div class="likeCount" id="likeCount">${item.likeCount }</div>
										<div class='replysCount'>댓글 ${item.replys.size() }개</div>
										<div class="replyArea">
											<input type="hidden" name='id' value="${item.boardNo }">
											<input type='text' class='replyText' name='reply' placeholder="댓글을 입력하세요" size="30px">
											<input type='button' value='입력' class="replyButton">
											
											<c:forEach items="${item.replys}" var="boardReply" varStatus="replyState">
												<div>작성자 사진 / <img src='<c:url value="/tripbook/user/${boardReply.user.id}/${boardReply.user.fileName}"/>'></div>
												<div>작성자 이름 / ${boardReply.user.name }</div>
												<div>리플 내용 / ${boardReply.content }</div>
												<div>작성시간 / ${boardReply.writerDate }</div>
												<hr>
											</c:forEach>
										</div>
									</div>
								</div>
							</li>
				<c:choose>
					<c:when test="${boardList==null||boardList.size()==0 }">
						입력된 내용이 없습니다.
					</c:when>
					<c:otherwise>
						<c:forEach items="${boardList}" var="item" varStatus="boardNum">
							<li>
								<div class='mainRecentBoard'>
									<div class='profile'>
										<img class='writerProfileImage'
											src='<c:url value="/tripbook/user/${item.user.id }/${item.user.fileName}"/>'>
										<b>${item.writer }</b> ${item.writeDate }
									</div>
									<div class="boardContent">${item.content }</div>
										<c:if test="${item.boardPictures.size() != 0}">
											<div class='picture'>
												<input class='detailViewPictures'type='hidden' value="${item.boardNo}">
												<c:forEach items="${item.boardPictures }" var="boardPicture" varStatus="pictureNum">
													<c:choose>
														<c:when test="${pictureNum.count < 5}">
															<span class='pictureDiv'>
																<a href="#" data-toggle="modal" data-target="#detailPicture">
																	<img class='boardPicture'
																	src='<c:url value="/tripbook/board/${item.boardNo }/${boardPicture.fileName }"/>' />
																</a>
															</span>
														</c:when>
														<c:when test="${pictureNum.count eq 5}">
															<span>
															<a href="#" data-toggle="modal" data-target="#detailPicture">
																	<img class='boardPicture'
																	src='<c:url value="/tripbook/board/${item.boardNo }/${boardPicture.fileName }"/>' style="position:absolute;opacity:0.4;"/>
															</a>
															<span style='padding-left:20px;'>+${item.boardPictures.size() - 5}장</span>
															</span>
														</c:when>
														<c:otherwise>
																
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</div>
										</c:if>
									<hr>
									<div class="boardFooter">
										<div class="heart" id="like" rel="like"></div>
										<div class="likeCount" id="likeCount">${item.likeCount }</div>
										<div class='replysCount'>댓글 ${item.replys.size() }개</div>
										<div class="replyArea">
											<input type="hidden" name='id' value="${item.boardNo }">
											<input type='text' class='replyText' name='reply' placeholder="댓글을 입력하세요" size="30px">
											<input type='button' value='입력' class="replyButton">
											
											<c:forEach items="${item.replys}" var="boardReply" varStatus="replyState">
												<div>작성자 사진 / <img src='<c:url value="/tripbook/user/${boardReply.user.id}/${boardReply.user.fileName}"/>'></div>
												<div>작성자 이름 / ${boardReply.user.name }</div>
												<div>리플 내용 / ${boardReply.content }</div>
												<div>작성시간 / ${boardReply.writerDate }</div>
												<hr>
											</c:forEach>
										</div>
									</div>
								</div>
							</li>
						</c:forEach>
					</c:otherwise>
				</c:choose>
	

	

	<script src='<c:url value="/resources/js/calendar/lib/jquery.min.js"/>'></script>

	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	<script>
		/* 스크롤 효과 */
		stroll.bind('.mainAllBoard ul');
		
		/* 리플 슬라이드 효과 */
		
		$(".replysCount").click(function() {
			$('.replyArea').slideUp(500);
			$(this).next().slideToggle(500);
		});
	</script>
</body>
</html>