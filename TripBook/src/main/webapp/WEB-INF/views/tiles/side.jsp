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
	height: 50px;
	color: white;
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}

#sideProfile {
	position: relative;
	line-height: 40px;
	top: 30px;
	height: 130px;
}

#sideSchedule {
	background-color: #546E7A;
	top: 90px;
	float: left;
	width: 100%;
}

#sideSchedule .hover {
	position: relative;
	margin-left: 20px;
	float: left;
}

#sideSchedule .text {
	position: relative;
	float: right;
	margin-right: 20px;
}

#sideSchedule:hover {
	position: relative;
	background-color: #455A64;
}

#sideHome {
	background-color: #546E7A;
	top: 90px;
	float: left;
	width: 100%;
}

#sideHome .hover {
	position: relative;
	float: left;
	margin-left: 20px;
}

#sideHome .text {
	position: relative;
	float: right;
	margin-right: 24px;
}

#sideHome:hover {
	position: relative;
	background-color: #455A64;
}


#sideBiography {
	background-color: #546E7A;
	top: 90px;
	width: 100%;
	clear: both;
}

#sideBiography .hover {
	position: relative;
	float: left;
	margin-left: 20px;	
}

#sideBiography .text {
	position: relative;
	float: right;
	margin-right: 20px;
}

#sideBiography:hover {
	position: relative;
	background-color: #455A64;
}

#sideFriend {
	background-color: #546E7A;
	top: 85px;
	float:left;
	width: 100%;
	clear: both;
}

#sideFriend .hover {
	position: relative;
	float: left;
	margin-left: 20px;
}

#sideFriend .text {
	
	float: right;
	margin-right: 24px;
}

#sideFriend:hover {
	position: relative;
	background-color: #455A64;
	border-right: 3px threedhighlight red;
}

#sideNav {
	text-align: center;
	clear: both;
	position: relative;
}

#sideNav div{
	cursor: pointer;
}

#sideGroup {
	position: relative;
	top: 90px;
	height: auto;
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
	position: relative;
	line-height: 55px;
	height: 50px;
	color: white;
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}

#adminSideNav {
	text-align: center;
	clear: both;
	position: relative;
}

#adminSideProfile {
	position: relative;
	line-height: 40px;
	top: 30px;
	height: 130px;
}

#adminSideHome {
	background-color: #546E7A;
	top: 90px;
	float: left;
	width: 100%;
}

#adminSideHome .text {
	position: relative;
	float: right;
	margin-right: 24px;
}

#adminSideHome :hover{
	background-color: #546E7A;
	top: 90px;
	float: left;
	width: 100%;
}

#adminSideHome:hover {
	position: relative;
	background-color: #455A64;
}

#adminSideNotice {
	background-color: #546E7A;
	float: left;
	width: 100%;
}


#adminSideNotice .text {
	position: relative;
	float: right;
	margin-right: 20px;
}

#adminSideNotice:hover {
	position: relative;
	background-color: #455A64;
}


#adminSideMessge {
	background-color: #546E7A;
	width: 100%;
	clear: both;
}


#adminSideMessge .text {
	position: relative;
	float: right;
	margin-right: 20px;
}

#adminSideMessge:hover {
	position: relative;
	background-color: #455A64;
}

#adminSideBoard {
	background-color: #546E7A;
	width: 100%;
}


#adminSideBoard .text {
	
	float: right;
	margin-right: -70px;
}

#adminSideBoard:hover {
	position: relative;
	background-color: #455A64;
	border-right: 3px threedhighlight red;
}

#adminSideUser {
	background-color: #546E7A;
	width: 100%;
}

#adminSideUser .text {
	
	float: right;
	margin-right: -70px;
}

#adminSideUser:hover {
	position: relative;
	background-color: #455A64;
	border-right: 3px threedhighlight red;
}



/* 그룹관련 css */

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
				<a class="sideProfileLink" href="<c:url value="/mypage/list"/>">
					<div id="sideProfile">
						<img class="profileImage"
							src="<c:url value="/tripbook/user/${userId}/${userFileName}"/>">
						<div class='userName'>${userName}</div>
						<a class="logout" href="<c:url value="/mypage/profile"/>">정보수정</a><br>
						<a class="logout" href="<c:url value="/main/logout"/>">로그아웃</a>
					</div>
				</a>
				<a href="<c:url value="/main/home"/>">
				<div id="sideHome">
					 <img alt="홈"
						src="<c:url value="/images/icon/icon_home48.png"/>" class="hover">
						<div class='text'>홈</div>
				</div></a>
				<a href='<c:url value="/calendar/list"/>'>
					<div id="sideSchedule">
						<img alt="스케줄"
							src="<c:url value="/images/icon/icon_schedule48.png"/>"	class="hover">
							<div class="text">스케줄</div>
					</div></a>
				<a href='<c:url value="/biography/biography"/>'>
					<div id="sideBiography">
						<img alt="여행일대기"
							src="<c:url value="/images/icon/icon_tripbook48.png"/>" class="hover">
						<div class="text">발자취</div>
					</div>
				</a>
				<a href='<c:url value="/friends/list"/>'>
					<div id='sideFriend'>
						<img alt="친구"
							src="<c:url value="/images/icon/icon_tripbook48.png"/>" class="hover">
						<div class="text">친구</div>
					</div></a>
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
					<a class='sideProfileLink' href='<c:url value="/friends/friendMain"/>'>
						<div id="friendsProfile">
							<img class='profileImage friendsImage'
								src='<c:url value="/tripbook/user/${friendUserId}/${friendUserFileName}"/>'>
							<input type="hidden" class="friendsUserId" value="">
							<!-- input value에 아이디 저장-->
							<div class='friendsUserName'>이름</div>
							<a href='#'>게시물</a><br> <a href='<c:url value="/friends/friendBiography"/>'>일대기</a>
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

			var trash = document.getElementById("trash");
			
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
			
			
			switch(sessionStorage.getItem("pageName")){
				case "sideHome" : $('#sideHome').css('border-right', '5px solid #69F0AE');breadk;
				case "sideSchedule" : $('#sideSchedule').css('border-right', '5px solid #69F0AE');breadk;
				case "sideBiography" : $('#sideBiography').css('border-right', '5px solid #69F0AE');breadk;
				case "sideFriend" : $('#sideFriend').css('border-right', '5px solid #69F0AE');breadk;
				case "adminSideNotice" : $('#adminSideNotice').css('border-right', '5px solid #69F0AE');breadk;
				case "adminSideBoard" : $('#adminSideBoard').css('border-right', '5px solid #69F0AE');breadk;
				case "adminSideMessge" : $('#adminSideMessge').css('border-right', '5px solid #69F0AE');breadk;
				case "adminSideUser" : $('#adminSideUser').css('border-right', '5px solid #69F0AE');breadk;
			}
			
			
		})
	</script>
</body>
</html>