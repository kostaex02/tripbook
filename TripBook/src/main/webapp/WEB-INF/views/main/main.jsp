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

/* .newGeneralBoardUpload {
	border: 1px solid pink;
	width: 100%;
	display: inline-table;
}

.newGeneralBoardUploadImg {
	width: 64px;
	margin-left: 0px;
	border: 1px solid pink;
	display: inline-table;
	cursor: pointer;
	vertical-align: middle;
} */
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
	width:100%;
	display: none;
}
.replyText{
	width:85%
}

.replyArea div {
	float: left;
	margin-left: 10px;
}

.replyDate {
	opacity: 0.65;
}

.replyItem {
	margin-left: 48px;
	margin-bottom:5px;
	clear: both;
}

.replyWriterPicture {
	width: 25px;
	height: 25px;
}



.main-submit{
	text-align:right;
}
.main-schedule{
	color:black;
}
.mainboardMap{
	float:right;
}
.map img {
	max-width: none;
	height: auto;
	border: 0
}

</style>


<link rel="stylesheet"
	href='<c:url value="/resources/css/main/example.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/resources/css/main/stroll.css"/>'>

<link
	href='<c:url value="/resources/js/calendar/lib/cupertino/jquery-ui.min.css"/>'
	rel='stylesheet' />

<!-- 하트 효과 -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/main/heart.css"/>" />
<!-- datetimepicker -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap/bootstrap-datetimepicker.css"/>" />

</head>
<body>
	<div id='mainNewBoard'>

		<input class="btn btn-primary btn-sm" type='button' value='일반게시물'
			data-toggle="modal" data-target="#addGeneralBoard"
			data-keyboard="false"> <input class="btn btn-primary btn-sm"
			type='button' value='여행게시물' data-toggle="modal"
			data-target="#addTravelBoard" data-keyboard="false">
								
	</div>
	<hr>
	<div class='mainAllBoard'>
		<input type="hidden" value="0" id="region">	
		<div class='mainScrollHidden'>
			<ul class="grow">
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
										<c:choose>
											<c:when test="${item.locationLat!=0.0 }">
												<button type="button" class="btn btn-default mainboardMap" data-toggle="modal" data-target="#maindetailMap" data-keyboard="false" onclick="searchMap('${item.boardNo}',${item.location },${item.locationLat },${item.locationLng })">지도
												</button>
											</c:when>
										</c:choose>
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
														</c:when >
															
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
										<div class="heart" id="like${item.boardNo }" rel="like"></div>
										<div class="likeCount" id="likeCount${item.boardNo }">${item.likeCount }</div>
										<div class='replysCount'>댓글 ${item.replys.size() }개</div>
										<div class="replyArea">
											<input type="hidden" name='id' value="${item.boardNo }">
											<input type='text' class='replyText' name='reply' placeholder="댓글을 입력하세요" size="30px">
											<input type='button' value='입력' class="replyButton">
											
											<c:forEach items="${item.replys}" var="boardReply"
												varStatus="replyState">
												<div class='replyItem'>
													<div>
														<img class='replyWriterPicture'
															src='<c:url value="/tripbook/user/${boardReply.user.id}/${boardReply.user.fileName}"/>'>
													</div>
													<div class='replyWriterName'>
														<b>${boardReply.user.name }</b>
													</div>
													<div class='replyContent'>${boardReply.content }</div>
													<div class='replyDate'>${boardReply.writerDate }</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</li>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>

	<!-- 일반게시물 modal -->
	<div class="modal fade" id="addGeneralBoard" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<form id="generalForm" name="generalForm"
					action="/controller/board/insert" method="post"
					enctype="multipart/form-data"
					onkeydown="return captureReturnKey(event)">
					<div class="modal-header">
						<div class="newBoardPicture">
							<img class="newBoardPictureImg"
								src='<c:url value="/images/img.jpg"/>'>
						</div>
						<div class="userName">${userName}</div>

						<select name="state" class="select">
							<option value="0">전체보기</option>
							<option value="1">친구보기</option>
							<option value="2">비공개</option>
							<c:forEach items="${groupList }" var="item">
								<option value="${item.groupNo }">${item.groupName }</option>
							</c:forEach>
						</select>

					</div>
					<div class="modal-body">
						<div class="newBoardContainer">

							<div class="newBoardTitle">
								<textarea name="content" class="form-control text-resize"
									rows="4" id="title0" placeholder="내용"></textarea>
							</div>
							<hr>
							<div class="newBoardSelect">
								<div class="input-group-btn">
									<button class="btn btn-default btn-sm newBoardUploadImg"
										type="button" id="newGeneralBoardUploadImg">
										<i><img
											src='<c:url value="/images/icon/icon_upload.png"/>'
											width="64px" height="64px"></i>
									</button>
									<hr>
								</div>

								<input type="file" class="newBoardMulti with-preview"
									id="newGeneralBoardMulti" name="file" style="display: none"
									multiple />
								<div class="newBoardMultiList" id="newGeneralBoardMultiList"
									name="newBoardMultiList"></div>
								<div>
									<button class="btn btn-default btn-sm newBoardMap"
										type="button" id="newGeneralBoardMap">
										<i><img src='<c:url value="/images/icon/icon_map.png"/>'
											width="64px" height="64px"></i>
									</button>
								</div>
								<div class="btn-group groupMap" role="group"
									style="display: none">
									<button type="button" class="btn btn-default btn-sm"
										onClick="createMap(0,0)">국내</button>
									<button type="button" class="btn btn-default btn-sm"
										onClick="createMap(0,1)">해외</button>
								</div>


							</div>
							<div name="mapChoice" class="mapChoice" style="width: 95%"></div>
							<input type="hidden" name="keyword" id="resultKeyword0"
								value="10"> <input type="hidden" name="location"
								id="resultRegion0" value="10"> <input type="hidden"
								name="address" id="resultAddress0" value="10"> <input
								type="hidden" name="locationLat" id="resultLatitude0" value="10">
							<input type="hidden" name="locationLng" id="resultLongitude0"
								value="10">
						</div>
					</div>
					<div class="modal-footer">

						<button type="submit" class="btn btn-default btn-sm">등록</button>
						<button type="button" class="btn btn-default btn-sm"
							data-dismiss="modal">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>


	<!-- 여행게시물 modal -->
	<div class="modal fade" id="addTravelBoard" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<div class="newBoardPicture">
						<img class="newBoardPictureImg"
							src='<c:url value="/images/img.jpg"/>'>
					</div>
					<div class="userName">${userName}</div>
					<div>
						<select class="select" id="state" name="stateTravel">
							<option value="0">전체보기</option>
							<option value="1">친구보기</option>
							<option value="2">비공개</option>
							<c:forEach items="${groupList }" var="item">
								<option value="${item.groupNo }">${item.groupName }</option>
							</c:forEach>
						</select>
					</div>

				</div>
				<div class="modal-body">
					<div class="newTravelBoardContainer">
						<ul class="nav nav-tabs nav-justified" role="tablist"
							style="height: 50px; width: 200px;">
							<li role="presentation" class="travel active" id="1"
								style="padding: 0;"><a href="#editSchedule"
								aria-controls="editSchedule" role="tab" data-toggle="tab" class="main-schedule">신규
									일정</a></li>
							<li role="presentation" class="travel" id="2" style="padding: 0">
								<a href="#addSchedule" aria-controls="addSchedule" role="tab"
								data-toggle="tab" class="main-schedule">기존 일정</a>
							</li>
						</ul>
						<div class="tab-content">
							<!-- EDIT -->
							<div class="tab-pane active" id="editSchedule">
								<form name="generalForm"
									action="/controller/board/insertEditScheduleBoard"
									method="post" 
									enctype="multipart/form-data"
									onkeydown="return captureReturnKey(event)">

									<hr>
									<div class="form-inline row">
										<div class="col-sm-6">
											<label for="fromDate1">출발일</label> <input type="text"
												class="form-control main-datepicker" id="fromDate1" name="startDate"
												style="width: 100%">
										</div>
										<div class="col-sm-6">
											<label for="toDate1">종료일</label> <input type="text"
												class="form-control main-datepicker" id="toDate1" name="endDate"
												style="width: 100%">
										</div>
									</div>

									<div class="form-inline row">
										<div class="col-sm-8">
											<label for="subject1">제목</label> <input type="text"
												class="form-control" id="subject1" name="subject"
												style="width: 100%">
										</div>
										<div class="col-sm-4">
											<label for="datetimepicker1">스케줄</label> <input type='text'
												class="form-control datetimepicker" id='datetimepicker1'
												name="tripDate" style="width: 100%; background:white" />
										</div>
									</div>
									<hr>

									<div class="newBoardTitle">
										<textarea name="content" class="form-control text-resize"
											rows="4" id="title1" placeholder="내용"></textarea>
									</div>
									<hr>

									<div class="newBoardSelect">
										<div class="input-group-btn">
											<button class="btn btn-default btn-sm newBoardUploadImg"
												type="button">
												<i><img
													src='<c:url value="/images/icon/icon_upload.png"/>'
													width="64px" height="64px"></i>
											</button>
										</div>
										
										<input type="file" class="newBoardMulti with-preview"
											id="newEditTravelBoardMulti" name="file"
											style="display: none" multiple />
										<div class="newBoardMultiList"
											id="newEditTravelBoardMultiList"></div>
										<button class="btn btn-default btn-sm newBoardMap"
											type="button">
											<i><img src='<c:url value="/images/icon/icon_map.png"/>'
												width="64px" height="64px"></i>
										</button>

										<div class="btn-group groupMap" role="group"
											style="display: none">
											<button type="button" class="btn btn-default btn-sm"
												onClick="createMap(1,0)">국내</button>
											<button type="button" class="btn btn-default btn-sm"
												onClick="createMap(1,1)">해외</button>
										</div>

									</div>

									<div name="mapChoice" class="mapChoice" style="width: 95%"></div>
									<input type="hidden" name="state" id="stateEdit" value="0">
									<input type="hidden" name="keyword" id="resultKeyword1" value="10">
									<input type="hidden" name="location" id="resultRegion1" value="10">
									<input type="hidden" name="address" id="resultAddress1" value="10">
									<input type="hidden" name="locationLat" id="resultLatitude1" value="10">
									<input type="hidden" name="locationLng" id="resultLongitude1" value="10">
									<div class="main-submit">
										<button type="submit" class="btn btn-default btn-sm">등록</button>
										<button type="reset" class="btn btn-default btn-sm"
										data-dismiss="modal">취소</button>
									</div>
								</form>
							</div>

							<!-- ADD -->

							<div class="tab-pane" id="addSchedule">
								<form name="generalForm"
									action="/controller/board/insertAddScheduleBoard"
									method="post"
									enctype="multipart/form-data"
									onkeydown="return captureReturnKey(event)">

									<hr>
									<select class="form-control" id="scheduleList">
										
									</select>
									<hr>
									<input type="hidden" name="scheduleNo" id="chooseScheduleNo">
									<div class="form-inline row">
										<div class="col-sm-6">
											<label for="fromDate2">출발일</label> <input type="text"
												class="form-control" id="fromDate2" name="start_date"
												style="width: 100%" disabled>
										</div>
										<div class="col-sm-6">
											<label for="toDate2">종료일</label> <input type="text"
												class="form-control main-datepicker" id="toDate2" name="end_date"
												style="width: 100%" disabled>
										</div>
									</div>

									<div class="form-inline row">
										<div class="col-sm-8">
											<label for="subject2">제목</label> <input type="text"
												class="form-control main-datepicker" id="subject2" name="subject"
												style="width: 100%" disabled>
										</div>
										<div class="col-sm-4">
											<label for="datetimepicker2">스케줄</label> <input type='text'
												class="form-control datetimepicker" id='datetimepicker2'
												name="tripDate" style="width: 100%; background:white" />
										</div>
									</div>
									<hr>

									<div class="newBoardTitle">
										<textarea name="content" class="form-control text-resize"
											rows="4" id="title2" placeholder="내용"></textarea>
									</div>
									<hr>

									<div class="newBoardSelect">
										<div class="input-group-btn">
											<button class="btn btn-default btn-sm newBoardUploadImg"
												type="button">
												<i><img
													src='<c:url value="/images/icon/icon_upload.png"/>'
													width="64px" height="64px"></i>
											</button>
										</div>

										<input type="file" class="newBoardMulti with-preview"
											id="newAddTravelBoardMulti" name="file" style="display: none"
											multiple />
										<div class="newBoardMultiList" id="newAddTravelBoardMultiList"
											name="newBoardMultiList"></div>
										<button class="btn btn-default btn-sm newBoardMap"
											type="button">
											<i><img src='<c:url value="/images/icon/icon_map.png"/>'
												width="64px" height="64px"></i>
										</button>

										<div class="btn-group groupMap" role="group"
											style="display: none">
											<button type="button" class="btn btn-default btn-sm"
												onClick="createMap(2,0)">국내</button>
											<button type="button" class="btn btn-default btn-sm"
												onClick="createMap(2,1)">해외</button>
										</div>

									</div>

									<div name="mapChoice" class="mapChoice" style="width: 95%"></div>
									<input type="hidden" name="state" id="stateTravel" value="0">
									<input type="hidden" name="keyword" id="resultKeyword2" value="10">
									<input type="hidden" name="location" id="resultRegion2" value="10">
									<input type="hidden" name="address" id="resultAddress2" value="10">
									<input type="hidden" name="locationLat" id="resultLatitude2" value="10">
									<input type="hidden" name="locationLng" id="resultLongitude2" value="10">
									<div class="main-submit">
										<button type="submit" class="btn btn-default btn-sm">등록</button>
										<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">취소</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 게시판 사진 modal -->
	<div class="modal fade" id="detailPicture" role="dialog" tabindex='-1'>
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">detail information</h4>
				</div>
				<div class="modal-body">
					<div id="myCarousel" class="carousel slide" data-ride="carousel"
						data-interval="0">
						<!-- Indicators -->
						<ol class="carousel-indicators">
						
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							
						</div>

						<!-- Left and right controls -->
						<a class="left carousel-control" href="#myCarousel" role="button"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							role="button" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 지도 modal -->
	<div class="modal fade" id="maindetailMap" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<div id="mapSearch"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>	
	
	<script src='<c:url value="/resources/js/calendar/lib/jquery.min.js"/>'></script>
	<script src='<c:url value="/resources/js/main/jquery.form.js"/>'></script>
	<script
		src="<c:url value="/resources/js/main/jQuery.MultiFile.min.js"/>"></script>

	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>

	<!-- 달력 -->
	<script
		src='<c:url value="/resources/js/calendar/lib/jquery-ui.min.js"/>'></script>

	<!-- date -->
	<script src='<c:url value="/resources/js/bootstrap/moment.js"/>'></script>
	<script
		src='<c:url value="/resources/js/bootstrap/bootstrap-datetimepicker.min.js"/>'></script>

	<script>
	
	/* 하트 효과 */
	$(document).ready(function(){
		$('body').on("click",'.heart',function(){
	    	var A=$(this).attr("id");
	    	var B=A.split("like");
	        var messageID=B[1];
	        var C=parseInt($("#likeCount"+messageID).html());
	    	$(this).css("background-position","")
	        var D=$(this).attr("rel");
	    	var main = $(this);
	    	$.ajax({
		    	url : "/controller/board/changeLike",
				type : "post",
				data : "boardNo="+messageID,
				dataType : "text",
				success : function(data) {
					if(data==0){
					    $("#likeCount"+messageID).html(C-1);
					}else{
					    $("#likeCount"+messageID).html(C+1);
					}
					if(D === 'like'){//증가
						if(data!=0){
							main.addClass("heartAnimation").attr("rel","unlike");	
						}
			        }else{//감소
				        main.removeClass("heartAnimation").attr("rel","like");
			        }	
				},
				error : function() {
					console.log('좋아요 입력 오류');
				}
		  	})	
	    });
		
		 
	});
	
	
	
	//enter키 금지
	function captureReturnKey(e) { 
	    if(e.keyCode==13 && e.srcElement.type != 'textarea') 
	    return false; 
	} 

	
	
	
		/* 타이틀 포커스 효과 */
		$(document)
				.ready(
						function() {
							var placeholderTarget = $('.newBoardTitle input[type="text"]');
							
							//포커스시
							placeholderTarget.on('focus', function() {
								$(this).siblings('label').fadeOut('fast');
							});

							//포커스아웃시
							placeholderTarget.on('focusout', function() {
								if ($(this).val() == '') {
									$(this).siblings('label').fadeIn('fast');
								}
							});
						});

		
		$(function() {
			// 시간.
			$('.datetimepicker').datetimepicker({
				sideBySide : true,
				ignoreReadonly: true
			}).attr('readonly','readonly');
			/* 멀티파일 설정 */
			$('#newGeneralBoardMulti').MultiFile({
					//max : 3, //업로드 최대 파일 갯수 (지정하지 않으면 무한대)
					accept : 'jpg|png|gif', //허용할 확장자(지정하지 않으면 모든 확장자 허용)
					//maxfile : 1024, //각 파일 최대 업로드 크기
					//maxsize : 3024, //전체 파일 최대 업로드 크기
					STRING : { //Multi-lingual support : 메시지 수정 가능
						remove : "제거", //추가한 파일 제거 문구, 이미태그를 사용하면 이미지사용가능
 						duplicate : "$file 은 이미 선택된 파일입니다.",
						denied : "$ext 는(은) 업로드 할수 없는 파일확장자입니다.",
						selected : '$file 을 선택했습니다.',
					//toomuch : "업로드할 수 있는 최대크기를 초과하였습니다.($size)",
					//toomany : "업로드할 수 있는 최대 갯수는 $max개 입니다.",
					//toobig : "$file 은 크기가 매우 큽니다. (max $size)"
					},
					list : "#newGeneralBoardMultiList" //파일목록을 출력할 요소 지정가능
			});
			
			$('#newEditTravelBoardMulti').MultiFile({
				accept : 'jpg|png|gif', //허용할 확장자(지정하지 않으면 모든 확장자 허용)
				STRING : { //Multi-lingual support : 메시지 수정 가능
					remove : "제거", //추가한 파일 제거 문구, 이미태그를 사용하면 이미지사용가능
					duplicate : "$file 은 이미 선택된 파일입니다.",
					denied : "$ext 는(은) 업로드 할수 없는 파일확장자입니다.",
					selected : '$file 을 선택했습니다.',
				},
				list : "#newEditTravelBoardMultiList" //파일목록을 출력할 요소 지정가능
			});

			$('#newAddTravelBoardMulti').MultiFile({
				accept : 'jpg|png|gif', //허용할 확장자(지정하지 않으면 모든 확장자 허용)
				STRING : { //Multi-lingual support : 메시지 수정 가능
					remove : "제거", //추가한 파일 제거 문구, 이미태그를 사용하면 이미지사용가능
					duplicate : "$file 은 이미 선택된 파일입니다.",
					denied : "$ext 는(은) 업로드 할수 없는 파일확장자입니다.",
					selected : '$file 을 선택했습니다.',
				},
				list : "#newAddTravelBoardMultiList" //파일목록을 출력할 요소 지정가능
			});
			
			$('.newBoardUploadImg').click(function() {
				$('.groupMap').hide();		
				$('.newBoardMulti').show();
			});
			$('.newBoardMap').click(function(){
				$('.newBoardMulti').hide();
				$('.groupMap').show();	
			});
			
			$('.modal').on('hidden.bs.modal', function () {
				 $('form').each(function(){
					    this.reset();
					  });
			})
			
			$('#maindetailMap').on('shown.bs.modal', function () {
				var region = $('#region').val();
				if(region == 0){
					map.relayout();
				}else{
					google.maps.event.trigger(map, "resize");
				}
			});
			
			//여행게시물 달력 기능
			var dateFormat = "mm/dd/yy",
		      editFrom = $( "#fromDate1" ).datepicker({
		    	  defaultDate: "+1w",
		          changeMonth: true,
		          dateFormat: "yy/mm/dd"
		        })
		        .on( "change", function() {
		        	editTo.datepicker( "option", "minDate", getDate( this ) );
		        }),
		      editTo = $( "#toDate1" ).datepicker({
		    	  defaultDate: "+1w",
		          changeMonth: true,
		          dateFormat: "yy/mm/dd"
		      })
		      .on( "change", function() {
		    	  editFrom.datepicker( "option", "maxDate", getDate( this ) );
		    	});
		      	
		 
		    function getDate( element ) {
		      	var date = element.value;
		     	
		      	alert(date);
		      	return date;
		    }
		    
		    $.ajax({
		    	url : "/controller/calendar/init",
				type : "post",
				dataType : "json",
				success : function(data) {
					$('#chooseScheduleNo').val(data[0].scheduleNo);
					$('#fromDate2').val(data[0].startDate);
					$('#toDate2').val(data[0].endDate);
					$('#subject2').val(data[0].subject);
					$('#stateTravel').val(data[0].state);
					$.each(data, function(index, item) {
						$('#scheduleList').append('<option value="'+item.scheduleNo+'">'+item.subject+'</option>');
					});
				},
				error : function() {
					alert('error')
				}
		    })
		    
		    $('#addSchedule').on('change','#scheduleList',function(){
		    	$.ajax({
			    	url : "/controller/calendar/select",
					type : "post",
					data : "scheduleNo="+$('#scheduleList').val(),
					dataType : "json",
					success : function(data) {
						$('#chooseScheduleNo').val($('#scheduleList').val());
						$('#fromDate2').val(data.startDate);
						$('#toDate2').val(data.endDate);
						$('#subject2').val(data.subject);
						$('#stateTravel').val(data.state);
					},
					error : function() {
						alert('error');
					}
			    })
		    })
		  	//state값
			$('#state').on("change",function(){
				var state = $('#state').val();
				$('#stateEdit').val(state);
			});
		    
		    $('.replyButton').click(function(){
				if($(this).siblings('.replyText').val()==""){
		    		alert("댓글 내용을 입력하시오");	
		    	}else{
		    		$(this).siblings('.replyItem').remove();
		    		var count= $(this).parents().siblings('.replysCount');
		    		var area= $(this).parents('.replyArea');
		    		var content = $(this).siblings('.replyText');
		    		$.ajax({
				    	url : "/controller/reply/insert",
						type : "post",
						data : "boardNo="+$(this).siblings('input').val()+"&content="+$(this).siblings('.replyText').val(),
						dataType : "json",
						success : function(data) {
							content.val('');
							count.text('댓글 '+data.length+'개');
							var str = "";
							$.each(data,function(index,item){
								str += "<div class='replyItem'>";
								str += "<div>";
								str += "<img class='replyWriterPicture' src='<c:url value='/tripbook/user/"
								str += item.user.id+"/"+item.user.fileName+"'/>'>";
								str += "</div>";
								str += "<div class='replyWriterName'>";
								str += "<b>"+item.user.name+"</b>";
								str += "</div>";
								str += "<div class='replyContent'>"+item.content+"</div>";
								str += "<div class='replyDate'>"+item.writerDate+"</div>";
								str += "</div>";
							});
							area.append(str);
						},
						error : function() {
							console.log('댓글 입력 오류');
						}
				    })	
		    	}
		    })
		}); 
		
		
	</script>
	<!-- google API Key -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBv7i1sbKKdVRfbilHi8obuYThFnE3P9ZA&libraries=places"
		async defer></script>
	<!-- daum API Key -->
	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=0090a85072e4ede25e4ac7424b7f9d98&libraries=services"></script>

	<script>
	var map;
	
	//위도 경도를 통해 지도 찾는 기능
	function searchMap(id, area, lat, lng){
		document.getElementById('region').value = area;
		
		var mapDiv = document.createElement("div");
		var container, options;
		mapDiv.setAttribute("id", "map"+id);
		mapDiv.setAttribute("class","map");
		mapDiv.style.width="100%";
		mapDiv.style.height="300px";
		
		alert(lat);
		alert(lng);
		var mapSearch = document.getElementById('mapSearch');
		if(mapSearch.hasChildNodes){
			mapSearch.innerHTML="";
		}
		mapSearch.appendChild(mapDiv);
		
		if(area==0){
			container = document.getElementById('map' + id);
			options = {
					center : new daum.maps.LatLng(lat+0.0015, lng-0.0035),
					level : 3
			}
			//지도 생성
			map = new daum.maps.Map(container, options);
			//마커 생성
			var markers = [];
			//마커 초기화
	        for(var i=0; i<markers.length;i++){
				markers[i].setMap(null);
			}
	        
			markers=[];
			var marker = new daum.maps.Marker({
				map : map,
				position : new daum.maps.LatLng(lat , lng)
			});
			//마커 입력
			marker.setMap(map);
			markers.push(marker);
			
        	
		}else if(area==1){
			container = document.getElementById('map' + id);
			options = {
					center: {lat: lat+0.0040, lng: lng-0.0035},
					zoom : 16,
					mapTypeControl: false
			}
			map = new google.maps.Map(container, options);
			
			//마커 생성
			var markers = [];
			
			//마커 초기화
			markers.forEach(function(marker){
				marker.setMap(null);
			});
			markers = [];
			var marker = new google.maps.Marker({
			    position: {lat: lat, lng: lng},
			    map: map
			  });
			//마커 입력
			markers.push(marker);
		}
		
	}
	
	//지도 검색기능
	function createMap(board, area){
		var mapDiv = document.createElement("div");
		var container, options;
		mapDiv.setAttribute("id","map"+board);
		mapDiv.style.width="100%";
		mapDiv.style.height="300px";
		var board = board;
		var mapChoice = document.getElementsByName('mapChoice');
		
		if(area==0){	//국내
			// 지도 검색창
			var searchDiv = document.createElement("div");
			var buttonText = document.createTextNode("검색하기");
			var searchStr="";
			searchStr += "<input type='text' id='keyword" + board + "' size='15'>";
			searchStr += "<button type='button' id='search" + board + "' onclick=searchPlaces("+ board +")>검색하기";
			searchDiv.id = "menu_wrap"+board;
			searchDiv.setAttribute("class","menu_wrap");
			searchDiv.innerHTML = searchStr;
			if(mapChoice[board].hasChildNodes){
				//mapChoice[board].removeChild(mapChoice[board].childNodes[0]);
				mapChoice[board].innerHTML="";
			}
			mapChoice[board].appendChild(searchDiv);
			mapChoice[board].appendChild(mapDiv);		
			
			
			container = document.getElementById('map' + board );
			options = {
					center : new daum.maps.LatLng(33.450701, 126.570667),
					level : 3
			}
			//지도 생성
			map = new daum.maps.Map(container, options);
			
		}else if(area==1){
			var searchStr = "";
			searchStr += "<input id='pac-input"+ board +"' class='controls pac-input' type='text' placeholder='검색하기'>";
			if(mapChoice[board].children.length > 0 ){
				//검색 자동완성 div태그 초기화
				var head = document.getElementsByTagName('head')[0];
				head.firstChild.remove();
				$('.pac-container').remove();
				
				//mapChoice[board].removeChild('map'+board);
				mapChoice[board].firstChild.remove();
			} 
			
			mapChoice[board].innerHTML = searchStr;
			mapChoice[board].appendChild(mapDiv);
			
			container = document.getElementById('map' + board);
			options = {
					center: {lat: -33.86, lng: 151.209},
					zoom : 13,
					mapTypeControl: false
			}
			
			map = new google.maps.Map(container, options);
			
			var input = (document.getElementById('pac-input' + board));
			
			//input을 받아와서 google place의 searchBox에 연결.
			var searchBox = new google.maps.places.SearchBox(input);
			//SearchBox를 맨위 좌측에 위치
			map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
			
			//맵에서 지역과 가까운곳으로...
			map.addListener('bounds_changed', function(){
				searchBox.setBounds(map.getBounds());
			});
			//마커 생성
			var markers = [];
			
			// 서치박스에서 장소입력 후 엔터 이벤트
			searchBox.addListener('places_changed',function(){
				var places = searchBox.getPlaces();
				//장소가 없으면 return
				if(places.length == 0){
					return;
				}
				//마커 초기화
				markers.forEach(function(marker){
					marker.setMap(null);
				});
				markers = [];
				
				var bounds = new google.maps.LatLngBounds();
				places.forEach(function(place){
					//마커 입력
					markers.push(new google.maps.Marker({
						map: map,
						title : place.name,
						position : place.geometry.location
					}));
					
					//지도에 나타냄
					if(place.geometry.viewport){
						bounds.union(place.geometry.viewport);
					}else{//bound된 좌표를 갖고와서 확장.
						bounds.extend(place.geometry.location);
					}
					
					//키워드, 주소, 위도, 경도 텍스트로
					document.getElementById('resultKeyword'+ board).value = input.value;
					document.getElementById("resultAddress" + board).value = place.formatted_address;
					document.getElementById("resultLatitude" + board).value = place.geometry.location.lat();
					document.getElementById("resultLongitude" + board).value = place.geometry.location.lng();
					regionCheck(place.geometry.location.lat(), place.geometry.location.lng(), board);
				});
				//viewport를 설정
				map.fitBounds(bounds);
			});
		}
	}
	function searchPlaces(board){
		
		//검색에서 키워드
		var keyword = document.getElementById('keyword' + board);
		//장소 갖고오기
		var places = new daum.maps.services.Places();
		//마커 생성
		var markers = [];
		
		var callback = function(status, result) {
		    if (status === daum.maps.services.Status.OK) {
		        console.log(result.places[0].title);
		        //마커 초기화
		        for(var i=0; i<markers.length;i++){
					markers[i].setMap(null);
				}
				markers=[];
				var position = new daum.maps.LatLng(result.places[0].latitude , result.places[0].longitude);
	        	var bounds = new daum.maps.LatLngBounds();
	        	var marker = new daum.maps.Marker({
					map : map,
					position : position
				});
				//마커 입력
				marker.setMap(map);
				markers.push(marker);
			
				//bounds의 범위에서 확장
	       		bounds.extend(position);
				
	       		// 경도, 위도, 주소 폼에 입력
	       		document.getElementById('resultKeyword' + board).value = keyword.value;
	    		document.getElementById("resultAddress" + board).value = result.places[0].address;
	    		document.getElementById("resultLatitude" + board).value = result.places[0].latitude;
	    		document.getElementById("resultLongitude" + board).value = result.places[0].longitude;
	    		regionCheck(result.places[0].latitude, result.places[0].longitude, board);
	        	// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	        	map.setBounds(bounds);
		    }
		};

		places.keywordSearch(keyword.value, callback);
	}
	
	function validateForm(board) {
		
		var resultTextArea = document.getElementById('title'+ board ).value;
		var resultKeyword = document.getElementById('resultKeyword'+ board).value;
		var resultRegion = document.getElementById('resultRegion'+ board).value;
		var resultAddress = document.getElementById('resultAddress'+ board).value;
		var resultLatitude = document.getElementById('resultLatitude'+ board).value;
		var resultLongitude = document.getElementById('resultLongitude'+ board).value;
		if(board != 0){
			var resultSubject = document.getElementById('subject'+board ).value;
			var resultFromDate = document.getElementById('fromDate' + board ).value;
			var resultToDate = document.getElementById('toDate' + board ).value;
			var resultDateTime = document.getElementById('datetimepicker' + board).value;
			
			alert("제목 : " + resultSubject + " \n출발일 : " + resultFromDate + " \n도착일 " + resultToDate + " \n계획 " + resultDateTime);
		}
		
		alert("코멘트 : " + resultTextArea + "\n키워드 : " + resultKeyword + "\n국내해외 : "+ resultRegion + "\n주소 : " + resultAddress + "\n위도 : " + resultLatitude + "\n경도 : " + resultLongitude);
		
	}
	
	function kindBoard(){
		var board = $(".travel.active")[0].id;
		
		validateForm(board);
	}
	
	function regionCheck(latitude, longitude, board){
		if((latitude <= 43 && latitude>=33.06) && (longitude <=131.52 && longitude >= 124.11)){
			document.getElementById('resultRegion' + board).value = 0;
		}else{
			document.getElementById('resultRegion' + board).value = 1;
		}
	}
	/* 리플 슬라이드 효과 */
	
	$(".replysCount").mousedown(function() {
		$('.replyArea').slideUp(500);
		$(this).next().slideToggle(500).css("display","inline-block");
	});
	
	/* 게시물 사진 보기 */
	$(".boardPicture").click(function(){
		var pictureBoardNo = $(".detailViewPictures").val();
		$.ajax({
	    	url : "/controller/picture/detail",
			type : "post",
			data : "boardNo="+pictureBoardNo,
			dataType : "json",
			success : function(list) {
				var indexStr="";
				var pictureStr="";
				$.each(list,function(index,item){
					if(index==0){
						indexStr = indexStr + "<li data-target='#myCarousel' data-slide-to='"+index+"'class='active'></li>";
						pictureStr = pictureStr + "<div class='item active'><img src='<c:url value='/tripbook/board/"+pictureBoardNo+"/"+item.fileName+"'/>' alt='"+item.fileName+"'></div>";
					}else{
						indexStr = indexStr + "<li data-target='#myCarousel' data-slide-to='"+index+"'></li>";
						pictureStr = pictureStr + "<div class='item'><img src='<c:url value='/tripbook/board/"+pictureBoardNo+"/"+item.fileName+"'/>' alt='"+item.fileName+"'></div>";
					}
				});
				$(".carousel-indicators").empty();
				$(".carousel-indicators").append(indexStr);
				$(".carousel-inner").empty();
				$(".carousel-inner").append(pictureStr);
			},
			error : function() {
				console.log('게시물 사진 오류')
			}
	    });
		
	});
	
	</script>
</body>
</html>