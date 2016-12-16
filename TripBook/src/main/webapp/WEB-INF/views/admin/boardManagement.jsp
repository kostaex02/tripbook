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
	
}

.picture {
	border: 1px solid red;
	height: auto;
	min-height:300px;
	text-align: center;
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

#pac-input0 {
	background-color: #fff;
	font-family: Roboto;
	font-size: 15px;
	font-weight: 300;
	margin-left: 12px;
	padding: 0 11px 0 13px;
	text-overflow: ellipsis;
	width: 300px;
}

#pac-input0:focus {
	border-color: #4d90fe;
}
#pac-input1 {
	background-color: #fff;
	font-family: Roboto;
	font-size: 15px;
	font-weight: 300;
	margin-left: 12px;
	padding: 0 11px 0 13px;
	text-overflow: ellipsis;
	width: 300px;
}

#pac-input1:focus {
	border-color: #4d90fe;
}
#pac-input2 {
	background-color: #fff;
	font-family: Roboto;
	font-size: 15px;
	font-weight: 300;
	margin-left: 12px;
	padding: 0 11px 0 13px;
	text-overflow: ellipsis;
	width: 300px;
}

#pac-input2:focus {
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

#menu_wrap {
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

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

​#mainExclusive_input {
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
.dateControlBox{
	width:200px;
	
}

.dateLabel{
	float:left;
	margin-top:10px;
}
.form-group{
	margin-top:20px;
}
.newBoardMap{
	float:left;
}
.writerProfileImage{
	width:60px;
	height:60px;
}
.boardPicture{
	width:100%;
	height:300px;
	max-width: 300px;
	float: left;
}
.replysCount{
	text-align: right;
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
						<p>
						<div class='profile'><img class='writerProfileImage' src='<c:url value="/images/img.jpg"/>'>
						<b>User ID</b> 12월 03일 오전 11:41
						</div>
						</p>
						<div class='picture'>
							<a href="#" data-toggle="modal" data-target="#detailPicture">
							<img class='boardPicture' src='<c:url value="/images/img.jpg"/>'></a>
							<div>내용은 여기!</div>
						</div>
						<div><input class="btn btn-primary" type="button" value="삭제하기">
							<div class='replysCount'>댓글 100개</div>
						</div>
					</div>
				</li>
				<li>
					<div class='mainRecentBoard'>
						<p>
						<div class='profile'><img class='writerProfileImage' src='<c:url value="/images/img.jpg"/>'>
						<b>User ID</b> 12월 03일 오전 11:41
						</div>
						</p>
						<div class='picture'>
							<a href="#" data-toggle="modal" data-target="#detailPicture">
							<img class='boardPicture' src='<c:url value="/images/img.jpg"/>'></a>
							<div>내용은 여기!</div>
						</div>
						<div><input class="btn btn-primary" type="button" value="삭제하기">
							<div class='replysCount'>댓글 100개</div>
						</div>
					</div>
				</li>
				<li>
					<div class='mainRecentBoard'>
						<p>
						<div class='profile'><img class='writerProfileImage' src='<c:url value="/images/img.jpg"/>'>
						<b>User ID</b> 12월 03일 오전 11:41
						</div>
						</p>
						<div class='picture'>
							<a href="#" data-toggle="modal" data-target="#detailPicture">
							<img class='boardPicture' src='<c:url value="/images/img.jpg"/>'></a>
							<div>내용은 여기!</div>
						</div>
						<div><input class="btn btn-primary" type="button" value="삭제하기">
							<div class='replysCount'>댓글 100개</div>
						</div>
					</div>
				</li>
				<li>
					<div class='mainRecentBoard'>
						<p>
						<div class='profile'><img class='writerProfileImage' src='<c:url value="/images/img.jpg"/>'>
						<b>User ID</b> 12월 03일 오전 11:41
						</div>
						</p>
						<div class='picture'>
							<a href="#" data-toggle="modal" data-target="#detailPicture">
							<img class='boardPicture' src='<c:url value="/images/img.jpg"/>'></a>
							<div>내용은 여기!</div>
						</div>
						<div><input class="btn btn-primary" type="button" value="삭제하기">
							<div class='replysCount'>댓글 100개</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>

	

	

	<script src='<c:url value="/resources/js/calendar/lib/jquery.min.js"/>'></script>

	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	<script>
		/* 스크롤 효과 */
		stroll.bind('.mainAllBoard ul');
	</script>
</body>
</html>