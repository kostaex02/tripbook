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

.newGeneralBoardContainer {
	border: 1px solid;
	width: 550px;
	height: 350px;
	display: inline-block;
}

.newGeneralBoardPicture {
	display: inline-block;
}

.newGeneralBoardPictureImg {
	width: 50px;
	height: 50px;
	margin: 15px;
	margin-bottom: 0px;
	display: inline-block;
}

.newGeneralBoardTitle {
	vertical-align: middle;
	display: inline-block;
	width: 80%;
}

.newGeneralBoardTitle input[type="text"] {
	width: 100%;
	border: none;
	line-height: normal; /* line-height 초기화 */
	padding: .8em .1em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
	border-radius: 0; /* iSO 둥근모서리 제거 */
	-webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
	-moz-appearance: none;
	appearance: none;
}

.newGeneralBoardTitle label {
	position: absolute;
	padding: .6em .5em; /* input 요소의 padding 값 만큼 */
	color: #999;
	cursor: text;
}

.newGeneralBoardUpload {
	border: 1px solid;
	width: 100%;
}

.newGeneralBoardUploadImg {
	width: 64px;
	margin-left: 10px;
}

.newGeneralBoardMap {
	width: 64px;
	margin-left: 10px;
}

.newGeneralBoardFooter {
	top: 70px;
}

.newGeneralBoardFooter input[type="submit"] {
	float: right;
	margin-right: 20px;
}

.newGeneralBoardFooter select {
	float: right;
	margin-right: 10px;
}

.newGeneralBoardContainer label {
	display: inline-block;
	color: #999;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
	cursor: pointer;
}

.newGeneralBoardMultiList{
	border: 2px solid #c9c9c9; 
	width: 30px;
	display: inline;
	float: right;
}

</style>

<link rel="stylesheet"
	href='<c:url value="/resources/css/main/example.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/resources/css/main/stroll.css"/>'>



</head>
<body>
	<div id='mainNewBoard'>
		게시글 작성 영역
		<hr>
		<a href="#" data-toggle="modal" data-target="#addGeneralBoard">게시물</a>
		<input type='button' value='일반게시물'
			onclick="location.href='<c:url value="/main/newGeneralBoard"/>'">

		<input type='button' value='여행게시물'>
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
							<a href="#" data-toggle="modal" data-target="#image"><img
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
							<a href="#" data-toggle="modal" data-target="#image"><img
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
							<a href="#" data-toggle="modal" data-target="#image"><img
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
							<a href="#" data-toggle="modal" data-target="#image"><img
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
							<a href="#" data-toggle="modal" data-target="#image"><img
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
							<a href="#" data-toggle="modal" data-target="#image"><img
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
							<a href="#" data-toggle="modal" data-target="#image"><img
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
							<a href="#" data-toggle="modal" data-target="#image"><img
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
				<form action="#" method="post" enctype="multipart/form-data">
					<div class="modal-header">
						일반게시물
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="newGeneralBoardContainer">
							<div class="newGeneralBoardPicture">
								<img class="newGeneralBoardPictureImg"
									src='<c:url value="/images/img.jpg"/>'>
							</div>
							<div class="newGeneralBoardTitle">
								<label for="mainExclusive_input">어디를 여행하셨나요?</label> <input
									name="title" type="text" id="mainExclusive_input">
							</div>
							<hr>
								<label for="ex_file"><img
									class="newGeneralBoardUploadImg"
									src='<c:url value="/images/icon_upload.png"/>' /></label> <input
									type="file" class="newGeneralBoardMulti with-preview"
									id="ex_file" multiple />
								<div class="newGeneralBoardMultiList"></div>

								<div>
									<img class="newGeneralBoardMap"
										src="<c:url value="/images/icon_map.png"/>">
								</div>
								<div class=newGeneralBoardFooter>
									<select>
										<option value="전체보기">전체보기</option>
										<option value="친구보기">친구보기</option>
										<option value="그룹보기">그룹보기</option>
										<option value="비공개">비공개</option>
									</select>
								</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" id="submit">등록</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 이미지 Modal -->
	
	<!-- Modal -->
  <div class="modal fade" id="image" role="dialog" tabindex='-1' >
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">information</h4>
        </div>
        <div class="modal-body">
        	<a href="#detailPicture" data-toggle="modal" data-keyboard="true"><img src='<c:url value="/images/img.jpg"/>' class="img-rounded" alt="Cinque Terre" width="260" height="200"></a>
          	<a href="#detailPicture" data-toggle="modal"><img src='<c:url value="/images/img.jpg"/>' class="img-rounded" alt="Cinque Terre" width="260" height="200"></a>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Ok</button>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Modal -->
  <div class="modal fade" id="detailPicture" role="dialog" tabindex='-1'>
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">detail information</h4>
        </div>
        <div class="modal-body">
        	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">
    		<!-- Indicators -->
    			<ol class="carousel-indicators">
      				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    				<li data-target="#myCarousel" data-slide-to="1"></li>
      				<li data-target="#myCarousel" data-slide-to="2"></li>
      				<li data-target="#myCarousel" data-slide-to="3"></li>
    			</ol>

   			<!-- Wrapper for slides -->
    		<div class="carousel-inner" role="listbox">
      			<div class="item active">
        			<img src='<c:url value="/images/img.jpg"/>' class="img-rounded" alt="Chania">
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
    		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      			<span class="sr-only">Previous</span>
    		</a>
    		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      			<span class="sr-only">Next</span>
    		</a>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Ok</button>
        </div>
      </div>


	<script src='<c:url value="/resources/js/calendar/lib/jquery.min.js"/>'></script>
	<script
		src="<c:url value="/resources/js/main/jQuery.MultiFile.min.js"/>"></script>

	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	<script>
		/* 스크롤 효과 */
		stroll.bind('.mainAllBoard ul');

		/* 이미지 업로드 */
		$(document)
				.ready(
						function() {
							var placeholderTarget = $('.newGeneralBoardTitle input[type="text"]');

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
			$('#ex_file').MultiFile({
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
				list : ".newGeneralBoardMultiList" //파일목록을 출력할 요소 지정가능
			});
		});
	</script>
</body>
</html>