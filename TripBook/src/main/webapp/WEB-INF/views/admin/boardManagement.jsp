<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trip Book</title>
<style>
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

hr {
	margin-top: 0px;
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
							<input type='button' class='btn btn-primary' value='삭제하기'>
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
							<input type='button' class='btn btn-primary' value='삭제하기'>
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
							<input type='button' class='btn btn-primary' value='삭제하기'>
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
							<input type='button' class='btn btn-primary' value='삭제하기'>
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
							<input type='button' class='btn btn-primary' value='삭제하기'>
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
							<input type='button' class='btn btn-primary' value='삭제하기'>
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
							<input type='button' class='btn btn-primary' value='삭제하기'>
						</div>
					</div>
				</li>
				
			</ul>
		</div>
	</div>

	

	

	<script src='<c:url value="/resources/js/calendar/lib/jquery.min.js"/>'></script>
	<script src="<c:url value="/resources/js/main/jQuery.MultiFile.min.js"/>"></script>

	<script src='<c:url value="/resources/js/main/stroll.min.js"/>'></script>
	<script>
		/* 스크롤 효과 */
		stroll.bind('.mainAllBoard ul');
	</script>
</body>
</html>