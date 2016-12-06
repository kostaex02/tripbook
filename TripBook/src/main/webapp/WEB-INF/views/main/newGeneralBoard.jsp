<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- jQuery load -->
<script src='<c:url value="/resources/js/jquery-2.2.4.js"/>'></script>
<!-- Bootstrap load -->
<script src='<c:url value="/resources/js/bootstrap/bootstrap.min.js"/>'></script>
<script src="<c:url value="/resources/js/main/jQuery.MultiFile.min.js"/>"></script>

<script type="text/javascript">

	$(document).ready(function() {
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
			list : "#newGeneralBoardMultiList" //파일목록을 출력할 요소 지정가능
		});
	});
</script>
<title>Insert title here</title>
<style type="text/css">
.newGeneralBoardContainer {
	border: 1px solid red;
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
	float: left;
}

.newGeneralBoardUploadImg {
	width: 64px;
	margin-left: 10px;
	float: left;
}

.multi {
	visibility: visible;
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
.newGeneralBoardUpload label{
	display: inline-block;
  	color: #999;
  	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
  	cursor: pointer;
}
/* .newGeneralBoardUpload input[type="file"]{
	position: relative;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: 0;
	overflow: hidden;
	border: 0;
} */
</style>
</head>
<body>
	<form action="#" method="post" enctype="multipart/form-data">
		<div class="newGeneralBoardContainer">
			<div class="newGeneralBoardPicture">
				<img class="newGeneralBoardPictureImg" src='<c:url value="/images/img.jpg"/>'>
			</div>
			<div class="newGeneralBoardTitle">
				<label for="exclusive_input2">어디를 여행하셨나요?</label> 
				<input name="title" type="text" id="exclusive_input2">
			</div>
			<hr style="width: 95%;">
			<div class="newGeneralBoardUpload">
				<label for="ex_file"><img class="newGeneralBoardUploadImg" src='<c:url value="/images/icon_upload.png"/>'/></label>
					<input type="file" class="newGeneralBoardMulti with-preview" id="ex_file" multiple/>
					 <div id="newGeneralBoardMultiList" style="border:2px solid #c9c9c9;min-height:50px"></div>
	
				<div>
					<img class="newGeneralBoardMap"	src="<c:url value="/images/icon_map.png"/>">
				</div>
				<div class=newGeneralBoardFooter>
					<input type="submit" value="게시">
					<select>
						<option value="전체보기">전체보기</option>
						<option value="친구보기">친구보기</option>
						<option value="그룹보기">그룹보기</option>
						<option value="비공개">비공개</option>
					</select>
				</div>
			</div>
		</div>
	</form>
</body>
</html>