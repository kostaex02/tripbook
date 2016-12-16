<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

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
	<div class='mainAllBoard'>
		<div class='mainScrollHidden'>
			<ul class="grow">
				<li>
					<div class='mainRecentBoard'>
						<p>
						<div class='profile'><img class='writerProfileImage' src='<c:url value="/tripbook/user/${friendUserId}/${friendUserFileName}"/>'>
						<b>User ID</b> 12월 03일 오전 11:41
						</div>
						</p>
						<div class='picture'>
							<a href="#" data-toggle="modal" data-target="#detailPicture">
							<img class='boardPicture' src='<c:url value="/images/img.jpg"/>'></a>
							<div>내용은 여기!</div>
						</div>
						<div>
							<div class="heart " id="like1" rel="like"></div>
							<div class="likeCount" id="likeCount1">14</div>
							<a href='#'>댓글달기</a>
							<div class='replysCount'>댓글 100개</div>
						</div>
					</div>
				</li>
			
			<li>
					<div class='mainRecentBoard'>
						<p>
						<div class='profile'><img class='writerProfileImage' src='<c:url value="/tripbook/user/${friendUserId}/${friendUserFileName}"/>'>
						<b>User ID</b> 12월 03일 오전 11:41
						</div>
						</p>
						<div class='picture'>
							<a href="#" data-toggle="modal" data-target="#detailPicture">
							<img class='boardPicture' src='<c:url value="/images/img.jpg"/>'></a>
							<div>내용은 여기!</div>
						</div>
						<div>
							<div class="heart " id="like1" rel="like"></div>
							<div class="likeCount" id="likeCount1">14</div>
							<a href='#'>댓글달기</a>
							<div class='replysCount'>댓글 100개</div>
						</div>
					</div>
				</li>
				<li>
					<div class='mainRecentBoard'>
						<p>
						<div class='profile'><img class='writerProfileImage' src='<c:url value="/tripbook/user/${friendUserId}/${friendUserFileName}"/>'>
						<b>User ID</b> 12월 03일 오전 11:41
						</div>
						</p>
						<div class='picture'>
							<a href="#" data-toggle="modal" data-target="#detailPicture">
							<img class='boardPicture' src='<c:url value="/images/img.jpg"/>'></a>
							<div>내용은 여기!</div>
						</div>
						<div>
							<div class="heart " id="like1" rel="like"></div>
							<div class="likeCount" id="likeCount1">14</div>
							<a href='#'>댓글달기</a>
							<div class='replysCount'>댓글 100개</div>
						</div>
					</div>
				</li>
				<li>
					<div class='mainRecentBoard'>
						<p>
						<div class='profile'><img class='writerProfileImage' src='<c:url value="/tripbook/user/${friendUserId}/${friendUserFileName}"/>'>
						<b>User ID</b> 12월 03일 오전 11:41
						</div>
						</p>
						<div class='picture'>
							<a href="#" data-toggle="modal" data-target="#detailPicture">
							<img class='boardPicture' src='<c:url value="/images/img.jpg"/>'></a>
							<div>내용은 여기!</div>
						</div>
						<div>
							<div class="heart " id="like1" rel="like"></div>
							<div class="likeCount" id="likeCount1">14</div>
							<a href='#'>댓글달기</a>
							<div class='replysCount'>댓글 100개</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>

</body>
</html>