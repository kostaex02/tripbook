<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap load -->
<script src='<c:url value="/resources/js/jquery-2.2.4.js"/>'></script>
<script src='<c:url value="/resources/js/bootstrap/bootstrap.min.js"/>'></script>
<script type="text/javascript">
	$(document).ready(function() {
		var placeholderTarget = $('#title input[type="text"]');

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
</script>
<title>Insert title here</title>
<style type="text/css">
#boardContainer {
	border: 1px solid red;
	width: 550px;
	height: 350px;
	display: inline-block;
}

.picture {
	width: 50px;
	height: 50px;
	margin: 15px;
	margin-bottom: 0px;
}

#boardPicture {
	display: inline-block;
}

#title {
	vertical-align: middle;
	display: inline-block;
	width: 80%;
}

#title input[type="text"] {
	width: 100%;
	border: none;
	line-height: normal; /* line-height 초기화 */
	padding: .8em .1em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
	border-radius: 0; /* iSO 둥근모서리 제거 */
	-webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
	-moz-appearance: none;
	appearance: none;
}

#title label {
	position: absolute;
	padding: .6em .5em; /* input 요소의 padding 값 만큼 */
	color: #999;
	cursor: text;
}

.upload {
	width: 64px;
	margin-left: 10px; 
}

.map {
	width: 64px;
	margin-left: 10px;
}

#footer {
	top: 90px;
}

#footer input[type="submit"] {
	float: right;
	margin-right: 20px;
}
#footer select{
	float: right;
	margin-right: 10px;
}
</style>
</head>
<body>

	<div id="boardContainer">
		<div id="boardPicture">
			<img class="picture" src='<c:url value="/images/img.jpg"/>'>
		</div>
		<div id="title">
			<label for="exclusive_input2">어디를 여행하셨나요?</label> <input name="title"
				type="text" id="exclusive_input2">
		</div>
		<hr style="width: 95%;">
		<img class="upload" src='<c:url value="/images/icon_upload.png"/>'>
		<img class="map" src="<c:url value="/images/icon_map.png"/>">
		<div id=footer>
			<input type="submit" value="게시"> 
			<select>
				<option value="전체보기">전체보기</option>
				<option value="친구보기">친구보기</option>
				<option value="그룹보기">그룹보기</option>
				<option value="비공개">비공개</option>
			</select>
		</div>
	</div>

</body>
</html>