<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style>

/* 유저 side menu */
#sideSchedule, #sideHome, #sideBiography, #sideFriend {
	position: relative;
	line-height: 55px;
	height: auto;
	color: white;
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}

#sideProfile {
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
	position: relative;
	line-height: 40px;
	height: 130px;
	padding: 0px;
	background-color: #84D4E4;
	width: 96%;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

#sideSchedule {
	background-color: #4AACCC;
	float: left;
	width: 48%;
	left: 0%
}

#sideSchedule .hover {
	position: absolute;
	margin: 2 0 0 -23px;
}

#sideSchedule .text {
	visibility: hidden;
	position: relative;
}

#sideSchedule:hover .hover {
	visibility: hidden;
	position: absolute;
}

#sideSchedule:hover .text {
	visibility: visible;
	position: relative;
}

#sideHome {
	background-color: #4AACCC;
	float: left;
	width: 48%;
	left: 0%
}

#sideHome .hover {
	position: absolute;
	margin: 2 0 0 -23px;
	width: 48px;
	height: 48px;
}

#sideHome .text {
	visibility: hidden;
	position: relative;
}

#sideHome:hover .hover {
	visibility: hidden;
	position: absolute;
}

#sideHome:hover .text {
	visibility: visible;
	position: relative;
}

#sideBiography {
	background-color: #71B2D7;
	width: 96%;
	clear: both;
}

#sideBiography .hover {
	position: absolute;
	margin: 2 0 0 -23px;
}

#sideBiography .text {
	visibility: hidden;
	position: relative;
}

#sideBiography :hover .hover {
	visibility: hidden;
	position: absolute;
}

#sideBiography :hover .text {
	visibility: visible;
	position: relative;
}

#sideFriend {
	background-color: #84D4E4;
	width: 96%;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

#sideNav {
	text-align: center;
	clear: both;
	position: relative;
	color: white;
}

#sideGroup {
	height: 50px;
	display: none;
	color: black;
}

.profileImage {
	position: static;
	float: left;
	width: 50%;
	height: 130px;
	border-top-left-radius: 10px;
}

.friendProfile {
	position: relative;
	line-height: 40px;
	height: 130px;
	padding: 0px;
	background-color: maroon;
	width: 96%;
	border-radius: 10px;
}

#friendAdd {
	visibility: visible;
}

/* a 태그 밑줄 제거 */
a:hover {
	text-decoration: none !important;
	color: white;
}

a {
	text-decoration: none !important;
	color: white;
}

.sideAddGroupButton {
	color: black;
	cursor: pointer;
}

.sideAddGroupButton:hover {
	color: black;
}

/* 관리자 side menu */
#adminSideHome, #adminSideNotice, #adminSideMessge, #adminSideBoard,
	#adminSideUser {
	height: 50px;
	line-height: 50px;
	border-radius: 10px;
}

#adminSideNav {
	text-align: center;
	clear: both;
	position: relative;
}

#adminSideProfile {
	position: relative;
	line-height: 40px;
	padding: 0px;
	background-color: maroon;
	width: 96%;
	border-radius: 10px;
}

#adminSideHome {
	position: relative;
	padding: 0px;
	background-color: maroon;
	width: 96%;
}

#adminSideNotice {
	background-color: navy;
	float: left;
	width: 48%;
	left: 0%
}

#adminSideMessge {
	background-color: olive;
	float: left;
	width: 48%;
	left: 0%
}

#adminSideBoard {
	background-color: teal;
	width: 96%;
	clear: both;
}

#adminSideUser {
	background-color: silver;
	width: 96%;
}

/* 그룹관련 css */
.sideGroupHeader {
	background-color: #84D4E4;
	position: relative;
	line-height: 30px;
	height: auto;
	color: white;
	border-radius: 45px;
	width: 15%;
}

.sideGroupMenu {
	display: none;
}

dd {
	color: black;
}

dl {
	margin-bottom: 5px;
}

#sideFriendProfile {
	visibility: hidden;
}
</style>

</head>
<body>

	<c:choose>
		<c:when test="${userState eq '0'}">
			<div id='sideNav'>
				<a class='sideProfileLink' href='<c:url value="/mypage/list"/>'>
					<div id='sideProfile'>
						<img class='profileImage'
							src='<c:url value="/tripbook/user/${userId}/${userFileName}"/>'>
						<div class='userName'>${userName}</div>
						<a class='logout' href='<c:url value="/mypage/profile"/>'>정보수정</a><br>
						<a class='logout' href='<c:url value="/main/logout"/>'>로그아웃</a>
					</div>
				</a> <a href='<c:url value="/calendar/list"/>'>
					<div id="sideSchedule">
						<a href="<c:url value="/calendar/calendar"/>"> <img alt="스케줄"
							src="<c:url value="/images/icon/icon_schedule48.png"/>"
							class="hover">
							<div class="text">스케줄</div>
					</div>
				</a>
				<div id="sideHome">
					<a href='<c:url value="/main/main"/>'> <img alt="홈"
						src="<c:url value="/images/icon/icon_home48.png"/>" class="hover">
						<div class='text'>홈</div></a>
				</div>
				<div id="sideBiography">
					<a href='<c:url value="/biography/biography"/>'> <img
						alt="여행일대기"
						src="<c:url value="/images/icon/icon_tripbook48.png"/>"
						class="hover">
						<div class='text'>여행일대기</div></a>
				</div>
				<a href='<c:url value="/friends/list"/>'><div id='sideFriend'>친구</div></a>
				<p>
				<div id='sideGroup'>
					<dl class="sideGroupHeader">
						<dd style="cursor: pointer">그룹</dd>
					</dl>
					<dl class="sideGroupMenu">
						<dd>
							<a class="sideAddGroupButton" data-toggle="modal"
								data-target="#groupCreateModal">+ 그룹 추가</a>
						</dd>
						<c:choose>
							<c:when test="${groupList ne null}">
								<c:forEach items="${groupList }" var="item">
									<a href='<c:url value="/group/list?groupNo=${item.groupNo}"/>'>
										<dd id="${item.groupNo }">${item.groupName }</dd>
									</a>
								</c:forEach>
							</c:when>
						</c:choose>
					</dl>
				</div>

				<!-- 클릭시 생성 -->
				<div id="sideFriendProfile">
					<hr>
					<a class='sideProfileLink' href='<c:url value="/mypage/list"/>'>
						<div id="friendsProfile">
							<img class='profileImage friendsImage'
								src='<c:url value="/tripbook/user/${friendUserId}/${friendUserFileName}"/>'>
							<input type="hidden" class="friendsUserId" value="">
							<!-- input value에 아이디 저장-->
							<div class='friendsUserName'>이름</div>
							<a href='#'>게시물</a><br> <a href='#'>일대기</a>
						</div>
					</a>
					<!-- 친구 상태값에 따른 버튼 변경 -->
					<c:choose>
						<c:when test="${friendState == null}">
							<input class="btn btn-primary" type='button' value='메세지'>
						</c:when>
						<c:when test="${friendState == null}">
							<hr id='friendAdd'>
							<input class="btn btn-primary" type='button' value='친구 신청'>
						</c:when>
					</c:choose>
				</div>
			</div>
		</c:when>
		<c:when test="${userState eq '1'}">
			<div id='adminSideNav'>
				<a class='adminSideHome'
					href='<c:url value="/admin/boardManagement"/>'>
					<div id='adminSideProfile'>
						<div class='userName'>${userName}</div>
						<a class='logout' href='<c:url value="/main/logout"/>'>로그아웃</a>
					</div>
				</a> <a href='<c:url value="/admin/noticeManagement"/>'><div
						id='adminSideNotice'>공지사항</div></a> <a
					href='<c:url value="/admin/messageManagement"/>'><div
						id='adminSideMessge'>메세지</div></a> <a
					href='<c:url value="/admin/boardManagement"/>'><div
						id='adminSideBoard'>게시물 관리</div></a> <a
					href='<c:url value="/admin/userManagement"/>'><div
						id='adminSideUser'>회원관리</div></a>
				<p>
			</div>
		</c:when>
	</c:choose>





	<script src='<c:url value="/resources/js/jquery-2.2.4.js"/>'></script>
	<script>
		$(function() {
			console.log(sessionStorage.getItem("pageName"));

			$("a").click(
					function() {
						sessionStorage.setItem("pageName", $(this).children(
								"div").attr("id"));
					});

			$(
					".sideAddGroupButton, .sideGroupMenu, .groupMemberAdd, .groupSecession")
					.click(function() {
						sessionStorage.setItem("pageName", "sideFriend");
					});

			$(".sideGroupHeader").click(function() {
				$(".sideGroupMenu").slideToggle(500);
			})

			var trash = document.getElementById("trashImg");
			if (sessionStorage.getItem("pageName") != "sideSchedule") {
				trash.style.display = 'none';
			} else {
				trash.style.display = 'inline';
			}

			var group = document.getElementById("sideGroup");
			if (group != null) {
				if (sessionStorage.getItem("pageName") != "sideFriend") {
					group.style.display = 'none';
				} else {
					group.style.display = 'inline';
				}
			}

			var friendProfile = document.getElementById("friendProfile");
			if (friendProfile != null) {
				if (sessionStorage.getItem("pageName") != "friendProfile") {
					friendProfile.style.display = 'none';
				} else {
					friendProfile.style.display = 'inline';
				}
			}
		})
	</script>
</body>
</html>