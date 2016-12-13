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
	border: 1px solid;
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
	width: 80%;
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
} *//* 
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
	border: 1px solid pink;
}

.newBoardMultiList {
	border: 2px solid #c9c9c9;
	min-width: 80px;
	min-height: 50px;
	display: inline-block;
}

hr {
	margin-top: 0px;
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

#pac-input {
  background-color: #fff;
  font-family: Roboto;
  font-size: 15px;
  font-weight: 300;
  margin-left: 12px;
  padding: 0 11px 0 13px;
  text-overflow: ellipsis;
  width: 300px;
}

#pac-input:focus {
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

.modal{
    z-index: 20;   
}
.modal-backdrop{
    z-index: 10;        
}

#general_menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;height:25px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 2;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#general_menu_wrap .option{text-align: center;}
#general_menu_wrap .option p {margin:10px 0;}  
#general_menu_wrap .option button {margin-left:5px;}​

#travelEdit_menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;height:25px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 2;font-size:12px;border-radius: 10px;}
#travelEdit_menu_wrap .option{text-align: center;}
#travelEdit_menu_wrap .option p {margin:10px 0;}  
#travelEdit_menu_wrap .option button {margin-left:5px;}

#travelAdd_menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;height:25px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 2;font-size:12px;border-radius: 10px;}
#travelAdd_menu_wrap .option{text-align: center;}
#travelAdd_menu_wrap .option p {margin:10px 0;}  
#travelAdd_menu_wrap .option button {margin-left:5px;}

</style>


<link rel="stylesheet"
	href='<c:url value="/resources/css/main/example.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/resources/css/main/stroll.css"/>'>

<link href='<c:url value="/resources/js/calendar/lib/cupertino/jquery-ui.min.css"/>' rel='stylesheet' />



</head>
<body>
	<div id='mainNewBoard'>
		게시글 작성 영역
		<hr>
		<input class="btn btn-primary btn-sm" type='button' value='일반게시물' data-toggle="modal" data-target="#addGeneralBoard" data-keyboard="false">
		<input class="btn btn-primary btn-sm" type='button' value='여행게시물' data-toggle="modal" data-target="#addTravelBoard" data-keyboard="false">
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
							<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
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
							<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
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
							<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
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
							<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
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
							<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
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
							<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
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
							<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
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
							<input type='button' value='좋아요'></span><a href='#'>댓글달기</a>
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
				<form name="generalForm" action="#" method="post" enctype="multipart/form-data" onkeydown="return captureReturnKey(event)" onsubmit="return validateForm()">
					<div class="modal-header">
						일반게시물
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="newBoardContainer">
							<div class="newBoardPicture">
								<img class="newBoardPictureImg"
									src='<c:url value="/images/img.jpg"/>'>
							</div>
							<div class="newBoardTitle">
								<textarea name="title" class="form-control" rows="4" id="mainExclusive_input"></textarea>
							</div>
							<hr>
							<div class="newBoardSelect">
								<div class="input-group-btn">
									<button class="btn btn-default btn-sm newBoardUploadImg" type="button" id="newGeneralBoardUploadImg">
										<i><img src='<c:url value="/images/icon/icon_upload.png"/>' width="64px" height="64px"></i>
									</button>
									<button class="btn btn-default btn-sm newBoardMap" type="button" id="newGeneralBoardMap">
										<i><img src='<c:url value="/images/icon/icon_map.png"/>' width="64px" height="64px"></i>
									</button>
								</div>
								<input type="file" class="newBoardMulti with-preview" id="newGeneralBoardMulti" name="file" style="display:none" multiple/>
								
								<div class="btn-group groupMap" role="group" style="display:none">
									<button type="button" class="btn btn-default btn-sm" id="insideGeneralDaumMap">국내</button>
									<button type="button" class="btn btn-default btn-sm" id="insideGeneralGoogleMap">해외</button>
								</div>
								<div class="newBoardMultiList" id="newGeneralBoardMultiList" name="newBoardMultiList"></div>
								
							</div>
							<div id="newGeneralBoardGMap" class="newBoardGMap" style="width:95%; display:none">
								<!-- map부분 -->
								<input id="pac-input" class="controls" type="text" placeholder="Search Box">
    							<div id="map" style="width:95%; height:300px;"></div>
							</div>
							
							<div id="newGeneralBoardDMap" class="newBoardDMap" style="width:95%; display:none">
								<div id="general_menu_wrap" class="bg_white">
								<div class="option">
									<input type="text" id="generalKeyword" size="15"> 
									<button id="generalDaumSearch" type="button">검색하기</button> 
								
								</div>
							</div>

							<div id="generalDaumMap" style="width:95%; height:300px"></div>
							</div>
							<br>
							<input type="hidden" id="resultKeyword" name="resultKeyword">
							<input type="hidden" id="resultAddress" name="resultAddress">
							<input type="hidden" id="resultLatitude" name="resultLatitude">
							<input type="hidden" id="resultLongitude" name="resultLongitude">
 						</div>
					</div>
					<div class="modal-footer">
						<select>
							<option value="전체보기">전체보기</option>
							<option value="친구보기">친구보기</option>
							<option value="그룹보기">그룹보기</option>
							<option value="비공개">비공개</option>
						</select>
						<button type="submit" class="btn btn-default btn-sm">등록</button>
						<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!-- 여행게시물 modal -->
	<div class="modal fade" id="addTravelBoard" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<form name="generalForm" action="#" method="post" enctype="multipart/form-data" onkeydown="return captureReturnKey(event)">
					<div class="modal-header">
						여행게시물
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="newTravelBoardContainer">
							<ul class="nav nav-tabs nav-justified" role="tablist" style="height:50px">
                        		<li role="presentation" class="active" style="padding:0;"><a href="#editSchedule" aria-controls="editSchedule" role="tab" data-toggle="tab">Edit</a>
								</li>
                        		<li role="presentation" style="padding:0"><a href="#addSchedule" aria-controls="addSchedule" role="tab" data-toggle="tab">Add</a>
								</li>
                    		</ul>
                    		<div class="tab-content">
								<!-- EDIT -->
								<div class="tab-pane active" id="editSchedule">
                    				<input type="text" class="form-control" id="editSubject" name="subject" placeholder="제목">
                    				<div class="col-md-12">
										<div class="form-group row">
											<label for="editFromDate" class="col-md-1 control-label">From</label>
											<div class="col-md-5">
												<input type="text" class="form-control" id="editFromDate" name="start_date">
											</div>
											<label for="editToDate" class="col-md-1 control-label">to</label>
											<div class="col-md-5">
												<input type="text" class="form-control" id="editToDate" name="end_date">
											</div>
										</div>
									</div>
									<hr>
                    				<div class="newBoardPicture">
										<img class="newBoardPictureImg" src='<c:url value="/images/img.jpg"/>'>
									</div>
									<div class="newBoardTitle">
										<textarea name="title" class="form-control" rows="4" id="editComment"></textarea>
									</div>
									<div class="newBoardSelect">
										<div class="input-group-btn">
											<button class="btn btn-default btn-sm newBoardUploadImg" type="button">
												<i><img src='<c:url value="/images/icon/icon_upload.png"/>' width="64px" height="64px"></i>
											</button>
											<button class="btn btn-default btn-sm newBoardMap" type="button">
												<i><img src='<c:url value="/images/icon/icon_map.png"/>' width="64px" height="64px"></i>
											</button>
										</div>
										<input type="file" class="newBoardMulti with-preview" id="newEditTravelBoardMulti" name="file" style="display:none" multiple/>
										<div class="btn-group groupMap" role="group" style="display:none">
											<button type="button" class="btn btn-default btn-sm" id="insideTravelEditDaumMap">국내</button>
											<button type="button" class="btn btn-default btn-sm" >해외</button>
										</div>
									 	<div class="newBoardMultiList" id="newEditTravelBoardMultiList" name="newBoardMultiList"></div>
									 </div>
									<div id="newTravelEditBoardDMap" class="newBoardDMap" style="width:95%; display:none">
									<div id="travelEdit_menu_wrap" class="bg_white">
									<div class="option">
										<input type="text" id="travelEditKeyword" size="15"> 
										<button id="travelEditDaumSearch" type="button">검색하기</button> 
									</div>
									</div>
	
									<div id="travelEditDaumMap" style="width:95%; height:300px"></div>
									</div>
							</div>
								
								<!-- ADD -->
								<div class="tab-pane" id="addSchedule">
									<input type="text" class="form-control" id="addSubject" name="subject" placeholder="제목">
                    				<div class="col-md-12">
										<div class="form-group row">
											<label for="addFromDate" class="col-md-1 control-label">From</label>
											<div class="col-md-5">
												<input type="text" class="form-control" id="addFromDate" name="start_date">
											</div>
											<label for="addToDate" class="col-md-1 control-label">to</label>
											<div class="col-md-5">
												<input type="text" class="form-control" id="addToDate" name="end_date">
											</div>
										</div>
									</div>
									<hr>
                    				<div class="newBoardPicture">
										<img class="newBoardPictureImg" src='<c:url value="/images/img.jpg"/>'>
									</div>
									<div class="newBoardTitle">
										<textarea name="title" class="form-control" rows="4" id="addComment"></textarea>
									</div>
									
									<div class="newBoardSelect">
										<div class="input-group-btn">
											<button class="btn btn-default btn-sm newBoardUploadImg" type="button">
												<i><img src='<c:url value="/images/icon/icon_upload.png"/>' width="64px" height="64px"></i>
											</button>
											<button class="btn btn-default btn-sm newBoardMap" type="button">
												<i><img src='<c:url value="/images/icon/icon_map.png"/>' width="64px" height="64px"></i>
											</button>
										</div>
										<input type="file" class="newBoardMulti with-preview" id="newAddTravelBoardMulti" name="file" style="display:none" multiple/>
										<div class="btn-group groupMap" role="group" style="display:none">
											<button type="button" class="btn btn-default btn-sm" id="insideTravelAddDaumMap">국내</button>
											<button type="button" class="btn btn-default btn-sm">해외</button>
										</div>
										<div class="newBoardMultiList" id="newAddTravelBoardMultiList" name="newBoardMultiList"></div>
									</div>
							 		<div id="newTravelAddBoardDMap" class="newBoardDMap" style="width:95%; display:none">
									<div id="travelAdd_menu_wrap" class="bg_white">
									<div class="option">
										<input type="text" id="travelAddKeyword" size="15"> 
										<button id="travelAddDaumSearch" type="button">검색하기</button> 
									</div>
									</div>
	
									<div id="travelAddDaumMap" style="width:95%; height:300px"></div>
									</div>
								</div>
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
						<button type="submit" class="btn btn-default btn-sm">등록</button>
						<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">취소</button>
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
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
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
					<button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>



	<script src='<c:url value="/resources/js/calendar/lib/jquery.min.js"/>'></script>
 	<script src="<c:url value="/resources/js/main/jQuery.MultiFile.min.js"/>"></script>

	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>

	<!-- 달력 -->
	<script src='<c:url value="/resources/js/calendar/lib/jquery-ui.min.js"/>'></script>
	
	
	<script>
	//enter키 금지
	function captureReturnKey(e) { 
	    if(e.keyCode==13 && e.srcElement.type != 'textarea') 
	    return false; 
	} 
	
	
	//구글 map API
	function initAutocomplete() {
		  
		  var map = new google.maps.Map(document.getElementById('map'), {
		    center: {lat: -33.8688, lng: 151.2195},
		    zoom: 13,
		    mapTypeId: google.maps.MapTypeId.ROADMAP
		  });

		  var infowindow = new google.maps.InfoWindow(); // 정보 상세창 올리기
		  // Create the search box and link it to the UI element.
		  var input = document.getElementById('pac-input');
		  var searchBox = new google.maps.places.SearchBox(input);
		  map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
		  
		  // Bias the SearchBox results towards current map's viewport.
		  map.addListener('bounds_changed', function() {
		    searchBox.setBounds(map.getBounds());
		  });

		  var markers = [];
		  // [START region_getplaces]
		  // Listen for the event fired when the user selects a prediction and retrieve
		  // more details for that place.
		  searchBox.addListener('places_changed', function() {
		    var places = searchBox.getPlaces();
			if (places.length == 0) {
		      return;
		    }
			// Clear out the old markers.
		    markers.forEach(function(marker) {
		      marker.setMap(null);
		    });
		    markers = [];

		    // For each place, get the icon, name and location.
		    var bounds = new google.maps.LatLngBounds();
		    places.forEach(function(place) {
		      
		      //키워드, 주소, 위도, 경도 텍스트로
		      document.getElementById('resultKeyword').value=input.value;
		      document.getElementById("resultAddress").value = place.formatted_address;
			  document.getElementById("resultLatitude").value = place.geometry.location.lat();
			  document.getElementById("resultLongitude").value = place.geometry.location.lng();
		      
		      // Create a marker for each place.
		      markers.push(new google.maps.Marker({
		        map: map,
		        title: place.name,
		        position: place.geometry.location
		      }));
		      
		      google.maps.event.addListener(markers,'click',function(){
		    	 infowindow.setContent(place.name);
		    	 infowindow.open(map, this);
		      });
		      
		      if (place.geometry.viewport) {
		        // Only geocodes have viewport.
		        bounds.union(place.geometry.viewport);
		      } else {
		        bounds.extend(place.geometry.location);
		      }
		    });
		    map.fitBounds(bounds);
		  });
		  // [END region_getplaces]
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
			
			$('#insideGeneralDaumMap').click(function(){
				createDaumMap(1);
			});
			$('#insideTravelEditDaumMap').click(function(){
				createDaumMap(2);
			});
			$('#insideTravelAddDaumMap').click(function(){
				createDaumMap(3);
			})
			
			$('#generalDaumSearch').click(function(){
				searchPlaces(1);
				return false;
			});
			$('#travelEditDaumSearch').click(function(){
				searchPlaces(2);
				return false;
			});
			$('#travelAddDaumSearch').click(function(){
				searchPlaces(3);
				return false;
			})
			
			$('#insideGeneralGoogleMap').click(function(){
				displayMap();
			})
			
			$('#calendarModal').on('shown.bs.modal', function () {
			   $(".calendar").fullCalendar('render');
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
		
		function displayMap(){
			document.getElementById('newGeneralBoardDMap').style.display="none";
		    document.getElementById('newGeneralBoardGMap').style.display="block";
			google.maps.event.trigger(map, "resize");
		}
		
		
		
	</script>
	<!-- google API Key -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBv7i1sbKKdVRfbilHi8obuYThFnE3P9ZA&libraries=places&callback=initAutocomplete"
         async defer></script>
    <!-- daum API Key -->
    <script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=3bae0d1bca94080850d3d2451479c7ee&libraries=services"></script>
	
	<script>
	
	var daumMarkers = [];

	// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
	var daumInfowindow = new daum.maps.InfoWindow({zIndex:1});


	
	var daumMarker;

	// 장소 검색 객체를 생성합니다
	var daumPs = new daum.maps.services.Places(); 
	
	function createDaumMap(state){
		if(state==1){
			mapContainer = document.getElementById('generalDaumMap'); // 지도를 표시할 div 
		}else if(state==2){
			mapContainer = document.getElementById('travelEditDaumMap');
		}else{
			mapContainer = document.getElementById('travelAddDaumMap');
		}
		
		mapOption = {
		        center: new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		};    
		
		// 지도를 생성합니다    
		var daumMap = new daum.maps.Map(mapContainer, mapOption);
	    document.getElementById('newGeneralBoardGMap').style.display="none";
	    document.getElementById('newGeneralBoardDMap').style.display="block";
	    
	    //document.getElementById('newTravelEditBoardGMap').style.display="none";
	    document.getElementById('newTravelEditBoardDMap').style.display="block";
	    
	    document.getElementById('newTravelAddBoardDMap').style.display='block';
	    
	    daumMap.relayout();
	
	}
	
	//키워드 검색을 요청하는 함수입니다
	function searchPlaces(state) {
		if(state==1){
			var keyword = $('#generalKeyword').val();
		}else if(state==2){
			var keyword = $('#travelEditKeyword').val();
		}else{
			var keyword = $('#travelAddKeyword').val();
		}
	    
		if (!keyword.replace(/^\s+|\s+$/g, '')) {
	        alert('키워드를 입력해주세요!');
	        return false;
	    }
	    document.getElementById('resultKeyword').value=keyword;
		
	    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
	    daumPs.keywordSearch( keyword, placesSearchCB); 
	}

	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
	function placesSearchCB (status, data, pagination) {
	    if (status === daum.maps.services.Status.OK) {

	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	        // LatLngBounds 객체에 좌표를 추가합니다
	        var daumBounds = new daum.maps.LatLngBounds();
			
	        daumMap = new daum.maps.Map(mapContainer, mapOption);
	 		displayMarker(data.places[0]);
	 		daumBounds.extend(new daum.maps.LatLng(data.places[0].latitude, data.places[0].longitude));
	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	        daumMap.setBounds(daumBounds);
	    } 
	}

	// 지도에 마커를 표시하는 함수입니다
	function displayMarker(place) {
		
		removeMarker();
		// 마커를 생성하고 지도에 표시합니다
	    daumMarker = new daum.maps.Marker({
	        map: daumMap,
	        position: new daum.maps.LatLng(place.latitude, place.longitude) 
	    });
		
		// 경도, 위도, 주소 폼에 입력
		document.getElementById("resultAddress").value = place.address;
		document.getElementById("resultLatitude").value = place.latitude;
		document.getElementById("resultLongitude").value = place.longitude;
			
		daumMarker.setMap(daumMap);
		daumMarkers.push(daumMarker);

	    // 마커에 클릭이벤트를 등록합니다
	    daum.maps.event.addListener(daumMarker, 'click', function() {
	        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
	        daumInfowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.title + '</div>');
	        daumInfowindow.open(daumMap, daumMarker);
	    });
		    
	}

	function removeMarker() {
	    for ( var i = 0; i < daumMarkers.length; i++ ) {
	        daumMarkers[i].setMap(null);
	    }   
	    daumMarkers = [];
	}

	
	function validateForm() {
		var textArea = document.forms["generalForm"]["title"].value;
	    var keyword = document.forms["generalForm"]["resultKeyword"].value;
	    var address = document.forms["generalForm"]["resultAddress"].value;
	    var latitude = document.forms["generalForm"]["resultLatitude"].value;
	    var longitude = document.forms["generalForm"]["resultLongitude"].value;
	    
	    alert(textArea + "," + keyword + "," + address + "," + latitude + "," + longitude);
	    
	}
	</script>


</body>
</html>