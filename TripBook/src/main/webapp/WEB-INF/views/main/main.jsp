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
	border: 5px dashed grey;
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
	border: 1px solid blue;
	position: relative;
	float: left;
}

.picture {
	border: 1px solid red;
	height: 100px;
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
} */ /* 
.newBoardMap {
	width: 64px;
	margin-left: 10px;
	display: inline-table;
} */
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
	width:100%;
	display: inline-block;
	margin-bottom: 20px;
}

hr {
	margin-top: 0px;
	visibility: hidden;
}

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

#general_pac-input {
	background-color: #fff;
	font-family: Roboto;
	font-size: 15px;
	font-weight: 300;
	margin-left: 12px;
	padding: 0 11px 0 13px;
	text-overflow: ellipsis;
	width: 300px;
}

#general_pac-input:focus {
	border-color: #4d90fe;
}

#travelEdit_pac-input {
	background-color: #fff;
	font-family: Roboto;
	font-size: 15px;
	font-weight: 300;
	margin-left: 12px;
	padding: 0 11px 0 13px;
	text-overflow: ellipsis;
	width: 300px;
}

#travelEdit_pac-input:focus {
	border-color: #4d90fe;
}

#travelAdd_pac-input {
	background-color: #fff;
	font-family: Roboto;
	font-size: 15px;
	font-weight: 300;
	margin-left: 12px;
	padding: 0 11px 0 13px;
	text-overflow: ellipsis;
	width: 300px;
}

#travelAdd_pac-input:focus {
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

.modal {
	z-index: 20;
}

.modal-backdrop {
	z-index: 10;
}

.likeCount, .heart {
	float: left;
	top: -15px;
	margin-right: 10px;
}

#general_menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 250px;
	height: 25px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 2;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#general_menu_wrap .option {
	text-align: center;
}

#general_menu_wrap .option p {
	margin: 10px 0;
}

#general_menu_wrap .option button {
	margin-left: 5px;
}

​

#travelEdit_menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 250px;
	height: 25px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 2;
	font-size: 12px;
	border-radius: 10px;
}

#travelEdit_menu_wrap .option {
	text-align: center;
}

#travelEdit_menu_wrap .option p {
	margin: 10px 0;
}

#travelEdit_menu_wrap .option button {
	margin-left: 5px;
}

#travelAdd_menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 250px;
	height: 25px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 2;
	font-size: 12px;
	border-radius: 10px;
}

#travelAdd_menu_wrap .option {
	text-align: center;
}

#travelAdd_menu_wrap .option p {
	margin: 10px 0;
}

#travelAdd_menu_wrap .option button {
	margin-left: 5px;
}

#mainExclusive_input {
	resize: none;
}

.MultiFile-title{
	display: none;
}

.MultiFile-preview{
	float:left;
}

.MultiFile-remove{
	float:left;
}

.modal-header{
	height:100px;
}
.newBoardPicture{
	float: left;
	margin-top:-10px;
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

</head>
<body>
	<div id='mainNewBoard'>
		게시글 작성 영역
		<hr>
		<input class="btn btn-primary btn-sm" type='button' value='일반게시물'
			data-toggle="modal" data-target="#addGeneralBoard"
			data-keyboard="false"> <input class="btn btn-primary btn-sm"
			type='button' value='여행게시물' data-toggle="modal"
			data-target="#addTravelBoard" data-keyboard="false">
	</div>
	<hr>
	<div class='mainAllBoard'>
		<div class='mainScrollHidden'>
			<ul class="grow">
				<li>
					<div class='mainRecentBoard'>
						<p>
						<div class='profile'>미니 프로필 사진</div>
						<b>User ID</b> 12월 03일 오전 11:41
						</p>
						<div class='picture'>
							<a href="#" data-toggle="modal" data-target="#detailPicture"><img
								src='<c:url value="/images/img.jpg"/>' style="width: 100px"></a>
						</div>
						<div class='replys'>
							댓글 영역<br>
							<div class='profile'>미니 프로필 사진</div>
							<b>User ID</b> 12월 03일 오전 11:41<br> -> 나도 놀러갈래!
						</div>
						<div>
							<div class="heart " id="like1" rel="like"></div>
							<div class="likeCount" id="likeCount1">14</div>
							<a href='#'>댓글달기</a>
						</div>
					</div>
				</li>
				<li>
					<div class='mainRecentBoard'>
						<p>
						<div class='profile'>미니 프로필 사진</div>
						<b>User ID</b> 12월 03일 오전 11:41
						</p>
						<div class='picture'>
							<a href="#" data-toggle="modal" data-target="#detailPicture"><img
								src='<c:url value="/images/img.jpg"/>' style="width: 100px"></a>
						</div>
						<div class='replys'>
							댓글 영역<br>
							<div class='profile'>미니 프로필 사진</div>
							<b>User ID</b> 12월 03일 오전 11:41<br> -> 나도 놀러갈래!
						</div>
						<div>
							<input type='button' value='좋아요'><a href='#'>댓글달기</a>
						</div>
					</div>
				</li>
				<li>
					<div class='mainRecentBoard'>
						<p>
						<div class='profile'>미니 프로필 사진</div>
						<b>User ID</b> 12월 03일 오전 11:41
						</p>
						<div class='picture'>
							<a href="#" data-toggle="modal" data-target="#detailPicture"><img
								src='<c:url value="/images/img.jpg"/>' style="width: 100px"></a>
						</div>
						<div class='replys'>
							댓글 영역<br>
							<div class='profile'>미니 프로필 사진</div>
							<b>User ID</b> 12월 03일 오전 11:41<br> -> 나도 놀러갈래!
						</div>
						<div>
							<input type='button' value='좋아요'><a href='#'>댓글달기</a>
						</div>
					</div>
				</li>
				<li>
					<div class='mainRecentBoard'>
						<p>
						<div class='profile'>미니 프로필 사진</div>
						<b>User ID</b> 12월 03일 오전 11:41
						</p>
						<div class='picture'>
							<a href="#" data-toggle="modal" data-target="#detailPicture"><img
								src='<c:url value="/images/img.jpg"/>' style="width: 100px"></a>
						</div>
						<div class='replys'>
							댓글 영역<br>
							<div class='profile'>미니 프로필 사진</div>
							<b>User ID</b> 12월 03일 오전 11:41<br> -> 나도 놀러갈래!
						</div>
						<div>
							<input type='button' value='좋아요'><a href='#'>댓글달기</a>
						</div>
					</div>
				</li>
				<li>
					<div class='mainRecentBoard'>
						<p>
						<div class='profile'>미니 프로필 사진</div>
						<b>User ID</b> 12월 03일 오전 11:41
						</p>
						<div class='picture'>
							<a href="#" data-toggle="modal" data-target="#detailPicture"><img
								src='<c:url value="/images/img.jpg"/>' style="width: 100px"></a>
						</div>
						<div class='replys'>
							댓글 영역<br>
							<div class='profile'>미니 프로필 사진</div>
							<b>User ID</b> 12월 03일 오전 11:41<br> -> 나도 놀러갈래!
						</div>
						<div>
							<input type='button' value='좋아요'><a href='#'>댓글달기</a>
						</div>
					</div>
				</li>
				<li>
					<div class='mainRecentBoard'>
						<p>
						<div class='profile'>미니 프로필 사진</div>
						<b>User ID</b> 12월 03일 오전 11:41
						</p>
						<div class='picture'>
							<a href="#" data-toggle="modal" data-target="#detailPicture"><img
								src='<c:url value="/images/img.jpg"/>' style="width: 100px"></a>
						</div>
						<div class='replys'>
							댓글 영역<br>
							<div class='profile'>미니 프로필 사진</div>
							<b>User ID</b> 12월 03일 오전 11:41<br> -> 나도 놀러갈래!
						</div>
						<div>
							<input type='button' value='좋아요'><a href='#'>댓글달기</a>
						</div>
					</div>
				</li>
				<li>
					<div class='mainRecentBoard'>
						<p>
						<div class='profile'>미니 프로필 사진</div>
						<b>User ID</b> 12월 03일 오전 11:41
						</p>
						<div class='picture'>
							<a href="#" data-toggle="modal" data-target="#detailPicture"><img
								src='<c:url value="/images/img.jpg"/>' style="width: 100px"></a>
						</div>
						<div class='replys'>
							댓글 영역<br>
							<div class='profile'>미니 프로필 사진</div>
							<b>User ID</b> 12월 03일 오전 11:41<br> -> 나도 놀러갈래!
						</div>
						<div>
							<input type='button' value='좋아요'><a href='#'>댓글달기</a>
						</div>
					</div>
				</li>
				<li>
					<div class='mainRecentBoard'>
						<p>
						<div class='profile'>미니 프로필 사진</div>
						<b>User ID</b> 12월 03일 오전 11:41
						</p>
						<div class='picture'>
							<a href="#" data-toggle="modal" data-target="#detailPicture"><img
								src='<c:url value="/images/img.jpg"/>' style="width: 100px"></a>
						</div>
						<div class='replys'>
							댓글 영역<br>
							<div class='profile'>미니 프로필 사진</div>
							<b>User ID</b> 12월 03일 오전 11:41<br> -> 나도 놀러갈래!
						</div>
						<div>
							<input type='button' value='좋아요'><a href='#'>댓글달기</a>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>

	<!-- 일반게시물 modal -->
	<div class="modal fade" id="addGeneralBoard" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<form name="generalForm" action="#" method="post"
					enctype="multipart/form-data"
					onkeydown="return captureReturnKey(event)"
					onsubmit="return validateForm(0)">
					<div class="modal-header">
						<div class="newBoardPicture">
								<img class="newBoardPictureImg"
									src='<c:url value="/images/img.jpg"/>'>
							</div><div>${userName}</div>
							
						<select>
							<option value="전체보기">전체보기</option>
							<option value="친구보기">친구보기</option>
							<option value="그룹보기">그룹보기</option>
							<option value="비공개">비공개</option>
						</select>
						
					</div>
					<div class="modal-body">
						<div class="newBoardContainer">
							
							<div class="newBoardTitle">
								<textarea name="title" class="form-control" rows="4"
									id="mainExclusive_input" placeholder="내용을 입력해 주세요"></textarea>
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
							<input type="hidden" name="keyword" id="resultKeyword0"><br>
							<input type="hidden" name="region" id="resultRegion0"><br>
							<input type="hidden" name="address" id="resultAddress0"><br>
							<input type="hidden" name="location_lat" id="resultLatitude0"><br>
							<input type="hidden" name="location_lng" id="resultLongitude0">
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
				<form name="generalForm" action="#" method="post"
					enctype="multipart/form-data"
					onkeydown="return captureReturnKey(event)">
					<div class="modal-header">
						여행게시물
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="newTravelBoardContainer">
							<ul class="nav nav-tabs nav-justified" role="tablist"
								style="height: 50px">
								<li role="presentation" class="active" style="padding: 0;"><a
									href="#editSchedule" aria-controls="editSchedule" role="tab"
									data-toggle="tab">Edit</a></li>
								<li role="presentation" style="padding: 0"><a
									href="#addSchedule" aria-controls="addSchedule" role="tab"
									data-toggle="tab">Add</a></li>
							</ul>
							<div class="tab-content">
								<!-- EDIT -->
								<div class="tab-pane active" id="editSchedule">
									<input type="text" class="form-control" id="editSubject"
										name="subject" placeholder="제목">
									<div class="col-md-12">
										<div class="form-group row">
											<label for="editFromDate" class="col-md-1 control-label">From</label>
											<div class="col-md-5">
												<input type="text" class="form-control" id="editFromDate"
													name="start_date">
											</div>
											<label for="editToDate" class="col-md-1 control-label">to</label>
											<div class="col-md-5">
												<input type="text" class="form-control" id="editToDate"
													name="end_date">
											</div>
										</div>
									</div>
									<hr>
									<div class="newBoardPicture">
										<img class="newBoardPictureImg"
											src='<c:url value="/images/img.jpg"/>'>
									</div>
									<div class="newBoardTitle">
										<textarea name="title" class="form-control" rows="4"
											id="editComment"></textarea>
									</div>
									<div class="newBoardSelect">
										<div class="input-group-btn">
											<button class="btn btn-default btn-sm newBoardUploadImg"
												type="button">
												<i><img
													src='<c:url value="/images/icon/icon_upload.png"/>'
													width="64px" height="64px"></i>
											</button>
											<button class="btn btn-default btn-sm newBoardMap"
												type="button">
												<i><img src='<c:url value="/images/icon/icon_map.png"/>'
													width="64px" height="64px"></i>
											</button>
										</div>
										<input type="file" class="newBoardMulti with-preview"
											id="newEditTravelBoardMulti" name="file"
											style="display: none" multiple />
										<div class="btn-group groupMap" role="group"
											style="display: none">
											<button type="button" class="btn btn-default btn-sm"
												onClick="createMap(1,0)">국내</button>
											<button type="button" class="btn btn-default btn-sm"
												onClick="createMap(1,1)">해외</button>
										</div>
										<div class="newBoardMultiList"
											id="newEditTravelBoardMultiList" name="newBoardMultiList"></div>
									</div>

									<div name="mapChoice" class="mapChoice" style="width: 95%"></div>
									<input type="hidden" name="keyword" id="resultKeyword1"><br>
									<input type="hidden" name="region" id="resultRegion1"><br>
									<input type="hidden" name="address" id="resultAddress1"><br>
									<input type="hidden" name="location_lat" id="resultLatitude1"><br>
									<input type="hidden" name="location_lng" id="resultLongitude1">
								</div>

								<!-- ADD -->
								<div class="tab-pane" id="addSchedule">
									<input type="text" class="form-control" id="addSubject"
										name="subject" placeholder="제목">
									<div class="col-md-12">
										<div class="form-group row">
											<label for="addFromDate" class="col-md-1 control-label">From</label>
											<div class="col-md-5">
												<input type="text" class="form-control" id="addFromDate"
													name="start_date">
											</div>
											<label for="addToDate" class="col-md-1 control-label">to</label>
											<div class="col-md-5">
												<input type="text" class="form-control" id="addToDate"
													name="end_date">
											</div>
										</div>
									</div>
									<hr>
									<div class="newBoardPicture">
										<img class="newBoardPictureImg"
											src='<c:url value="/images/img.jpg"/>'>
									</div>
									<div class="newBoardTitle">
										<textarea name="title" class="form-control" rows="4"
											id="addComment"></textarea>
									</div>

									<div class="newBoardSelect">
										<div class="input-group-btn">
											<button class="btn btn-default btn-sm newBoardUploadImg"
												type="button">
												<i><img
													src='<c:url value="/images/icon/icon_upload.png"/>'
													width="64px" height="64px"></i>
											</button>
											<button class="btn btn-default btn-sm newBoardMap"
												type="button">
												<i><img src='<c:url value="/images/icon/icon_map.png"/>'
													width="64px" height="64px"></i>
											</button>
										</div>
										<input type="file" class="newBoardMulti with-preview"
											id="newAddTravelBoardMulti" name="file" style="display: none"
											multiple />
										<div class="btn-group groupMap" role="group"
											style="display: none">
											<button type="button" class="btn btn-default btn-sm"
												onClick="createMap(2,0)">국내</button>
											<button type="button" class="btn btn-default btn-sm"
												onClick="createMap(2,1)">해외</button>
										</div>
										<div class="newBoardMultiList" id="newAddTravelBoardMultiList"
											name="newBoardMultiList"></div>
									</div>
									<div name="mapChoice" class="mapChoice" style="width: 95%"></div>
									<input type="hidden" name="keyword" id="resultKeyword2"><br>
									<input type="hidden" name="region" id="resultRegion2"><br>
									<input type="hidden" name="address" id="resultAddress2"><br>
									<input type="hidden" name="location_lat" id="resultLatitude2"><br>
									<input type="hidden" name="location_lng" id="resultLongitude2">
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<select>
								<option value="전체보기">전체보기</option>
								<option value="친구보기">친구보기</option>
								<option value="그룹보기">그룹보기</option>
								<option value="비공개">비공개</option>
							</select>
							<button type="button" class="btn btn-default btn-sm"
								onClick="validateForm(count)">등록</button>
							<button type="button" class="btn btn-default btn-sm"
								data-dismiss="modal">취소</button>
						</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 이미지 Modal -->

	<div class="modal fade" id="detailPicture" role="dialog" tabindex='-1'>
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">detail information</h4>
				</div>
				<div class="modal-body">
					<div id="myCarousel" class="carousel slide" data-ride="carousel"
						data-interval="0">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<!-- class="active" 첫번째로 나오는 화면. -->
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
							<li data-target="#myCarousel" data-slide-to="3"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src='<c:url value="/images/img.jpg"/>' class="img-rounded"
									alt="Chania">
							</div>

							<div class="item">
								<img src='<c:url value="/images/img.jpg"/>' alt="Chania">
							</div>

							<div class="item">
								<img src='<c:url value="/images/img.jpg"/>' alt="Flower">
							</div>

							<div class="item">
								<img src='<c:url value="/images/img.jpg"/>' alt="Flower">
							</div>
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
					<button type="button" class="btn btn-primary btn-sm"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>



	<script src='<c:url value="/resources/js/calendar/lib/jquery.min.js"/>'></script>
	<script
		src="<c:url value="/resources/js/main/jQuery.MultiFile.min.js"/>"></script>

	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>

	<!-- 달력 -->
	<script
		src='<c:url value="/resources/js/calendar/lib/jquery-ui.min.js"/>'></script>

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
	       
	        if(D === 'like'){      
		        $("#likeCount"+messageID).html(C+1);
		        $(this).addClass("heartAnimation").attr("rel","unlike");
	        }else{
		        $("#likeCount"+messageID).html(C-1);
		        $(this).removeClass("heartAnimation").attr("rel","like");
		        $(this).css("background-position","left");
	        }
	    });
	});
	
	
	
	//enter키 금지
	function captureReturnKey(e) { 
	    if(e.keyCode==13 && e.srcElement.type != 'textarea') 
	    return false; 
	} 

	
	/* 스크롤 효과 */
	stroll.bind('.mainAllBoard ul');
	
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
			
			//여행게시물 달력 기능
			var dateFormat = "mm/dd/yy",
		      editFrom = $( "#editFromDate" )
		        .datepicker({
		          defaultDate: "+1w",
		          changeMonth: true
		        })
		        .on( "change", function() {
		          editTo.datepicker( "option", "minDate", getDate( this ) );
		        }),
		      editTo = $( "#editToDate" ).datepicker({
		    	defaultDate: "+1w",
		        changeMonth: true
		      })
		      .on( "change", function() {
		    	  editFrom.datepicker( "option", "maxDate", getDate( this ) );
		      }),
		      addFrom = $("#addFromDate" )
		      	.datepicker({
		      		minDate:-20,
			        maxDate:"+1M+10D",
			        defaultDate: "+1w",
		      		changeMonth: true
		      	})
		      	.on( "change" , function() {
		      		addTo.datepicker("option", "minDate", getDate(this));
		      	}),
		      addTo = $("#addToDate").datepicker({
		    	  	maxDate:"+1M+10D",
			        defaultDate: "+1w",
		    		changeMonth: true
		      	})
		      	.on( "change" , function() {
		      		addFrom.datepicker("option", "maxDate", getDate(this));
		    });
		      	
		 
		    function getDate( element ) {
		      	var date;
		     	try {
		        	date = $.datepicker.parseDate( dateFormat, element.value );
		      	} catch( error ) {
		        	date = null;
		      	}
		 		return date;
		    }
			
		}); 
		
		
	</script>
	<!-- google API Key -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBv7i1sbKKdVRfbilHi8obuYThFnE3P9ZA&libraries=places"
		async defer></script>
	<!-- daum API Key -->
	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=3bae0d1bca94080850d3d2451479c7ee&libraries=services"></script>

	<script>
	var map;
	
	function createMap(board, area){
		var mapDiv = document.createElement("div");
		var container, options;
		mapDiv.setAttribute("id","map"+board);
		mapDiv.style.width="100%";
		mapDiv.style.height="300px";
		
		var mapChoice = document.getElementsByName('mapChoice');
		
		
		if(area==0){	//국내
			// 지도 검색창
			var searchDiv = document.createElement("div");
			var buttonText = document.createTextNode("검색하기");
			var searchStr="";
			searchStr += "<input type='text' id='keyword" + board + "' size='15'>";
			searchStr += "<button type='button' id='search" + board + "' onclick=searchPlaces("+ board +")>검색하기";
			searchDiv.id = "menu_wrap"+board;
			searchDiv.innerHTML = searchStr;
			if(mapChoice[board].hasChildNodes){
				//mapChoice[board].removeChild(mapChoice[board].childNodes[0]);
				mapChoice[board].innerHTML="";
			}
			mapChoice[board].appendChild(searchDiv);
			mapChoice[board].appendChild(mapDiv);		
			
			
			container = document.getElementById('map' + board);
			options = {
					center : new daum.maps.LatLng(33.450701, 126.570667),
					level : 3
			}
			//지도 생성
			map = new daum.maps.Map(container, options);
			
			
			
		}else{
			var searchStr = "";
			searchStr += "<input id='pac-input"+ board +"' class='controls' type='text' placeholder='검색하기'>";
			if(mapChoice[board].hasChildNodes){
				//mapChoice[board].removeChild(mapChoice[board].childNodes[0]);
				mapChoice[board].innerHTML="";
			}
			mapChoice[board].innerHTML = searchStr;
			mapChoice[board].appendChild(mapDiv);
			
			container = document.getElementById('map' + board);
			options = {
					center: {lat: -34.397, lng: 150.644},
					zoom : 12
			}
			
			map = new google.maps.Map(container, options);
			
			var input = document.getElementById('pac-input' + board);
			//input을 받아와서 google place의 searchBox에 연결.
			var searchBox = new google.maps.places.SearchBox(input);
			//SearchBox를 맨위 좌측에 위치
			map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
			
			//검색창에서 검색값 변경시 추천맵 지도 변화
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
	
	function kindBoard(){
		
	}
	
	function validateForm(board) {
		if(board==0){
			var resultTextArea = document.forms["generalForm"]["title"].value;
			var resultKeyword = document.forms["generalForm"]["resultKeyword" + board].value;
			var resultRegion = document.forms["generalForm"]["resultRegion" + board].value;
			var resultAddress = document.forms["generalForm"]["resultAddress" + board].value;
			var resultLatitude = document.forms["generalForm"]["resultLatitude" + board].value;
			var resultLongitude = document.forms["generalForm"]["resultLongitude" + board].value;
			
			alert(resultTextArea + "," + resultKeyword +","+ resultRegion + "," + resultAddress + "," + resultLatitude + "," + resultLongitude);
			
		}else{
			//alert(1);
			for(var i=1;i<=2;i++){
				resultTextArea[i] = document.forms["generalForm"]["title[0]"].value;
				resultSubject[i] = document.forms["generalForm"]["subject[0]"].value;
				resultKeyword[i] = document.forms["generalForm"]["resultKeyword" + i].value;
				resultRegion[i] = document.forms["generalForm"]["resultRegion" + i].value;
				resultAddress[i] = document.forms["generalForm"]["resultAddress" + i].value;
				resultLatitude[i] = document.forms["generalForm"]["resultLatitude" + i].value;
				resultLongitude[i] = document.forms["generalForm"]["resultLongitude" + i].value;
				
			}
			alert(resultTextArea[0]);
		}
	}
	
	function regionCheck(latitude, longitude, board){
		if((latitude <= 43 && latitude>=33.06) && (longitude <=131.52 && longitude >= 124.11)){
			document.getElementById('resultRegion' + board).value = 0;
		}else{
			document.getElementById('resultRegion' + board).value = 1;
		}
	}
	
	</script>
</body>
</html>